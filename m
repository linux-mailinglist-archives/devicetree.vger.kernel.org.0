Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51AF1405E7D
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 23:03:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346662AbhIIVDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 17:03:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347159AbhIIVDB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 17:03:01 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B90C5C061762
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 14:01:47 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id k23-20020a17090a591700b001976d2db364so2415371pji.2
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 14:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dq4h7+QxpbiqQXm8FiH1luLdpO9yHnMWiTl8Lza6PBM=;
        b=WLV/YrRrnMKqArMiJdvvON6tMRXjqwpkooltJM59BjEurKmvO2A/Mk3IoxauyUHatY
         YmxnWXCyoIeFRyNkzHacDe1TcqCZIUWLg9WCC0/WiYb/O2lnhyeTNmDTiYNH4fbKZWlB
         dKzmpi66llN8pZtVGaywSgNou5lpbBmFbPxbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dq4h7+QxpbiqQXm8FiH1luLdpO9yHnMWiTl8Lza6PBM=;
        b=u3Hec8DVlnQB0lHiL7dOT53dKeQtrqW4Isma6Au0/s2es3HDouSDeZ6gk0Arh12WxU
         9fvgAz6qVF4bakl2Gco9DYU5VUCOK8t+NfvWNdXDIaktv9tXNm3Sup5PIyK6UDWzSOvD
         pCIpL0MWyhHtjq3trtEYyrDFZD/yCBhP5ZXnHTMpULQQ7dnM0mQgSSRUZISdgjElxp98
         N5ITK6mKjy3ETpbzdFOfNNiTGyEEO3E07Y+0F4ka0RwrAhqBxsqqVGOQE8d4jHZzugIz
         E6WX2I2bsWqq/hEulg0OASyhk5tnXtERy1I43gI0MIbtDkqQ8yZ220L/WsH3KHnEhcri
         KtLw==
X-Gm-Message-State: AOAM531mJPrPgYu7fxhx8eHJiZWKfkpalwTxY2OawPlJhbj2jNh7abNf
        3yrnoxPReGN3tfGfS/ZzF4D7fg==
X-Google-Smtp-Source: ABdhPJyLD/l/Ob7B2ukN9J6bpeSGDZ/UDyih3lCihpbRAGX0gLMqPZNaiVPNl4b6EOwVET+FPysFGg==
X-Received: by 2002:a17:90b:3b47:: with SMTP id ot7mr5674996pjb.172.1631221307302;
        Thu, 09 Sep 2021 14:01:47 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:8da3:b0fb:4261:2c10])
        by smtp.gmail.com with ESMTPSA id l143sm177069pfd.60.2021.09.09.14.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 14:01:46 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus W <linus.walleij@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        Steev Klimaszewski <steev@kali.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 13/15] drm/panel-edp: Fix "prepare_to_enable" if panel doesn't handle HPD
Date:   Thu,  9 Sep 2021 14:00:29 -0700
Message-Id: <20210909135838.v4.13.Ia8288d36df4b12770af59ae3ff73ef7e08fb4e2e@changeid>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210909210032.465570-1-dianders@chromium.org>
References: <20210909210032.465570-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While cleaning up the descriptions of the delay for eDP panels I
realized that we'd have a bug if any panels need the
"prepare_to_enable" but HPD handling isn't happening in the panel
driver. Let's put in a stopgap to at least make us not violate
timings. This is not perfectly optimal but trying to do better is
hard. At the moment only 2 panels specify this delay and only 30 ms is
at stake. These panels are also currently hooked up with "hpd-gpios"
so effectively this "fix" is just a theoretical fix and won't actually
do anything for any devices currently supported in mainline.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---

Changes in v4:
- panel-simple-edp => panel-edp

Changes in v3:
- Fix "prepare_to_enable" patch new for v3.

 drivers/gpu/drm/panel/panel-edp.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 80a37a4e5750..a83ef9905ea7 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -508,12 +508,32 @@ static int panel_edp_prepare(struct drm_panel *panel)
 static int panel_edp_enable(struct drm_panel *panel)
 {
 	struct panel_edp *p = to_panel_edp(panel);
+	unsigned int delay;
 
 	if (p->enabled)
 		return 0;
 
-	if (p->desc->delay.enable)
-		msleep(p->desc->delay.enable);
+	delay = p->desc->delay.enable;
+
+	/*
+	 * If there is a "prepare_to_enable" delay then that's supposed to be
+	 * the delay from HPD going high until we can turn the backlight on.
+	 * However, we can only count this if HPD is handled by the panel
+	 * driver, not if it goes to a dedicated pin on the controller.
+	 * If we aren't handling the HPD pin ourselves then the best we
+	 * can do is assume that HPD went high immediately before we were
+	 * called (and link training took zero time).
+	 *
+	 * NOTE: if we ever end up in this "if" statement then we're
+	 * guaranteed that the panel_edp_wait() call below will do no delay.
+	 * It already handles that case, though, so we don't need any special
+	 * code for it.
+	 */
+	if (p->desc->delay.prepare_to_enable && !p->hpd_gpio && !p->no_hpd)
+		delay = max(delay, p->desc->delay.prepare_to_enable);
+
+	if (delay)
+		msleep(delay);
 
 	panel_edp_wait(p->prepared_time, p->desc->delay.prepare_to_enable);
 
-- 
2.33.0.309.g3052b89438-goog

