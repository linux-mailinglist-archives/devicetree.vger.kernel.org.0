Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 063C0405E81
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 23:03:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348449AbhIIVD1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 17:03:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347746AbhIIVDC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 17:03:02 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7714AC061767
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 14:01:49 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id k23so2284162pji.0
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 14:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8PTE0Yp5aDkSeBEqIuFJReXHpA2uRHL4THhzDtBtHM8=;
        b=hUm04el1zXzdBx52xN3cigDxnD1hqWSFUO2ijZO9vUniVOCWCPnQZtbLvdsMaNNm/f
         yvw2mPOpV0JpHty1NPK1u3cpMEGA6caOD26/7i+BN3OxqZYM6L/Msi49GV3tAWY3DX3M
         BE+0Y5hEQft4W9Y9v755culUmqPWyizS7U1Bc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8PTE0Yp5aDkSeBEqIuFJReXHpA2uRHL4THhzDtBtHM8=;
        b=jX2cw6dEcoF2UlX2ylAgQ4aSIM/Kw/lyfmIS8NECV2s3OOgzvfov8b4cZht7n1n9O9
         ULYgJ/+S3DS0eD/VDzWL63lRu+TSRBfh/McnACqC/ds5cq6kPQhhVm2a6YivdpG6nPFB
         C6xFOGv5nMosbqE2lB9ypyL+nzb/nsSdVDFH48B3ThpHxsSyniT7N8Eji4gNk1y7H2r+
         JP379wZyj3ZiAFPte2X2XqCYeak89/8KrzkmsGSuURw0rPa9K/KmLMiXJue9KnoI/pXG
         Ay42HNuRVBMC2m/klWKjISmBEiy3zsNbX5w4aN4N7LKZDSXKXlqiQnRMZvqDQaiajPOP
         ebhA==
X-Gm-Message-State: AOAM532BpZyIcSyQKmTnSU1y4Pft7MGOw+Y9Hh3RJwsZqvUbLPmZOC6Z
        fSZRvIIOQZ+ttGaaMEZvC3g1uQ==
X-Google-Smtp-Source: ABdhPJy9yqtlq0O55aZDP2543XJUNsq/vXANkPzXqzZKvA+Wc7ATkFCwrz8OUiisMMVh18ipOMA6ww==
X-Received: by 2002:a17:902:ec90:b0:13a:34f9:cfe9 with SMTP id x16-20020a170902ec9000b0013a34f9cfe9mr4621219plg.74.1631221309002;
        Thu, 09 Sep 2021 14:01:49 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:8da3:b0fb:4261:2c10])
        by smtp.gmail.com with ESMTPSA id l143sm177069pfd.60.2021.09.09.14.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Sep 2021 14:01:48 -0700 (PDT)
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
Subject: [PATCH v4 14/15] drm/panel-edp: Don't re-read the EDID every time we power off the panel
Date:   Thu,  9 Sep 2021 14:00:30 -0700
Message-Id: <20210909135838.v4.14.Ib810fb3bebd0bd6763e4609e1a6764d06064081e@changeid>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210909210032.465570-1-dianders@chromium.org>
References: <20210909210032.465570-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The simple-panel driver is for panels that are not hot-pluggable at
runtime. Let's keep our cached EDID around until driver unload.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---

Changes in v4:
- panel-simple-edp => panel-edp

Changes in v3:
- ("Don't re-read the EDID every time") moved to eDP only patch.

 drivers/gpu/drm/panel/panel-edp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index a83ef9905ea7..817c60858ef8 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
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
2.33.0.309.g3052b89438-goog

