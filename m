Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7614B43A60A
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231166AbhJYVmm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:42:42 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17492 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230431AbhJYVmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 17:42:42 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1635198000; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=PAw8CWZ1nRMudmBgGRIn23UT/ozM8YnoVVSeaHz/ckfxeBKPyH5MEHl1b3JqtARfZPEYMkAAg+09FShIMRD73j8Im7NhyqgpnlkK6uuNutxgDDUfLcC0V7rOP1NS/Vs53FDPQSmspA7gdwfrDDZ8va4aWGz/xjhXlN8adyH/RdI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1635198000; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=SnkSxvFgrsCV7TvMgmJS/PEAPDNNADsb4ITAS/yR1ro=; 
        b=Bg9tMlOA2R+ydA0u3dSRLi93HeBHx1Mo79RFvIBCF9TMtUSMWV4djdW2WvxL2HtYdV6D+kJeVgwXoVq/D5VlnC2u55pJGMehLukJxSChj90nQrIEafBQLBqnKcKE1tf9DBXQTFhYUp0YAnkCandtMh9+VOcafAWwLtow/q4K8HU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1635198000;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=SnkSxvFgrsCV7TvMgmJS/PEAPDNNADsb4ITAS/yR1ro=;
        b=dDvlbkYEAw0b0n1en03UwVE543MNOy34mN8Ual20Gw0udVPQ3I0pfqsCodgh339p
        PYJ4zAuUB7GsfSr7vtFQXqZredzAYy/MK/ovlFh6HR5Vqo9FQ1Z9g4/lXEls0c6vAAy
        3SbjM8q+jwNr5frv0v6Bj0xzxE0QW0WX+GLQYoFA=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 1635197999128579.5127046827745; Mon, 25 Oct 2021 14:39:59 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U
Date:   Tue, 26 Oct 2021 05:39:26 +0800
Message-Id: <20211025213926.21203-2-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211025213926.21203-1-arinc.unal@arinc9.com>
References: <20211025213926.21203-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define the Realtek RTL8365MB switch without interrupt support on the device tree of Asus RT-AC88U.

Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 77 ++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index b0cee1d87600..6562ee435f88 100644
--- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
+++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
@@ -93,6 +93,83 @@ led {
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
+			reg = <0>;
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
+				rx-internal-delay-ps = <2000>;
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
+			ethphy0: phy@0 {
+				reg = <0>;
+			};
+
+			ethphy1: phy@1 {
+				reg = <1>;
+			};
+
+			ethphy2: phy@2 {
+				reg = <2>;
+			};
+
+			ethphy3: phy@3 {
+				reg = <3>;
+			};
+		};
+	};
 };
 
 &srab {
-- 
2.25.1

