
					<c:choose>
						<c:when test="${ empty(presNum.imgpath)}">
						</c:when>
						<c:otherwise>
							<div class="row">
								<div class="col-xs-12">
									<div class="panel panel-default nobrdr">
										<div class="comment more bio panel-body">
										
											<b>Term Number:</b> ${presNum.termnumber} <b>Party:</b> ${presNum.party}
											<b>Term Length:</b> ${presNum.years}
											 <br><br>
											<b>Bio:</b> ${presNum.bio}
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<div id="wikiRow">
										<b>Wiki Link:</b> <a href="${presNum.link}">www.wikipedia.org/${presNum.name}</a>
									</div>

								</div>
							</div>
							<br>
						</c:otherwise>
					</c:choose>