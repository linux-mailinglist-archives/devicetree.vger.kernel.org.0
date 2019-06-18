Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8CE49ACC
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 09:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725934AbfFRHlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 03:41:53 -0400
Received: from mail-wm1-f98.google.com ([209.85.128.98]:56106 "EHLO
        mail-wm1-f98.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726023AbfFRHlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 03:41:53 -0400
Received: by mail-wm1-f98.google.com with SMTP id a15so2019012wmj.5
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 00:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=okoko.fi; s=okoko;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=t0Vqi/RB6vd3sTFj8r0XFtYp6zxmyWgaP1RbCqpMuHg=;
        b=IsxmHO8pbbaTDMMhZXGehcVjKzvL6pC8soL58WAW8Ieg7BqyKeSgr9E/W7QLo/HCPq
         9rABZnNUxf/Ka6yoa2Apt6EwSl3CBmEVF8yd7MBvbyZYiu/J70IQ6tI4r7tywLwWdtlh
         5w99AgJ6Tjhws4M+bacGgFhWaQ0/FgvNoa+zE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=t0Vqi/RB6vd3sTFj8r0XFtYp6zxmyWgaP1RbCqpMuHg=;
        b=l9DAfdkbQlahWSvx53C2tVLR+QSus9cKdvMCgxzgSGf11fR9e0A4Efs0oqUU90heuu
         H46b/hjW1TjvOSz/QV/EIUwhqeprPmeAiQgMz6Odr23Tc+mFHdWwRDvwgeRibK/9KV3Z
         CtLEcKtef6Vzx37O4O5Apn9FQvjv6d702HGJ02aKlU5XwKMoMk5wBEo1Og+Fq7elF8g5
         jsoqBde20bKOcf0nhizHL+1STEIMkAfOmoMfOO3yf8Vt/rOeCr17xx3iU3DxXrXdd00U
         kEb49q2N/iisgHhYpNa+VeHr17GZc4rhX65WuVge7t/VDHmDw4Ts01R96pu6c0ry4kg+
         oQQQ==
X-Gm-Message-State: APjAAAWmDG/TXt750XmZudSRnnwPuf8Y6NQiUBQZ8yLLNPHY3D0hOTbe
        FlDkkgnK2DyAS8BMp9EZknWPd0HBVNcuFJ18CWjPS4+128j6RQ==
X-Google-Smtp-Source: APXvYqydFUxa82KvmETVUZcfjM8PkupOirGSVC5mbNqfnR0pyyVWNFLzIVX6nRu9w3pplClHEc3GhFeBPlpa
X-Received: by 2002:a1c:6641:: with SMTP id a62mr2039009wmc.175.1560843711554;
        Tue, 18 Jun 2019 00:41:51 -0700 (PDT)
Received: from localhost.localdomain (46-163-209-30.blcnet.fi. [46.163.209.30])
        by smtp-relay.gmail.com with ESMTPS id l18sm212063wrn.66.2019.06.18.00.41.50
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 00:41:51 -0700 (PDT)
X-Relaying-Domain: okoko.fi
From:   Marko Kohtala <marko.kohtala@okoko.fi>
To:     linux-fbdev@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Cc:     Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        =?UTF-8?q?Michal=20Vok=C3=A1=C4=8D?= <michal.vokac@ysoft.com>,
        Marko Kohtala <marko.kohtala@okoko.fi>
Subject: [PATCH 1/6] video: ssd1307fb: Use screen_buffer instead of screen_base
Date:   Tue, 18 Jun 2019 10:41:06 +0300
Message-Id: <20190618074111.9309-2-marko.kohtala@okoko.fi>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190618074111.9309-1-marko.kohtala@okoko.fi>
References: <20190618074111.9309-1-marko.kohtala@okoko.fi>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sparse reported incorrect type due to different address spaces.
The screen_base is __iomem, but the memory is not from a device so we can
use screen_buffer instead and avoid some type casts.

Signed-off-by: Marko Kohtala <marko.kohtala@okoko.fi>
---
 drivers/video/fbdev/ssd1307fb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fbdev/ssd1307fb.c b/drivers/video/fbdev/ssd1307fb.c
index 3b361bc9feb8..6c2980331ffd 100644
--- a/drivers/video/fbdev/ssd1307fb.c
+++ b/drivers/video/fbdev/ssd1307fb.c
@@ -150,7 +150,7 @@ static inline int ssd1307fb_write_cmd(struct i2c_client *client, u8 cmd)
 static void ssd1307fb_update_display(struct ssd1307fb_par *par)
 {
 	struct ssd1307fb_array *array;
-	u8 *vmem = par->info->screen_base;
+	u8 *vmem = par->info->screen_buffer;
 	int i, j, k;
 
 	array = ssd1307fb_alloc_array(par->width * par->height / 8,
@@ -213,7 +213,7 @@ static ssize_t ssd1307fb_write(struct fb_info *info, const char __user *buf,
 	struct ssd1307fb_par *par = info->par;
 	unsigned long total_size;
 	unsigned long p = *ppos;
-	u8 __iomem *dst;
+	void *dst;
 
 	total_size = info->fix.smem_len;
 
@@ -226,7 +226,7 @@ static ssize_t ssd1307fb_write(struct fb_info *info, const char __user *buf,
 	if (!count)
 		return -EINVAL;
 
-	dst = (void __force *) (info->screen_base + p);
+	dst = info->screen_buffer + p;
 
 	if (copy_from_user(dst, buf, count))
 		return -EFAULT;
@@ -547,7 +547,7 @@ static int ssd1307fb_probe(struct i2c_client *client,
 	struct fb_deferred_io *ssd1307fb_defio;
 	u32 vmem_size;
 	struct ssd1307fb_par *par;
-	u8 *vmem;
+	void *vmem;
 	int ret;
 
 	if (!node) {
@@ -657,7 +657,7 @@ static int ssd1307fb_probe(struct i2c_client *client,
 	info->var.blue.length = 1;
 	info->var.blue.offset = 0;
 
-	info->screen_base = (u8 __force __iomem *)vmem;
+	info->screen_buffer = vmem;
 	info->fix.smem_start = __pa(vmem);
 	info->fix.smem_len = vmem_size;
 
-- 
2.17.1

