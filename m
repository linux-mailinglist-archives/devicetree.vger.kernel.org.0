Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 477223BECF2
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 19:18:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbhGGRVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 13:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230126AbhGGRVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 13:21:33 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3EA3C06175F
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 10:18:52 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id q18so5772509lfc.7
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=phystech-edu.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ypxDnWif+H1Ur0uToOJNpXylwlZDL/gdovpiZt5z82o=;
        b=IC5AgO9ygAj8ApySXTjmmQ1KSRN0cdqozzHfdj+K2tcM8hm0jOqYro9VjT7rBDRTuG
         vq96jbhyu3H0Guey3tXVh2+IDVFs5M/aOsu0/rfVbG+21L/qlTgU4I9U46fPByKW8Z1A
         YSIzGUUAZik7JSRdzuYfI72eXdMQZNJ/V7EUYDenIDFA/A//+T2mgyV55iCj7mBd0qyL
         kAFVP8K4L5rCkyJJ3dYeFk3J3rdnHGDI5UaNh8w76d4ErteHIqVGV5cTGkBaGG0IJsSn
         ebBCdUf6GuHyd8JUGxxSD+0ZrrEzX+HxaIz/Spjeq0R+bbGQdev5Ew7FeD4yLgwYv9vz
         YRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ypxDnWif+H1Ur0uToOJNpXylwlZDL/gdovpiZt5z82o=;
        b=gQRRzDmuWMNpcdsEUm5t++EQ2eA0+5zd70tWRRbgzgRHM2Yn7+P+61f318o3onKXZ9
         DT/2m3BCgI6b4WBVLaPE5V/QmDdIkUYC3HjdiBvdX/My6itW9Ims/6dCE3u45zqFNfZR
         HY5mFgWwTSrmfP8O8mfyp9SYfSzhitFhLixYW35KKIV/EFovFsUXTpirga2uQBA1Udem
         LBNmwNVU7Ka3vGo/CM7VqjvwRVUXdJPFODsz6SzD6ka8UEavx0JdorBZyv9NOEmqBB0b
         8W80+hrdv9ItO1KEtECN0u0qX+mPeRF0h89NQ6wDIAfTInVyZsHM76s+SV+NSfevNMJ+
         L/SQ==
X-Gm-Message-State: AOAM5336G+HTTlgX9ijQP6sbzfeqDGEJE+AqwJD/B+eOPWqaw/MSf1SD
        19XDQLgHtAxuiWc3egHHNAWqOA==
X-Google-Smtp-Source: ABdhPJz8VSZiE1GbRIW2zEZJUmJvzpwEzRHId//RA7YGJlorwou9uYQ720aDMZGQWPSk0jqptMEGCA==
X-Received: by 2002:ac2:4191:: with SMTP id z17mr19059617lfh.457.1625678331172;
        Wed, 07 Jul 2021 10:18:51 -0700 (PDT)
Received: from 192.168.1.3 ([2a00:1370:810e:abfe:9c62:44e3:b0ab:76fd])
        by smtp.gmail.com with ESMTPSA id z9sm1652235lfu.120.2021.07.07.10.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 10:18:50 -0700 (PDT)
From:   Viktor Prutyanov <viktor.prutyanov@phystech.edu>
To:     sean@mess.org, mchehab@kernel.org, robh+dt@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, rockosov@gmail.com,
        Viktor Prutyanov <viktor.prutyanov@phystech.edu>
Subject: [PATCH] fixup! media: rc: introduce Meson IR blaster driver
Date:   Wed,  7 Jul 2021 20:18:28 +0300
Message-Id: <20210707171828.6967-1-viktor.prutyanov@phystech.edu>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210707141323.20757-3-viktor.prutyanov@phystech.edu>
References: <20210707141323.20757-3-viktor.prutyanov@phystech.edu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix building error. I mistakenly sent the patch from dirty git tree.

Signed-off-by: Viktor Prutyanov <viktor.prutyanov@phystech.edu>
---
 drivers/media/rc/meson-irblaster.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/rc/meson-irblaster.c b/drivers/media/rc/meson-irblaster.c
index bfcdf47e2100..f6cb47593392 100644
--- a/drivers/media/rc/meson-irblaster.c
+++ b/drivers/media/rc/meson-irblaster.c
@@ -215,7 +215,7 @@ static void irb_send(struct irblaster_dev *irb)
 {
 	reinit_completion(&irb->completion);
 
-	dev_dbg(irb->dev, "tx started, buffer length = %u\n", len);
+	dev_dbg(irb->dev, "tx started, buffer length = %u\n", irb->buf_len);
 	irb_send_buffer(irb);
 	wait_for_completion_interruptible(&irb->completion);
 	dev_dbg(irb->dev, "tx completed\n");
-- 
2.21.0

