Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDD641F50EE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2020 11:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727814AbgFJJJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Jun 2020 05:09:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727813AbgFJJJu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Jun 2020 05:09:50 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C13AC03E96B
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:09:50 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id d6so635598pjs.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2020 02:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8rOPH/PbuLqa2Cv7xwtOA9u/UUbRhuHyuujsYiUr6F0=;
        b=eBHYdxR1Xa52Fqd6sKtA6Rq9srTsGJmyYGxwbZSYDhJs6eswpgfL+p9qNHFYDV7KsI
         ea0S7VZZel+/Np8snAXVZxKW3KU7rulyRGs1hilXxkMK4Au7hYZWzXz9YV1FisLONDxq
         3C5cCG9B7w6VuXyD5NLkLc9pSlNglhlDmqEDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8rOPH/PbuLqa2Cv7xwtOA9u/UUbRhuHyuujsYiUr6F0=;
        b=E5BaEj/UnvhS+zkpVGa6Gwm9YFb6d58yTIq3gBOpS1Y9HHv3j3Kl8XZZvIeOKThquI
         2ZvSrcsNlHcezMZGC3IYS7W/3YJUlyMb8vcx8Zt/NhiQxVgXdQZ5X7GT5q5ZsIHbErp3
         1NB5DGYfkrA2FJDmsd0G6CN4gnDFP1UVoVjtVikvhbvLwOG84STtD3t2VetG7pqLGSry
         8FGrRufJE+v0QoF/hWmW+s3sU0bRWZwJXuQiYGSJUYoaZzpAhmIIEiE8rNwMm+EYxe9T
         sHinKPFAOsJtF4hS0indYQA/3uhwZwtOpsVykWFbP1mm7raKPD5kOe/u4f3JOPBNQ0sO
         2e4A==
X-Gm-Message-State: AOAM533E1wn7Ni5LgZkxOFIq2lfsGOzn41CNGyh6AEVcRp3TyJng2e+r
        8B86XsumepPMhGAYLJ6OzrDTVw==
X-Google-Smtp-Source: ABdhPJww724krgp0BaN7nCeOkrtyuYDvte4q30IE/QoN+f33C/Hjei4IWQ+/yy2VykQxBXRYOfRA7Q==
X-Received: by 2002:a17:902:968b:: with SMTP id n11mr2104726plp.331.1591780189664;
        Wed, 10 Jun 2020 02:09:49 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp. [114.171.61.116])
        by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 02:09:49 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
Cc:     k@japko.eu, tim.bird@sony.com, daniel@0x0f.com,
        devicetree@vger.kernel.org, Daniel Palmer <daniel@thingy.jp>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        Maxime Ripard <mripard@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Mark Brown <broonie@kernel.org>, allen <allen.chen@ite.com.tw>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Arnd Bergmann <arnd@arndb.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Doug Anderson <armlinux@m.disordat.com>,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        Gregory Fong <gregory.0xf0@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Will Deacon <will@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marc Zyngier <maz@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nathan Huckleberry <nhuck15@gmail.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Ard Biesheuvel <ardb@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] ARM: mstar: Add dts for 70mai midrive d08
Date:   Wed, 10 Jun 2020 18:04:03 +0900
Message-Id: <20200610090421.3428945-6-daniel@0x0f.com>
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

Adds inital support for the 70mai midrive d08 dash camera.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 ++-
 .../boot/dts/mercury5-ssc8336n-midrive08.dts  | 25 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4a5f8075a4f6..35c7ecc52c60 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1344,7 +1344,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	infinity-msc313-breadbee_crust.dtb \
-	infinity3-msc313e-breadbee.dtb
+	infinity3-msc313e-breadbee.dtb \
+	mercury5-ssc8336n-midrive08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts b/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts
new file mode 100644
index 000000000000..4ee50ecf6ab1
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mercury5-ssc8336n.dtsi"
+
+/ {
+	model = "midrive d08";
+	compatible = "70mai,midrived08", "mstar,mercury5";
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

