Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C087442C3F2
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 16:51:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237747AbhJMOxH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 10:53:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237583AbhJMOxC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 10:53:02 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B15C061749
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 07:50:58 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id g8so11362228edt.7
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 07:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g+boHR+P6CRSFhxTy6DU7bag2b9F4dvm5W+HzUTNU/E=;
        b=XTNk/3R7ITqhSWrlEwmcQA26afBP/q7Uma09+xLhlS7NSwD5TnQMoZu8q3oCDef80u
         bc8wq/vHMxd56xhgAg6YLmayq6elpnmE9LqNNMA7W2E4zOdXMydopOExcbTAla5JIris
         0zeB0HLLPp+z16YIKB8ubk8yGRr09xy1lBRW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g+boHR+P6CRSFhxTy6DU7bag2b9F4dvm5W+HzUTNU/E=;
        b=mZP3PWJgkdgi1FwNE+l/uKwHsL662E1UrEZPo25+8iWqIkoo7in5iCiAoQMG9lRroS
         4ZBB0MKzoMJNAsKUKT3XonHhmNaCPTCfxgft3eOIEg3s0A8iYCbXuGtxPIQOjufS+am+
         2bvB8EG2L+guio7eBaVFBQXlTr1r5bydru4Mw4gIe1J3qL3QOciom1jgZv9uFYyv4xP3
         f3cAz83WQF0LqF7GYQHUWEZeU3PgLQ+4MnllRE5o+3vS+FC2Z5pAZMXbQS3shaFJK5Og
         IS8Vwg4OH7qJzoj+PP3FawjKfiX26+giEIYiiEXPJIqY7NLKLFLRrtEAG2sgMrIiftAI
         ZezQ==
X-Gm-Message-State: AOAM530CI6aivjFEXTl4gGJiiecv2K3hWXWKIFtgyFvy3BgJQjZeaGnt
        tFhVsxKZGbZbaw0Td1PO4vOK5Q==
X-Google-Smtp-Source: ABdhPJxFArcsNa39elqIDIOBbdpFT6Sne8vB4YyZmHDxjt3UGGo4foJpE74/fFT/cfaLKnDxqxkzSw==
X-Received: by 2002:a05:6402:34d5:: with SMTP id w21mr10689905edc.358.1634136656918;
        Wed, 13 Oct 2021 07:50:56 -0700 (PDT)
Received: from capella.. (27-reverse.bang-olufsen.dk. [193.89.194.27])
        by smtp.gmail.com with ESMTPSA id nd22sm7535098ejc.98.2021.10.13.07.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Oct 2021 07:50:56 -0700 (PDT)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 net-next 3/6] dt-bindings: net: dsa: realtek-smi: document new compatible rtl8365mb
Date:   Wed, 13 Oct 2021 16:50:35 +0200
Message-Id: <20211013145040.886956-4-alvin@pqrs.dk>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211013145040.886956-1-alvin@pqrs.dk>
References: <20211013145040.886956-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

rtl8365mb is a new realtek-smi subdriver for the RTL8365MB-VC 4+1 port
10/100/1000M Ethernet switch controller. Its compatible string is
"realtek,rtl8365mb".

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---

v1 -> v2:
  - add an example to highlight RGMII delay configuration and CPU port
    reg number

RFC -> v1: no change; collect Reviewed-by and Acked-by

 .../bindings/net/dsa/realtek-smi.txt          | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt b/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
index b6ae8541bd55..7959ec237983 100644
--- a/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
+++ b/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
@@ -9,6 +9,7 @@ SMI-based Realtek devices.
 Required properties:
 
 - compatible: must be exactly one of:
+      "realtek,rtl8365mb" (4+1 ports)
       "realtek,rtl8366"
       "realtek,rtl8366rb" (4+1 ports)
       "realtek,rtl8366s"  (4+1 ports)
@@ -62,6 +63,8 @@ and subnodes of DSA switches.
 
 Examples:
 
+An example for the RTL8366RB:
+
 switch {
 	compatible = "realtek,rtl8366rb";
 	/* 22 = MDIO (has input reads), 21 = MDC (clock, output only) */
@@ -151,3 +154,87 @@ switch {
 		};
 	};
 };
+
+An example for the RTL8365MB-VC:
+
+switch {
+	compatible = "realtek,rtl8365mb";
+	mdc-gpios = <&gpio1 16 GPIO_ACTIVE_HIGH>;
+	mdio-gpios = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+
+	switch_intc: interrupt-controller {
+		interrupt-parent = <&gpio5>;
+		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#address-cells = <0>;
+		#interrupt-cells = <1>;
+	};
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0>;
+		port@0 {
+			reg = <0>;
+			label = "swp0";
+			phy-handle = <&ethphy0>;
+		};
+		port@1 {
+			reg = <1>;
+			label = "swp1";
+			phy-handle = <&ethphy1>;
+		};
+		port@2 {
+			reg = <2>;
+			label = "swp2";
+			phy-handle = <&ethphy2>;
+		};
+		port@3 {
+			reg = <3>;
+			label = "swp3";
+			phy-handle = <&ethphy3>;
+		};
+		port@6 {
+			reg = <6>;
+			label = "cpu";
+			ethernet = <&fec1>;
+			phy-mode = "rgmii";
+			tx-internal-delay-ps = <2000>;
+			rx-internal-delay-ps = <2000>;
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+				pause;
+			};
+		};
+	};
+
+	mdio {
+		compatible = "realtek,smi-mdio";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: phy@0 {
+			reg = <0>;
+			interrupt-parent = <&switch_intc>;
+			interrupts = <0>;
+		};
+		ethphy1: phy@1 {
+			reg = <1>;
+			interrupt-parent = <&switch_intc>;
+			interrupts = <1>;
+		};
+		ethphy2: phy@2 {
+			reg = <2>;
+			interrupt-parent = <&switch_intc>;
+			interrupts = <2>;
+		};
+		ethphy3: phy@3 {
+			reg = <3>;
+			interrupt-parent = <&switch_intc>;
+			interrupts = <3>;
+		};
+	};
+};
-- 
2.32.0

