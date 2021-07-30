Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA05C3DBC89
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 17:46:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233041AbhG3Pqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 11:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232719AbhG3Pqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 11:46:44 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E9DFC0613C1
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:46:40 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id pf12-20020a17090b1d8cb0290175c085e7a5so21450205pjb.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7ohaLOrFvMPYOwPHkhrUlARVRgT2ljmNxajBb/yxaac=;
        b=J17LyUDE8Yo2nHUiCmMlgZq8I3yLfIyU4twrisKA0rzzwG5t6FV4RZQIyXG0BoYFBl
         N+mtUoq7163QOaK3A22SACsDbBIGm4bw16OVBqsP2kkPjlPaYFG4cUPIFM8SQp5GADbb
         Qzenjya7ny6KUpmgHX5UjFRJE7WFHDJpGzMsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7ohaLOrFvMPYOwPHkhrUlARVRgT2ljmNxajBb/yxaac=;
        b=pydD8eU+Mb9Xi9Ut2f0UlNXVqd/wL7Ac01UKFiH1kbkX/aSAYRThwisDXotw3Os8Qp
         4LHpTfNQPfyMhbn6w0/Nx5JyTo8EZ/DSmO0ORKdH6uzzcKlBxvRZ+/TaA32jsRefo4Tm
         Rr5uCDpPPy7GqcsNjXikTshzq100CbYXhldRBfhvgcMa2gGWd//04Wibj4LOIOP+MU1y
         /OjuHS/bsr3n2moU75vb9R1b+X+Ae7HYBlO+nT9ucxrjKlqPYGV3AernoteTbwhwj1Ia
         WhuzakhzWPFNPTS/i9TJSmDiU/GUp0pUfuGir17NT81oDhgtA+n3N5IBWUttNfC31glA
         Ja3Q==
X-Gm-Message-State: AOAM533NMRbpxoP7kHpAgnHp6YLTF03PhFvlFfxVR+kI1/DAQmOY8GME
        lmBRUtudwBEWph1bnUjO1g44q6MgTMl+OhQs
X-Google-Smtp-Source: ABdhPJwckcuTwdneMgghpL15NaD/GuPlvbqz6vYecQaLZqzjDqWyfvp0IjrQshK6FMvhYBYWrCvR8Q==
X-Received: by 2002:a17:902:e04f:b029:eb:66b0:6d08 with SMTP id x15-20020a170902e04fb02900eb66b06d08mr3115614plx.50.1627659999704;
        Fri, 30 Jul 2021 08:46:39 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3424:e0ac:5a92:d061])
        by smtp.gmail.com with ESMTPSA id u188sm3175621pfc.115.2021.07.30.08.46.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 08:46:39 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, steev@kali.org, robert.foss@linaro.org,
        Laurent.pinchart@ideasonboard.com, bjorn.andersson@linaro.org,
        daniel@ffwll.ch, airlied@linux.ie, jernej.skrabec@gmail.com,
        maarten.lankhorst@linux.intel.com, rodrigo.vivi@intel.com,
        sam@ravnborg.org, jonas@kwiboo.se, mripard@kernel.org,
        thierry.reding@gmail.com, lyude@redhat.com,
        linus.walleij@linaro.org, rajeevny@codeaurora.org,
        linux-arm-msm@vger.kernel.org, a.hajda@samsung.com,
        tzimmermann@suse.de, narmstrong@baylibre.com,
        Douglas Anderson <dianders@chromium.org>,
        Sean Paul <seanpaul@chromium.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] drm/dp: Don't zero PWMGEN_BIT_COUNT when driver_pwm_freq_hz not specified
Date:   Fri, 30 Jul 2021 08:46:00 -0700
Message-Id: <20210730084534.v2.1.If017efce7116ae8ba015ed7def840c390a0e0c77@changeid>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
In-Reply-To: <20210730154605.2843418-1-dianders@chromium.org>
References: <20210730154605.2843418-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The function drm_edp_backlight_init() is defined such that the
"driver_pwm_freq_hz" parameter is optional--it's 0 if you don't want
to futz with it. If you follow this variable through, you'll find out
that if it's 0 we won't ever set the "bl->pwmgen_bit_count", leaving
it as 0.

That means that before using it in drm_edp_backlight_enable() we need
to check to see if it's non-zero.

Programming this field to zero was confusing the panel I tested with
(Samsung ATNA33XC20). The backlight still worked somewhat but the
brightness values didn't correspond to what they should have been.

Fixes: 867cf9cd73c3 ("drm/dp: Extract i915's eDP backlight code into DRM helpers")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Sean Paul <seanpaul@chromium.org>
---

(no changes since v1)

 drivers/gpu/drm/drm_dp_helper.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_dp_helper.c b/drivers/gpu/drm/drm_dp_helper.c
index b5f75ca05774..b8a5c5e49d74 100644
--- a/drivers/gpu/drm/drm_dp_helper.c
+++ b/drivers/gpu/drm/drm_dp_helper.c
@@ -3229,10 +3229,12 @@ int drm_edp_backlight_enable(struct drm_dp_aux *aux, const struct drm_edp_backli
 		new_dpcd_buf &= ~DP_EDP_BACKLIGHT_CONTROL_MODE_MASK;
 		new_dpcd_buf |= DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD;
 
-		ret = drm_dp_dpcd_writeb(aux, DP_EDP_PWMGEN_BIT_COUNT, bl->pwmgen_bit_count);
-		if (ret != 1)
-			drm_dbg_kms(aux->drm_dev, "%s: Failed to write aux pwmgen bit count: %d\n",
-				    aux->name, ret);
+		if (bl->pwmgen_bit_count) {
+			ret = drm_dp_dpcd_writeb(aux, DP_EDP_PWMGEN_BIT_COUNT, bl->pwmgen_bit_count);
+			if (ret != 1)
+				drm_dbg_kms(aux->drm_dev, "%s: Failed to write aux pwmgen bit count: %d\n",
+					aux->name, ret);
+		}
 	}
 
 	if (bl->pwm_freq_pre_divider) {
-- 
2.32.0.554.ge1b32706d8-goog

