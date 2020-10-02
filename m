Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB582281416
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726386AbgJBNer (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNer (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:47 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E2C1C0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:45 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id t23so730851pji.0
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8Yw3W1wDo04qc6EU7K5/0CbVdh78C1ldrffh52yrkp0=;
        b=kQvXISJuXT+ovAT9zSv0PSOxMHVxVy3w5VW0E0FsJCkp4C3uc4jmGbfcBVN4LEmlKl
         AeUg5Y2DEMvQZr2+LKRHzsOeMMnxJITQNyS35KNlRn+pzNnFH91smLo2VlNFyrK1VZME
         DrKOilkSpKrG0rSSpZK49+WEoQTBXIU9KWt5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Yw3W1wDo04qc6EU7K5/0CbVdh78C1ldrffh52yrkp0=;
        b=rOmZCQmp/aH7i8jRofhFSjbW5rSWLapOwfcFX/K7PZ1w/n+R3Dz8i1AfudcwnG8SWX
         XeDv4wDjudV4ZpNrgddhRCbYeRRqTi0ErL+AW8gSQihpPmcsarO+/1n+m/JpgIGYSlDa
         nKS1h0Xev/TR52qGSPZR/djHF3bbOBUa8KSzogKcgfeTOT4jXF1ww6+6aolV1IS9vyTi
         622i0S0LJuUxpq3/oSFt04rliL+3gHHbsEGdYxDY662NGJsEd2IovvKLcR00XY0n8j4m
         PB/uSeYwFKul/cWZYGmqqfqyn1i1g90wWtlSaf869b8eHzI4aC/XUk9bVI354gk0fMYl
         SVlg==
X-Gm-Message-State: AOAM531Uev6rb39RK4+XljYYSSkEi7lIZWaU0ZsLDCeY/G6rFbCaH0zW
        ci0HZWUIHHltq9f2tmK7REbkUQ==
X-Google-Smtp-Source: ABdhPJw0Dn6yc42PCt2Iv6CbUx9stjkWZTT4RawfnU9Fbb0oikjrZ0MRZytZUX4oziayz2EC0J4STw==
X-Received: by 2002:a17:90b:4394:: with SMTP id in20mr2974367pjb.70.1601645685048;
        Fri, 02 Oct 2020 06:34:45 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:44 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 4/5] ARM: mstar: Add mstar prefix to all of the dtsi/dts files
Date:   Fri,  2 Oct 2020 22:34:17 +0900
Message-Id: <20201002133418.2250277-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on Arnd's comment[0] all of the MStar dtsi/dts files should
have had a prefix.

This moves the files, fixes the Makefile that generates dtbs and
fixes up the MAINTAINERS entry.

Fixing up some includes in the files themselves is left for a later
commit as rolling it into this commit resulted in a confusing diff.

0 - https://lore.kernel.org/linux-arm-kernel/CAK8P3a0maQhfaerwG4KgFZOrUPwueKOp2+MOeG9C=+8ZNzc2Kg@mail.gmail.com/

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                                                 | 4 +---
 arch/arm/boot/dts/Makefile                                  | 6 +++---
 ...e_crust.dts => mstar-infinity-msc313-breadbee_crust.dts} | 0
 .../{infinity-msc313.dtsi => mstar-infinity-msc313.dtsi}    | 0
 arch/arm/boot/dts/{infinity.dtsi => mstar-infinity.dtsi}    | 0
 ...3e-breadbee.dts => mstar-infinity3-msc313e-breadbee.dts} | 0
 ...{infinity3-msc313e.dtsi => mstar-infinity3-msc313e.dtsi} | 0
 arch/arm/boot/dts/{infinity3.dtsi => mstar-infinity3.dtsi}  | 0
 ...idrived08.dts => mstar-mercury5-ssc8336n-midrived08.dts} | 0
 ...{mercury5-ssc8336n.dtsi => mstar-mercury5-ssc8336n.dtsi} | 0
 arch/arm/boot/dts/{mercury5.dtsi => mstar-mercury5.dtsi}    | 0
 11 files changed, 4 insertions(+), 6 deletions(-)
 rename arch/arm/boot/dts/{infinity-msc313-breadbee_crust.dts => mstar-infinity-msc313-breadbee_crust.dts} (100%)
 rename arch/arm/boot/dts/{infinity-msc313.dtsi => mstar-infinity-msc313.dtsi} (100%)
 rename arch/arm/boot/dts/{infinity.dtsi => mstar-infinity.dtsi} (100%)
 rename arch/arm/boot/dts/{infinity3-msc313e-breadbee.dts => mstar-infinity3-msc313e-breadbee.dts} (100%)
 rename arch/arm/boot/dts/{infinity3-msc313e.dtsi => mstar-infinity3-msc313e.dtsi} (100%)
 rename arch/arm/boot/dts/{infinity3.dtsi => mstar-infinity3.dtsi} (100%)
 rename arch/arm/boot/dts/{mercury5-ssc8336n-midrived08.dts => mstar-mercury5-ssc8336n-midrived08.dts} (100%)
 rename arch/arm/boot/dts/{mercury5-ssc8336n.dtsi => mstar-mercury5-ssc8336n.dtsi} (100%)
 rename arch/arm/boot/dts/{mercury5.dtsi => mstar-mercury5.dtsi} (100%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 45ec9df85a64..89cf1e4cffb0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2150,9 +2150,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar/*
-F:	arch/arm/boot/dts/infinity*.dtsi
-F:	arch/arm/boot/dts/mercury*.dtsi
-F:	arch/arm/boot/dts/mstar-v7.dtsi
+F:	arch/arm/boot/dts/mstar-*
 F:	arch/arm/mach-mstar/
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4572db3fa5ae..d80d20e6ce9e 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1356,9 +1356,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
-	infinity-msc313-breadbee_crust.dtb \
-	infinity3-msc313e-breadbee.dtb \
-	mercury5-ssc8336n-midrived08.dtb
+	mstar-infinity-msc313-breadbee_crust.dtb \
+	mstar-infinity3-msc313e-breadbee.dtb \
+	mstar-mercury5-ssc8336n-midrived08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts b/arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts
similarity index 100%
rename from arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
rename to arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts
diff --git a/arch/arm/boot/dts/infinity-msc313.dtsi b/arch/arm/boot/dts/mstar-infinity-msc313.dtsi
similarity index 100%
rename from arch/arm/boot/dts/infinity-msc313.dtsi
rename to arch/arm/boot/dts/mstar-infinity-msc313.dtsi
diff --git a/arch/arm/boot/dts/infinity.dtsi b/arch/arm/boot/dts/mstar-infinity.dtsi
similarity index 100%
rename from arch/arm/boot/dts/infinity.dtsi
rename to arch/arm/boot/dts/mstar-infinity.dtsi
diff --git a/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts
similarity index 100%
rename from arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
rename to arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts
diff --git a/arch/arm/boot/dts/infinity3-msc313e.dtsi b/arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi
similarity index 100%
rename from arch/arm/boot/dts/infinity3-msc313e.dtsi
rename to arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi
diff --git a/arch/arm/boot/dts/infinity3.dtsi b/arch/arm/boot/dts/mstar-infinity3.dtsi
similarity index 100%
rename from arch/arm/boot/dts/infinity3.dtsi
rename to arch/arm/boot/dts/mstar-infinity3.dtsi
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts b/arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts
similarity index 100%
rename from arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts
rename to arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n.dtsi b/arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi
similarity index 100%
rename from arch/arm/boot/dts/mercury5-ssc8336n.dtsi
rename to arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi
diff --git a/arch/arm/boot/dts/mercury5.dtsi b/arch/arm/boot/dts/mstar-mercury5.dtsi
similarity index 100%
rename from arch/arm/boot/dts/mercury5.dtsi
rename to arch/arm/boot/dts/mstar-mercury5.dtsi
-- 
2.27.0

