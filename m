Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2957F3AB705
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 17:10:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233192AbhFQPMB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 11:12:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233185AbhFQPMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 11:12:00 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA770C061760
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 08:09:52 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id r19so1823285qvw.5
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 08:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cEGpwhG6p5ve4HkGton1AY3pWTWRxR5OFRUm+6IG0BM=;
        b=xOFHogCXEUwOHUdEDKDozRhp448e/RJv4gH5fgQt3uM+WNHVNeqW4RXEh0BjTOI9Z1
         /1Ih6xJ5hbonfI5R6h9/cm20h8UAaL1BjYocAjjxlUSiSV03t/D6d0tlUhqqz4R3F/hT
         qAOA3PEBj3JGArvQnGFFwbbmw1n1tNGwbZ5Gf6SsUqRZCm8vTHw6d+YJOucH9nmCmnwG
         0PW1zxFM4D+CfMI4VdX53JrWmDR4DNWkrGEEoz1CSt6Q3+LtQf9k5IppfQledl/Uvcbm
         lngUFfWQ6m/QCRY/rroLBMjXE1APF7TVGC33tAzfTyhVtfYV3gkw/y/KbRaCzTi7iqgQ
         rsrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cEGpwhG6p5ve4HkGton1AY3pWTWRxR5OFRUm+6IG0BM=;
        b=H/AfXUIIeXkp0o+B3cj41u46Hmog57MErSg2y8Duu6tjqDVXkJ5mjFzIm+b3yZXUql
         8Cuvt4JT7NKhgkQtA9DII9/hbN7XaWAWBLfJGvxsDY9mTgh+7KbUGpA4v3/C7FborSO3
         sWiIqwNOfpdBgE24PLNZPC5rhGWglDBD13Nrkx/NRUgjtoLS2DpGCvZ2wP7sQ/Y3KeJM
         s1jKtrJAqpjxzyIIRDAObwMzf0nhqDf7Hw/KrpoQifp/jAs20CoTgtGU7KK2ht2LP5Xl
         jB211624VYTDwsyL/jmEuuCR3mAi6krHL9HTW4s07PLAfwtYS57RPXHhbOS5wZQFWsS3
         nqcQ==
X-Gm-Message-State: AOAM532/aw00XwvITDtoAqLxcc+1fRkJsOmS0BFt17dDjfXHMyfEFgpe
        JJYF5Dxq3njzOzRqO+LQE0Tnhw==
X-Google-Smtp-Source: ABdhPJwkwzkpMneGJhGYpV8v3Sy02fJEBm5RVWSNvS4VXlzOYBId9bl24tw7PJEscZEom7rxwflAWg==
X-Received: by 2002:a0c:e84b:: with SMTP id l11mr390498qvo.36.1623942592025;
        Thu, 17 Jun 2021 08:09:52 -0700 (PDT)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id g82sm1915427qke.119.2021.06.17.08.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 08:09:51 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     freedreno@lists.freedesktop.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        linux-arm-msm@vger.kernel.org (open list:DRM DRIVER FOR MSM ADRENO GPU),
        dri-devel@lists.freedesktop.org (open list:DRM DRIVER FOR MSM ADRENO
        GPU),
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 2/3] dt-bindings: msm: dsi: document phy-type property for 7nm dsi phy
Date:   Thu, 17 Jun 2021 10:43:34 -0400
Message-Id: <20210617144349.28448-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20210617144349.28448-1-jonathan@marek.ca>
References: <20210617144349.28448-1-jonathan@marek.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document a new phy-type property which will be used to determine whether
the phy should operate in D-PHY or C-PHY mode.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../devicetree/bindings/display/msm/dsi-phy-7nm.yaml         | 5 +++++
 include/dt-bindings/phy/phy.h                                | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index c0077ca7e9e7..70809d1cac54 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -34,6 +34,11 @@ properties:
     description: |
       Connected to VDD_A_DSI_PLL_0P9 pin (or VDDA_DSI{0,1}_PLL_0P9 for sm8150)
 
+  phy-type:
+    description: D-PHY (default) or C-PHY mode
+    enum: [ 10, 11 ]
+    default: 10
+
 required:
   - compatible
   - reg
diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 887a31b250a8..f48c9acf251e 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -20,5 +20,7 @@
 #define PHY_TYPE_XPCS		7
 #define PHY_TYPE_SGMII		8
 #define PHY_TYPE_QSGMII		9
+#define PHY_TYPE_DPHY		10
+#define PHY_TYPE_CPHY		11
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.26.1

