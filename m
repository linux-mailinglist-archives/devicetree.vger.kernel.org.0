Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97F96641A30
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 01:52:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbiLDAwB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 19:52:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiLDAwA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 19:52:00 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC158BC91
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 16:51:59 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id hd14-20020a17090b458e00b0021909875bccso8782260pjb.1
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 16:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMKDlQK6w5vM05cXeYbQoGa5PaT/kmzZOsaTUxGIqfw=;
        b=h04sl9uqFP4yjV+BzAe/1I6f4E74BUDWAxauN4tiRzlfYJPedxIKaPzEuIKqAan0lm
         NESPULc7hwRVj6zyICBZD/5Ur7C71H4XFZ2n/THytNgNX+F1+hZUA/FubuxOer9aRxUn
         9NuwwRpdnvrIDh06KRn73YWOfzVQ63R6DIdSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NMKDlQK6w5vM05cXeYbQoGa5PaT/kmzZOsaTUxGIqfw=;
        b=W3FOvvW2mOivyq8YnxlHQCCSQrwOh2pWWXJWLPEekHqigs9c2nLPA8PeKjkvCihr+H
         RsGKxsxg1HpQ5ekLsDjSM/V4or6/6gp5+LTbevz3TnjXw3QKluTbXhOIJokLsluctViH
         QgXeEq8fxPIrwikc8zP/x5QmCCmXznhqxl/fEnWMswezTS+uVYrlRkPAu9X9PomYQuH0
         CJNOVV3juBZEK/f25mjO5Fa/hUrdI4/LHOph38YzcnDVELyCg6YVXflkO9tvHjQNIMlM
         kjUJhD5KGZ/6ULR8u3aisChRqGGdiJPEq5A1QrUfa5mp9YfQldi/a/z66dDvkNSQevvx
         B9vQ==
X-Gm-Message-State: ANoB5plF9F8frR73TjyLjJDepUfitXMjADw0Tmw8tVM7w5qm+J1EcDH/
        SAMLQY3YFT71QNdnxwrZcFzYmA==
X-Google-Smtp-Source: AA0mqf6J3qV2CKsySZYd8rDtLINBQW/HTYZN+JEgB2qymluBQMwEw31K6Hi9ZlDjFbsA11bMunpWrA==
X-Received: by 2002:a17:90a:67c4:b0:213:ba14:3032 with SMTP id g4-20020a17090a67c400b00213ba143032mr89152676pjm.111.1670115119242;
        Sat, 03 Dec 2022 16:51:59 -0800 (PST)
Received: from doug-ryzen-5700G.. ([192.183.212.197])
        by smtp.gmail.com with ESMTPSA id 24-20020a631358000000b004393f60db36sm6058977pgt.32.2022.12.03.16.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 16:51:58 -0800 (PST)
From:   Doug Brown <doug@schmorgal.com>
To:     Russell King <linux@armlinux.org.uk>,
        Lubomir Rintel <lkundrak@v3.sk>
Cc:     soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 2/2] ARM: mmp: fix timer_read delay
Date:   Sat,  3 Dec 2022 16:51:17 -0800
Message-Id: <20221204005117.53452-3-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204005117.53452-1-doug@schmorgal.com>
References: <20221204005117.53452-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

timer_read() was using an empty 100-iteration loop to wait for the
TMR_CVWR register to capture the latest timer counter value. The delay
wasn't long enough. This resulted in CPU idle time being extremely
underreported on PXA168 with CONFIG_NO_HZ_IDLE=y.

Switch to the approach used in the vendor kernel, which implements the
capture delay by reading TMR_CVWR a few times instead.

Fixes: 49cbe78637eb ("[ARM] pxa: add base support for Marvell's PXA168 processor line")
Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 arch/arm/mach-mmp/time.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-mmp/time.c b/arch/arm/mach-mmp/time.c
index 41b2e8abc9e6..708816caf859 100644
--- a/arch/arm/mach-mmp/time.c
+++ b/arch/arm/mach-mmp/time.c
@@ -43,18 +43,21 @@
 static void __iomem *mmp_timer_base = TIMERS_VIRT_BASE;
 
 /*
- * FIXME: the timer needs some delay to stablize the counter capture
+ * Read the timer through the CVWR register. Delay is required after requesting
+ * a read. The CR register cannot be directly read due to metastability issues
+ * documented in the PXA168 software manual.
  */
 static inline uint32_t timer_read(void)
 {
-	int delay = 100;
+	uint32_t val;
+	int delay = 3;
 
 	__raw_writel(1, mmp_timer_base + TMR_CVWR(1));
 
 	while (delay--)
-		cpu_relax();
+		val = __raw_readl(mmp_timer_base + TMR_CVWR(1));
 
-	return __raw_readl(mmp_timer_base + TMR_CVWR(1));
+	return val;
 }
 
 static u64 notrace mmp_read_sched_clock(void)
-- 
2.34.1

