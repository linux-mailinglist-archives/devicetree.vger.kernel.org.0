Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 774AA2ED247
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 15:32:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729308AbhAGOcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 09:32:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729304AbhAGOcW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 09:32:22 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1372C0612F8
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 06:31:41 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id c132so5056861pga.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 06:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RsDTMrWv7jSxdT5ji0Wdtt9x9xjaZ1j3PSJSmTMWzAg=;
        b=LFmqRtkapVLHAIwS9SwEiH0wOugFQUWyHlXt409uUhmVadFEvWL+UTSux0ywaxjTIL
         qPGwDIR8l3xvvhPvKZqcH81QyML6nYN2gQ9PlLPbicKSgn3g6y4FyFG21l83GjqbxFe/
         Y1SvEhPYdyHVTiS8T8D9nyKiD9/MCS7bvruMES2BHC5yfq3VUobOa8bSsSPj9OBNHphi
         0pT0vA85FIZSzzv6NdOBukjatPxyL1xaGfO6w3hP56XSg5w6L2x4efpfRXfiX+eFPCz3
         S+g1ZPdGLmmGNpUQZsA7ZWNeagdfXw8PVAHujJ6k33M6Huy4auqTVqMquaILFD8WTImK
         sRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RsDTMrWv7jSxdT5ji0Wdtt9x9xjaZ1j3PSJSmTMWzAg=;
        b=kQjnCxDNTnP57IOpeoRBfGFjr56JiBqBqrnQJLbDDHqhH8GZekeFdx4HVsQC4xWS0B
         QvP0rv5fwukvqRBlhC2yG/C3OoG90o7c4D2LZP9E9Q2/jE6NIXWBp7+mlF0NgRW+XohZ
         wILuFyWf3MmstCYmqhLuQRaP2mrvl80/f61SPCXQgKi3/yg/NJOKHd+uk2mPxM4s8QDv
         +BIHrn3gW9gqKPbJ87nUN+FHP3Y0ax0W5zooa7WFszt2732h1QyhO3ixop6R1qmT9/kM
         FiUjVCKGeRGmJsOoA0bYNru4S72EBPFoZDQmEu/fWPh0gg96Ye0tNBzJrMyKtrt0ODXu
         iPRA==
X-Gm-Message-State: AOAM533cNhR7Sists/tQBE653c2G9LOTVUbH6RuQzjzhzqIP21Zk2qBD
        Oa2jZmhMi/OUXHOhiJEyYGlt
X-Google-Smtp-Source: ABdhPJzSG7+An9o4M0cfAK/FdgBFCAQmBgulcSq3UwEZdeNDf3A/qo5+aNub8hfE5ryNYIOPDwVeNg==
X-Received: by 2002:a62:7fc1:0:b029:19f:1dab:5029 with SMTP id a184-20020a627fc10000b029019f1dab5029mr8813824pfd.13.1610029901346;
        Thu, 07 Jan 2021 06:31:41 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.128])
        by smtp.gmail.com with ESMTPSA id 19sm6096465pfu.85.2021.01.07.06.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 06:31:40 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     bjorn.andersson@linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        iommu@lists.linux-foundation.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] dt-bindings: arm-smmu: Add binding for Qcom SDX55 SMMU
Date:   Thu,  7 Jan 2021 20:01:18 +0530
Message-Id: <20210107143118.2386-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107143118.2386-1-manivannan.sadhasivam@linaro.org>
References: <20210107143118.2386-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Qualcomm SDX55 SMMU.

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>
Cc: iommu@lists.linux-foundation.org
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 3b63f2ae24db..3a1cefce8bc4 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -35,6 +35,7 @@ properties:
           - enum:
               - qcom,sc7180-smmu-500
               - qcom,sdm845-smmu-500
+              - qcom,sdx55-smmu-500
               - qcom,sm8150-smmu-500
               - qcom,sm8250-smmu-500
           - const: arm,mmu-500
-- 
2.25.1

