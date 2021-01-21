Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 752FE2FE14F
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 06:00:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727443AbhAUDvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 22:51:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392230AbhAUBkj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 20:40:39 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A0AC0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 17:39:58 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id v1so151918ott.10
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 17:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mTIkLf8P7rQ1csosNj9MYUkt9q/vHpvdvB2piAeWYvg=;
        b=vhLT4V2HYiuaF9zhU4e6fcDxilz0aj429uzh1g2Z6NkymbGcO+tJxJ861jlAOraYgr
         DCBG0R+yHMznzEVyIEe5pJpX6Yf1qSAK4BMdj2ZE0FzGXeo+UVxwF7yxjyRpBb8V2BaD
         n1IuRU/tqoyintLDZsJJyqM4jXlSuScmngjD3uBy6lTfI/V+8gHCi+fI+BsM983KXLcx
         DT9Z/NIAjkD/GgVuLNFd91mwNaQFxD4B2fSqm+kPbwMrDvdspRZn4vvhyz3kCvALApYz
         Nv06cvwlyydo5TqGIAXlEWo/ENmJY/xfEfHhlPcInADzxx4OsHkxPsWqgpOxzQYCDj8y
         l+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mTIkLf8P7rQ1csosNj9MYUkt9q/vHpvdvB2piAeWYvg=;
        b=MVMKHQnyPcvzm34l0Q6V5DX5jeY4xciZFqKPo916deF7VGtvuy1HffERbLayLV7S+W
         hqz1Ul4TPNuYbRJX9zZqiw2yWDq5OPHvLqWoz24q37UTf/oJKfA0XtpBDfVvVq7QwCES
         3xU4uipMsXKd9JudqCMUqImjz59R+DtDUS2D+4tV1EHwISnNpByKDjTWIB0jE4lyn10o
         YMYJuRSH/8Q0FEr45PBBXkcgCV89+pQTkCByU0YHv+UrFo+p0fDn5TECHJSA3ZRLVr89
         7ifW/AvsX3hWnfsF/TvaSVGddoZz0jbVhJu+rNQ03lK/IGzPpSUzJhuAzO9x9YZxGHuP
         /NOA==
X-Gm-Message-State: AOAM5317IK5/TYcbzoDXElMMoKm8GgiW8E/4/XlwbSGBr/SZgSNaokI6
        hzjg2b9N2Ff4qxjhwvPWg9N0tF6WGhdwJg==
X-Google-Smtp-Source: ABdhPJyBR58mQmQLd8XYcUP0EsBRHHD8FexvMM+wKw949cEidpIIPaHyDJpA57juJjwwsTdOX2Ujvg==
X-Received: by 2002:a9d:688:: with SMTP id 8mr2431369otx.22.1611193198020;
        Wed, 20 Jan 2021 17:39:58 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s2sm729597oov.35.2021.01.20.17.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 17:39:57 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm-smmu-qcom: Add Qualcomm SC8180X compatible
Date:   Wed, 20 Jan 2021 17:40:04 -0800
Message-Id: <20210121014005.1612382-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the ARM SMMU found in the Qualcomm SC8180x platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 3b63f2ae24db..c50198e17d52 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -34,6 +34,7 @@ properties:
         items:
           - enum:
               - qcom,sc7180-smmu-500
+              - qcom,sc8180x-smmu-500
               - qcom,sdm845-smmu-500
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
-- 
2.29.2

