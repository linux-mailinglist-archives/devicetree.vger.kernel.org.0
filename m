Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E127230CB65
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 20:24:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239529AbhBBTWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 14:22:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239601AbhBBTU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 14:20:58 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0B3C0613D6
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 11:20:18 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id s15so13047151plr.9
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 11:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e+o+UPWpwuQFchtTrrp1JQI9+CBVVq/LhzPVdVc1GWg=;
        b=Fo1uLKa8TGSxAVjitKCWihEfFzuubLqrYHqw/h3YjGnPCzUWe8vEE7T/Re5UQqAf1b
         ZHlN1/yMwj7ltvrkM4Uky+LfcTv61BzZNMI2LU6KW4TepwThtGuCaEljJPs0y6hgdfHt
         qRDhv1liTKeTBlTOVwTJm2DpWA4ZUFKJqZ1qY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=e+o+UPWpwuQFchtTrrp1JQI9+CBVVq/LhzPVdVc1GWg=;
        b=SWrNdGmky1gJ0KX713BR1WBx5Fgo6Y6ge14IsmbJvPZvuBOa92+CHxJrDS3naNhpeN
         xMnbS1UyYppP7/Zoc1Nkn8e0CjeOVro7wdUUXsFZAUhkyL3Hq3t12IZuLg3vgJFGD/dl
         j+uoYXY27ZkDfXjQbBpHaIpdKkzTxYu7RPvFbdY3hu93HjUuyCmxLjqy8iDMyV7MSO5z
         LuGYwKhLW/j0U5mVo4lSHjbqKhDGdM5V4EJxKdQLKrax+HATZnD3TpG92fhOXGPQsRpc
         qQb91Uz+JM2g9OGh5nW7g7yjUF/nk/JkU03XZV1MnR2yhnVCXMzqqR9l46if38QLI+jY
         w68A==
X-Gm-Message-State: AOAM533mGcerFXYjYRSHDcEexzRvKwrS7vFusQgsVegQMmLGruwWip5Y
        RF4IZ+4ZNhG7CvhraaQEl6E99gXqv86gGg==
X-Google-Smtp-Source: ABdhPJwYbFUIfvuxMuXkupVzK2EaOdtzLPGXYdKLXO/1XSCSp6d0rN+Sp43BtE5oXH7uLwxbMR/HWA==
X-Received: by 2002:a17:90b:4d07:: with SMTP id mw7mr5902885pjb.172.1612293617890;
        Tue, 02 Feb 2021 11:20:17 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:201:3571:bd6e:ee19:b59f])
        by smtp.gmail.com with ESMTPSA id r5sm22095076pfl.165.2021.02.02.11.20.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 11:20:17 -0800 (PST)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel test robot <lkp@intel.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v2] ASoC: da7218: Drop CONFIG_OF ifdef
Date:   Tue,  2 Feb 2021 11:20:16 -0800
Message-Id: <20210202192016.49028-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This reverts commit a06cd8cf97a3 ("ASoC: da7218: skip of_device_id table
when !CONFIG_OF") because we want to make of_match_device() stop using
of_match_ptr() internally, confusing compilers and causing ifdef
pollution.

Reported-by: kernel test robot <lkp@intel.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Changes from v1:
 * Dropped of_match_ptr() in driver too

 sound/soc/codecs/da7218.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/da7218.c b/sound/soc/codecs/da7218.c
index 2bfafbe9e3dc..83cace9d0139 100644
--- a/sound/soc/codecs/da7218.c
+++ b/sound/soc/codecs/da7218.c
@@ -2278,14 +2278,12 @@ static irqreturn_t da7218_irq_thread(int irq, void *data)
  * DT
  */
 
-#ifdef CONFIG_OF
 static const struct of_device_id da7218_of_match[] = {
 	{ .compatible = "dlg,da7217", .data = (void *) DA7217_DEV_ID },
 	{ .compatible = "dlg,da7218", .data = (void *) DA7218_DEV_ID },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, da7218_of_match);
-#endif
 
 static inline int da7218_of_get_id(struct device *dev)
 {
@@ -3311,7 +3309,7 @@ MODULE_DEVICE_TABLE(i2c, da7218_i2c_id);
 static struct i2c_driver da7218_i2c_driver = {
 	.driver = {
 		.name = "da7218",
-		.of_match_table = of_match_ptr(da7218_of_match),
+		.of_match_table = da7218_of_match,
 	},
 	.probe		= da7218_i2c_probe,
 	.id_table	= da7218_i2c_id,

base-commit: 19c329f6808995b142b3966301f217c831e7cf31
-- 
https://chromeos.dev

