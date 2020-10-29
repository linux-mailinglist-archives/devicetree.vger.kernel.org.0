Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34D2829E4E6
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731817AbgJ2HtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:49:22 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51576 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731839AbgJ2HtJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:49:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955015; x=1606547015;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=KGDaZXY4ujKGHEtcq7TCn02gZi0sqw/JUCdvrXEqSec=;
        b=ALqhHz9yjXd2cNPp6vajRlqMEFr/KjvNnu1rPSdgKaO4sbWClxudJP8vtAcgX5lW
        /dWmFiU76ASw6R1WW/5HUZMQGMXh9KDDlY7l20El4cqa0NHbWKeCUDmZUZC3NtBm
        pArtRPG/HdqdSUhbf33+BTcf4ceueLpiGxsHPWE/ulk=;
X-AuditID: c39127d2-269ff70000001c25-1b-5f9a6947f75b
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id DB.4B.07205.7496A9F5; Thu, 29 Oct 2020 08:03:35 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908033542-690346 ;
          Thu, 29 Oct 2020 08:03:35 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 2/6] ARM: dts: imx6: phytec: Set correct eeprom compatible
Date:   Thu, 29 Oct 2020 08:03:20 +0100
Message-Id: <20201029070324.16057-2-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:35,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:35
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOLMWRmVeSWpSXmKPExsWyRoCBS9c9c1a8QetzQ4v5R86xWjy86m+x
        6fE1Vov/e3awW/zdvonF4sUWcQc2j52z7rJ7bFrVyeaxeUm9R/9fA4/Pm+QCWKO4bFJSczLL
        Uov07RK4MibO+8lc0MBVsfxDD1sD4yGOLkZODgkBE4k3ex+ydzFycQgJbGWUWNW7Csq5xihx
        YMpENpAqNgEjiQXTGplAbBEBZYlTG/vAipgF7jBKrF1+C6xIWMBXYvrdOaxdjBwcLAKqEm9e
        xYKEeQVsJE7/vMsMsU1eYual7+wgNqeArcSUxvlgrUJANd13jrFD1AtKnJz5hAVkvoTAFUaJ
        ricbmCCahSROLz4LNohZQFti2cLXzBMYBWYh6ZmFJLWAkWkVo1BuZnJ2alFmtl5BRmVJarJe
        SuomRmDgHp6ofmkHY98cj0OMTByMhxglOJiVRHhfCM6MF+JNSaysSi3Kjy8qzUktPsQozcGi
        JM67gbckTEggPbEkNTs1tSC1CCbLxMEp1cBYxnz45cQ+hY8BF1y23jGPL/Wr7exz+nqmZvd6
        13CbWJsNTE+CNqfsXO0gGssl2HZH7/7X6YrpDCX8nB8uMooeW9M1m+s0y/FT109KPDzqOV+t
        pOfW4pNXQ7a2befT52MXMFxxcfL83+8nmRSFNbhMONKWc/9v5r0s1oq+BN/SI+Fed2Z+Fdqh
        xFKckWioxVxUnAgAfcPlhEoCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set the correct EEPROM compatible for phyCORE-i.MX 6 and phyFLEX-i.MX 6,
as stated in the device tree bindings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi      | 2 +-
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/d=
ts/imx6qdl-phytec-pfla02.dtsi
index e361df26a168..d51852857758 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -116,7 +116,7 @@ &i2c1 {
 	status =3D "okay";
=20
 	som=5Feeprom: eeprom@50 {
-		compatible =3D "atmel,24c32";
+		compatible =3D "catalyst,24c32", "atmel,24c32";
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/b=
oot/dts/imx6qdl-phytec-phycore-som.dtsi
index 41ebe4599e43..a3f4e8f6cc9e 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -84,7 +84,7 @@ &i2c3 {
 	status =3D "okay";
=20
 	eeprom@50 {
-		compatible =3D "atmel,24c32";
+		compatible =3D "st,24c32", "atmel,24c32";
 		reg =3D <0x50>;
 	};
=20
--=20
2.25.1

