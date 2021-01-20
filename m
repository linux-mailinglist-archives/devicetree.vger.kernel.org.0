Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A5752FDB83
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 22:26:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732220AbhATU4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 15:56:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731690AbhATNxP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 08:53:15 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD426C06135D
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:04 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id v184so2903252wma.1
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 05:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nFs6/+FJLSG4qiE+8mi/knnWkI+pTLrRTmRKqckIc2s=;
        b=A8be3G8JYA+G7H2unPLo9IO76TS/UKlTH9s1yi1MaKWfcoN3sXljgBIRdLkqcZ0pBO
         aTc4d5mMgq7NPpt2LFoAfCPRqHuHS2/y6Xdt08wZHWFC9NKCupjcMwEttWQ67lR8bmAI
         zqXQxbiF97HTE4Ur0AZlqhg2sVK8srMZ2hqVNULcPzIjOlBwlu49hNK8UKzx/1L1A5ky
         5PRRCc8eQQRDxpzjE3mDKi7zOvoVwGFWsam1kG0BX7eXDRFkkMfaI+X3fKw0Z64nq3H5
         JkKK2s4BPQkG+2L1KB/Fa0bICRR7G0AqVtkKJHs90ZH35BLQhCt5NPh3MHkuKrg8hMSV
         Te1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nFs6/+FJLSG4qiE+8mi/knnWkI+pTLrRTmRKqckIc2s=;
        b=j2Q1r7PIjJ600JQVHw1SZufCEo/08m69vikJOVq8Z8UTyxqRyq5potGFkrqolf0+03
         Zh8EiDhlPE2XfWQ+4e2OKWhu2hcnw6+GJ+O5oAF1CTCHgPzIeEd3xjmzM7s4mN5er475
         5IXMbBUAHsdallsFlKjo0H2k+nqNYTgZJUDaY9Z1E0GtIRMmXRimnTAdn3d7cFBGhTFV
         MgqVVikEJNw1nZ7/D2Mj48c28GCRjtPNkFEhcdCsBuHtrnh5VvRWd4uuRnTnJEi6oOkF
         cYXCZvBW0npFuvSXY1W80q5HUzcji2AQWY+ExuyKl8BCyHIZs8Q6OfmZLqGVPbFjvRsQ
         Jp+g==
X-Gm-Message-State: AOAM531pF7eHlJ4qHRNNu0EmhHGKDTDlwy1g7RLJQAMbX+5U342uIXw4
        Zt+3Fc03rIWESf/qCNrABtIXnA==
X-Google-Smtp-Source: ABdhPJzONNNBg2mpacvfi1I+yJ+3nrhiw7FHRysdv/2w/OWUwSbCrvurVdUHbpVnXHgaljS9x28g9g==
X-Received: by 2002:a1c:9dcb:: with SMTP id g194mr4496081wme.59.1611150303630;
        Wed, 20 Jan 2021 05:45:03 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:93b3:1f80:ae7b:a5c6])
        by smtp.gmail.com with ESMTPSA id t67sm4224075wmt.28.2021.01.20.05.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 05:45:02 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, leoyang.li@nxp.com, geert+renesas@glider.be,
        vkoul@kernel.org, Anson.Huang@nxp.com, michael@walle.cc,
        agx@sigxcpu.org, max.oss.09@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v2 19/22] arm64: defconfig: Build Qcom CAMSS as module
Date:   Wed, 20 Jan 2021 14:43:54 +0100
Message-Id: <20210120134357.1522254-19-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210120134357.1522254-1-robert.foss@linaro.org>
References: <20210120134357.1522254-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Build camera ISP driver as a module.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 838301650a79..cb224d2af6a0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -640,6 +640,7 @@ CONFIG_VIDEO_RENESAS_FDP1=m
 CONFIG_VIDEO_RENESAS_FCP=m
 CONFIG_VIDEO_RENESAS_VSP1=m
 CONFIG_SDR_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_QCOM_CAMSS=m
 CONFIG_VIDEO_RCAR_DRIF=m
 CONFIG_VIDEO_IMX219=m
 CONFIG_VIDEO_OV5645=m
-- 
2.27.0

