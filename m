Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF9612E90E6
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 08:24:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727685AbhADHXm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 02:23:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726163AbhADHXm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 02:23:42 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 596D4C061798
        for <devicetree@vger.kernel.org>; Sun,  3 Jan 2021 23:22:46 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id m6so15942153pfm.6
        for <devicetree@vger.kernel.org>; Sun, 03 Jan 2021 23:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Rmh+CTj/H1pwh1n20C+/KUGBokrzZ4wWICcJIDFC7P8=;
        b=xngIJ8KP++ywSldcUlpFrRvAp2Q1AEGr363zzNiFvtV50BHnCG10elW8nA5ZadC4b0
         XJmB7oQFH5rIPd5k68Tgf6SpejLgN+WpTNrtrjlHIUzfCoj7/W1cvHZAf72Cp7lwbktI
         KYNclRE6daOvcKukDudcEBJVz9dARKnkn3Nazl+GgSHVK6pyscCBGCEfkfj9/mALa04Z
         NUSVt/tNkVv/k8COXiuqYRxlMAmohZEx/h6J4ap7l8Bn5aR4Pvyv4Fo3iElGPgM+gayt
         WUUND+RvjbXOhvT1Z5U9rXEv1w1Pam8KUqMYPePnWzzL+w87EIllEF9jszUu0knT3Uza
         3MIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rmh+CTj/H1pwh1n20C+/KUGBokrzZ4wWICcJIDFC7P8=;
        b=E1dcm2JPnG7g2j1wIgORxwJR66e8ebhGHO8CW9m6xwuQ6KoJ66Y+zu+9mzB0H0GkkL
         UiTR9SnmIm2G6rSNzTJ2+2mL0GldKxyhxYnH79BCdc5qtWGjVIBZl1RPoItJ5ZQbC+ZM
         nFbyfzo1lydwMpM2s/yU2r/rmlXRRsLdBY4t3sLS4eD2Rfkb435MGswadTwWEQYTrRzJ
         +5lOmtEkN0WzJJhZQDCmWIYGe4zCtx99yHf1GJ9lzGqc6xduXhECECp4TDFPxaOUJOW5
         tRQK0qlTfrQJG0K6mgod21tSJ5JiodPqqF2iKRCQOVV1D+LkLJFv62AvabXgNRKhHo4P
         dMQA==
X-Gm-Message-State: AOAM5325fjKklkwM7Tfpb40tZ3fQPdPELFCCQXFsKGuuBXyE6w2OgznK
        9YxocKD/zJElZPGXDX7bhAHq
X-Google-Smtp-Source: ABdhPJxHTLZwkhu6ZRf7m0yiaHgoOkOmM3qsLfPPBG/LTqKT35FQiMlN5nqjhs/GcFiv9TsuSp5cgw==
X-Received: by 2002:aa7:8708:0:b029:19e:924:345a with SMTP id b8-20020aa787080000b029019e0924345amr41278800pfo.54.1609744965869;
        Sun, 03 Jan 2021 23:22:45 -0800 (PST)
Received: from localhost.localdomain ([103.77.37.160])
        by smtp.gmail.com with ESMTPSA id h7sm56676668pfr.210.2021.01.03.23.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Jan 2021 23:22:45 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, agross@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SDX55 USB PHY binding
Date:   Mon,  4 Jan 2021 12:52:11 +0530
Message-Id: <20210104072212.144960-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210104072212.144960-1-manivannan.sadhasivam@linaro.org>
References: <20210104072212.144960-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree YAML binding for Qualcomm QMP Super Speed (SS) PHY found
in SDX55.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index ec05db374645..390df23b82e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,sm8250-qmp-gen3x1-pcie-phy
       - qcom,sm8250-qmp-gen3x2-pcie-phy
       - qcom,sm8250-qmp-modem-pcie-phy
+      - qcom,sdx55-qmp-usb3-uni-phy
 
   reg:
     items:
@@ -109,6 +110,7 @@ allOf:
           contains:
             enum:
               - qcom,sdm845-qmp-usb3-uni-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
-- 
2.25.1

