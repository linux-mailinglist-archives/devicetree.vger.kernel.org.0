Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7450A3FE3E1
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 22:21:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245538AbhIAUWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 16:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344712AbhIAUWJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 16:22:09 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA20FC0611FA
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 13:20:54 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id q3so382036plx.4
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 13:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DABmu8a7wcOi+LAPS6v0nwHVY/OcrtFrk5J3lvyIla0=;
        b=Os0b+GnEGsF8siu+flMSW4dAYNThKDU3Ww7vE6vKTBh7r6Ux9uPPuEUWDpACEet4TB
         mVp83QdWqU8lPUa+HCK/0vBTS1Kinrh61IFQz72H+1ZnjVa+cEjR1BKLN1/zkW9TObfR
         qMT3e29jfdSpnF+/aK3xNQjTSSsJIXJqhOLNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DABmu8a7wcOi+LAPS6v0nwHVY/OcrtFrk5J3lvyIla0=;
        b=i6fzvjwedvzhpqyZeBA0ESIqAa3o/wDyBaIBq3G4yg84NLBf4LbgBbZ9+0auPTRke6
         bSqDmS6LNvhVsa9nTsi3M11SHNmV0HspC1tO1tbX9X7vKfaFjkJgpZHP+96AZEEDxhEy
         4MMd22ax/vqwCG3OC1UFjC2fxfGKw3OfNdgxT52kFtLxXmV2yZi5nhV72vRWbpNYQFJP
         P5cjDr/8/notwQwjX5M0rHfaEcxViPejBNiDHUOJvk6RKZoN5OPpJRb2MMrW3vnsUn4U
         PXPUoYVYu/ZnTd2GZDGBFkyTlDNRClO7Y7Q9Tb7/gL849B7CIc8n7l1+56zXlc04F4yU
         dsdg==
X-Gm-Message-State: AOAM533H22zI/wTPfs0DDlpxVYT+v8oGVLRwagu1Cih69QRgdJJc5VPa
        MJQzMe/4Frzfo0CpHQmfiuj7xQ==
X-Google-Smtp-Source: ABdhPJxJ7qKxG2VvHK0KF5F5LrDE/YppzmHXKeC1vqvO9uwXp8XtCRHrGZoq8Mmssft1eXHGjc3fIg==
X-Received: by 2002:a17:90a:5882:: with SMTP id j2mr1100326pji.169.1630527654141;
        Wed, 01 Sep 2021 13:20:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:958b:b561:a735:e774])
        by smtp.gmail.com with ESMTPSA id x15sm321178pfq.31.2021.09.01.13.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 13:20:53 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus W <linus.walleij@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        Steev Klimaszewski <steev@kali.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 15/16] drm/panel-simple-edp: Don't re-read the EDID every time we power off the panel
Date:   Wed,  1 Sep 2021 13:19:33 -0700
Message-Id: <20210901131531.v3.15.Ib810fb3bebd0bd6763e4609e1a6764d06064081e@changeid>
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
In-Reply-To: <20210901201934.1084250-1-dianders@chromium.org>
References: <20210901201934.1084250-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The simple-panel driver is for panels that are not hot-pluggable at
runtime. Let's keep our cached EDID around until driver unload.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v3:
- ("Don't re-read the EDID every time") moved to eDP only patch.

 drivers/gpu/drm/panel/panel-simple-edp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple-edp.c b/drivers/gpu/drm/panel/panel-simple-edp.c
index 5d58dc25ddf5..90ba146426e4 100644
--- a/drivers/gpu/drm/panel/panel-simple-edp.c
+++ b/drivers/gpu/drm/panel/panel-simple-edp.c
@@ -362,9 +362,6 @@ static int panel_edp_suspend(struct device *dev)
 	regulator_disable(p->supply);
 	p->unprepared_time = ktime_get();
 
-	kfree(p->edid);
-	p->edid = NULL;
-
 	return 0;
 }
 
@@ -758,6 +755,9 @@ static int panel_edp_remove(struct device *dev)
 	if (panel->ddc && (!panel->aux || panel->ddc != &panel->aux->ddc))
 		put_device(&panel->ddc->dev);
 
+	kfree(panel->edid);
+	panel->edid = NULL;
+
 	return 0;
 }
 
-- 
2.33.0.259.gc128427fd7-goog

