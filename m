Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15BF729E4E0
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731938AbgJ2Hsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:48:40 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51568 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731942AbgJ2Hsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:48:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955012; x=1606547012;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=CKOiLMYbuCoCGwLZN7RLPaItinOV1G4FQTvgd7Mw310=;
        b=HnZRjumUoQs15EljonjDI+CNUCBMC6fOWhMWqWSeslxcmvoGz3IoXNlD4PK+bJ8b
        kNndxxBkpZofeC7zBvX38Sn2gMnAyfcCiGl3omzE4qILi6+hEXo6OCoZrnNU8Ll5
        oQuv7pidokKjMYSaJb18KQt61+2xvZxISP3YKK/wqD8=;
X-AuditID: c39127d2-269ff70000001c25-19-5f9a6944b1e5
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5B.4B.07205.4496A9F5; Thu, 29 Oct 2020 08:03:32 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908033252-690345 ;
          Thu, 29 Oct 2020 08:03:32 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 1/6] ARM: dts: imx6ul: segin: Fix stmpe touchscreen subnode name
Date:   Thu, 29 Oct 2020 08:03:19 +0100
Message-Id: <20201029070324.16057-1-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:32,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:32
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPLMWRmVeSWpSXmKPExsWyRoCBS9clc1a8wfMv5hbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZTy9v5e9oJOt4tTa6YwNjP2sXYycHBICJhJ7Xn5n72Lk4hAS2Moo8WHvKhYI5xqj
        xKk7uxlBqtgEjCQWTGtkArFFBJQlTm3sA+tgFrjDKLF2+S22LkYODmGBYImOvw4gNSwCqhJf
        b/Wwgdi8AjYS+9fsgdomLzHzEsg2kLigxMmZT8CWSQhcYZRYdL2BCaJISOL04rPMIDazgLbE
        soWvmScw8s1C0jMLSWoBI9MqRqHczOTs1KLMbL2CjMqS1GS9lNRNjMBAPDxR/dIOxr45HocY
        mTgYDzFKcDArifC+EJwZL8SbklhZlVqUH19UmpNafIhRmoNFSZx3A29JmJBAemJJanZqakFq
        EUyWiYNTqoFx2j7TVXxC7neuPzzSn9pmd/DA7dPzFysxcJV+Dru/sf3l53NPj3foTf3O4Hh0
        47L+v/e3ZfAVTnqxx8jhwNwtyr9rHzE7V6x5YhSow63IpsBx6W9ZmFZZ6hanxkRV4al7y++b
        fiifdix9iuoKzwviZRuvFZyWjDvySnYJg+xuQb0bE0T6ak7tVmIpzkg01GIuKk4EAHwfkZsy
        AgAA
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
index 57dad06397d6..e33d783c3849 100644
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

