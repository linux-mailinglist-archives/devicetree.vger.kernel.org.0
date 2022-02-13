Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AFEC4B3E40
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:58:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238713AbiBMW6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:58:19 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238708AbiBMW6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:58:19 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5828954BE3
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:12 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id y17so22609458edd.10
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:58:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lZJOylr1gZr98EwfWR932Fp2FwArraNI7BsNa3DwKeM=;
        b=nTiwGP6VwIdJ9vuxq8mpP/kCL3jM3BTtAUB4NWAXaE6KTryi/VkL02z0Gw2rnTJrex
         cVDYlDC8lroEXcUAjHdTB36A+r0JsEByf2PAqrMGd0aCWU7+g2/RW+hn2rRWBSf7ehcv
         fK4L1uT1JI3vTdYm6XW9UUSUFN+TTK3+sMJSX+kYqVZhlrlIv+hKQN5SSe7ppcTQbAO9
         XeINi5o0Iz+6FIgVo1J6FJ9+EIXa+0nydQzildtcjQicZJjDQld/SQXtWS24lafGiQV6
         m+4Km8XdOn30IinRJPsJTW/grcCmi/41fLUBfDeAK5hV5NGVIpRbqgPN/IEOHgPCKTRm
         s66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lZJOylr1gZr98EwfWR932Fp2FwArraNI7BsNa3DwKeM=;
        b=X2RGxPt7Otc40eCXkWi09qJbD56d+I0jPG+OwFy9wci84+eKk/2RIDXzlhnKaEctm6
         k8cZfIoVIoWYkJ80h7IUcNbyDOuAljxJCEqA/c5lBgbvlTFsGLuVHbpYrJfkhRNYpIKo
         rN/nJNPuZRWMfdRtZPesgHnAyUKLxaSaTSfUWnMJ/uDhzU3owpuan0FLvVxSqFex0cl8
         gqZFQcJ7EXzkqhrVzm4kNMZeEPKxKeXexg/KqwW2RcODPmxFr1YUb9si8+7Ycl1ZxVEp
         NTJ/qhIpwg7G5Q8SPx/rjCBbJ7eTMl58WM0CAopZHAOfhALKjIPl/RyLUAh2RAUN8/Oh
         dzcQ==
X-Gm-Message-State: AOAM530vo0zZzbpHE/D1xQnYym74L4E0GJbe/WKfw2OcvkDkAK/tuaaQ
        0yJU0t2dBGdJD6FEeLVUak4=
X-Google-Smtp-Source: ABdhPJwY3kNrmcWMEOilTETE05NK/FeQksUIkmfoSXtxinuSjoGMx39y96ao+e5pr+ReJulfCisZyw==
X-Received: by 2002:aa7:df10:: with SMTP id c16mr472587edy.336.1644793090964;
        Sun, 13 Feb 2022 14:58:10 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:58:10 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 11/15] drm/v3d: Get rid of pm code
Date:   Sun, 13 Feb 2022 22:56:43 +0000
Message-Id: <20220213225646.67761-12-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220213225646.67761-1-pbrobinson@gmail.com>
References: <20220213225646.67761-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Runtime PM doesn't seem to work correctly on this driver. On top of
that, commit 8b6864e3e138 ("drm/v3d/v3d_drv: Remove unused static
variable 'v3d_v3d_pm_ops'") hints that it most likely never did as the
driver's PM ops were not hooked-up.

So, in order to support regular operation with V3D on BCM2711 (Raspberry
Pi 4), get rid of the PM code. PM will be reinstated once we figure out
the underlying issues.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
Changes since v3:
- Minor updates for rebase

 drivers/gpu/drm/v3d/v3d_debugfs.c | 18 +-----------------
 drivers/gpu/drm/v3d/v3d_drv.c     | 11 -----------
 drivers/gpu/drm/v3d/v3d_gem.c     | 12 +-----------
 3 files changed, 2 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_debugfs.c b/drivers/gpu/drm/v3d/v3d_debugfs.c
index e76b24bb8828..e1d5f3423059 100644
--- a/drivers/gpu/drm/v3d/v3d_debugfs.c
+++ b/drivers/gpu/drm/v3d/v3d_debugfs.c
@@ -4,7 +4,6 @@
 #include <linux/circ_buf.h>
 #include <linux/ctype.h>
 #include <linux/debugfs.h>
-#include <linux/pm_runtime.h>
 #include <linux/seq_file.h>
 
 #include <drm/drm_debugfs.h>
@@ -130,11 +129,7 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 	struct drm_device *dev = node->minor->dev;
 	struct v3d_dev *v3d = to_v3d_dev(dev);
 	u32 ident0, ident1, ident2, ident3, cores;
-	int ret, core;
-
-	ret = pm_runtime_get_sync(v3d->drm.dev);
-	if (ret < 0)
-		return ret;
+	int core;
 
 	ident0 = V3D_READ(V3D_HUB_IDENT0);
 	ident1 = V3D_READ(V3D_HUB_IDENT1);
@@ -187,9 +182,6 @@ static int v3d_v3d_debugfs_ident(struct seq_file *m, void *unused)
 			   (misccfg & V3D_MISCCFG_OVRTMUOUT) != 0);
 	}
 
-	pm_runtime_mark_last_busy(v3d->drm.dev);
-	pm_runtime_put_autosuspend(v3d->drm.dev);
-
 	return 0;
 }
 
@@ -217,11 +209,6 @@ static int v3d_measure_clock(struct seq_file *m, void *unused)
 	uint32_t cycles;
 	int core = 0;
 	int measure_ms = 1000;
-	int ret;
-
-	ret = pm_runtime_get_sync(v3d->drm.dev);
-	if (ret < 0)
-		return ret;
 
 	if (v3d->ver >= 40) {
 		V3D_CORE_WRITE(core, V3D_V4_PCTR_0_SRC_0_3,
@@ -245,9 +232,6 @@ static int v3d_measure_clock(struct seq_file *m, void *unused)
 		   cycles / (measure_ms * 1000),
 		   (cycles / (measure_ms * 100)) % 10);
 
-	pm_runtime_mark_last_busy(v3d->drm.dev);
-	pm_runtime_put_autosuspend(v3d->drm.dev);
-
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index bd46396a1ae0..82af16523843 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -19,7 +19,6 @@
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-#include <linux/pm_runtime.h>
 #include <linux/reset.h>
 
 #include <drm/drm_drv.h>
@@ -43,7 +42,6 @@ static int v3d_get_param_ioctl(struct drm_device *dev, void *data,
 {
 	struct v3d_dev *v3d = to_v3d_dev(dev);
 	struct drm_v3d_get_param *args = data;
-	int ret;
 	static const u32 reg_map[] = {
 		[DRM_V3D_PARAM_V3D_UIFCFG] = V3D_HUB_UIFCFG,
 		[DRM_V3D_PARAM_V3D_HUB_IDENT1] = V3D_HUB_IDENT1,
@@ -69,17 +67,12 @@ static int v3d_get_param_ioctl(struct drm_device *dev, void *data,
 		if (args->value != 0)
 			return -EINVAL;
 
-		ret = pm_runtime_get_sync(v3d->drm.dev);
-		if (ret < 0)
-			return ret;
 		if (args->param >= DRM_V3D_PARAM_V3D_CORE0_IDENT0 &&
 		    args->param <= DRM_V3D_PARAM_V3D_CORE0_IDENT2) {
 			args->value = V3D_CORE_READ(0, offset);
 		} else {
 			args->value = V3D_READ(offset);
 		}
-		pm_runtime_mark_last_busy(v3d->drm.dev);
-		pm_runtime_put_autosuspend(v3d->drm.dev);
 		return 0;
 	}
 
@@ -276,10 +269,6 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
-	pm_runtime_use_autosuspend(dev);
-	pm_runtime_set_autosuspend_delay(dev, 50);
-	pm_runtime_enable(dev);
-
 	ret = v3d_gem_init(drm);
 	if (ret)
 		goto dma_free;
diff --git a/drivers/gpu/drm/v3d/v3d_gem.c b/drivers/gpu/drm/v3d/v3d_gem.c
index c7ed2e1cbab6..c1e600a6f59b 100644
--- a/drivers/gpu/drm/v3d/v3d_gem.c
+++ b/drivers/gpu/drm/v3d/v3d_gem.c
@@ -6,7 +6,6 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
-#include <linux/pm_runtime.h>
 #include <linux/reset.h>
 #include <linux/sched/signal.h>
 #include <linux/uaccess.h>
@@ -367,9 +366,6 @@ v3d_job_free(struct kref *ref)
 	dma_fence_put(job->irq_fence);
 	dma_fence_put(job->done_fence);
 
-	pm_runtime_mark_last_busy(job->v3d->drm.dev);
-	pm_runtime_put_autosuspend(job->v3d->drm.dev);
-
 	if (job->perfmon)
 		v3d_perfmon_put(job->perfmon);
 
@@ -471,14 +467,10 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 	job->v3d = v3d;
 	job->free = free;
 
-	ret = pm_runtime_get_sync(v3d->drm.dev);
-	if (ret < 0)
-		goto fail;
-
 	ret = drm_sched_job_init(&job->base, &v3d_priv->sched_entity[queue],
 				 v3d_priv);
 	if (ret)
-		goto fail_job;
+		goto fail;
 
 	if (has_multisync) {
 		if (se->in_sync_count && se->wait_stage == queue) {
@@ -509,8 +501,6 @@ v3d_job_init(struct v3d_dev *v3d, struct drm_file *file_priv,
 
 fail_deps:
 	drm_sched_job_cleanup(&job->base);
-fail_job:
-	pm_runtime_put_autosuspend(v3d->drm.dev);
 fail:
 	kfree(*container);
 	*container = NULL;
-- 
2.35.1

