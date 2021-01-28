Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F96C306AF9
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 03:18:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbhA1CSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 21:18:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbhA1CSm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 21:18:42 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50655C061574
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 18:18:02 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id i7so3270597pgc.8
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 18:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M6xZQukm+CkMsW6GYQx3SquyaTLPH3j72H16IX2xsEM=;
        b=lGq5IhuzZfmx24uYWHzwbXwNkG0Knk79MCA+h6lkKcG9uLIBw7iHHlLcadtEXEcSNb
         ixl19ilEJTT+3kYs7bn1T3WUAKej01gtRif9Y3RV72ncmyqB/v9HXjko07yRRjLm1aK/
         p9SfPtVvp8i2ZHd7Hr575p1/Uy+rhPB9UzXKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M6xZQukm+CkMsW6GYQx3SquyaTLPH3j72H16IX2xsEM=;
        b=l7GwiJLU+iqTsPEzaMPkFzfNEMzZJNWFc0B0O95m8D5SmA+ySvo0WmWFPSRvs1IQwp
         Ccj0kVthW8Euu+w47+Xk2XpqZiy0uXxUB9M0nEeq6l138iMjxgBJDkhBEptsU92L5H5T
         TxkUs68S8A8mDn4Wmw5oUXNCmcG/AAO0/2v/1JUQPLTQX93K+FwDwxvtYRp6QiBkh6OD
         FQPK+CG7zY8ZyxxnUryfkw6xbGflVc1JQs34aliTjLLln4FGZ4cNEhUYQheTdH+pySVk
         PFHljhWwCGzeXLofsfqiYVZoK/8Fo4HNzO+CXbcDEue603C6ZhIB4/YfiV1defnn6GVh
         DpKw==
X-Gm-Message-State: AOAM532wPrDfao4QfitrnZpemIqPOBfYArXFuE/Jk3eVyVaf3E7oHGK6
        BsE/FZ9WRRwwvN6WGzrMuMqpsA==
X-Google-Smtp-Source: ABdhPJxWGqd7Knme1438Y32UV4uKZqCrSWv7RwnfynJSMW2KE+AWz0H1QgoM3o5FL+QOw+6l/d/ukQ==
X-Received: by 2002:a05:6a00:15d2:b029:1b7:30c1:8495 with SMTP id o18-20020a056a0015d2b02901b730c18495mr13462477pfu.32.1611800281804;
        Wed, 27 Jan 2021 18:18:01 -0800 (PST)
Received: from judyhsiao-p920.tpe.corp.google.com ([2401:fa00:1:10:a53b:f71a:ed56:92d8])
        by smtp.gmail.com with ESMTPSA id 101sm3162508pjo.38.2021.01.27.18.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 18:18:00 -0800 (PST)
From:   Judy Hsiao <judyhsiao@chromium.org>
X-Google-Original-From: Judy Hsiao <judyhsiao@google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, tzungbi@chromium.org,
        swboyd@chromium.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Judy Hsiao <judyhsiao@google.com>,
        Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH] drm/msm/dp: trigger unplug event in msm_dp_display_disable
Date:   Thu, 28 Jan 2021 10:17:53 +0800
Message-Id: <20210128021753.2560931-1-judyhsiao@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

1. Trigger the unplug event in msm_dp_display_disable() to shutdown
   audio properly.
2. Reset the completion before signal the disconnect event.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 3bc7ed21de286..81f6794a25100 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -651,8 +651,8 @@ static int dp_hpd_unplug_handle(struct dp_display_private *dp, u32 data)
 	dp_add_event(dp, EV_DISCONNECT_PENDING_TIMEOUT, 0, DP_TIMEOUT_5_SECOND);
 
 	/* signal the disconnect event early to ensure proper teardown */
-	dp_display_handle_plugged_change(g_dp_display, false);
 	reinit_completion(&dp->audio_comp);
+	dp_display_handle_plugged_change(g_dp_display, false);
 
 	dp_catalog_hpd_config_intr(dp->catalog, DP_DP_HPD_PLUG_INT_MASK |
 					DP_DP_IRQ_HPD_INT_MASK, true);
@@ -890,6 +890,9 @@ static int dp_display_disable(struct dp_display_private *dp, u32 data)
 
 	/* wait only if audio was enabled */
 	if (dp_display->audio_enabled) {
+		/* signal the disconnect event */
+		reinit_completion(&dp->audio_comp);
+		dp_display_handle_plugged_change(dp_display, false);
 		if (!wait_for_completion_timeout(&dp->audio_comp,
 				HZ * 5))
 			DRM_ERROR("audio comp timeout\n");
-- 
2.29.2

