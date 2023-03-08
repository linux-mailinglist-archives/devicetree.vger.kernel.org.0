Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B56996B010A
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 09:25:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230189AbjCHIZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 03:25:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230306AbjCHIY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 03:24:56 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D82D5849A
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 00:24:41 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id x20-20020a17090a8a9400b00233ba727724so3057481pjn.1
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 00:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678263881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WT/YBVNsPknrBjyIkGUY9UiL+2Gj/Zemk+zRmMN7Jkk=;
        b=IU1Ed86toqfeL/Oy5S9RLvgyjhKn4YpmAkbkjTUtlIYfyxwE6ss5nnj0A6aD5fihad
         5YkLLWGCXIfYwDa6fLQxk3cHtvfit/giKXBtqIMZpOPlbTcWOVLPFxDj0xzeWoMasOma
         iVMEvW21hIS6FfgzrVtxi2kRHuAiOtEGHFbxOmoj4ltE7uWTJ0m4kApJme7X5j0NPIkb
         D/Rk+8qsklFZegDG8Os2SB3hNuI0zl2fERMn3Ja62fix/UnUKPeOZnopO4OUqfm/94/5
         ewWodg5fB/p4yGvAfQoErsiv/UDPygj7R64RzhBJn5eRSKtuGp2tZLqcjUotGOPJxD9/
         SGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678263881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WT/YBVNsPknrBjyIkGUY9UiL+2Gj/Zemk+zRmMN7Jkk=;
        b=YIpuqNC6E6FIqxKZLz0jg22McvteelnfJknXNhNUThMnZV8HjqYDauJyS2TXP/tfeF
         SpeOUjRP7hFu7o7zSIAWoyI+IIZUnrQ90kwHu3+EL19G8bEOlkzRSKwo5ArRg5uz9qnW
         0h6lsP/YTzbuzf/5xOdTaYMusRMhUYCQfUvcY13q3m+WkD3M/lKiWSd79uRl5kxRCAdu
         1tc1VO/7cU/sQiyeUYm9TNYStc4oRqK32r+tT9H5EL30hzGJ6hpDco5SjKg038+YzU5P
         WTnKF94hB6y//jLZcLzimMc5jXpzttduwD99fqpIdD0kHr7kC01XxSV7umzJxqFTTRFu
         azWQ==
X-Gm-Message-State: AO0yUKUmc7253C3GIr17SceZTT3cLEGCQgakyZqyt2BsrGZe8I8wkDu2
        wII19PI2MIq36qeRJrtaKwus
X-Google-Smtp-Source: AK7set/u3U2U32Lk//wFu6fAj0zNV+97AFPfKeYRbfUxhcrYTjxdj5ItKedSSAA8khsHfHl97oL8EA==
X-Received: by 2002:a17:902:c948:b0:19c:dd49:9bf8 with SMTP id i8-20020a170902c94800b0019cdd499bf8mr21710306pla.28.1678263880800;
        Wed, 08 Mar 2023 00:24:40 -0800 (PST)
Received: from localhost.localdomain ([59.97.52.140])
        by smtp.gmail.com with ESMTPSA id s10-20020a170902ea0a00b0019aaab3f9d7sm9448086plg.113.2023.03.08.00.24.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 00:24:40 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 02/13] dt-bindings: PCI: qcom: Add iommu-map properties
Date:   Wed,  8 Mar 2023 13:54:13 +0530
Message-Id: <20230308082424.140224-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Most of the PCIe controllers require iommu support to function properly.
So let's add the "iommu-map" property that specifies the SMMU SID of the
PCIe devices to the binding.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 92eb273581f6..55ee86facbc0 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -70,6 +70,8 @@ properties:
 
   dma-coherent: true
 
+  iommu-map: true
+
   interconnects:
     maxItems: 2
 
-- 
2.25.1

