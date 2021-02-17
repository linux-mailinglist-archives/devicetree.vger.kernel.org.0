Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81D1E31D823
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 12:25:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231538AbhBQLX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 06:23:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbhBQLXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 06:23:25 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5C0FC06178B
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:21:58 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id hs11so21499708ejc.1
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 03:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=omqwj2z9F9rHihQvE5my1Bq8ugVfe2upOvjFAe2eO3E=;
        b=PR0KEci9qQWvX9WzciFum4T0xEyOsvEV0Fx5Sv6kNHpsewGcEa2NKwtcrQxYofHcCD
         LlTF9mBqxd91x99aGmdO31XQS/Iwee1smGVu58aLoJwSwWkyCjBQS9Oc1QHshr25vOZi
         rMXHqFgHfr8KZWVF6QIp23Z0KxsDG8f/E/JDYGyHlUy2+562VoF7+DBubc8jP1CQQla9
         MIoYAOJjUW7LJymEBCxTIoTmm93mg17GfIcsEyMETWdTHai5efya5SZc2fLqB0Dg64oE
         ynR+J/Id/f5MxWAtqb8idNLvYTrwMWDpTikG62bhKqgdxxHVlf3DjZK2BWkpBsXjBTJ8
         G4aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=omqwj2z9F9rHihQvE5my1Bq8ugVfe2upOvjFAe2eO3E=;
        b=dWg6bPx2wDtmgJcTTfsnK8sSYLIBDxjaqiCwX+9OB5u9Vou28aWkatIemFuokTepzO
         njQK9qKvaa8Mq9Eccw+5tQ1brefW577XuDBcQWrxV45jOTR1+oeuazaz4oZ6oawPjAfD
         mGg4dvW4kSuXF6CynAtj356pLOMtiUogfu5zA/ZGMY0F5jtlLFlqRfHzq/zvPRUp3vjV
         0s2uYalx0cMT+EpWt451tUsc3nw2E4N4elY6k4NqSFjs4KckQR2eUWHIzq+Ua4eu/RLP
         wy4N+/n2Us1wxCvfuNnISuMMb/d+WQcySTO+9lkgy8VlcTloeLVJdytwLqIoVeTx0PZk
         OzZA==
X-Gm-Message-State: AOAM531SPpYT7kwaYHN/fevk3VRxU9bpWE8iPCQaetXF3DGmAkdkUd1E
        wV8cIbt4U8qtwUMciRdtAnZY9g==
X-Google-Smtp-Source: ABdhPJwl3jym2riwEu11r18s3NBE6YvhfUxpO17ig+7cymakJzze5qEuVJ7q0GMS2/yBEeW0/b1KNw==
X-Received: by 2002:a17:906:240c:: with SMTP id z12mr5269389eja.314.1613560917564;
        Wed, 17 Feb 2021 03:21:57 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:4815:d4dc:ff5a:704a])
        by smtp.gmail.com with ESMTPSA id h10sm934344edk.45.2021.02.17.03.21.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 03:21:57 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v5 01/22] media: camss: Fix vfe_isr_comp_done() documentation
Date:   Wed, 17 Feb 2021 12:21:01 +0100
Message-Id: <20210217112122.424236-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210217112122.424236-1-robert.foss@linaro.org>
References: <20210217112122.424236-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Function name is comment is wrong, and was changed to be
the same as the actual function name.

The comment was changed to kerneldoc format.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

Changes since v1
 - Bjorn: Fix function doc name & use kerneldoc format


 drivers/media/platform/qcom/camss/camss-vfe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index fae2b513b2f9..94c9ca7d5cbb 100644
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

