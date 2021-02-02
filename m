Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F327230CA16
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:38:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238708AbhBBSi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:38:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238822AbhBBSh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:37:29 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 699A9C0613D6
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:36:48 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id c132so15473072pga.3
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=93B1hwUGpTMtS5SZqP8BFl4z4pGXcZ5Af5eOCl6zLTI=;
        b=nWFea0wTnaFq+z7Lcc4SZugVgpWGvP+yAdzXf/Ibm6IoU38mc/3LLoXHjvutxpyK6H
         LVeQVZEUGpnhfKSbWnwMDOlQX8OGK2XrKLmHMv2goN7/r+PAeEn2BKjFwTl9kxM5m/ce
         UnC0t6u8xQSds8Cwo6WbXzpAGgXmt9QtFjv6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=93B1hwUGpTMtS5SZqP8BFl4z4pGXcZ5Af5eOCl6zLTI=;
        b=XFll42mTDdFVSXU+ZvdLVG85vVxGXx34RRidHd7ObsSfpwb8mkBJa7tG8pjW4sWKi1
         FR/SOmUvheSPT99VUHMZVufkoYGMEiOecBctXz5s2H6k1KrjnvmCO4xTZtyYY/eRtOai
         WKczbrt1+ZMdww9P5dgA/7BILiYoceF4wRjbYXqws3f/xX8CGexOUu9yK8Vr//wRS+As
         Jvk3uHsRV2+QctwDPhNxsbGuv8SqG9WiCGhghGpy1eCp/mSovThbGYwXIRg2u2wDnzvN
         cWXI/omxv5R3CVKvRrNv2hZXYQSL4NuM0GhEzsW6wfz6XB9qAlqT4IT2ojLIRlmTypMQ
         6saQ==
X-Gm-Message-State: AOAM531RPzGWbKtMWpZh7iMa6+qPs4lRP9G4kqrcdkvnHWWONWS4ioU9
        mpE4QqDtIiphCrNuxisP0FBrsIdxZZJ3ZQ==
X-Google-Smtp-Source: ABdhPJx4cyLCDGVzd8QBXVdWMTSEG++Arft38UUmG7ky+whsyp/Cgtks2SZGoRJfWnqblrJCxoHJhw==
X-Received: by 2002:a63:ce4a:: with SMTP id r10mr10177872pgi.3.1612291008025;
        Tue, 02 Feb 2021 10:36:48 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:202:201:3571:bd6e:ee19:b59f])
        by smtp.gmail.com with ESMTPSA id c204sm21781994pfc.152.2021.02.02.10.36.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Feb 2021 10:36:47 -0800 (PST)
From:   Stephen Boyd <swboyd@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel test robot <lkp@intel.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>
Subject: [PATCH for-next] ASoC: da7218: Drop CONFIG_OF ifdef
Date:   Tue,  2 Feb 2021 10:36:46 -0800
Message-Id: <20210202183646.38602-1-swboyd@chromium.org>
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
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Please ack so Rob can take through DT tree.

 sound/soc/codecs/da7218.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/codecs/da7218.c b/sound/soc/codecs/da7218.c
index 2bfafbe9e3dc..6d78bccb55c3 100644
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

base-commit: 19c329f6808995b142b3966301f217c831e7cf31
-- 
https://chromeos.dev

