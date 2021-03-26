Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8666734AE1A
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 18:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbhCZR6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 13:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbhCZR6O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 13:58:14 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E20C0613B2
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 10:58:13 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id o126so8973931lfa.0
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 10:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Yxf65ae5RZyPNwN1tosRV5cCzbUfUYRQNvdqN080u/8=;
        b=OmtGiqVxJ2l41lgT4KMNtxN2ovz1dcwELbYpvlOfvASUxJU+ASKoXy5gzSQzMSY30o
         H6bITlCtqe4PsTvUmX3wQJd6h13Ln1lB151pk1UdINCQ7sWAfXufUoklrr8qKNfRM0u1
         bObCfCDlgRgK1O1HjPTElh4aPbmuu66dyo8Bfbv3tzyq5UCcKHw66707eP/1uMC7Vh++
         7ToeSk8mGFcbV2ZJ0R5Y/MbPXgN+yy+wH66vkpJbrfmrFGfP6FKoaNWEsN7plI91kd/F
         AqF2W2xHEtCqdCzgCmY7sWTU/xsFzyuCJFIBKRK/rw6BZrNZKgsBypjNjPw9BOg60nv9
         N6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Yxf65ae5RZyPNwN1tosRV5cCzbUfUYRQNvdqN080u/8=;
        b=TwU7G9GQ7LSq2cJ1l0zzhHnOujA/ZfXiJu0jYpI3uKqhkdklITQ7xSPXeyq2m14clB
         4WshBKKJiW3W5KDP3h4UKV1as2t0GNvrr4yd6q/4ySg8Yayll1hx2n7tMqGJyrJapWvk
         Hhlfh1BZOpCqrgRv5HIng63SXZsME6J/YFLyj79MbS4vgMwKqLH8tK3u6j84IuBzlQbK
         eZpuPg+4mAFNylhl2VmYYaIzZxbMgaDKx8HiggGTEAx1jMKAJh3Rl8Il4Ig3fryuYKmL
         6CZRGrIVyTzzNwOmaRgGVdPXymzTjwwuJO7Sv1l/momA+CH+Jcl7XH8C9dz3L9XCPlcX
         Zo6A==
X-Gm-Message-State: AOAM5314Ks2/0Hwd4n3RzQToezXTDfyOK+QHe3U9c7PIl2UPO8pxenb0
        lThAjjIVBSjW8vA6/MZo0q0cng==
X-Google-Smtp-Source: ABdhPJzoU4gnqiDwMeDI3dcbKXc7qilNN6ICzLxFmiFGMa5Y5sR8HeLG9+PqoZwcy7Qhkhb2/dnugQ==
X-Received: by 2002:a05:6512:6cd:: with SMTP id u13mr8857150lff.326.1616781492143;
        Fri, 26 Mar 2021 10:58:12 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f3sm1249554ljm.5.2021.03.26.10.58.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 10:58:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Manu Gautam <mgautam@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
Subject: [PATCH v4 1/7] dt-bindings: phy: qcom,qmp-usb3-dp-phy: move usb3 compatibles back to qcom,qmp-phy.yaml
Date:   Fri, 26 Mar 2021 20:58:03 +0300
Message-Id: <20210326175809.2923789-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210326175809.2923789-1-dmitry.baryshkov@linaro.org>
References: <20210326175809.2923789-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit 724fabf5df13 ("dt-bindings: phy: qcom,qmp-usb3-dp: Add DP phy
information") has support for DP part of USB3+DP combo PHYs. However
this change is not backwards compatible, placing additional requirements
onto qcom,sc7180-qmp-usb3-phy and qcom,sdm845-qmp-usb3-phy device nodes
(to include separate DP part, etc). However the aforementioned nodes do
not inclue DP part, they strictly follow the schema defined in the
qcom,qmp-phy.yaml file. Move those compatibles, leaving
qcom,qmp-usb3-dp-phy.yaml to describe only real "combo" USB3+DP device nodes.

Fixes: 724fabf5df13 ("dt-bindings: phy: qcom,qmp-usb3-dp: Add DP phy information")
Cc: Stephen Boyd <swboyd@chromium.org>
Cc: Sandeep Maheswaram <sanm@codeaurora.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml         | 2 ++
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 626447fee092..0f42b36b0ac5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -25,11 +25,13 @@ properties:
       - qcom,msm8998-qmp-pcie-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
+      - qcom,sc7180x-qmp-usb3-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
+      - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 33974ad10afe..62c0179d1765 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -14,9 +14,7 @@ properties:
   compatible:
     enum:
       - qcom,sc7180-qmp-usb3-dp-phy
-      - qcom,sc7180-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-dp-phy
-      - qcom,sdm845-qmp-usb3-phy
   reg:
     items:
       - description: Address and length of PHY's USB serdes block.
-- 
2.30.2

