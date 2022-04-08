Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC304F9EB5
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 23:06:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239713AbiDHVIB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 17:08:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239694AbiDHVIA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 17:08:00 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA61B1404CF
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 14:05:55 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id o20-20020a9d7194000000b005cb20cf4f1bso6920203otj.7
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 14:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/6bF252QqnY12H7PjXHxtHVXzmjhuS4IY4ywpEiT3F4=;
        b=bX3q3cffPSL7HX15VA0/7vcodNKzm9GcJLAGtQNZRrY/jo2zHyo67+eaqjF0TZuH9O
         UJs47CoLQXfKzFmbPYXlgUIQCeaixSBKNKxng6izLWyH5UXqPjSh5AfIq63mYDGW9ITF
         QdxLQnhX09H/zcdLRTK8kByv5nsZFMrOYPz0YvTg09r69NMRQq5ZfM7M5STkxl+VgHp1
         lCKElw75Tn3au3nk1577813tB9U6jNKrH8T7/zpHn8Ku698P0kl8qOWNH6CHOKjIs2EP
         sALiAz/v/AkLsOcSBwh7AiIfkT6X3rtmsTfo1iJlHOn31PvJITVuFIkvKtoO09ysM97d
         klwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/6bF252QqnY12H7PjXHxtHVXzmjhuS4IY4ywpEiT3F4=;
        b=IHfKOx1rFkd7SthGPBHyYOD6+d4rSOV3OYdhY/djoMQqHsmM4BzbJhqRvYh5m9BA3b
         MAc6CoznBnVlJqSfqLZj12aDKRrdbeQ8ny6DOnNfmh0BMsgXVfV4IEToUdZ4VRtIMhK8
         OwATY/sdzHcZa2ey+TWZc9tosbXIVIiILPeSVNuaZvJOnv6kBrCVraMMQX7hzZNh6jPQ
         7gEqsul42ce/CH6WSrpO5gOXDppMMK8OKCZoVlQ8CYk3ekEqMX7/LO/O2nlz/UtvDzvL
         m2kDzfhSOAwFCEhPuqt3luJqmSu01ECbIRSDU6tfdxCWXAlQprnIOYOkunucX6bzDsA2
         JkKg==
X-Gm-Message-State: AOAM532SYKfnim5ekdByLhvGRYvs2llv42x28zl7lswjlgxUHWMoBxap
        c0Cdp5x5VgJxQzeghfiaa4HOMQ==
X-Google-Smtp-Source: ABdhPJzyHOxnC2y32CYITmSfyBZzFVbKrQ+pRvockWV4jxLwEx0YqRBgTITQPSRrQgGmtquEJ4txBQ==
X-Received: by 2002:a05:6830:1605:b0:5c9:4fde:ba63 with SMTP id g5-20020a056830160500b005c94fdeba63mr7352822otr.84.1649451954926;
        Fri, 08 Apr 2022 14:05:54 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id y18-20020a056871011200b000e1f5910d45sm6560356oab.7.2022.04.08.14.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 14:05:54 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] drm/msm/dpu: Issue MDSS reset during initialization
Date:   Fri,  8 Apr 2022 14:08:13 -0700
Message-Id: <20220408210813.581391-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220408210813.581391-1-bjorn.andersson@linaro.org>
References: <20220408210813.581391-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It's typical for the bootloader to bring up the display for showing a
boot splash or efi framebuffer. But in some cases the kernel driver ends
up only partially configuring (in particular) the DPU, which might
result in e.g. that two different data paths attempts to push data to
the interface - with resulting graphical artifacts.

Naturally the end goal would be to inherit the bootloader's
configuration and provide the user with a glitch free handover from the
boot configuration to a running DPU.

But as implementing seamless transition from the bootloader
configuration to the running OS will be a considerable effort, start by
simply resetting the entire MDSS to its power-on state, to avoid the
partial configuration.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- Move the reset before the probing of the children, to avoid issues if child
  drivers touched hardware at probe time.
- Extend reset assert time as the previous 1us showed reliability issues on
  Lenovo Flex 5G.

 drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
index b10ca505f9ac..6f921910d0e0 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c
@@ -3,10 +3,12 @@
  * Copyright (c) 2018, The Linux Foundation
  */
 
+#include <linux/delay.h>
 #include <linux/irq.h>
 #include <linux/irqchip.h>
 #include <linux/irqdesc.h>
 #include <linux/irqchip/chained_irq.h>
+#include <linux/reset.h>
 #include "dpu_kms.h"
 
 #define to_dpu_mdss(x) container_of(x, struct dpu_mdss, base)
@@ -197,6 +199,32 @@ static void dpu_mdss_destroy(struct msm_mdss *mdss)
 	dpu_mdss->mmio = NULL;
 }
 
+static int dpu_mdss_reset(struct device *dev)
+{
+	struct reset_control *reset;
+
+	reset = reset_control_get_optional_exclusive(dev, NULL);
+	if (!reset) {
+		/* Optional reset not specified */
+		return 0;
+	} else if (IS_ERR(reset)) {
+		DPU_ERROR("failed to acquire mdss reset, ret=%ld", PTR_ERR(reset));
+		return PTR_ERR(reset);
+	}
+
+	reset_control_assert(reset);
+	/*
+	 * Tests indicate that reset has to be held for some period of time,
+	 * make it one frame in a typical system
+	 */
+	msleep(20);
+	reset_control_deassert(reset);
+
+	reset_control_put(reset);
+
+	return 0;
+}
+
 static const struct msm_mdss_funcs mdss_funcs = {
 	.enable	= dpu_mdss_enable,
 	.disable = dpu_mdss_disable,
@@ -210,6 +238,10 @@ int dpu_mdss_init(struct platform_device *pdev)
 	int ret;
 	int irq;
 
+	ret = dpu_mdss_reset(&pdev->dev);
+	if (ret)
+		return ret;
+
 	dpu_mdss = devm_kzalloc(&pdev->dev, sizeof(*dpu_mdss), GFP_KERNEL);
 	if (!dpu_mdss)
 		return -ENOMEM;
-- 
2.35.1

