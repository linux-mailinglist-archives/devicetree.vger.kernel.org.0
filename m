Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1536563064A
	for <lists+devicetree@lfdr.de>; Sat, 19 Nov 2022 01:09:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237539AbiKSAJx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 19:09:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232051AbiKSAJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 19:09:34 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 913CBD123
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 15:32:47 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id a15so8618064ljb.7
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 15:32:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BlwFEZE/SAxDXRWUzrr/1IUfgQmjEm+H1x3VkOquluI=;
        b=X0ao+8I0u6haCAzn5yuOKeBdxzHATC5OOKak1TebE6SfgnRvUE1V4+eF7xVXd7hB/r
         WS0GzXfaoRvfcGF24IZaD2znSJyKYSK3cbEXhS8I8Hn0F0wQJ13k98c0fhOUek0qICQf
         gC/6i2YPtKLNDFAHnXFrLQQvsfE1i7zRXGDw0eps4vUVrs6h3KLqVj2bV7Z7h9NIkSJl
         PxDFt4p492e8339DBzV3F33y9RBuRcIialNEatgRty+Tvmosy7pWUMDBqnWltKSC1Met
         jYi/LVfPnHttLkCYx/cBXFa1SOKWECHTJ6IzwwDxzVKfeqXt4SJotI+fM+oMFXRTPebN
         4Ehw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BlwFEZE/SAxDXRWUzrr/1IUfgQmjEm+H1x3VkOquluI=;
        b=oUlqnkjVXOyXTzw8fGHaN124y2ywTS2AkJ/PuJzeLEZD9TMrjWMfwgaJ7c93rPOV5T
         bFitCIkGmhu7toTmcfyX3y2aAhGOMksvPUZVQMAEhvy/EnXRBMhZNxLCDyRXxgFR0Wfq
         +xvuQYgGfIZrG/Xm35jOD3kLOeJG/xf5LuA5howgHC71UCsPzBNFhdrd+K2w8S2iBwxz
         DBumqM4NeTVXD9PLErvebS+/QpM52mu54Cg9N3tTBwI7XAYJuQcXFgpGrG+wPGpTkT0k
         XhGavZgLFkQr3GVVoYcIMMWxabFrP/2uPTNRbML1EEBEeP33ERg7brKDvKY8BmmTdxAK
         zBOg==
X-Gm-Message-State: ANoB5pnusy4PyajlGeXz/GYFe4U3OgMf0zvhv9fuQiIGq5W83ysEuhb6
        JLwxuYDTyCPjedmU8GAwkXla7A==
X-Google-Smtp-Source: AA0mqf7LBWSGIUWul+WfPluJ+CKGVl2UNi56U3/ksFaE4HNyoPhWSWv7G5JwzCjcGEfWel7vQReEBA==
X-Received: by 2002:a2e:a229:0:b0:26f:a8a8:654a with SMTP id i9-20020a2ea229000000b0026fa8a8654amr3375031ljm.435.1668814365930;
        Fri, 18 Nov 2022 15:32:45 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id k13-20020ac257cd000000b004947f8b6266sm843900lfo.203.2022.11.18.15.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 15:32:45 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date:   Sat, 19 Nov 2022 01:32:34 +0200
Message-Id: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.

Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
might work incorrectly on earlier SoC revisions.

Dependencies:
- phy/next (for PHY patches only)

Changes since v3:
 - Moved all pinconf and -gpios to board dtsi (Johan)
 - Reworked bindings to move the optional clock to the end (Rob)

Changes since v2:
 - Rebased onto phy/next
 - Added voltge supplies to the HDK dts file (Johan)

Changes since v1:
 - removed pipe/ref clocks from the PCI schema, they are unused now
 - split the sm8450 tables commit into separate split & rename (Bjorn)
 - cleaned up the dtsi file, removing 'power-domain-names' and fixing
   gpio proprety names.

Dmitry Baryshkov (8):
  dt-bindings: PCI: qcom: Add sm8350 to bindings
  dt-bindings: phy: qcom,qmp-pcie: add sm8350 bindings
  PCI: qcom: Add support for SM8350
  phy: qcom-qmp-pcie: split sm8450 gen3 PHY config tables
  phy: qcom-qmp-pcie: rename the sm8450 gen3 PHY config tables
  phy: qcom-qmp-pcie: add support for sm8350 platform
  arm64: dts: qcom: sm8350: add PCIe devices
  arm64: dts: qcom: sm8350-hdk: enable PCIe devices

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  32 +++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  22 +++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts       |  80 ++++++++
 arch/arm64/boot/dts/qcom/sm8350.dtsi          | 182 +++++++++++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 164 ++++++++++++++--
 6 files changed, 463 insertions(+), 18 deletions(-)

-- 
2.35.1

