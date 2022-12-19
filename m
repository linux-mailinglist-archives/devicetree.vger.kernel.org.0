Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62A4665128F
	for <lists+devicetree@lfdr.de>; Mon, 19 Dec 2022 20:16:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbiLSTPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 14:15:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231401AbiLSTO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 14:14:59 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D387915728
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:14:40 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id d15so9980585pls.6
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 11:14:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8v2Nfl39PqDNiG5tJ5BVPCQxMx/XptjHH0BkSqZcAXA=;
        b=mYAoIRmMEuigK/LcCQDLFQMqAEJjmLEghvG1BQpY4gOurCH7O6lR9R/5dVAAKZ+Swg
         na0lHMJNH/owjf8OSq1PSgWkHmszGAxBTa8+uBVpgHZc84Y2JbuGhJJadrI3ouRnvwfD
         AiR4CH/DmnUF/RE1omY6IY1m4c9jhdY4zOvvYPfTrWBvFJWwB1JEUazxK6FIQMCz0NQs
         6BklP83lC/XhfPTGBwYZ2HhJX/Awz3eEhbkmMbWvzYmGG9NUlX7I/2qRxpTib4f0A4Zp
         DC4z9N7zHd1WZt1ay7aZgrjz5jVfpjfV58oyb58PCSOBrNBTke8Cr71DHfcPk+rVloMm
         8lZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8v2Nfl39PqDNiG5tJ5BVPCQxMx/XptjHH0BkSqZcAXA=;
        b=SV/6URP9h257g5IXK3JFXARtqPAMVykCOh2e0bJMKTKImywc9dSmMbJnObyzrGxSKL
         L262qoqSRgQle++wyg2zDrnGXZ7IGqvYUZOQX7tS0mI3WDKt3L4YQ58PfvO+dVDDS6fa
         dDYUZHIBo8Btohn9YFYd5kQSnejyzDlA7fcSuhLZBlC6nIzCLkfOpvOTQ6sAocZsySEp
         rfdy/DAAkmbgAgledPsghpFOZOsElQAK0dVN57hMnqR/CVxhcRaKa657B+VK6rCimJWl
         TVQ5cKhGyEdM6Sihwp9rHFe+bCSkfuGMxaKeKdEB7BSRp+YqEvQ1HduOo+gh+cKT4Ew2
         Yy6A==
X-Gm-Message-State: ANoB5plGs4MCambEe1/+1lqi4z43t0Ah9w9nivpwJI9eQqjzc+uORPRd
        2OjYN6rGrBu9R5ekVUd0CrrK
X-Google-Smtp-Source: AA0mqf5aPwffppWZkyTopyJwx5C7Tl+yDP/pyeEezbaE8XycRt+mMchRaeu1oKho5r7xRnRSANw11w==
X-Received: by 2002:a17:90a:7d0f:b0:219:3810:94f4 with SMTP id g15-20020a17090a7d0f00b00219381094f4mr44027139pjl.19.1671477280354;
        Mon, 19 Dec 2022 11:14:40 -0800 (PST)
Received: from localhost.localdomain ([220.158.159.17])
        by smtp.gmail.com with ESMTPSA id z4-20020a17090a66c400b001f94d25bfabsm9485803pjl.28.2022.12.19.11.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:14:39 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     bhelgaas@google.com, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/3] dt-bindings: PCI: qcom: Update maintainers
Date:   Tue, 20 Dec 2022 00:44:25 +0530
Message-Id: <20221219191427.480085-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221219191427.480085-1-manivannan.sadhasivam@linaro.org>
References: <20221219191427.480085-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stanimir has left mm-sol and already expressed his wish to not continue
maintaining the PCIe RC driver. So his entry can be removed.

Adding myself as the co-maintainer since I took over the PCIe RC driver
maintainership from Stanimir.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 54f07852d279..02450fb26bb9 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -8,7 +8,7 @@ title: Qualcomm PCI express root complex
 
 maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
-  - Stanimir Varbanov <svarbanov@mm-sol.com>
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 
 description: |
   Qualcomm PCIe root complex controller is based on the Synopsys DesignWare
-- 
2.25.1

