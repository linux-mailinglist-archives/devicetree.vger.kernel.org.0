Return-Path: <devicetree+bounces-1160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0827A52CE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C760E1C20AEB
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6247B273E1;
	Mon, 18 Sep 2023 19:16:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32B121110
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 19:16:53 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C66EFF7;
	Mon, 18 Sep 2023 12:16:51 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:bae9::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 57D646607186;
	Mon, 18 Sep 2023 20:16:48 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695064610;
	bh=ghwssrv6LMhLjo/fzK7LxIyO3gF6PBgn2BzLfbzm+Mo=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=ID2KRBKYLpI/a9zZTJxdwIpFGXEC2fMdhddvY4ujyhojlYJE193QalJIvWrvISLFa
	 toBU/GtVYBe1KY4V3YOmIWcTnT8KrNfSefQ/uPR+TlahTk1Lbl6jbHm0cvMofPLTdT
	 QwYAixFqImhO6XzGkRuFdlWj0gaWjpdbAqDK1SH7ughvLgVx9hdsjt8ysFIW6bCtuP
	 ZCQEQaeqyDToXvfBgPBAxEvq98IxEWcmdZ7b38c5cQe7QDPV3UwYNxk8LKcg/NxJGH
	 +QC5FJJNlUrHbf5cFoS+/j5OYBX32aSMsQcTD/GG2ngB0VULiQrwMR9P6N1PA4h8/J
	 /lzwI7J7Sn5lw==
Message-ID: <7412a756ee4c83c62b3dc866b5a351e1bc4afa33.camel@collabora.com>
Subject: Re: [PATCH v12 6/7] dt-bindings: media: wave5: add yaml devicetree
 bindings
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Nas Chung
 <nas.chung@chipsnmedia.com>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>,  Philipp Zabel <p.zabel@pengutronix.de>, Jackson Lee
 <jackson.lee@chipsnmedia.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, NXP Linux Team <linux-imx@nxp.com>, 
 Hans Verkuil <hverkuil@xs4all.nl>, Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org, Robert
 Beckett <bob.beckett@collabora.com>,  linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 18 Sep 2023 15:16:39 -0400
In-Reply-To: <6d87034e-6727-09fd-60fc-10f8ca47f85b@linaro.org>
References: 
	<20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
	 <20230915-wave5_v12_on_media_master-v12-6-92fc66cd685d@collabora.com>
	 <30384744-94d7-2675-63ad-d8531e3156d1@linaro.org>
	 <20230918064954.iuomunsckduawiay@basti-XPS-13-9310>
	 <6d87034e-6727-09fd-60fc-10f8ca47f85b@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Le lundi 18 septembre 2023 =C3=A0 14:02 +0200, Krzysztof Kozlowski a =C3=A9=
crit=C2=A0:
> On 18/09/2023 08:49, Sebastian Fricke wrote:
> > Hey Krzysztof,
> >=20
> > thanks for your review.
> >=20
> > On 17.09.2023 09:56, Krzysztof Kozlowski wrote:
> > > On 15/09/2023 23:11, Sebastian Fricke wrote:
> > > > From: Robert Beckett <bob.beckett@collabora.com>
> > > >=20
> > > > Add bindings for the wave5 chips&media codec driver
> > > >=20
> > > > Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> > >=20
> > > So this is v12 and still no tested?
> >=20
> > I have tested it, multiple times actually since V11. (For some reason
> > that indentation issue slipped by me though ...)
> > If you mean the tested by tag, the patch was completely unnoticed until
> > v10 by the community, which was partially because me and the previous
> > commiters didn't use the right recipients for this patch. So from that
> > point of view this is more like v2.
> >=20
> > >=20
> > > A nit, subject: drop second/last, redundant "yaml devicetree indings"=
.
> > > The "dt-bindings" prefix is already stating that these are bindings.
> > > Basically three words bringing zero information.
> >=20
> > Okay so:
> > `dt-bindings: media: wave5: add devicetree`
>=20
> Still not, because devicetree is duplicating "dt". It's redundant.
>=20
> Instead should be (with correct order of prefixes):
>=20
> media: dt-bindings: wave5: add AzureWaveFooBar XYL ABC10 (whatever
> company and full product name it is)

So maybe this one ?

  media: dt-bindings: wave5: add Chips&Media 521c codec IP support

>=20
>=20
> Best regards,
> Krzysztof
>=20


