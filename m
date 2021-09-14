Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 039BD40B926
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 22:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234560AbhINUYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 16:24:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234718AbhINUY1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 16:24:27 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A9AC0613A3
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:39 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id v1so139490plo.10
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rzFpNJqBOGrvK8PxTEisk5vASJ81UtyTd+SuH+Jj6C4=;
        b=DLM6eGapNxE2vVc3P4C/IXZ7ewDC2TZAzbBclSO9gAO+g3JjjVDgx9Xk2xGLZmSyPH
         N+5Mhsv+LxHtby729s8U9pukPgT0vbL6ulWqBCO+Bj6l3Ui4h8sOSg11KomCnOBFwOv/
         gTtVKSWGY0KJFBkzwniJNF+9O9yI0QI709x2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rzFpNJqBOGrvK8PxTEisk5vASJ81UtyTd+SuH+Jj6C4=;
        b=XtTt7nWVKMNCzAUEeTJ6uunViR/LhYCrqvdfsX12THQIqe8C0mry+6eKjbVhxGKk7m
         l0otPyp+XBn4pr/xmdsBFOd261PJWfuTOa4C7l27v44CLM2mjJg0aIgzT5k6eSJcs5Lo
         W5wLVDQhLhi+eD89E/piKPBzsxSfdiV+zw6IB6ZoMzmpHD9IarUjaIcRDfh98L06xV6a
         Ie4tRbTd/nEMy9g1+tlfioRK2xtUYUhXwF+DjMRf9ArlXdr4ejkS9YeTl5G6EwjLgq+M
         iXXOTP4X97cmrt8UNiYaHKgDEkQAeu0ZleRX0uvVpDVGyIJgCfU+YFjlFo3byYqN82Aq
         z4gQ==
X-Gm-Message-State: AOAM533QgU7wVlKcsHATBZG4uAIai5+IkdnhM/1H+q0EdJWnp5/xQLGb
        WbnfZceDe0sBiI3NhDRukQRWsA==
X-Google-Smtp-Source: ABdhPJy8i/dFscfXlM3GCb7yl0yPY+U0rw+Ib7iozR9Nz10ZdHDtYe4aRkU+gU9znARPbJw7KL2xoQ==
X-Received: by 2002:a17:902:6546:b0:13a:339a:6616 with SMTP id d6-20020a170902654600b0013a339a6616mr16644770pln.34.1631650958848;
        Tue, 14 Sep 2021 13:22:38 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f38f:9d0f:3eba:f8c4])
        by smtp.gmail.com with ESMTPSA id 141sm12185393pgg.16.2021.09.14.13.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 13:22:38 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Steev Klimaszewski <steev@kali.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus W <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 12/15] drm/panel-edp: hpd_reliable shouldn't be subtraced from hpd_absent
Date:   Tue, 14 Sep 2021 13:21:59 -0700
Message-Id: <20210914132020.v5.12.I2522235fca3aa6790ede0bf22a93d79a1f694e6b@changeid>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210914202202.1702601-1-dianders@chromium.org>
References: <20210914202202.1702601-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that the delays are named / described with eDP-centric names, it
becomes clear that we should really specify the "hpd_reliable" and
"hpd_absent" separately without taking the other into account. Let's
fix it.

This should be a no-op change and just adjust how we specify
things. The actual delays should be the same before and after for the
one panel that currently species both "hpd_reliable" and "hpd_absent".

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---

(no changes since v4)

Changes in v4:
- panel-simple-edp => panel-edp

 drivers/gpu/drm/panel/panel-edp.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 1547e4797594..80a37a4e5750 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -423,7 +423,7 @@ static int panel_edp_prepare_once(struct panel_edp *p)
 
 	delay = p->desc->delay.hpd_reliable;
 	if (p->no_hpd)
-		delay += p->desc->delay.hpd_absent;
+		delay = max(delay, p->desc->delay.hpd_absent);
 	if (delay)
 		msleep(delay);
 
@@ -1039,15 +1039,13 @@ static const struct panel_desc boe_nv133fhm_n61 = {
 		 * spike on the HPD line.  It was explained that this spike
 		 * was until the TCON data download was complete.  On
 		 * one system this was measured at 8 ms.  We'll put 15 ms
-		 * in the prepare delay just to be safe and take it away
-		 * from the hpd_absent (which would otherwise be 200 ms)
-		 * to handle this.  That means:
+		 * in the prepare delay just to be safe.  That means:
 		 * - If HPD isn't hooked up you still have 200 ms delay.
 		 * - If HPD is hooked up we won't try to look at it for the
 		 *   first 15 ms.
 		 */
 		.hpd_reliable = 15,
-		.hpd_absent = 185,
+		.hpd_absent = 200,
 
 		.unprepare = 500,
 	},
-- 
2.33.0.309.g3052b89438-goog

