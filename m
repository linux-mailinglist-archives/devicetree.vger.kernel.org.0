Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5B5358ACD
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 19:05:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232667AbhDHRGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 13:06:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231715AbhDHRFs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 13:05:48 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CEBFC0613D9
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 10:05:35 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id h25so1848303pgm.3
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 10:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eJ9Bq7I+RO+flvh+OXa43h5cJJd1W9cz3i6BtHkT8v8=;
        b=qaRYFdcKrWAzX3q4lvtZVJ+IgRd+uBPwpKSMBNKzf18zO0jBRjYCldiBDO/WVhTCHJ
         v7P6TIEKYaM29lWx3EAOj6r/Z7cAwrFRAWLMEKvQf7LGCKCesA2vFlV5kzktLAzh3xjL
         EoMJvQOrrxhkQi3egGVLZAXywmNqyAIVUyEMgyfW9mUl8QLn6cxbpZb3rVVGk0Ch1d4i
         COV7s+oddjArIud5XENOXPj9CRDfoWAb0AvGNkWAtDwUsh5UlDhHhwhUyhgNDRUPyRw4
         AXNlX2RuDer+ezvh4zdjmgiagnniMVHyB9JaS5gb1nY9+5LXwuDzHJV2EEVawg4zd7Ik
         KpQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eJ9Bq7I+RO+flvh+OXa43h5cJJd1W9cz3i6BtHkT8v8=;
        b=rpY41CG6ZslqJhQKzHHa+t8i6m9BN222qHE1LqvNeDLHnVQR0auL2s1qxf3T0WWpo0
         aBVycw3HWZ5WFYeKBkueVAUB/pYaJxKlUM5/p1v58sKl5BOOr0f1GfZ2hDNfHAxVhsYm
         gbJyEO/CvpWDHRJ7FBuNEZJ0njaLt4uQXLatalCPCLjHfTgiv8ZGR+n2JfkBcoUhR/42
         Hmqb386vZ7uRQUaO7y1I3+jI8lPzuXVq9nFdWXBw9ucsJMYDI8fbCOQlQKyohC2Dmomw
         DWrIQfuc/OBcRMM/MP1/a/3l5OtM+z5EWNUCg3TWJ2LLwm3zFWTEzi5T8IMRBLBWANO0
         xS3g==
X-Gm-Message-State: AOAM532h2liS/3OrgN5sjMOYzg2q6wWlyS0Yev00VD7dFpGttRwDgpIO
        ptPcz3Lq2IoHHhG6Ta6PkVoD
X-Google-Smtp-Source: ABdhPJysVD7x2DCqOYhbJapjnZ1FZ9X3jK21motxouKyh2gtfIaTl31l89Ly8Qqw99fGaYzDPCsBpQ==
X-Received: by 2002:a05:6a00:1ad4:b029:216:aa9d:dcea with SMTP id f20-20020a056a001ad4b0290216aa9ddceamr8172874pfv.47.1617901534581;
        Thu, 08 Apr 2021 10:05:34 -0700 (PDT)
Received: from localhost.localdomain ([103.77.37.191])
        by smtp.gmail.com with ESMTPSA id y194sm65183pfb.21.2021.04.08.10.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 10:05:34 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 10/15] dt-bindings: arm: qcom: Add binding for Telit FN980 TLB board
Date:   Thu,  8 Apr 2021 22:34:52 +0530
Message-Id: <20210408170457.91409-11-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210408170457.91409-1-manivannan.sadhasivam@linaro.org>
References: <20210408170457.91409-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Telit FN980 TLB board based on SDX55.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 174134f920e1..d5d561d9e8aa 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -172,6 +172,7 @@ properties:
       - items:
           - enum:
               - qcom,sdx55-mtp
+              - qcom,sdx55-telit-fn980-tlb
           - const: qcom,sdx55
 
       - items:
-- 
2.25.1

