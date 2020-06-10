Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63B571F50EB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 11:09:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727793AbgFJJJY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jun 2020 05:09:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727010AbgFJJJX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jun 2020 05:09:23 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72D07C08C5C1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:09:23 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id i12so603789pju.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=njZa5CzYc0CB1WfMjMWMPTZpIxgWAFaChxUBp8ZpFSA=;
        b=vMeq1g38pphUh+pKX/GurD3h/meY+OMNYdk7FVLctA/zY4fJVLGxODXeCI0af+4X5z
         6bJhJCLOB6zjQxF6j4qg9lf29LKJ/MlLts46Z0hnDgSBriUG1vf7URUNj381KBQ8d5FN
         z0JAAoJ10WqiD/M0GwjwWaSbv7G9+md6gt29g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=njZa5CzYc0CB1WfMjMWMPTZpIxgWAFaChxUBp8ZpFSA=;
        b=JYZa1C6zSqsY1MPzFipm/OcUgNS1XWAkEsunl0amdyP/mZPugiHIYG+N1BEHsId6bv
         m4GO6yCzOyPw+IoPFdSOVeFdIsJ7EzZqcR63evMST5XxueR2JVMD4vVoIhd5MZSdpdhI
         MrUNVcHfEcCW68RDMHDVPt4JvC1yrNGWC260Tc4f9XULmZbW4TZm379tKGKJkzqbEo/7
         VRCLYQyGzHZ9dtj8RNSn4pyN3gqaPc8o1hf5V4fXCMgjugDEL5KggJ5aRPDiZ1kUEc9n
         DfX/HkVuGuqSpfwg5vmxVaNBJc/+O1+hA1v9uYhtfi58uE+tywgA2lxL4TUV+/63wkgG
         K6hA==
X-Gm-Message-State: AOAM533rmVQ5zHXCCZvzaO29hxVpv5kID2y7759I7hIXt+FaDfCBSSQ4
        PZtvbce/15ZXjLmi1Y1D5x9aBg==
X-Google-Smtp-Source: ABdhPJx/lI1p0cF49lGIaJXRlYtG/08x4becUViY4asj3Yx5wttRu38tEyMB17hDW1TgIVPKSiUpNg==
X-Received: by 2002:a17:902:9342:: with SMTP id g2mr2218358plp.326.1591780162932;
        Wed, 10 Jun 2020 02:09:22 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp. [114.171.61.116])
        by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 02:09:22 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
Cc:     k@japko.eu, tim.bird@sony.com, daniel@0x0f.com,
        devicetree@vger.kernel.org, Daniel Palmer <daniel@thingy.jp>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        Stephan Gerhold <stephan@gerhold.net>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Maxime Ripard <mripard@kernel.org>,
        Mark Brown <broonie@kernel.org>, allen <allen.chen@ite.com.tw>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, Mike Rapoport <rppt@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Doug Anderson <armlinux@m.disordat.com>,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        Gregory Fong <gregory.0xf0@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Ard Biesheuvel <ardb@kernel.org>,
        Nathan Huckleberry <nhuck15@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] ARM: mstar: Add dts for msc313(e) based BreadBee boards
Date:   Wed, 10 Jun 2020 18:04:02 +0900
Message-Id: <20200610090421.3428945-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

BreadBee is an opensource development board based on the
MStar msc313(e) SoC.

Hardware details, schematics and so on can be found at:
https://github.com/breadbee/breadbee

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 +++
 .../dts/infinity-msc313-breadbee_crust.dts    | 25 +++++++++++++++++++
 .../boot/dts/infinity3-msc313e-breadbee.dts   | 25 +++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e-breadbee.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e6a1cac0bfc7..4a5f8075a4f6 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1342,6 +1342,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
+dtb-$(CONFIG_ARCH_MSTARV7) += \
+	infinity-msc313-breadbee_crust.dtb \
+	infinity3-msc313e-breadbee.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
new file mode 100644
index 000000000000..8a827c8fd8b2
--- /dev/null
+++ b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity-msc313.dtsi"
+
+/ {
+	model = "breadbee-crust";
+	compatible = "thingyjp,breadbee-crust", "mstar,infinity";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
new file mode 100644
index 000000000000..423bb32e6b74
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity3-msc313e.dtsi"
+
+/ {
+	model = "breadbee";
+	compatible = "thingyjp,breadbee", "mstar,infinity3";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.27.0.rc0

