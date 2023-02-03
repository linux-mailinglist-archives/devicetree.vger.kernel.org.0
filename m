Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66DB36891D1
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 09:18:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232098AbjBCISS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 03:18:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232159AbjBCISQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 03:18:16 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AFC18B3E
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 00:18:14 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id u10so186374wmj.3
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 00:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1+zmIdSXgf/9OAjOo/5v7/iiHWMzGsZdzsgctlof5pU=;
        b=OfDw1obaGJS0zV4tv43EPhYhjBcKctQL2mn9EaK4R7a1H4+h0jCcuDtxNoNH6fBpvi
         q8XKJeGaYAlJMa4iahtRv4L3ynUKT6ESptD/Ly0UvYIrWRJS5BKUrcLghNWYg5DBO/cr
         h2xKHfjM83QxcD2ZkNAhGKcB9gTUeDMKCes+09syLKewUwf1Ebe2n3PCFwt0V+9H0so/
         w8p/oygNciJ28xxL/AnYQyljl/xl05pSn4aRUmkOFsGuuN4J7tNmbSBTrs/u2/B5/fNL
         SvSlTgvzawDggS5974B+bF4XRh/nYHTme0nXvDeoeoxcpKCEg5BMvhT5Z8i5RwF5+Zkl
         wF6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+zmIdSXgf/9OAjOo/5v7/iiHWMzGsZdzsgctlof5pU=;
        b=l0OZCYDRlpGc/IBsMR4rpyCybtFiOpSOXxd8qhuY8R9DZnm1xFGadPOVP6pg8+mZ7S
         vD0hn+gHNQ916n9cKv3jBm3wI3Z+lbS+8YdtHZj2JRHJOc62TWEu5D0TurYZ/VTK+zQZ
         IidzjSULKcetbOMTbL0nO0BORSgeIMlBDuPZklHUIYUZNvGllUrAA+xt1HOmm2STcpgM
         JOuGa+PYikDjpJUZHgUJnmLvrTNPtUg1OuKmfv38knLfibT8KV3vS9R6+6pr2DvaYkdN
         tJYV/TCssoUS3jCDy/qTbMX8slerqkrTr404PF8T1aP23xKnine89/DDAPFy0MFJRK6f
         lQsg==
X-Gm-Message-State: AO0yUKUmz3YrtrRI1FbJwrZkksQBLCl/5DXxegEMoPe5rn/19O9Jznpy
        hre7CqWUkrt+N23UHlmb2KAkoA==
X-Google-Smtp-Source: AK7set8phMyLrpuyriFL8L+YTOudLj9YO9Aqc8c0mHqau8cijP5DErbOT4qAQYD+Jh0bxjQfu0Hp1Q==
X-Received: by 2002:a05:600c:3486:b0:3df:9858:c03d with SMTP id a6-20020a05600c348600b003df9858c03dmr3829290wmq.18.1675412292557;
        Fri, 03 Feb 2023 00:18:12 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:12 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 00/12] sm8550: Add PCIe HC and PHY support
Date:   Fri,  3 Feb 2023 10:17:55 +0200
Message-Id: <20230203081807.2248625-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
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

For changelogs please look at each patch individually.

Abel Vesa (12):
  dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
  phy: qcom-qmp: pcs: Add v6 register offsets
  phy: qcom-qmp: pcs: Add v6.20 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
  phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
  dt-bindings: PCI: qcom: Add SM8550 compatible
  PCI: qcom: Add SM8550 PCIe support
  arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes
  arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  44 +++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  38 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 197 +++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 369 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 841 insertions(+), 17 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1

