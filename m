Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF94568C892
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 22:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229963AbjBFV00 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 16:26:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229884AbjBFV00 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 16:26:26 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED8FCCDC2
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 13:26:24 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id j25so8208545wrc.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 13:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pXfjugPVwiiZL4YZi+/2x2YG+1ce/SaQsZb0dADm9n4=;
        b=nZuNJknrREMRZtgrKcJs1rhNy10GsHm4Fl/LnU3lfiG+BKEuaVtySkmuvlJtsZvN36
         Hy1DBDi6CZ4MZP0SZffv5AaE2/MnvQOHv9qsOIkOfcUbfSTWPEBe5dU1TPV/nQa8VGx7
         x36sHfgJ9kcG8jzAfKeodYOMI+O4ywI+sfm3ojEKuX0SgKp2zjud6CCYChAz0gh9dAIC
         zw00ahSN4TaSM/8hl6KJAkKWucYU6dNTMwcFXmJWY+bPITjAPQ3pQravyJXfNwzlf/Nm
         wlzAvdpSzcUPpd8lATW/oasc11JRlrB/vVsS1Yf7dkdJZDHH4wJVo57WKa6uaxQ2PyEj
         Y7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pXfjugPVwiiZL4YZi+/2x2YG+1ce/SaQsZb0dADm9n4=;
        b=nl7esl3xpb6+eqkQ+6NA7hnAhc9pEQAhF0167OOsYBxuc2YrN/qx8SNWA5E2qd8cmB
         8hRMBKw1cpzsFQauYW9bQUy/00tGjhoSSCkJytYVZ7yZNNVVQR9kI4m2BMGOGk5QLgNz
         4HAbAxn1pFrzFPCG1MgLkw/ILYP7vHMcLI928olyDPKQUNpn77TYrIvwKNEQfvZNEJGd
         3oT9+1lVZIk+mwZd86yKVfeY3QRav7qTuulnyQdQYOmYTsH6iP2EGgThU1A163XZ2GQS
         EtgpSa3e0s+8BXIsxpJ6ryMJa0iSiUWZnVqCMZ5unbMKXnPtF+wrRXgzYi54nm4G6oeN
         jDWw==
X-Gm-Message-State: AO0yUKWYTDoj/DkgSRXzlyWoYlE3y1uXUdD+o3fNGslX9fswr7fB7b6a
        2hE2BH/Ib2/ClXvksE5EHm2z7A==
X-Google-Smtp-Source: AK7set8JsDj9i24v8I3bpSCZSnTJnytHnJGs1kE7mep2Eh3n0OWxurExwxy0uWSzzGewFaO2IQ5PLw==
X-Received: by 2002:a5d:6684:0:b0:2bd:e8c2:c9bc with SMTP id l4-20020a5d6684000000b002bde8c2c9bcmr294655wru.42.1675718783464;
        Mon, 06 Feb 2023 13:26:23 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:22 -0800 (PST)
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
Subject: [PATCH v8 00/11] sm8550: Add PCIe HC and PHY support
Date:   Mon,  6 Feb 2023 23:26:08 +0200
Message-Id: <20230206212619.3218741-1-abel.vesa@linaro.org>
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

This time, this version has an actual fix for the already merged PCIe
devicetree nodes, to get them in line with the SC8280XP bindings.

Abel Vesa (11):
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
  arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  40 ++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  10 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  52 +--
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 346 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 611 insertions(+), 47 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1

