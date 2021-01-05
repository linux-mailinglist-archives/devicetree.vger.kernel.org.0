Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453F22EAABF
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 13:28:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730182AbhAEM2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 07:28:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730176AbhAEM2V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 07:28:21 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54177C0617A4
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 04:27:14 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id v3so16261896plz.13
        for <devicetree@vger.kernel.org>; Tue, 05 Jan 2021 04:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BVgPs4UTz0m97kkGkS/Y+gkUiFLrmZrneiZz02HakNw=;
        b=OQaxZLZrGACL8Q54aGsrKM3UtdQOc3d9oBz5rGsFK5MYTq3dzA2t1r6lgPaRte30RK
         7Zho0nQ0IwZWdj97ucxShx8X4W/CO36KVqPKs15ohWVWBugVWtZE0W83Zs5nQkBF6Z2b
         odoEi2OR3OBDiv2o6fmfwBcxjSOoYdyQhx35nfLv879JlufiBWEsePYyjP93elxNNhGQ
         eG2gVQm+fLEEoM5YMdXo/2s7wfbTIxuXnkRH+wvQOlWdiEXUjh13nlhhL5iwIG6h8drx
         WT5kq3QTGe/gJ1EDTCPbnDfwHSWmTLKagPbS6JIWN6XW87SjYzES9URdK2CQ3f/W6X1e
         uyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BVgPs4UTz0m97kkGkS/Y+gkUiFLrmZrneiZz02HakNw=;
        b=AbO3PZU3PeaqHlr22br/SWA5s7siuDH/WWuVkpV0cqciAa+m4kCCFg0Cj/RUq5uheg
         MDhd45a2Ht3+J1UtQTgDer3+IFWuS0EEIxTt64Fdp4vxB5NcqAbLm6IgbXu3rLhiTZtc
         kLoskeMLA5XwyqFfDPHFrYpS5qzGR1LKIJ1P2CNevoQE8a699RdVIS0DDjUVyKmu+toG
         R/a9s0YSV005JiDqXHTW9ihCXRPHorMJxVelh9MfehlBepYPDvKfad050benwlM0HryZ
         uWCHt4yp5anLydwKscKag+bwbudU5j93UbSQheU5QgK0MOkk/M0rdcV4jgeZrqrUVGhN
         ygzA==
X-Gm-Message-State: AOAM530WTtWnDo30zxEervIAHmUyb238m8v25yKcUHWq9V4PH8bmD1R/
        IDugVSCEZlZWB2f61A2i5e4sq7wMMZlN
X-Google-Smtp-Source: ABdhPJyxoMT1SpuSm2yhcMnDEwBBVoOFnTvmNvyODOP877OQwAFbVMVdWDJaKdU8QGhDSPTNjhArMg==
X-Received: by 2002:a17:90b:228b:: with SMTP id kx11mr3968531pjb.122.1609849633859;
        Tue, 05 Jan 2021 04:27:13 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.191])
        by smtp.gmail.com with ESMTPSA id t22sm64745402pgm.18.2021.01.05.04.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jan 2021 04:27:13 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 05/18] dt-bindings: arm-smmu: Add binding for Qcom SDX55 SMMU
Date:   Tue,  5 Jan 2021 17:56:36 +0530
Message-Id: <20210105122649.13581-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210105122649.13581-1-manivannan.sadhasivam@linaro.org>
References: <20210105122649.13581-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Qualcomm SDX55 SMMU.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 3b63f2ae24db..cc48d90de5fe 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -37,6 +37,7 @@ properties:
               - qcom,sdm845-smmu-500
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
+              - qcom,sdx55-smmu-500
           - const: arm,mmu-500
       - description: Qcom Adreno GPUs implementing "arm,smmu-v2"
         items:
-- 
2.25.1

