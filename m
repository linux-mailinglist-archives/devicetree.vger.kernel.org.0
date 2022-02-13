Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA0EC4B3E39
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238655AbiBMW6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238664AbiBMW6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:11 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D017154BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:04 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id f17so24630486edd.2
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ho+AJyfUs2ysXgAUMwBRYPkfVfqL9SW0bkmswW8ndZ8=;
        b=grAOz/ubmR4hw8v/W3sXnNe3HYLPeXGgB3X6Zxb/KVAaJwDombdv/wvJt/rfkRsgv5
         nhjR36Jq2bqW6qQnIi0vbWI3gUlJsOEd0D5bkkAu85FaUcEy9lWDLr5540ifjehV3vK7
         0DPdqFLflJY0Kn8AZ8maUeBTFUe49Ev+anlgRygJ8u2QVr0fXXoOBNNZzj2MKGU2Xq2o
         eFHMgloz8i63MCoGLUTjKZdY1DxMe5I2HvfcBu943xOaDkAonyt0QW8lYMVT7x0cb5iw
         tao16BwPXmdlvqsb/xXR9+TkHPYqKzLHwj9wGT6FnPF5mykX7ubS4M5A/F/JqmFNOAu8
         uF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ho+AJyfUs2ysXgAUMwBRYPkfVfqL9SW0bkmswW8ndZ8=;
        b=GTi6NjjKlO6nTIrZnqZz+JGPt81qqM7IKqWM9KH+l1ZzXIFvXgcGU7pvrpy0f4VfwI
         LtezMxPzKLjQCDRHHNUA1IKtZ1VCrf2rLgoDSXC7uoI7DGu8539qDhHsPFSssUYJMFqZ
         MDkxDu4SpDqypGX5nE28pxhEt0HdWiQBFqOtHzGfkSBEe/ryUbhEZ8Nykof0CEh2N+he
         r9Kt5NVN+NYjEq+xH7dubQHEIYISvuaGhFVepeMs/hpfecRC8dtf2qKeP6Klzy1nAZza
         CL/sdoo7VWra/loP/tgh4t4S88VL/qHc+2Mz6Juf4gvcub9T7pnPAta8pSsmM1odBEem
         EMuA==
X-Gm-Message-State: AOAM533ME6wMnwLYK/r9/6qKqxp2SHTQn+m+M4pi1qkepK2D/6Ix02Ax
        LKOcZ4VuuTG8JOsolf7RbtY=
X-Google-Smtp-Source: ABdhPJys+vngxbmlzUjD/f2kkNzlDACXA/vcUUBP7eLLHdDmp3/wk7atJsgDHhh3LNnlwfkC6jaz/A==
X-Received: by 2002:a05:6402:3687:: with SMTP id ej7mr12770891edb.335.1644793083382;
        Sun, 13 Feb 2022 14:58:03 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:02 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 04/15] ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
Date:   Sun, 13 Feb 2022 22:56:36 +0000
Message-Id: <20220213225646.67761-5-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

bcm2835-pm's bindings now support explicitly setting 'reg-names,' so use
them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm/boot/dts/bcm2711.dtsi        | 1 +
 arch/arm/boot/dts/bcm2835-common.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index dff18fc9a906..338fd91ec209 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -113,6 +113,7 @@ pm: watchdog@7e100000 {
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>,
 			      <0x7ec11000 0x20>;
+			reg-names = "pm", "asb", "rpivid_asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index c25e797b9060..a037d2bc5b11 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -62,6 +62,7 @@ pm: watchdog@7e100000 {
 			#reset-cells = <1>;
 			reg = <0x7e100000 0x114>,
 			      <0x7e00a000 0x24>;
+			reg-names = "pm", "asb";
 			clocks = <&clocks BCM2835_CLOCK_V3D>,
 				 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
 				 <&clocks BCM2835_CLOCK_H264>,
-- 
2.35.1

