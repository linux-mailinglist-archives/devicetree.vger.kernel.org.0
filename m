Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABC16541E8
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 14:31:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235310AbiLVNbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 08:31:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235267AbiLVNbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 08:31:48 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A98C14D20
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 05:31:47 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id w26so1224940pfj.6
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 05:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jOniKrb0GQ9WjhoUQcWo7o7ITGbjHRsfNlny869TuiA=;
        b=RXfCUc6DuscK6pSxe4TWf7ROX9vnBY/mOBG8/W2FUvubLqbhzjVOE3w/Hf6dXzf8gh
         IkhVVvyKBH3hEhzV0bTP+hgPrXzgs4uUUnpdTjeBKY6BQRbkDWcvGqyAQCHRa/0xtUgx
         mwAoA30aOtXjknVTCEVlt22ks/lj6ule3aPYzWYon0qjYDxjY2pgTVOcwpStvlibqdHk
         QXlyOfIrhAwFBG+Ms7WL8WDih0el88qT7UFslSFORnuJ8ycSfZJede76gZoOuB9COoud
         F9sghyxBYljYN7xJZIEfN8dDdvxJEI88GK6P3bZYiN1lW3i6UPcBWQgc3Gk9TC5CJh4R
         W/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jOniKrb0GQ9WjhoUQcWo7o7ITGbjHRsfNlny869TuiA=;
        b=q2jACo20z2tyPRArnCcsNujhJeEXc5B3x6WdjWphWEyrsNrBdwN7rUB2U4MAs99x1p
         8uFghcWPcphHFq9xhomRS0hnIHxxx1uY0dRxdjt08WFmLYBaN04puiYmKCeH8ogIRaBc
         3YfHN8jYU3IXmrl05vVckON328IbhVSLMpZs3dLeb49FFdlSAgBEHg7zioXhRw53UZDq
         AcRtc8nNHaNxVgl5BZQlDgY1Ok9z+T9R+21R2aAABx6Cf1hMXlzYJh8bRt6uhpFu6FYJ
         R+zOnFu2GOaoY7iWO3EIhQdEqv7BR9k3gknroOQLZ1pobQZ/HdNzZvw/NGNaqOFJ0pry
         8QTA==
X-Gm-Message-State: AFqh2krsNUV+NHPAL7r+Ken+egq1B06BsnbW6frJLHK93NjoznUrcFu3
        iKbun2DsODyYZ4dqtVq+m1pn
X-Google-Smtp-Source: AMrXdXvq2jEi5GKhsl6hQVoJsM6pxaidM2iYeGzG5EDQ7gb5qjUobCUHSESWRvwVjcKeenBcvarSaQ==
X-Received: by 2002:a05:6a00:13a4:b0:57f:f7a4:511a with SMTP id t36-20020a056a0013a400b0057ff7a4511amr8553345pfg.2.1671715906971;
        Thu, 22 Dec 2022 05:31:46 -0800 (PST)
Received: from localhost.localdomain ([117.217.177.99])
        by smtp.gmail.com with ESMTPSA id f66-20020a623845000000b00573a9d13e9esm737467pfa.36.2022.12.22.05.31.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 05:31:46 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     bhelgaas@google.com, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: PCI: qcom: Document msi-map and msi-map-mask properties
Date:   Thu, 22 Dec 2022 19:01:22 +0530
Message-Id: <20221222133123.50676-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221222133123.50676-1-manivannan.sadhasivam@linaro.org>
References: <20221222133123.50676-1-manivannan.sadhasivam@linaro.org>
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

The Qcom PCIe controller is capable of using either internal MSI controller
or the external GIC-ITS for receiving the MSIs from endpoint devices.
Currently, the binding only documents the internal MSI implementation.

Let's document the GIC-ITS imeplementation by making use of msi-map and
msi-map-mask properties. Only one of the implementation should be used
at a time.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 02450fb26bb9..10fec6a7abfc 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -104,14 +104,20 @@ required:
   - compatible
   - reg
   - reg-names
-  - interrupts
-  - interrupt-names
-  - "#interrupt-cells"
   - interrupt-map-mask
   - interrupt-map
   - clocks
   - clock-names
 
+oneOf:
+  - required:
+      - interrupts
+      - interrupt-names
+      - "#interrupt-cells"
+  - required:
+      - msi-map
+      - msi-map-mask
+
 allOf:
   - $ref: /schemas/pci/pci-bus.yaml#
   - if:
-- 
2.25.1

