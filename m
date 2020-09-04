Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 516DD25D17F
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 08:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729628AbgIDGg7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 02:36:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728443AbgIDGgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 02:36:52 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE05EC061246
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 23:36:52 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id 2so2720716pjx.5
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 23:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=F7xztAForvza/aTPFJ5kdjkRWK2BzcaAuhBjilFt/LQ=;
        b=d0Xb/BrT5IHhHFFwSAw1jW9xo3JHLF5xv5wxD9qI7K4JIEpQTQOdq7nIVBsa2IDvJ/
         zGQfjq2XpsTFTJ5/fpg8eQirm8PFYpxgM2oyPIFjD2UnHMYaXiCAjyru/PO5IpLWuoam
         n2pEdDdGwLiBqej+f81jG2/V0+8SpE7hTvpnH7hjcp9eB4gUJPHoRU4iuc76TIKv6I4N
         Hh9W0n82ZY8i4j3O4e2zn1nFWZ4tBpBsQ0wd9/Zf/oC3ZBmLhNjd08PM7Q+ynVrGmHjK
         8D/j/l4x10+RVFbeIIJ61cl6+EkRm6FSwNuDmvOG5sehsSkxRF74q1K0apRHHmUDdQnF
         br2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=F7xztAForvza/aTPFJ5kdjkRWK2BzcaAuhBjilFt/LQ=;
        b=ovzmbda+j297Kq/UZIZw9QsLUzhxxbr+ipQnBPYmPHz8bUGi8Bn9n2ymW7vfsiiOzg
         3D0DWCc3D32sRcbpSzx52O1N7L6gqjjw6fAbsYwyaZiINtQAhbE8kj3MpIYZgkiuzgdD
         oCWB09W9l2jUSQ0xSqlqFNM3ogUw+58LwWvC80NmNhaZ9EUISSv93WYZrLpCx+ldIYnU
         NpaDRrMAQ/Zzm/TUjHSxmFDs8BovfFn2wSVNlPAGl9B6OSCoPn1PWL1jMX4Vno5RLAio
         Df8YNsLcEy0PGhrd3pSH79hpA/EWmHEqcvgVBZ+UvmKQPQxy8Qks6VT/hsHItfopf+fB
         9suA==
X-Gm-Message-State: AOAM530S/vrvdoMaP4/n/WnZhFXHBK7yQgL5Lfci+AD9A34LOOpNNxNn
        KG7UH6HPE4pTD6JKSHIX8xY7
X-Google-Smtp-Source: ABdhPJyJN73V6vGB5qHtldumPRENalFRzf+XdcfVxUOp/Kh8KU5nK4P0zg8KU/xmp8ITAornxmLEjg==
X-Received: by 2002:a17:90a:644b:: with SMTP id y11mr6988183pjm.13.1599201412193;
        Thu, 03 Sep 2020 23:36:52 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id 143sm5315040pfc.66.2020.09.03.23.36.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 23:36:51 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/6] dt-bindings: arm: qcom: Document SM8250 SoC and boards
Date:   Fri,  4 Sep 2020 12:06:32 +0530
Message-Id: <20200904063637.28632-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
References: <20200904063637.28632-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the SM8250 SoC binding and also the boards using it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 6031aee0f5a8..1adc8a33a3e4 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -40,6 +40,7 @@ description: |
         sdm630
         sdm660
         sdm845
+        sm8250
 
   The 'board' element must be one of the following strings:
 
@@ -165,4 +166,10 @@ properties:
               - qcom,ipq6018-cp01-c1
           - const: qcom,ipq6018
 
+      - items:
+          - enum:
+              - qcom,qrb5165-rb5
+              - qcom,sm8250-mtp
+          - const: qcom,sm8250
+
 ...
-- 
2.17.1

