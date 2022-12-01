Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F067A63EDF6
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 11:37:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230184AbiLAKhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 05:37:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230357AbiLAKhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 05:37:06 -0500
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22CC91EEED
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 02:37:05 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id c15so1443266pfb.13
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 02:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=daynix-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+WRkgKEIfnbIC3sboGx7at523Tajis/IinNKBu0g+f0=;
        b=4aJjSaljnbWvmCdxfv2Tw8eNcPRlLQgtjkc95h7EWk4LbVtnRfG9yZ9085y/tbN/U+
         uLYVvkAC3maD/srRId4iYVVZxanKsYrHI7De9MyJxn3JUkxTuRBnhuVBjtmYip+79p9F
         Ea7P9w6ygdO6c1U5+imSJM2ONyKGZLfOeVeg0eiIpx65LYcNTarhKGvpr5hYydm2U4hi
         dTjhtEh9F6txeCwAldKilSPo2brXCeRJufeELa0/WjcGjYMWwez6mejy8eIyOrhxWG7o
         lRIfo84Taw3mifwHYsuzrM/Jg+gQrA2Y+jcUgGH6H/LHx2O6BLCbT8BR/Az3+R+9nUqa
         QKaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+WRkgKEIfnbIC3sboGx7at523Tajis/IinNKBu0g+f0=;
        b=unIKK87CxoJ0jsGaLz4WnvHOtNZ5GDOSFU9Va3R4WT2R70sW5n4JPYrpV/7LoDzfbL
         iZHHTgNstdSgpBonCjj1iROewsTObr75dJnh5m59OADU4cbWOLBcDJqzo21XK+gZ77rQ
         Q3gg/BRwJ38gWZ8n1auW5R4mCrILDIqbnn7uzJDc5Yynm85t4TFLj+SeK05IWHibcvkh
         1RmT9IQ/403pBButG5mif8im5LJ8mkzCMDNFhdAFC2w0qvSUVfd/PXaghswdggxyjmSe
         eDhA3kPIkUihwArJJHPshMtMIlEESthbKrOMosCx2ji1c1s89SLevswucYA/fHvLHmBM
         oxPg==
X-Gm-Message-State: ANoB5pmXgMRhUTfAhT8ouKq/ralvsRnAefetDMpb1q7kK+1SJ6HvgH4v
        ndlo7eyy7zKwm90N4vpnMnSsGQ65Stk8c55e
X-Google-Smtp-Source: AA0mqf43IR8AhUgxd1fohVg0/7ky938ImQTjBbMoTgnM3ajiZwSIxVkoEgYa1CSaTh7TSSmpgJi1iA==
X-Received: by 2002:a05:6a00:216e:b0:56e:7b62:bba with SMTP id r14-20020a056a00216e00b0056e7b620bbamr46739385pff.55.1669891024654;
        Thu, 01 Dec 2022 02:37:04 -0800 (PST)
Received: from fedora.flets-east.jp ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
        by smtp.gmail.com with ESMTPSA id jx24-20020a17090b46d800b00213202d77d9sm2709877pjb.43.2022.12.01.02.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 02:37:04 -0800 (PST)
From:   Akihiko Odaki <akihiko.odaki@daynix.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, asahi@lists.linux.dev,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Akihiko Odaki <akihiko.odaki@daynix.com>
Subject: [PATCH] arch: arm64: dts: apple: Remove stdout-path
Date:   Thu,  1 Dec 2022 19:36:51 +0900
Message-Id: <20221201103651.27807-1-akihiko.odaki@daynix.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

u-boot overrides stdout-path so that it points to /chosen/framebuffer
with some condition.
> arm: apple: Point stdout-path to framebuffer when keyboard present
>
> Unless you have a spare Apple Silicon machine, getting access to
> the serial port on Apple Silicon machines requires special
> hardware. Given that most machines come with a built-in screen
> the framebuffer is likely to be the most convenient output device
> for most users. While U-Boot will output to both serial and
> framebuffer, OSes might not. Therefore set stdout-path to point
> at /chosen/framebuffer when a keyboard is connected to the machine.
https://github.com/AsahiLinux/u-boot/commit/a609353e82fd757b7635d18ed6a0828fff657d59

Perhaps it made sense to specify serial0 as stdout-path when the
framebuffer and keyboard support was inmature, but today it is
preferrable to use /chosen/framebuffer instead of serial0 for the
console in the most cases as the u-boot change states.

Remove stdout-path to allow the kernel to choose the appropriate
console. For Linux, it will be VT, which will be eventually backed by
the framebuffer, if it is enabled. Otherwise, it will fall back to the
serial.

Signed-off-by: Akihiko Odaki <akihiko.odaki@daynix.com>
---
 arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi | 2 --
 arch/arm64/boot/dts/apple/t600x-j375.dtsi      | 2 --
 arch/arm64/boot/dts/apple/t8103-jxxx.dtsi      | 2 --
 arch/arm64/boot/dts/apple/t8112-jxxx.dtsi      | 2 --
 4 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi b/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
index 5547f5e7ac5a..14b6bf234f82 100644
--- a/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi
@@ -30,8 +30,6 @@ chosen {
 		#size-cells = <2>;
 		ranges;
 
-		stdout-path = "serial0";
-
 		framebuffer0: framebuffer@0 {
 			compatible = "apple,simple-framebuffer", "simple-framebuffer";
 			reg = <0 0 0 0>; /* To be filled by loader */
diff --git a/arch/arm64/boot/dts/apple/t600x-j375.dtsi b/arch/arm64/boot/dts/apple/t600x-j375.dtsi
index 7c207b1df949..22e96b436bf2 100644
--- a/arch/arm64/boot/dts/apple/t600x-j375.dtsi
+++ b/arch/arm64/boot/dts/apple/t600x-j375.dtsi
@@ -28,8 +28,6 @@ chosen {
 		#size-cells = <2>;
 		ranges;
 
-		stdout-path = "serial0";
-
 		framebuffer0: framebuffer@0 {
 			compatible = "apple,simple-framebuffer", "simple-framebuffer";
 			reg = <0 0 0 0>; /* To be filled by loader */
diff --git a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
index 3c5da0e5a41d..d2483f618d44 100644
--- a/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103-jxxx.dtsi
@@ -27,8 +27,6 @@ chosen {
 		#size-cells = <2>;
 		ranges;
 
-		stdout-path = "serial0";
-
 		framebuffer0: framebuffer@0 {
 			compatible = "apple,simple-framebuffer", "simple-framebuffer";
 			reg = <0 0 0 0>; /* To be filled by loader */
diff --git a/arch/arm64/boot/dts/apple/t8112-jxxx.dtsi b/arch/arm64/boot/dts/apple/t8112-jxxx.dtsi
index b6b815d93c3e..af4153dcb55d 100644
--- a/arch/arm64/boot/dts/apple/t8112-jxxx.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112-jxxx.dtsi
@@ -22,8 +22,6 @@ chosen {
 		#size-cells = <2>;
 		ranges;
 
-		stdout-path = "serial0";
-
 		framebuffer0: framebuffer@0 {
 			compatible = "apple,simple-framebuffer", "simple-framebuffer";
 			reg = <0 0 0 0>; /* To be filled by loader */
-- 
2.38.1

