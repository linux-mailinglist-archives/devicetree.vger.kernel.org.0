Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 212C7273E75
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726522AbgIVJXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:23:51 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:46208 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726526AbgIVJXv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:23:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600766629; x=1603358629;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Aq4vcr3xESEkrMVeRR0KW6dCG/T8nzviwz6tGgtY1nY=;
        b=fq2Ee8N/Dx1tMmVBQQg1b1pSoI6JrQf1bXVlKvNoNuoVWlZDHB/7XyM5ONNqSybX
        +nMrIr1sZHFzno/GVLiTB4FIrA8/02HCcaHvEbvTcmk67yciKhz1/Afp3pdiGTye
        VxKp08qmEApUtDUqrggQ5SppQjmJZJCRvgQxPXsteAk=;
X-AuditID: c39127d2-253ff70000001c25-a0-5f69c2a5941d
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DF.D6.07205.5A2C96F5; Tue, 22 Sep 2020 11:23:49 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020092211234895-473849 ;
          Tue, 22 Sep 2020 11:23:48 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH 1/6] ARM: dts: imx6ul: segin: Fix stmpe touchscreen subnode name
Date:   Tue, 22 Sep 2020 11:23:08 +0200
Message-Id: <20200922092313.151293-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:49,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:49
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrALMWRmVeSWpSXmKPExsWyRoCBS3fpocx4gyvdghbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZWx52sZa0MlWsWX/E6YGxn7WLkZODgkBE4k/83+wdDFycQgJbGOU+LN6FTOEc41R
        Ylb7BmaQKjYBI4kF0xqZQGwRAWWJUxv72EGKmAXuMEqsXX6LDSQhLBAg8fbsUrCxLAKqEhN2
        PQdr4BWwldiwuI8ZYp28xMxL39kh4oISJ2c+AVstIXAFaNCU++wQRUISpxefBWtgFtCWWLbw
        NfMERr5ZSHpmIUktYGRaxSiUm5mcnVqUma1XkFFZkpqsl5K6iREYiocnql/awdg3x+MQIxMH
        4yFGCQ5mJRFeNaP0eCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8G3hLwoQE0hNLUrNTUwtSi2Cy
        TBycUg2MYbbcT5fIZrBpKi13y50ddnPC1mfvD3u8FMgTcgkvutoWyBup17ko7F8Lw0Q++d+/
        rC/47W/6tOLOA7c8HhfriiuLfmXMmlh367hdrJZA+vo9cmFtrfe7dLYs8pkvJT2R+ZtGPZeD
        xR65eLfd1k//u9muPf10zxWFz6fPtIV+y6yuzj/55FmHEktxRqKhFnNRcSIA2UJVBjMCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The touchscreen subnode name needs to be stmpe=5Ftouchscreen as mentioned
in the dt-bindings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts=
/imx6ul-phytec-segin.dtsi
index f1412df89173..2a3801e349b6 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -139,7 +139,7 @@ stmpe: touchscreen@44 {
 		pinctrl-0 =3D <&pinctrl=5Fstmpe>;
 		status =3D "disabled";
=20
-		touchscreen {
+		stmpe=5Ftouchscreen {
 			compatible =3D "st,stmpe-ts";
 			st,sample-time =3D <4>;
 			st,mod-12b =3D <1>;
--=20
2.25.1

