Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8E129BF18
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 18:01:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1814964AbgJ0RAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 13:00:53 -0400
Received: from mail-pj1-f66.google.com ([209.85.216.66]:38079 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1814960AbgJ0RAw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 13:00:52 -0400
Received: by mail-pj1-f66.google.com with SMTP id gi3so1050655pjb.3
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 10:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tXlyL6zU9Oi7mF712cW5uVDhhzbjKozJmhsk4g6QPrE=;
        b=spJYyW1Ul46OYC+5CBcPT6oVBYkeQx/N2YYxZBtcKnNmYJD2asXB0DfKkjJmVrRize
         EnWCJClPKBz65X8+igdUVUmedh0pqwGwpvWjgJKGxNPUQbE+RmpdE0w5ehfV+VjiFn3e
         hyjyf0VDZ7nWMUEQ2ZKbTDghSSN43cMpqxyKDGL7mS087SYE2SOWFRqrBTHV7nVLoyPx
         RAcOfyn1gC4gP8r+/tIGBFEP4vY8Old+gNl9jxFkVmmcW7iT7q10DvMvkm7QpVdwH3Vc
         7eCZj8tx6XKhOEYhck88VF4BUkF3e3SflfVl0YcS/+c5SRxs5tGASdGX8GDjTl31rnvj
         lKzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=tXlyL6zU9Oi7mF712cW5uVDhhzbjKozJmhsk4g6QPrE=;
        b=MFAhpnHVs7nqag3/Xqtgqg472dZCiAVtSeOIYWBso4UWSMuq50gH7qHNPglKJUf161
         bJ3YRi+NXX0H7eXDXjkilTDEGm03sRvGM+OoFHWdflREEccEligLgiYMAlnTvfkWJqxE
         S4pQZlFyxD1k85Up0Cvb7QbdwcAW/qHtl+aEKSqHzwQ0I92k38r1F23hUnyI61EkPnw7
         0eqFEStIzyLU8MEBlnth9ZQEMAFsc9wi0e/Pc/eGO8N72qa67NLES/miwi0E9IaNwGfw
         2gKFWdjxnZ/WLRq2sxPNeTMb+wUtcPsi6hvQ+ykvsn7ocdpu8IFCN/d/cHMS61KyEmkj
         iwhg==
X-Gm-Message-State: AOAM532VFFphOmsEJj+CSmmchqQVAYB5wAcC6JB6xiRCQ99E5bBIJycP
        E460FdEHHd8fSyPc40wrH1Hm
X-Google-Smtp-Source: ABdhPJxI5lXKIdqOqdlCGYKZDvii4G1E8qmtaiHGeTUSLVkvOb1kS/tTw2MrmdX+OPFULn86KG8TIQ==
X-Received: by 2002:a17:902:7298:b029:d4:c71a:357a with SMTP id d24-20020a1709027298b02900d4c71a357amr3451859pll.38.1603818051120;
        Tue, 27 Oct 2020 10:00:51 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id x26sm2845206pfn.178.2020.10.27.10.00.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:00:50 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
        vkoul@kernel.org, robh@kernel.org
Cc:     svarbanov@mm-sol.com, bhelgaas@google.com,
        lorenzo.pieralisi@arm.com, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
        mgautam@codeaurora.org, devicetree@vger.kernel.org,
        truong@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 1/5] dt-bindings: phy: qcom,qmp: Add SM8250 PCIe PHY bindings
Date:   Tue, 27 Oct 2020 22:30:29 +0530
Message-Id: <20201027170033.8475-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201027170033.8475-1-manivannan.sadhasivam@linaro.org>
References: <20201027170033.8475-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the below three PCIe PHYs found in SM8250 to the QMP binding:

QMP GEN3x1 PHY - 1 lane
QMP GEN3x2 PHY - 2 lanes
QMP Modem PHY - 2 lanes

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
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

