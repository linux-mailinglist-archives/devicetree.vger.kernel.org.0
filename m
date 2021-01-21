Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6D752FF125
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 17:56:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729227AbhAUPya (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:54:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732426AbhAUPyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:54:16 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CBBC06178A
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 07:52:59 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id n11so3033533lji.5
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 07:52:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=JgJ9soxybA1o27bKejN8yKs9EOx9gsIQCO6dTbQVL9c=;
        b=ZwI8PpIUolJOdFomVXItWc6Ei9K6Xlnxm5Je1UlruTVxwV8/5MKEhFHUNJy2RelrSR
         mVjJkRTv9PGcoVSw6cCjitPuJ21NHvqakZ0U+qGjOXrwURslvqFzFx7U7jkDGKFPjVFw
         +1mjDQcArQjUoPInkCnHSvriac5lShzk07L5IiODdLW8xZpJgXX1yLjBNQdIa8AXzn0m
         tUZJtbm4H+JIYl0yfXq41+dIyrP4VI8eBWfS015dtAjorV62ukH9PAQqf9eNP44WW3RL
         s7hGPD/RH1YCrs9xGMJYCQLA4bRyRvYR/PfC/EXFKB98kwa+Jt3HuLU0y9d512V7Vx5Q
         qA2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JgJ9soxybA1o27bKejN8yKs9EOx9gsIQCO6dTbQVL9c=;
        b=l2gvLX6AAaYVegr8xfv3wJHArm2mPcClxhWUSJOIh3w7MLkiGFuRcPDm/f4wR3ZEk7
         S3OvnXD4mHew7CSGQW2PzX16X7VXaC4leSnWStEqRHX8aHSDOKrTz32D2hYUPzxxXFLy
         UKt861xEuwD8/k5UMsWf8Mneq+h1GizfXV4l99DLRV7uvHh/WLaZgR7CCx/aPtoYbeAZ
         l3cuTvvyMaJFCbF3+d347FjIMl4c8FW5EF8Q2NRKqoO898e0WxGi2zzTX3R+YzYFNKWU
         uh+iwoiHD1W4NdPHu1+glc4Y9Ykc74hgjzq5Vd9HBk3JP4Tgh8cVA9N1MtsL+PJiJApI
         z1jQ==
X-Gm-Message-State: AOAM530A+RHa0Jojj7MmQTantJI9xFa8ml8Oxh56B2Q7fq5AyCWeGhJt
        nqGzUohLU2ESFiVZcFRmhrH2+w==
X-Google-Smtp-Source: ABdhPJzBas/8VImlBe+3srXin6AiXd1AubNON2XkPDcrMPRT0OoveVfac9pRS6bgKYVKOKxw6/sV2w==
X-Received: by 2002:a2e:5018:: with SMTP id e24mr7505282ljb.425.1611244378214;
        Thu, 21 Jan 2021 07:52:58 -0800 (PST)
Received: from zr.local ([185.200.81.30])
        by smtp.gmail.com with ESMTPSA id l7sm616628lja.15.2021.01.21.07.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 07:52:57 -0800 (PST)
From:   Zyta Szpak <zr@semihalf.com>
To:     shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     stable@vger.kernel.org
Subject: [PATCH] arm64: dts: freescale: fix dcfg address range
Date:   Thu, 21 Jan 2021 16:52:37 +0100
Message-Id: <20210121155237.15517-1-zr@semihalf.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dcfg was overlapping with clockgen address space which resulted
in failure in memory allocation for dcfg. According regs description
dcfg size should not be bigger than 4KB.

Signed-off-by: Zyta Szpak <zr@semihalf.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 025e1f587662..565934cbfa28 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -385,7 +385,7 @@
 
 		dcfg: dcfg@1ee0000 {
 			compatible = "fsl,ls1046a-dcfg", "syscon";
-			reg = <0x0 0x1ee0000 0x0 0x10000>;
+			reg = <0x0 0x1ee0000 0x0 0x1000>;
 			big-endian;
 		};
 
-- 
2.17.1

