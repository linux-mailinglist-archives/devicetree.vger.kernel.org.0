Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A01CB6A1ACF
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 12:00:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjBXLA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 06:00:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbjBXK7x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:59:53 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC7239B8C
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:59:20 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id q31-20020a17090a17a200b0023750b69614so2275029pja.5
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7g1uqAd+GBvLWxylp13ChAu3aZ2qmP9sP5D+Fm30PJ4=;
        b=xMS93kYtTEWQdbX6qfOwCbcRYIGnoaDf2QJDnzsBG1pI8dHP/gX61gX4fLgH/twQzJ
         /XYaG0UG2ZbcmamgvygW+VMhACiR0ijaXbGnqHdojoFsXmF1pUX+yOkQGUqG2hKUdOE1
         Yluzn+n+d81WXnsnHRCJmIuo2lvf+6VzZzYvcRHDXhF9I7+gv7ARITZ57947CHWinHn7
         fi2BhJDcGjuwrKoVxcrJ4r8zbaBTpKm83kP5a28aqeRygtjRVQzRssVxqNtrTnS7FjtS
         5pclT3FRd82lh5EuexCw1XznkKdhrrd2yv1XHxfaeZ7RqTU/l7gDAaWGEnGhCmu64iOA
         us+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7g1uqAd+GBvLWxylp13ChAu3aZ2qmP9sP5D+Fm30PJ4=;
        b=fKLvEFQPA8DU6rV+I55eWo5D7FkJp8sv8yQB0k08k8aVk6JOGAaDPTuc3KY5oFgaC6
         NaPlYqyqiwBayp2Ri/UeOARodgE1VXQ/AHPW/ViXaroEAxbCuerZzWs8OndF8XqJQE/b
         IDre4GRBLMgOdWG5wgGnoFKRJeXmmbros/HjR/UAxTbSBA6FrroKjuF9XPM88g4rxiHe
         jLS7A79QDsVK3eyatB9lzzgPAWK4dNKRoECAQpr3CKzyD7ZKR1Uko4GH6AwgnM8P1zww
         stFjNEJTvWIMN0QF7np3JP7iTFEXYCe9ZgVBkY69WBZqrW+do5eWZcJwl/lt8/PaucwY
         2keA==
X-Gm-Message-State: AO0yUKW/UgYF3igsz3cMLAENLv/P5QNs4ZVNAD66qaWLCfI/E8eyxc9K
        dra4jilpc1wIGXuzWDyheiUWVIMohyvQaqQ=
X-Google-Smtp-Source: AK7set+ZDd7rHtMLxF526vFXCKgB89SNppmXHQaAki0dC4fMRkmaETiCaGeFktgQlPL46hfmwQY7bw==
X-Received: by 2002:a17:90a:188:b0:237:3dfb:9095 with SMTP id 8-20020a17090a018800b002373dfb9095mr9674382pjc.6.1677236360228;
        Fri, 24 Feb 2023 02:59:20 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.02.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:59:19 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, robh@kernel.org,
        kw@linux.com, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org
Cc:     konrad.dybcio@linaro.org, bhelgaas@google.com, kishon@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/13] dt-bindings: PCI: qcom: Update maintainers entry
Date:   Fri, 24 Feb 2023 16:28:54 +0530
Message-Id: <20230224105906.16540-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Stan is no longer working with MMSOL and expressed his interest to not
continue maintaining Qcom PCIe driver. Since I took over the driver
maintainership, I'm stepping in to maintain the binding also.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a5859bb3dc28..a3639920fcbb 100644
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

