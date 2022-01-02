Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D21C9482CB4
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 21:33:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbiABUdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 15:33:46 -0500
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17429 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiABUdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 15:33:45 -0500
ARC-Seal: i=1; a=rsa-sha256; t=1641155600; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=IxkjdYlIC0dw/+pwRDRFczZ1l/gc/wFBlF05DUz62wPd8P5Xok7oXGiG29VZa46lVCTLgOV4aypxsnf/+mvswWc4SHNUx3W2lCMYqWwFK1+IYBUJgN8RCsEB4cRyzaw/OH4NrDK+V5ffA2RtMQLaCmEiO3jYNlfceoWF41tPKzk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1641155600; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To; 
        bh=Mqmy6f9+xPrX4RsXvOmtDCtcPZ8DJNGzrGR1vYe7fbE=; 
        b=KLp6WC2tdBZgI6JeiWuahkGn3BKzvmqTScTbdz1bb/doBWfDt9SV87wmLLgPDEAbdQsoxttiSl5NTUXfwYqeUC1RgR4HpUW4+wbnOHFQ1WwSfTQTqsNRBYnBfiSrB8zry+xS7grDW7XnPQ3Ze1cnelEnaO8sdEHpp11Ahh/cDNo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1641155600;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=Mqmy6f9+xPrX4RsXvOmtDCtcPZ8DJNGzrGR1vYe7fbE=;
        b=QxTzo4n/HdrfxhmuEpVj40VV1p16AjKZkMK8DUo42jhSrYI4d09RGwiu+ATrpMm6
        qsKegtuaPNuewxLrcLuvezlCGherGK9BZEvCc5lDbG2Ty1B5nMPi9VuBAsSSdrmKdLF
        MokUhL/kWoG2BFdmeKAaYriADXxe2gc7KorQTqWg=
Received: from arinc9-PC.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1641155600169376.902229409484; Sun, 2 Jan 2022 12:33:20 -0800 (PST)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
        =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>
Subject: [PATCH] ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U
Date:   Sun,  2 Jan 2022 23:33:04 +0300
Message-Id: <20220102203304.10420-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define the Realtek RTL8365MB switch without interrupt support on the device
tree of Asus RT-AC88U.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
Acked-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 76 ++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index 249476fdad7a..82f9629f0abb 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -93,6 +93,82 @@ led {
 			gpios = <&chipcommon 4 GPIO_ACTIVE_LOW>;
 		};
 	};
+
+	switch {
+		compatible = "realtek,rtl8365mb";
+		/* 7 = MDIO (has input reads), 6 = MDC (clock, output only) */
+		mdc-gpios = <&chipcommon 6 GPIO_ACTIVE_HIGH>;
+		mdio-gpios = <&chipcommon 7 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&chipcommon 10 GPIO_ACTIVE_LOW>;
+		realtek,disable-leds;
+		dsa,member = <1 0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "lan5";
+				phy-handle = <&ethphy0>;
+			};
+
+			port@1 {
+				reg = <1>;
+				label = "lan6";
+				phy-handle = <&ethphy1>;
+			};
+
+			port@2 {
+				reg = <2>;
+				label = "lan7";
+				phy-handle = <&ethphy2>;
+			};
+
+			port@3 {
+				reg = <3>;
+				label = "lan8";
+				phy-handle = <&ethphy3>;
+			};
+
+			port@6 {
+				reg = <6>;
+				label = "cpu";
+				ethernet = <&sw0_p5>;
+				phy-mode = "rgmii";
+				tx-internal-delay-ps = <2000>;
+				rx-internal-delay-ps = <2100>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+					pause;
+				};
+			};
+		};
+
+		mdio {
+			compatible = "realtek,smi-mdio";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ethphy0: ethernet-phy@0 {
+				reg = <0>;
+			};
+
+			ethphy1: ethernet-phy@1 {
+				reg = <1>;
+			};
+
+			ethphy2: ethernet-phy@2 {
+				reg = <2>;
+			};
+
+			ethphy3: ethernet-phy@3 {
+				reg = <3>;
+			};
+		};
+	};
 };
 
 &srab {
-- 
2.25.1

