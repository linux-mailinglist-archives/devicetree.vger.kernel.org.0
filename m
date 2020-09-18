Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECE926FAEB
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 12:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726308AbgIRKuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 06:50:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbgIRKt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 06:49:59 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 542A9C061756
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 03:49:59 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id d6so3189148pfn.9
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 03:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6W9k3ndaa9cRCwcQ1M/asEuo1OK8FOTIyDJ+tvTfSmU=;
        b=n2ydSm+7ddUwC2Ld9ZS1KciG6GPQvVJj/GCzCnVuylYK7y5jH/cv47ZNeJgab4lyRX
         Eulik6P5RMjcTYvrE2870Kq3B31FifCYq6VZHHo4SI79NUzqc7omtxaeO+79cu+XojAN
         fsLXtvXzrrZF1jWefDNCGCYF8zB58Ye70Qtks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6W9k3ndaa9cRCwcQ1M/asEuo1OK8FOTIyDJ+tvTfSmU=;
        b=TRIlC3RjHTQT8KtODMsafxYyv9yQ3O1/53qHNiIs0Z9nJAMSumXC2YlXO7aT8F7DjA
         I2lyXCCplblcLFS0204MxfACsUo3iYhGlIrnretkMAk56FmPKOVfv7f1v34burC9BcxK
         qXkbFGnsfqrVjyO6jWo4Los8q56++XJRwM6dn2XKwb4g6ZhigDobrOtN6zIWS8Lf5Cbu
         agw74SOreP1TSLoeJEgjpCBpKZPTg8ret6eLIfy/DLXH3E6/xKyadfDijz0sau+iinmi
         QIvWeNU5UC1ylV8JNsXSQVwyJl5Ghw0FYDYiwsk4Qm1ASeLq4lPfJXZIbGBrQ1rwIPc+
         9wag==
X-Gm-Message-State: AOAM533d0EZOlU9ui2SH8O6MZGO1OoiUWYQZNJYdu3fNj4VFsy72M2Xb
        2AMZUJJG2lE6XfhtdfqNIFS6hkxvCmhUW4hN
X-Google-Smtp-Source: ABdhPJynwrKmtSuRYqDXyegk2R40XjWezA9fHh5970NfD8b9O6/r4n09jzKoHCriDD+Jj3q6Wtr+hQ==
X-Received: by 2002:aa7:9522:0:b029:142:2501:3986 with SMTP id c2-20020aa795220000b029014225013986mr15493774pfp.75.1600426198861;
        Fri, 18 Sep 2020 03:49:58 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id 131sm2857634pfy.5.2020.09.18.03.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 03:49:58 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, mark-pk.tsai@mediatek.com,
        arnd@arndb.de, maz@kernel.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 1/3] ARM: mstar: Select MStar intc
Date:   Fri, 18 Sep 2020 19:49:47 +0900
Message-Id: <20200918104949.3260823-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200918104949.3260823-1-daniel@0x0f.com>
References: <20200918104949.3260823-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MediaTek recently introduced support for the MStar interrupt
controller that is also present in some of their chips as well
as the MStar/Sigmastar chips.

Almost all of the peripheral interrupts go through an instance of
this controller in MStar/SigmaStar Arm v7 chips so we want to select
it if CONFIG_ARCH_MSTARV7 is selected.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/mach-mstar/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
index 52744fe32368..576d1ab293c8 100644
--- a/arch/arm/mach-mstar/Kconfig
+++ b/arch/arm/mach-mstar/Kconfig
@@ -3,6 +3,7 @@ menuconfig ARCH_MSTARV7
 	depends on ARCH_MULTI_V7
 	select ARM_GIC
 	select ARM_HEAVY_MB
+	select MST_IRQ
 	help
 	  Support for newer MStar/Sigmastar SoC families that are
 	  based on Armv7 cores like the Cortex A7 and share the same
-- 
2.27.0

