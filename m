Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B58B466506
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 15:18:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358528AbhLBOV1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 09:21:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358485AbhLBOU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 09:20:59 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37C74C061758
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 06:17:33 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id z8so55118419ljz.9
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 06:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ToWnpfe61IfHA5YsWaVruIWs7PR7FCG4QDVMRFV5+CU=;
        b=nnYQtkhZySQHRL4T+FQKZ4NzmaMhSowa7e6+EGktIsJASm5I4lWiCnyRmfuTT6Aqu8
         u4zDxiz25IHQNEYgJkpV9j6MRBJhqdbOcZxRyxmete/m73Dgatol+7rNdHjqyn3NeK+B
         mXHfaz/TQJtL5TgnlhQmqn2Qw1JT3ZSDBdZOsQ3Tnnlh+bGiFHgfghX2CliezhdbUwLW
         HtaeGvjQJDGSr/X8XutiD81dG0cLUkqmLrSLnFc4lHalfY3xtHrzXz3CPon+pSAE3BEq
         Wd1mEGsU0cxwiw2v9ZwgHiCL6IbMUXhWwulYMLS2uIRrnpADeQNTMbUfTlUydersDNJR
         /RKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ToWnpfe61IfHA5YsWaVruIWs7PR7FCG4QDVMRFV5+CU=;
        b=MuqICCphaAA6/0PB/nHwq1nFPhQoczHH64UoDPphqNB4b4JTHayXss/eXSX3yhUBzZ
         1S+ZNYXpbEQ6YffNcBF/44kIgF/Q4b7m02Ny4O+VkBI+/a480VVf32ypv612gLSDv5tg
         rqtiqPBJYPst7rtSWSE/NEk2JVGh8SuVhJWmGeUM/GBBHT5nz6lvn+NMDeG/k+l/k4z4
         fBGZCvfkDFoLF8w9mW3TeNMS5/qIbzZoHMlPrWw9EKnVe31sHOWmYjkzSj9ul4RuZ2dQ
         gvHPuFoexoPgmd8t5+N4JHdrh9T/XPTzcC5ItK81UQkC0yC/KP2uCfIbF1is084oBwvZ
         pOHA==
X-Gm-Message-State: AOAM530phW48PRNsOR1SOKQHY2FXoDIEVKFKmo5CGL/jzsaj3I4m7pZF
        y5VaSlF69t98ZCijxxssEpG5CQ==
X-Google-Smtp-Source: ABdhPJxy4zvG2aNJz1OXzlcJN1fIbwVtfb4nGd30eSQHXVFnpukbgqtGwDb+qnS2pQmTGh0Zet+5rg==
X-Received: by 2002:a2e:a314:: with SMTP id l20mr12664682lje.86.1638454651352;
        Thu, 02 Dec 2021 06:17:31 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 06:17:30 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 00/10] qcom: add support for PCIe0 on SM8450 platform
Date:   Thu,  2 Dec 2021 17:17:16 +0300
Message-Id: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are two different PCIe controllers and PHYs on SM8450, one having
one lane and another with two lanes. This set of patches adds support
for the first PCIe phy and controller only, support for the second PCIe
part will come later.

----------------------------------------------------------------
Dmitry Baryshkov (10):
      dt-bindings: pci: qcom: Document PCIe bindings for SM8450
      dt-bindings: phy: qcom,qmp: Add SM8450 PCIe PHY bindings
      phy: qcom-qmp: Add SM8450 PCIe0 PHY support
      PCI: qcom: do not duplicate qcom_pcie_cfg fields in qcom_pcie struct
      PCI: qcom: add flag to enable use of ddrss_sf_tbu clock
      PCI: qcom: add support for SM8450 PCIe controllers
      arm64: dts: qcom: sm8450: add PCIe0 PHY node
      arm64: dts: qcom: sm8450: add PCIe0 root device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
      arm64: dts: qcom: sm8450-qrd: enable PCIe0 host

 .../devicetree/bindings/pci/qcom,pcie.txt          |  21 ++-
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml      |   2 +
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts            |  14 ++
 arch/arm64/boot/dts/qcom/sm8450.dtsi               | 143 ++++++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c             |  93 +++++++++-----
 drivers/phy/qualcomm/phy-qcom-qmp.c                | 125 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  33 +++++
 7 files changed, 397 insertions(+), 34 deletions(-)

