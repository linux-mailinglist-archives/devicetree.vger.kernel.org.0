Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71124273E77
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgIVJYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:24:01 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:46208 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726526AbgIVJYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:24:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600766639; x=1603358639;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=hhV90uaSPFGY2Y5nurNw/Fsz6Pyt3PHIpkmYm8mujKU=;
        b=oVWWimKP/wcoIuFSxznFw4PDOHB6oHMRbZuRVa+ueUK0iPd39nw0wgz0PIBwdhDL
        HAPu47Bmw4MlZVzt925yjbDVHveZn6VEQDXPaeM1zyiWs2LF+KcOpDY5yNuVVJbo
        3KFd5v6y9QGbDPRYuV0pzCHTrepcQEKQHg8p2jr6L5Y=;
X-AuditID: c39127d2-269ff70000001c25-a3-5f69c2af9f39
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id C0.E6.07205.FA2C96F5; Tue, 22 Sep 2020 11:23:59 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020092211235886-473851 ;
          Tue, 22 Sep 2020 11:23:58 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH 3/6] ARM: dts: imx6: phytec: Add eeprom pagesize
Date:   Tue, 22 Sep 2020 11:23:10 +0200
Message-Id: <20200922092313.151293-3-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:59,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:59
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRoCBS3f9ocx4g0dLuC3mHznHavHwqr/F
        psfXWC3+79nBbvF3+yYWixdbxB3YPHbOusvusWlVJ5vH5iX1Hv1/DTw+b5ILYI3isklJzcks
        Sy3St0vgyvg+8SVrwQ3eiqmr9rE1MN7k7mLk5JAQMJFY9b2HpYuRi0NIYBujxPfP55ghnGuM
        Erf6pjGBVLEJGEksmNYIZosIKEuc2tjHDlLELHCHUWLt8ltsIAlhAQeJ6/O3gtksAqoSs9eu
        YASxeQVsJa6v288IsU5eYual7+wgNqeAncSy8xPB4kJANWuvTGGDqBeUODnzCdhJEgJXGCVO
        nvkK1SwkcXrxWWYQm1lAW2LZwtfMExgFZiHpmYUktYCRaRWjUG5mcnZqUWa2XkFGZUlqsl5K
        6iZGYOgenqh+aQdj3xyPQ4xMHIyHGCU4mJVEeNWM0uOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ
        827gLQkTEkhPLEnNTk0tSC2CyTJxcEo1MBY887Ksc4heyM+5vybGMzm90sqt6Ky3cZOZ0SWe
        3AeCvUarUy7vqGZ/7R+idfKM7wSZNauKbXZWbSlbkJI6c8/6sMeBPiYM3x68KGs4wf/vlMlV
        /8y5LA168s1TDokc+LL60qqa5vsSpjY3GlKm2hzf+e9vvm3cqg39GjXbCxYtfpw3V4H3qBJL
        cUaioRZzUXEiANnkDIVLAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Defining the EEPROM pagesize can increase the write speed significantly.
Set it to the pagesize stated in the EEPROM's datasheet for
phyCORE-i.MX 6UL, phyCORE-i.MX 6 and phyFLEX-i.MX 6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi      | 1 +
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi  | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/d=
ts/imx6qdl-phytec-pfla02.dtsi
index aa7fdb9ea5bd..87adfb735f95 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -117,6 +117,7 @@ &i2c1 {
=20
 	som=5Feeprom: eeprom@50 {
 		compatible =3D "catalyst,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/b=
oot/dts/imx6qdl-phytec-phycore-som.dtsi
index a3f4e8f6cc9e..a80aa08a37cb 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -85,6 +85,7 @@ &i2c3 {
=20
 	eeprom@50 {
 		compatible =3D "st,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/bo=
ot/dts/imx6ul-phytec-phycore-som.dtsi
index ce14ce685d12..11fa3fb5947b 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -75,6 +75,7 @@ &i2c1 {
=20
 	eeprom@52 {
 		compatible =3D "catalyst,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x52>;
 	};
 };
--=20
2.25.1

