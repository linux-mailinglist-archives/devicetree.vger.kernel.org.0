Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93616515D5D
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 15:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382701AbiD3NQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 09:16:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382691AbiD3NQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 09:16:20 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE95C7DE1A
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:12:57 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id n126-20020a1c2784000000b0038e8af3e788so6150740wmn.1
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U51TZQhHKAPu6F0ygHwpPoWdzkMjxCa4kGnNd6Hzk/o=;
        b=b0NKL9VwC3e8+DspbbgveqAFU8bLQvyX69E9r037zGadc4FwpXgqITKvvl+0SX57Ju
         iyd2yvK458NMGSY35dGv+++xES/M1jS4JlNfGizyR4RATqiId3ETfHip/UjmZYM01zIq
         ZUALlaJYdOdy0lFYEeOz7P1F34Z23Fh8y8AgDcP1xtsLq3h3SDRmczx02MN+TIKrhcr8
         Zr3jtMzfpdO3CE6ZQO5CrsRbsJ2N7pRxDf7S48XXzKPKusBmNKR2NPAwiwZ9vochTqjP
         +4W3DBHd/+HWnJhjnMlk/89d1UXC9fF29oBpkmilBYu2uYeiHS/VI6wFnvTepFO2KT6g
         6c0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U51TZQhHKAPu6F0ygHwpPoWdzkMjxCa4kGnNd6Hzk/o=;
        b=7FbbO/UFi6lIlT8nVgDtfpwK5yknZH4vwfeZvMTmV9V/iNwA7fW1DE1cb8PPQM8Zf7
         GLA3rOaGn8XhgwIFU+Aw3GGBMaY3HYh/BsPOL9Uipnmy0rdVFEwhUQK0cma5nZi0+7gK
         l4yrEJijeC/nd2UkVJGBC+k1ZJBYzj1TZzZSatFrvS4Zrgwnwr+/OAPLsA6IwlRq85O9
         KnCFYCAWOFBcEjDPZ2xoLlrZ261FIqDoutQEgp9SYQjvaeREeS5ggTNh8tMMpqdPbHnb
         n7DMFtpE/7Ybw3adxqD8nz0hteBN14aIQIuki1VjQ1T9p/awqexaEXC3IInc9mYMzcfa
         vWIQ==
X-Gm-Message-State: AOAM530TgSoZgPiuRa4LiRcE0n37SAElpq5cIUgzscAfpYYxPrrH61fV
        RPvOUVwZH4MyTZTreUd/SpOAOQ==
X-Google-Smtp-Source: ABdhPJyhZkGAtnEZF26eRlmNAzd28Gd/+hWFcNPXa+U5piOfk+rl/XVZsDmWUL3JznznT7nfvKwsSw==
X-Received: by 2002:a1c:f018:0:b0:37b:c13c:3128 with SMTP id a24-20020a1cf018000000b0037bc13c3128mr7518375wmb.157.1651324376333;
        Sat, 30 Apr 2022 06:12:56 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id p9-20020adfa209000000b0020c5253d8ebsm2004439wra.55.2022.04.30.06.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 06:12:55 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, Conor Dooley <mail@conchuod.ie>
Subject: [PATCH v2 3/8] riscv: dts: microchip: remove soc vendor from filenames
Date:   Sat, 30 Apr 2022 14:09:18 +0100
Message-Id: <20220430130922.3504268-4-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220430130922.3504268-1-mail@conchuod.ie>
References: <20220430130922.3504268-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Having the SoC vendor both as the directory and in the filename adds
little. Remove microchip from the filenames so that the files will
resemble the other directories in riscv (and arm64). The new names
follow a soc-board.dts & soc{,-fabric}.dtsi pattern.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <mail@conchuod.ie>
---
 arch/riscv/boot/dts/microchip/Makefile                          | 2 +-
 .../microchip/{microchip-mpfs-fabric.dtsi => mpfs-fabric.dtsi}  | 0
 .../{microchip-mpfs-icicle-kit.dts => mpfs-icicle-kit.dts}      | 2 +-
 .../riscv/boot/dts/microchip/{microchip-mpfs.dtsi => mpfs.dtsi} | 2 +-
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs-fabric.dtsi => mpfs-fabric.dtsi} (100%)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs-icicle-kit.dts => mpfs-icicle-kit.dts} (98%)
 rename arch/riscv/boot/dts/microchip/{microchip-mpfs.dtsi => mpfs.dtsi} (99%)

diff --git a/arch/riscv/boot/dts/microchip/Makefile b/arch/riscv/boot/dts/microchip/Makefile
index 855c1502d912..af3a5059b350 100644
--- a/arch/riscv/boot/dts/microchip/Makefile
+++ b/arch/riscv/boot/dts/microchip/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
-dtb-$(CONFIG_SOC_MICROCHIP_POLARFIRE) += microchip-mpfs-icicle-kit.dtb
+dtb-$(CONFIG_SOC_MICROCHIP_POLARFIRE) += mpfs-icicle-kit.dtb
 obj-$(CONFIG_BUILTIN_DTB) += $(addsuffix .o, $(dtb-y))
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-fabric.dtsi b/arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
similarity index 100%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs-fabric.dtsi
rename to arch/riscv/boot/dts/microchip/mpfs-fabric.dtsi
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
similarity index 98%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
rename to arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
index c71d6aa6137a..84b0015dfd47 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-icicle-kit.dts
@@ -3,7 +3,7 @@
 
 /dts-v1/;
 
-#include "microchip-mpfs.dtsi"
+#include "mpfs.dtsi"
 
 /* Clock frequency (in Hz) of the rtcclk */
 #define RTCCLK_FREQ		1000000
diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/mpfs.dtsi
similarity index 99%
rename from arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
rename to arch/riscv/boot/dts/microchip/mpfs.dtsi
index bf21a2edd180..cc3386068c2d 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/mpfs.dtsi
@@ -3,7 +3,7 @@
 
 /dts-v1/;
 #include "dt-bindings/clock/microchip,mpfs-clock.h"
-#include "microchip-mpfs-fabric.dtsi"
+#include "mpfs-fabric.dtsi"
 
 / {
 	#address-cells = <2>;
-- 
2.36.0

