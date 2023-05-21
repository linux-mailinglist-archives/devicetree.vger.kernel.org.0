Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C3F870B025
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 22:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230484AbjEUUX1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 16:23:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjEUUXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 16:23:25 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30CFEE0
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:24 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f004cc54f4so6167223e87.3
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 13:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684700602; x=1687292602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=71fdz92wN7Olzd0bv+uTbHVf/9vgm8eag4K8T+MZ0CY=;
        b=QKF+RvGVlsP++Z1sbNgrtVHTWDKB3SGcpRNaswmSgA+XaQPg/bZsRKqvwGvZ1n27pY
         VIdVHltUcNQyjm3wi9LP8sOMrNE7mpjy6ougedHpX71FhB1EsCO0lXo9CZ1ylitQvamz
         xwpLW/Ijc4TaE3UEqzu1S5FCCkj0XefHnAfGTIOi3aHET9gzHFC7xb8uNs4ZWClb9TKC
         505ateq/dGxVEVsJtDcY7qabSskFVTvWaMdCtjLtbJpNch4L50itrIrAc0Lk7huXSQev
         FwJR7Kc0lxbZPRmkynWJMMb276tvNyjj5JCK0su880n5WHiVLjYkr3w/T6ehzLPB6cIM
         /AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684700602; x=1687292602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=71fdz92wN7Olzd0bv+uTbHVf/9vgm8eag4K8T+MZ0CY=;
        b=Gx/IfnPUWOBXGAMw2bXm9SumLO2hCIhaxBDdM1SUtRPiv9MxME9iOBpJAN1Rxao34m
         eyH1Us/An+vXFzAi4jiRLi3U/70uxfZovOU5C0wub5LI0JzJ92gsy4/idq8eR5GO9RNK
         rio7Yv0cNeO0+CXMUzmUbZG35vFBUTEBmp40XbBQqSzaizzhDP5YsdPQEYNJdxYR68QW
         7CTmARdxNfcqxafbs21wKViqfPkZ849mTsuIIDMXHo0ILg0sVJs8W8aPDhODtrsmOE+C
         cvPkT1fmknDFyi8UyNLLW99iRGWjlJQPrI5kH64B29T+VcYWfkRtDavjecDyNFEgA0bT
         ISEw==
X-Gm-Message-State: AC+VfDzCLJPkW2mU71tBVFmbEinnEX9Q2Tcokw04lkLAhtK/s7FwAxhw
        auiEdKk1Qi9hJp7T67d/GKY8Hw==
X-Google-Smtp-Source: ACHHUZ50p1i+TCZcMiBDE2spyb6hphxnMynoiNuA5nQv+NmXD42MsBpOsm33jeyQ7pRNR0RBx01Sag==
X-Received: by 2002:ac2:4249:0:b0:4ec:9368:cb55 with SMTP id m9-20020ac24249000000b004ec9368cb55mr2188270lfl.64.1684700602394;
        Sun, 21 May 2023 13:23:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e91d7000000b002adb566dc10sm835589ljg.129.2023.05.21.13.23.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:23:21 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 00/10] phy: qcom-qmp-combo: convert to newer style of bindings
Date:   Sun, 21 May 2023 23:23:11 +0300
Message-Id: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewing several patchsets for newer platforms made me understand that
having two styles of QMP PHY bindings causes confusion. Despite binding
documents having notes telling that old bindings should be used for
older platforms, it is too easy to attempt adding new platform with
older QMP PHY binding. Thus let's have just a single documented style of
bindings.

Dependencies: [1]

[1] https://lore.kernel.org/linux-phy/20230521195420.12454-1-dmitry.baryshkov@linaro.org/

Changes since v2:
 - Rebased on top of phy/next and updated [1]

Changes since v1:
 - Split large patchset into smaller parts
 - Reworked sm8150 too (following changes in [1])
 - Unified bindings with the existing ones
   - use shared list of clocks,
   - added sc7180 as a first grade entry
   - dropped useless descriptions
   - removed ref_clk_src clock
   - dropped second example

Dmitry Baryshkov (10):
  dt-bindings: phy: migrate combo QMP PHY bindings to
    qcom,sc8280xp-qmp-usb43dp-phy.yaml
  phy: qcom-qmp-combo: simplify clock handling
  phy: qcom-qmp-combo: populate offsets for all combo PHYs
  phy: qcom-qmp-combo: add qcom,sc7280-qmp-usb3-dp-phy compat entry
  arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
  arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of
    bindings
  arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of
    bindings

 .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 278 ------------------
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  46 ++-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sc7280.dtsi          |  60 ++--
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  57 ++--
 arch/arm64/boot/dts/qcom/sm8150.dtsi          |  48 +--
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  49 +--
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  79 +++--
 8 files changed, 165 insertions(+), 509 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml

-- 
2.39.2

