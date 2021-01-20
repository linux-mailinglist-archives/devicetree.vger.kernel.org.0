Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D54B2FDD4E
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732181AbhATXob (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:44:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404072AbhATXYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 18:24:12 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57E5AC0617B0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:45:24 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id i20so17199840otl.7
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yTbXPqD4zbkGnIMCPH6cR9hk9qRDwJpn65PvPJP75rA=;
        b=SigRUfruDOPZEcpEs32X6xFJzSEF06xjGtl3S7gbsSPxEW3D9OH028lvWarC79YREo
         S49n5rep+rR7y6cZ7UYUPLocMNO2eK6eQKsB4DoNBhs8Y9+sTpa1JsQ5STAgwBl+1/30
         mgDuzPcBCcETZWccZ2Z75mJAZiHslMEEf/xuu4ZtoLAF1UfPCro18ib4TN9+nSwNpMac
         DVgGNG5DvuCSAY/emiujcVKtr9IlvN1Sx5FINbDmwCPFwqRIWFQJGSUnk3RCzE4oM+Kt
         YSwqSVTwJvEjl3CesWJ+o2v8aEBnsx7K/r5PCRc7vIXEKeFRQb1bp33nVaguz34Z+/mG
         7OAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yTbXPqD4zbkGnIMCPH6cR9hk9qRDwJpn65PvPJP75rA=;
        b=tzYPaThO1spUHLYR8vNgguHapiE8+sUkUZQu2s6LSU9Y/HcLnlao0D4omIx3yaWC6t
         U5z75Ec5FVLzVeL8772rHrCmCVdaim2n3HAyxYMEWcSz+kT6JQh4lg81o8VYzhR7OE1i
         9SlJUZVN7GK8dV/DwBxYbmbPermRz00UfGZ3xhRcGjt9qof8S3kBmDJgXVnqqu6JN0/e
         AflpYZpOjwlSnJKKFwcPXsdHf2E2L6UFvoJbgwd+jQPF4m7iYv2JmwrOY8GLxa/bVX2z
         0ZTzXccwi6c4c7jfxc9zNlZdLu6VZsIK9LJZGpQdm8qTO7BhrXeByIWvhUdL8hOKKRBd
         merA==
X-Gm-Message-State: AOAM533Oi3UW2Tu8IdhTUAH7lIeDuZ+ccuqT660qeNILya97x4z7VZFT
        /M1Va8n9Hmj3cERLn897SeGQcVnUFgymWw==
X-Google-Smtp-Source: ABdhPJyRWzkSjCeucXDNQb9N7qrb1yr44yzshKhXo9BLqb4OLAoYZJ/9slysAREVqRWkxCkz03wBrg==
X-Received: by 2002:a9d:3d06:: with SMTP id a6mr8092044otc.368.1611182723720;
        Wed, 20 Jan 2021 14:45:23 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m18sm692791otj.50.2021.01.20.14.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 14:45:23 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add SC8180X UFS to the QMP binding
Date:   Wed, 20 Jan 2021 14:45:30 -0800
Message-Id: <20210120224531.1610709-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the SC8180x UFS PHY to the QMP binding.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 0f00d82461fd..e272a1077150 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -25,6 +25,7 @@ properties:
       - qcom,msm8998-qmp-pcie-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
+      - qcom,sc8180x-qmp-ufs-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
-- 
2.29.2

