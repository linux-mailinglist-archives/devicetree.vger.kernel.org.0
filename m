Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE87833C0B2
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 17:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231862AbhCOQAe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 12:00:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230218AbhCOQAL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 12:00:11 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33429C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:00:11 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id dm8so17962905edb.2
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:00:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OfcdS0huGYBFauDoZapDpV12oshuFzeyuB4yCyBnMLQ=;
        b=puNK4XaC5cNoGejioatHXKLhexlccxQNK8NM3HSYWfHBCkz9C7Qrt3M3F+BWNKERPw
         Y37r3sx3dlqBEnY1cffg6QFdtElj/lIBSS/loEE+H7SBt2DrHbWEi2KAt2kW/qdyKl+z
         vQcywX00sEsygu8Qxd9OoTHwYquxjY7SMcUNPKILKnZUvxkQ2NPZ5GRWaT4NGX3CyQLH
         53PzfjTiV3V2r7pmkZTOq3GiwgM2RS7oDJwmM1WIfRvIkt5WBywufP7UylVDsRvIK/cl
         P07CtrgeJUCbAM44OrAedLfN0Aa9V2hp84yJF8GFkrC/jASZd7J2ashQ+qqM8EAFCe/R
         qvEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OfcdS0huGYBFauDoZapDpV12oshuFzeyuB4yCyBnMLQ=;
        b=JFdmxHstFKPJ2VTfjjUhOSf7GZmlCpSB16qMpPfKA6aaWNebSOavhrKvwrWM0n/c7A
         W+DLW+0zi9iy7hJplsLs1yVquRIr3005b97n4HlUgDw/kaEJoBXxvuTorO6go+ZTKpWm
         e8YEiHdLTT1l5GWEpKy8KzQr/gESOsHsLqNWbDam3nqFt1a95pZmoW0pmE9RRD39Q7FM
         szlCc1Lb52mjvU3MH+6PSEHePeSl4ciHA9O+DNLcKi4NGAJ3MAF7zosPu1SzEyHsLIAr
         +CFl4RzQT57+Fb+LBj+GL4d/DK0Kpvwonuqs1b255X63A8ZY59v9pAx6QUhh8JmiICyM
         ydcQ==
X-Gm-Message-State: AOAM531G+46fML2K4YpRm6NSCw6Ht4+qimPlFMCeBUYQKUFGobrdjOTE
        WUULuVYSF38ZPRKJyKMFgLVY/DMH9a3VhQFK
X-Google-Smtp-Source: ABdhPJx7LrtvkdpljiP68AprOO7WCv6OHfThNyQvhEOeambEUxpqCJd8FyMKT7z0BASwm0lVQJm/Rg==
X-Received: by 2002:a05:6402:1a3c:: with SMTP id be28mr30911925edb.125.1615824008680;
        Mon, 15 Mar 2021 09:00:08 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id r5sm8456445eds.49.2021.03.15.09.00.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 09:00:08 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Hans Verkuil <hverkuil@xs4all.nl>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v8 01/22] media: camss: Fix vfe_isr_comp_done() documentation
Date:   Mon, 15 Mar 2021 16:59:22 +0100
Message-Id: <20210315155942.640889-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210315155942.640889-1-robert.foss@linaro.org>
References: <20210315155942.640889-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Function name in comment is wrong, and was changed to be
the same as the actual function name.

The comment was changed to kerneldoc format.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---

Changes since v1:
 - Bjorn: Fix function doc name & use kerneldoc format

Changes since v5:
 - Nicolas: Fixed typo in commit message
 - Andrey: Added r-b


 drivers/media/platform/qcom/camss/camss-vfe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index b2c95b46ce66..f50e08c4fd11 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -1076,8 +1076,8 @@ static void vfe_isr_wm_done(struct vfe_device *vfe, u8 wm)
 	spin_unlock_irqrestore(&vfe->output_lock, flags);
 }
 
-/*
- * vfe_isr_wm_done - Process composite image done interrupt
+/**
+ * vfe_isr_comp_done() - Process composite image done interrupt
  * @vfe: VFE Device
  * @comp: Composite image id
  */
-- 
2.27.0

