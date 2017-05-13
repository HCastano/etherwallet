<article class="col-xs-12 col-sm-8 col-sm-offset-2 text-center" ng-show="objENS.status==ensModes.owned && objENS.owner==objENS.deedOwner && wd">


  <!-- TODO VALIDATE IF UNLOCKED WALLET ADDR == OWNER ADDR -->
  <div class="alert alert-warning"> This account is not the owner of {{objENS.name}}.eth. You cannot set the resolver for this address from this account. </div>

  <p> Name: {{objENS.name}}.eth </p>

  <p> Owner: {{objENS.owner}} </p>

  <p> namehash: {{objENS.namehash}} </p>

  <p class="text-danger"> this should be  NameHash (mewtopia.eth) 0xcf0a2ffe7a8b82882c51f40a71b74dd52e1d0702d284855e3e6b58741d86e541 but it's not :( </p>

  <p> Resolved Address: {{objENS.resolvedAddress}} </p>

  <p> Public Resolver Address: 0x1da022710df5002339274aadee8d58218e9d6ab5 </p>

  <label> Set new address </label>
  <input ng-model="newResolvedAddress" class="form-control" placeholder="0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8" ng-class="Validator.isValidAddress(tx.to) ? 'is-valid' : 'is-invalid'" />


  <p>1. Choose ENS-EthNameService: <code>0x314159265dD8dbb310642f98f50C066173C1259b</code> </p>

  <p> 2. Choose <code>setResolver</code> </p>

  <p> 3. Enter namehash under "node bytes32":  <code>{{objENS.namehash}}</code> </p>

  <p> 4. Enter Public Resolver Address under "resolver address": <code>0x1da022710df5002339274aadee8d58218e9d6ab5</code></p>

  <p> 5. Unlock the owner's account. Click WRITE. Generate and send transaction (leave "Amount to Send" as <code>0</code>)</p>

  <p> 6. TX should look like <a href="https://etherscan.io/tx/0xf2121e8392d8f3167593302cc47a8d6c962a8f2ed8193479573044acf75bc364" target="_blank"> this (mewtopia.eth from donation account) </a></p>

  <hr />

  <p><code> setResolver( namehash , Public Resolver Address ) </code></p>

  <p>2. Call <code>setAddr</code> on Public Resolver: <code>0x1da022710df5002339274aadee8d58218e9d6ab5</code> </p>

  <p><code> setAddr( namehash , {{newResolvedAddress}} ) </code></p>



  <button class="btn btn-primary" ng-click="resolveDomain()"> Resolve {{objENS.name}}.eth </button>

</article>

@@if (site === 'mew' ) { @@include( './ens-modal-resolve.tpl', { "site": "mew" } ) }
@@if (site === 'cx'  ) { @@include( './ens-modal-resolve.tpl', { "site": "cx"  } ) }
