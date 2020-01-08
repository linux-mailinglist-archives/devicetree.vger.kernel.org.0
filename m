Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5EE5133ACE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 06:24:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725774AbgAHFYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 00:24:05 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:39434 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726556AbgAHFYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 00:24:05 -0500
Received: by mail-pj1-f66.google.com with SMTP id t101so559773pjb.4
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 21:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VXWKPtv3cxE8lSp3PQIY49x0a4P+s/RHd/rRix+wGzg=;
        b=Jfjo+Faggwo7DaWWKVmhC7/00Vvhz+MTRYNmhAKQYX1HCOP3EYR8Lin5NwFPnmhjMY
         4+Fb5Qu0e1wDWqALzow5cVbQpRrmDtK6+s0MWVLSCLeAn/oBigTNqV6pS0G3uvjzNP7g
         ZOYd16bXAfTR+SPI/3E9hzT5bBEzHfFjf0IP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VXWKPtv3cxE8lSp3PQIY49x0a4P+s/RHd/rRix+wGzg=;
        b=QgRpT8V4+GxT9BxQdUupC+Hk9irqVE0KLKkFRIbWE0zjUIaXLCludQ9VdOhoKGF1iG
         vNwwJzJBbkpzEj5Us8+fAwCqUKuHUur+iu7/iZS4fRj1/51xnMe7eSJKHjX6Bf2JOtOG
         REtRrX6PasaBAocP0cNlHjafPYT5v/6wGq4jEbHIwKGvEXHDmDWCGqlU4C+JHgFAzUyR
         72MrjBX5EqJvC+1w1RFu2OsCVLKE0MfzhA2ePT50inuAHAD8UcWIqYK9cggji/bEV1wt
         ioi49hoeVojBBjXFoTBX8Qal6mCJIV5XAfppT3VRlDB5i9n4Pe4TzMVOGjjvyoGXCCyS
         4fbA==
X-Gm-Message-State: APjAAAWbQjK+hGPZGMQVxUNlyKvp6i/MgoL3lly7CJZUUJC9NP/GAepx
        hIcA7P0sWP9qDp3aWN5rh3wtRw==
X-Google-Smtp-Source: APXvYqyHC+8oOSDbkbTqCwSPnXshCUeDVww8reRuLxI2n62N7ExPieyrDCDC2ipIyCqYctUkgXWJYA==
X-Received: by 2002:a17:90a:3aaf:: with SMTP id b44mr2510426pjc.9.1578461044170;
        Tue, 07 Jan 2020 21:24:04 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:d8b7:33af:adcb:b648])
        by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 21:24:03 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, hsinyi@chromium.org
Subject: [PATCH v2 3/7] drm/panfrost: Improve error reporting in panfrost_gpu_power_on
Date:   Wed,  8 Jan 2020 13:23:33 +0800
Message-Id: <20200108052337.65916-4-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is useful to know which component cannot be powered on.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

Was useful when trying to probe bifrost GPU, to understand what
issue we are facing.
---
 drivers/gpu/drm/panfrost/panfrost_gpu.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
index 8822ec13a0d619f..ba02bbfcf28c011 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
@@ -308,21 +308,26 @@ void panfrost_gpu_power_on(struct panfrost_device *pfdev)
 	gpu_write(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
 	ret = readl_relaxed_poll_timeout(pfdev->iomem + L2_READY_LO,
 		val, val == pfdev->features.l2_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu L2");
 
 	gpu_write(pfdev, STACK_PWRON_LO, pfdev->features.stack_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
 		val, val == pfdev->features.stack_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu stack");
 
 	gpu_write(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
 		val, val == pfdev->features.shader_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu shader");
 
 	gpu_write(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
 		val, val == pfdev->features.tiler_present, 100, 1000);
-
 	if (ret)
-		dev_err(pfdev->dev, "error powering up gpu");
+		dev_err(pfdev->dev, "error powering up gpu tiler");
 }
 
 void panfrost_gpu_power_off(struct panfrost_device *pfdev)
-- 
2.24.1.735.g03f4e72817-goog

