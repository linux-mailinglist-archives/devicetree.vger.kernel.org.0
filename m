Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 788BB48D2DB
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 08:32:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbiAMHcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 02:32:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbiAMHcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 02:32:04 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2C4AC06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 23:32:04 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id pj2so9600299pjb.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 23:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=du7UtZTksojdMdJU3Db9bmQRhjFxVrsUPN0QxzhmRfQ=;
        b=XRWcnUSui98p33/sm26qBbm54SzZ5iNXYwDIcVdlfutHdp+FoBy9DGkBxVpyY1qhqe
         F7tIH3HNM2cBotmLWDmhP9RiKfRNuuIkg5LKMAQ1YUFRU3ZgzZdcEaZ+A2lEnBR9RFSW
         9tcWf7RSJa+K+GpQPptN80vS5ud6XPJCKCZZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=du7UtZTksojdMdJU3Db9bmQRhjFxVrsUPN0QxzhmRfQ=;
        b=8OHcTbGQhxoZu5JNgF2Um7V/0IudMLAjSoRGveB75eU4aCOCEXyH0WTgL93c5B3HhM
         M1Eb+mmiK7rOn3LHRASUnG6ug/6/rHJS8EiW5HW4QA02/f1Z1jJfYwEyjOCjXF+DLrwB
         ZkN+cn2I5OdWM2DM1OAG91NVMgFiJjly3T1XlYvQXHRska1IKX7e1Ye5/JXEMxvRRHJq
         xroT4Dn7SfgwC+8vOOTfq5eKdGR6RgXhPfjGN/atNZqQTH6QB11NwMczXn0NoNDf+TVJ
         SU6i2WYigHmJBd0rKmactcFH/PlQBaZG/WjZA+nC9GrtJKVFk2t/cNQPN9lEvQ1maOY5
         v6CA==
X-Gm-Message-State: AOAM532TlBT8K+N053FbIn8QnwwmgNKqSVt3qGye28kGpEqs+NA7XJmk
        Ux1MXSibfzywhjgb15kTI289GQ==
X-Google-Smtp-Source: ABdhPJzVfQyp3OrIqmUib4qqArq4Pah8l2B6psdTAz7f/amb43BdGKeleLHCVHWdiaVpTaelcbMCrg==
X-Received: by 2002:a17:90b:4a47:: with SMTP id lb7mr3756416pjb.126.1642059124107;
        Wed, 12 Jan 2022 23:32:04 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:3ced:e0da:4852:430c])
        by smtp.gmail.com with ESMTPSA id om3sm7747701pjb.49.2022.01.12.23.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 23:32:03 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v2 1/3] drm/bridge: anx7625: Convert to use devm_kzalloc
Date:   Thu, 13 Jan 2022 15:31:56 +0800
Message-Id: <20220113073158.2171673-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.575.g55b058a8bb-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use devm_kzalloc instead of kzalloc and drop kfree(). Let the memory
handled by driver detach.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/analogix/anx7625.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 0b858c78abe8b6..dbe708eb3bcf11 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -2515,7 +2515,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 		return -ENODEV;
 	}
 
-	platform = kzalloc(sizeof(*platform), GFP_KERNEL);
+	platform = devm_kzalloc(dev, sizeof(*platform), GFP_KERNEL);
 	if (!platform) {
 		DRM_DEV_ERROR(dev, "fail to allocate driver data\n");
 		return -ENOMEM;
@@ -2527,7 +2527,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (ret) {
 		if (ret != -EPROBE_DEFER)
 			DRM_DEV_ERROR(dev, "fail to parse DT : %d\n", ret);
-		goto free_platform;
+		return ret;
 	}
 
 	platform->client = client;
@@ -2552,7 +2552,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (!platform->hdcp_workqueue) {
 		dev_err(dev, "fail to create work queue\n");
 		ret = -ENOMEM;
-		goto free_platform;
+		return ret;
 	}
 
 	platform->pdata.intp_irq = client->irq;
@@ -2637,9 +2637,6 @@ static int anx7625_i2c_probe(struct i2c_client *client,
 	if (platform->hdcp_workqueue)
 		destroy_workqueue(platform->hdcp_workqueue);
 
-free_platform:
-	kfree(platform);
-
 	return ret;
 }
 
-- 
2.34.1.575.g55b058a8bb-goog

