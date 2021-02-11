Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF353184D0
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 06:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhBKFYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 00:24:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229740AbhBKFYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 00:24:37 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2892C061356
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:43 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id o7so3112287pgl.1
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 21:22:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F9waNMxdjZkseiYOX3kXTCR3uxm3G9WfxrGuahm7HHQ=;
        b=LTMGFcz5c9P23sKxt0RAscVZauH9WjAnAL3XbRYgIZOhTCsSKfNQVW4LF8uA03ZnFQ
         LqJf7Su6Bb3QEKjgzaDPZF4u5xWb4ph7+wGPTFcaLIXxqLF/c55koYsQbD7exR8RZDAJ
         zyojOufOBjVuqHWOln/vywd2LvUCfsTuV4nm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F9waNMxdjZkseiYOX3kXTCR3uxm3G9WfxrGuahm7HHQ=;
        b=ZcDcImzSmB+5bzLgphP0eBqG6Zv4dX4Nes0RqN3pqjB5syxWaFdXPv8xwO5pn6NF7c
         2o9Tkc/yFajbs29QBAjrmFV7OtvGcGlmzdaFT5zxVrBM+hC3jFV8sXyAMYeIUmiOTBHd
         gdM+EDwZeqLJfkDC5oKPg2phMHAqSGV3UFxPk686zIilm9XxNmD9CPdZN83GNly3NFAr
         owC2LDc7mvJHWxr65jxZVB/XVLiyy63EQpuJoZnsXdEVlazZ+RyXmn7UVeu64m7yB31t
         NF3a/lrb2dp75hmvmRwGRnOSx25yYo/Rc9HFuOM1ngn8UY22CX3ZtUMX2aUCafPPP/4T
         yDxA==
X-Gm-Message-State: AOAM533U57/veU4/kyc8xXrQY43R2QjYTcWULVRMaaelS8GnJE8scsBJ
        19OwXTm/V4LT/m4vxlWcXHp23w==
X-Google-Smtp-Source: ABdhPJyNwjsIBTwjMT0feofmg7/YIbPDYHynlYW5zY3XQ5a27uXBDEeqpN6pN9NT7sSqtG1JXwoY7Q==
X-Received: by 2002:a63:d304:: with SMTP id b4mr6513819pgg.299.1613020963473;
        Wed, 10 Feb 2021 21:22:43 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id o21sm3493511pjp.42.2021.02.10.21.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 21:22:42 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-clk@vger.kernel.org, sboyd@kernel.org,
        devicetree@vger.kernel.org
Cc:     w@1wt.eu, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 5/7] ARM: mstar: Select MSTAR_MSC313_MPLL
Date:   Thu, 11 Feb 2021 14:22:04 +0900
Message-Id: <20210211052206.2955988-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
In-Reply-To: <20210211052206.2955988-1-daniel@0x0f.com>
References: <20210211052206.2955988-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All of the ARCH_MSTARV7 chips have an MPLL as the source for
peripheral clocks so select MSTAR_MSC313_MPLL.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/mach-mstar/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
index 576d1ab293c8..cd300eeedc20 100644
--- a/arch/arm/mach-mstar/Kconfig
+++ b/arch/arm/mach-mstar/Kconfig
@@ -4,6 +4,7 @@ menuconfig ARCH_MSTARV7
 	select ARM_GIC
 	select ARM_HEAVY_MB
 	select MST_IRQ
+	select MSTAR_MSC313_MPLL
 	help
 	  Support for newer MStar/Sigmastar SoC families that are
 	  based on Armv7 cores like the Cortex A7 and share the same
-- 
2.30.0.rc2

