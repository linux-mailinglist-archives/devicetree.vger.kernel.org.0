Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1EA327EBE2
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730057AbgI3PJy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:09:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728081AbgI3PJx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:09:53 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB79C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:09:53 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id o8so1207727pll.4
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ZdgKLe65/5ZTL18bHaqdAUbi1xJI+QzTIn6dSNFRMgI=;
        b=OW84miwh5tgEYdb70FNXRud7li1o+dnEO3fOUdGk1HIgmk+CEUqzQIxcd+mjZPz6lj
         J0yKWyJmZh52FzFyGwbOqi2CtOXIEErsjRl5MPqXNcs0gm7by56k0zET8HNOVQVjZIwc
         9ygdmSIS09XalSCVAwHv8nN9zMRMhqdYrAocVjQ/JAc5bjzoHgQBlDMJ3B5+gZjmZ4bP
         1E18aI4ViLXZvxXL38uOv1IjPvpFzk1LQkDUgkxn4iaHR9/zvGx5z5j1tynhFHSDGUuK
         vf3MjenJhZMFtwmtb42iNDrhzRPFiq3uNqjXOxazdpGE1q2zqCZ7LjxXfERn23y7QvaO
         5bvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ZdgKLe65/5ZTL18bHaqdAUbi1xJI+QzTIn6dSNFRMgI=;
        b=r80LmQiZOnlYh3HiIhY6wbkiBhFDdJasIvdYxecFZ4kM2BlnNEt6VDhrcXOzPWpdCu
         m76qruw9AHT+WG8a9eFAhtFOo4vIeT71eMEHfL4klzSAlkjbtOxyt4Gm+uu1JgVDqRcI
         GUgb6tQsUhTK7dk+Thalle9EjDOnyea+t5ZeV7eHODJkxqvZHLerWjpvJLshs/Rl8ljk
         RuFLWB9Uy/Ax8f+aDHT+L8D/0r4HOYrWtEnBAi0yIDzhPZHhuua2kzVTa3oy1E9leXh/
         GleMtkaCzv0dvsyZbyxOWDRWJzDJ9x+NtRmgLPJGt+ZP/ua39cd2Sth6j8paA0wc0WQA
         f1jA==
X-Gm-Message-State: AOAM532OpAgtS0Xc6giB9D1nBAtK4OWNRPpbZhA4+MJ1INc32+wvHU7z
        eHrnDpvCqfVGoVNkCuxviUu/
X-Google-Smtp-Source: ABdhPJxdYTdU0oHy/4UMoQvmV2HCB2lq1nRBycFRCVyQQMXyncrRUhOiqQ2hloQxcwkVsrw9dTB0Vg==
X-Received: by 2002:a17:902:b906:b029:d2:80bd:33ae with SMTP id bf6-20020a170902b906b02900d280bd33aemr2877542plb.47.1601478593151;
        Wed, 30 Sep 2020 08:09:53 -0700 (PDT)
Received: from Mani-XPS-13-9360.localdomain ([2409:4072:6004:2356:f1f4:5bc8:894a:8c50])
        by smtp.gmail.com with ESMTPSA id o6sm2456444pjp.33.2020.09.30.08.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 08:09:52 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
        vkoul@kernel.org, robh@kernel.org
Cc:     svarbanov@mm-sol.com, bhelgaas@google.com,
        lorenzo.pieralisi@arm.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        mgautam@codeaurora.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp: Add SM8250 PCIe PHY bindings
Date:   Wed, 30 Sep 2020 20:39:21 +0530
Message-Id: <20200930150925.31921-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930150925.31921-1-manivannan.sadhasivam@linaro.org>
References: <20200930150925.31921-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the below three PCIe PHYs found in SM8250 to the QMP binding:

QMP GEN3x1 PHY - 1 lane
QMP GEN3x2 PHY - 2 lanes
QMP Modem PHY - 2 lanes

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 185cdea9cf81..ec05db374645 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -31,6 +31,9 @@ properties:
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8250-qmp-ufs-phy
+      - qcom,sm8250-qmp-gen3x1-pcie-phy
+      - qcom,sm8250-qmp-gen3x2-pcie-phy
+      - qcom,sm8250-qmp-modem-pcie-phy
 
   reg:
     items:
@@ -259,6 +262,9 @@ allOf:
             enum:
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
     then:
       properties:
         clocks:
-- 
2.17.1

