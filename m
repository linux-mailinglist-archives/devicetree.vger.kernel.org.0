Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68291573D87
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 22:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237010AbiGMUEE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 16:04:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235537AbiGMUED (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 16:04:03 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A8EE0B0
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:04:01 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id dn9so21745306ejc.7
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UFtjBL0G8WDz2c/D6PIZwwxp8rt95ot+RXD/nup58mI=;
        b=BcG2eshtSNpLqEyo1dHlDuhF+2McYZbvaKaaOYjb1lObdMwzhGT0H/UnCF4GtqovUV
         dCEGIOXK4FqCS2q8xedQ0HmtFby2OMBHLvxcsnif9JgS0c5oyxfue9hYy/Zk5RryjFis
         PDwCfKcgfK+0m8Vkpsx5FF8kE81oz2Khlm5SDr5YcHF5Dflj64kw+7ZizDNbAWVthesc
         lLUsYGX171FSz96BBBaQMiyGj8v+PUBMSxP99vwQAjvgY92VeLHw8Cam/vcM1Y4LXx4I
         3hN20ANOZteF5FUpatPhELgERr1xpYhJxsx2ngFRgd7iYhYTaXHmXSer19vy3bDU047y
         Rr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UFtjBL0G8WDz2c/D6PIZwwxp8rt95ot+RXD/nup58mI=;
        b=zFfTgWYI9As04g/VS7lYwvro4HNS6u5jtqKnJkMWJrFXYDIVReOSPRRMrPFByjzjz/
         ejySjdiuTbnEx1C9FgO07QT6L/K9pKwxRefc5CphayqQ7qS5IpmaNFKfPt5iKRp/qldV
         Kit0Ty82ojatzEfQ6govBcJUV2xZJ/qj2ODvzXaUgOuSFPNHrhY/VNYrS2Clcbkc0Rgl
         FfDEBuqS0XbEHhc0npYR9GNkLoZAD+1nnIDj7mh2a1Lm1WfYgXMTNCG9WEMR7YP0fIoT
         31gwpXGJJJ62nQIAYXnGkFCx9ucWM0ft6R6udEDektgjdENugVljjD+6R9wVs9XRs5Lp
         RoYg==
X-Gm-Message-State: AJIora92IAsZThoh+WsWgsoMj6aqhpLCSKE2epeUYE7taGUrTzoodMfI
        Q932L5CAeZuRE/9Dlsrqel0=
X-Google-Smtp-Source: AGRyM1vjmRYrnrgZsYtO1Md9iOXv9Za1/8GP+KAXjVGyx17eY+lwfaiIz7Uzgt3/5lCa5dzacaNdYA==
X-Received: by 2002:a17:907:9715:b0:72b:340b:9059 with SMTP id jg21-20020a170907971500b0072b340b9059mr4999531ejc.384.1657742640117;
        Wed, 13 Jul 2022 13:04:00 -0700 (PDT)
Received: from localhost.lan ([194.187.74.233])
        by smtp.gmail.com with ESMTPSA id l10-20020a1709060cca00b0072b1cb2818csm5300695ejh.158.2022.07.13.13.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 13:03:59 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] arm64: dts: Add base DTS file for bcmbca device Asus GT-AX6000
Date:   Wed, 13 Jul 2022 22:03:51 +0200
Message-Id: <20220713200351.28526-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220713200351.28526-1-zajec5@gmail.com>
References: <20220713200351.28526-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's a home router with 1 GiB of RAM, 6 Ethernet ports, 2 USB ports.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/Makefile  |  4 +++-
 .../bcmbca/bcm4912-asus-gt-ax6000.dts         | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/bcmbca/bcm4912-asus-gt-ax6000.dts

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/Makefile b/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
index d6621a6d888b..38f14307184b 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_ARCH_BCMBCA) += bcm94912.dtb \
+dtb-$(CONFIG_ARCH_BCMBCA) += \
+				bcm4912-asus-gt-ax6000.dtb \
+				bcm94912.dtb \
 				bcm963158.dtb \
 				bcm96858.dtb \
 				bcm963146.dtb \
diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4912-asus-gt-ax6000.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4912-asus-gt-ax6000.dts
new file mode 100644
index 000000000000..ed554666e95e
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4912-asus-gt-ax6000.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+/dts-v1/;
+
+#include "bcm4912.dtsi"
+
+/ {
+	compatible = "asus,gt-ax6000", "brcm,bcm4912", "brcm,bcmbca";
+	model = "Asus GT-AX6000";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00 0x00 0x00 0x40000000>;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.34.1

