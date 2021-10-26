Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97E4643B7B1
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 18:58:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237526AbhJZRAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 13:00:54 -0400
Received: from sender4-op-o14.zoho.com ([136.143.188.14]:17438 "EHLO
        sender4-op-o14.zoho.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233302AbhJZRAw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 13:00:52 -0400
ARC-Seal: i=1; a=rsa-sha256; t=1635267481; cv=none; 
        d=zohomail.com; s=zohoarc; 
        b=lHpt+GaMRmXCRxplYnIB4QqjnsfCft559K1H7iQuwgfBRAzUs/wDB9wkx64I+bIxfoDn/1WPG1eeajXu3IVoWN5Ni8GXwt5Omf6cZ6h03KoCChLv4111AUc/ucSavp/HGjfx2u+gBXoNB4v/7q3G9Ev0gP3k7m3j+yHTns5Yxb0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
        t=1635267481; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
        bh=XG4QsWNyPHY2fduXtILPq08OZPqVb7ztgcflG/Q/poo=; 
        b=OwuIO0wgx5F4+6df/9N1g8XQ3sjsuEEF4RHv+RPGaBXJQnVUn9T3fvWUEXQew/uP2aGBnNcNxGMOTPB2bFZGi4lJI28tVlaLkHlZCbkBjMDiQDfq0uVVksRBfJZXY6ZFY0oBUoE/ymexi1UJYTnlwdDEseB32c+nKwdC0PiksFo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
        dkim=pass  header.i=arinc9.com;
        spf=pass  smtp.mailfrom=arinc.unal@arinc9.com;
        dmarc=pass header.from=<arinc.unal@arinc9.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1635267481;
        s=zmail; d=arinc9.com; i=arinc.unal@arinc9.com;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:MIME-Version:Content-Type:Content-Transfer-Encoding;
        bh=XG4QsWNyPHY2fduXtILPq08OZPqVb7ztgcflG/Q/poo=;
        b=fsGhuMKPmbLI6MvODq1SBbjEsYtkOUgr1GIvD40LuA3+GAv+4i36Qhzmo6O9DX+0
        hAa/OT5pj8K3i1rT6tvyvD3nTPcaUpZAjsv5qr3XPLDE9f2rZo5WQN4Lnt1cNCwatEL
        GOwjiukOKx98K7GpAfPBrtKlgVV4YF0un/f33q8I=
Received: from localhost.localdomain (85.117.236.245 [85.117.236.245]) by mx.zohomail.com
        with SMTPS id 16352674801441012.238494578255; Tue, 26 Oct 2021 09:58:00 -0700 (PDT)
From:   =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <ALSI@bang-olufsen.dk>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
Subject: [PATCH v2 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U
Date:   Wed, 27 Oct 2021 00:57:06 +0800
Message-Id: <20211026165703.17997-2-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211026165703.17997-1-arinc.unal@arinc9.com>
References: <20211026165703.17997-1-arinc.unal@arinc9.com>
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
---
 arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 77 ++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
index b0cee1d87600..16dea851719f 100644
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

