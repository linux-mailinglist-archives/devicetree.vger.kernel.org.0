Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC2E16AEDF
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2020 19:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728035AbgBXSYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Feb 2020 13:24:55 -0500
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38474 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727950AbgBXSYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Feb 2020 13:24:54 -0500
Received: by mail-wm1-f68.google.com with SMTP id a9so345652wmj.3
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2020 10:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aCHZ2/al18nS+2E0e9l6kgT+YcKjbmb+qVD5r1+/lK8=;
        b=Y+gSmo8lII58Es18d6cmWnjASSfFsl2x7rSop+H1cCniaeVd/mWWI5iBoB1UpuvK70
         WiCmaMu86SH+ozlrxPN0f3fd2cO/JAUaxBiQjRgMuCf7Ml/BcTQQ6QqzwqYLHtbBX4fL
         yyzI0XOaj4GoxBnIawd6Mc5b5sYLmz1hB0hfrlqesUOIHsyuwl6fwe4xrznynuKvPrPm
         urpHxochnQaDTmvE0T8BMvFjyPHBUT4MCdL4NYgnT6YOTbS0T2aSE78xPtZcUQVCujJe
         0MHikP4CvKbRZoTP4zT5mS23Ld+5V1Do2KyHkPn75kcCDLo4LZ5lZQdlY5r/Bb2YxQdE
         7Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aCHZ2/al18nS+2E0e9l6kgT+YcKjbmb+qVD5r1+/lK8=;
        b=lgCj+Kqr435slXX6kMYHK0BxVD0Q2ImCQ9svA7cD08/zNn9B2BIDSkjHHL1kr3VIAi
         r+UOOH0IVNnVTEU7y4cgahQCzoWfT16EuwjPH4oUcvHpm9DTkv8PPg41bJSgVe8tRMiE
         /hLm72nvEtaZ3Hbq4xkxwBjyR7H1xH7MUSHZnzmiYIcDU9TG71/7BuE8dx/yxNUGc3zi
         pox3g8W+cGryhoTqLi7qUe5wXRTWU8xtOAgzwtCPe5p+N4x3VAk6oIZEltiDkuRHNQjP
         5SGdkGoJVG6QrXG6OrgyEL3nNq1Ei+WCYXCwAl1fTcfG5pLBwoC2mE7iKgf1odrRNnKn
         HgEA==
X-Gm-Message-State: APjAAAVGHOMpZE0r0JHEoo0qkxAcTaNuz6bmn857l8g5B91zMlScJB24
        VbMizfxfns0pbK1MexeD1tUf9g==
X-Google-Smtp-Source: APXvYqytXg1jldnNeE/KhXMpeqS2ECo/t3rCI0BZEyvldnBIFN5uQN85/iXzJ1Ss+SSBo62MlVDbIA==
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr312611wml.55.1582568692416;
        Mon, 24 Feb 2020 10:24:52 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id n3sm304255wmc.27.2020.02.24.10.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 10:24:52 -0800 (PST)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org
Cc:     joro@8bytes.org, robh+dt@kernel.org, mark.rutland@arm.com,
        catalin.marinas@arm.com, will@kernel.org, robin.murphy@arm.com,
        kevin.tian@intel.com, baolu.lu@linux.intel.com,
        Jonathan.Cameron@huawei.com, jacob.jun.pan@linux.intel.com,
        christian.koenig@amd.com, yi.l.liu@intel.com,
        zhangfei.gao@linaro.org
Subject: [PATCH v4 21/26] iommu/arm-smmu-v3: Ratelimit event dump
Date:   Mon, 24 Feb 2020 19:23:56 +0100
Message-Id: <20200224182401.353359-22-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200224182401.353359-1-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When a device or driver misbehaves, it is possible to receive events
much faster than we can print them out. Ratelimit the printing of
events.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
During the SVA tests when the device driver didn't properly stop DMA
before unbinding, the event queue thread would almost lock-up the server
with a flood of event 0xa. This patch helped recover from the error.
---
 drivers/iommu/arm-smmu-v3.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 28f8583cd47b..6a5987cce03f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2243,17 +2243,20 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
 	struct arm_smmu_device *smmu = dev;
 	struct arm_smmu_queue *q = &smmu->evtq.q;
 	struct arm_smmu_ll_queue *llq = &q->llq;
+	static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
+				      DEFAULT_RATELIMIT_BURST);
 	u64 evt[EVTQ_ENT_DWORDS];
 
 	do {
 		while (!queue_remove_raw(q, evt)) {
 			u8 id = FIELD_GET(EVTQ_0_ID, evt[0]);
 
-			dev_info(smmu->dev, "event 0x%02x received:\n", id);
-			for (i = 0; i < ARRAY_SIZE(evt); ++i)
-				dev_info(smmu->dev, "\t0x%016llx\n",
-					 (unsigned long long)evt[i]);
-
+			if (__ratelimit(&rs)) {
+				dev_info(smmu->dev, "event 0x%02x received:\n", id);
+				for (i = 0; i < ARRAY_SIZE(evt); ++i)
+					dev_info(smmu->dev, "\t0x%016llx\n",
+						 (unsigned long long)evt[i]);
+			}
 		}
 
 		/*
-- 
2.25.0

