Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98F1668D5BB
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 12:40:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbjBGLku (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 06:40:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbjBGLks (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 06:40:48 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E827514E99
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 03:40:45 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id k13so5849407wrh.8
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 03:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0d71pvNow4MZxTy2PhdR4/s9QayMD3hQ8JhxulOfaGY=;
        b=xkY62qqQmXp9GdszMKhWW8VUG22gdoM1zO5Y6Ierr23/D8xkYQbbEhNe2c0Xu+U6lv
         pWf9KCzH6/lydUi3wquhFOQwCoQAJr7lQKGDFOJmalVbBYO6B8XK9cHziXDvPRD+Mv+M
         tJurVodzvcUi6jOt/x46Kpcr2ruyBDzUnSkeyXL0HCq3FzoaNPewMwRdwMMddHj6ltE8
         RSpTSJ8Hj/2bVNfvTQEPl+4dk4Mp4l3B3NlB74IIkma/+TZyaF834OeC1s9wt/CzmpXl
         KEGQVTmWEg3GYRMbaKKRou/CFCCIEKYUfAuOIjaGSP41Yq/bndM6hn1QOpFT8QsBZGSf
         UfgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0d71pvNow4MZxTy2PhdR4/s9QayMD3hQ8JhxulOfaGY=;
        b=efpVPFVpY3NMkhR3mFSeS9ILer9J4gAiMJA3RQIk1W7nGGDc7RMTGZqeaYzxf6Qj/i
         nCJY9S39H58On0NmAd6kjwvjn4UFjs1PXNGVPr1A2ByXaHEEElon/PRcp6ICD5jD3ht0
         URS9BUTaasiR3GUXGEFXaFMYtAMeaugCIQj66qYf3iOkXLcg32R/woEmsxIznrJG+sXA
         xoAPeiL/kz3GrKDhFRnz9yK9x6iSolZ6FbHr6BY5tVmX9cHkkDNcJlkHX18o7Ju8FjSE
         /L7K9/y+H7AkYaThsmKRcWxCUUpsm++JCK3QN498myBnQxXk6NN4IO9GTxSdDdZ60SHF
         cCTw==
X-Gm-Message-State: AO0yUKVebf3uxu9tLRQds+NV0THvYfPLTPyUDM/xOSmNIrHfi8TMfTIM
        fG4iLz6m/GAkeD0ipRoRFaHNNw==
X-Google-Smtp-Source: AK7set9Aeb/GAN7TJEWb/HYMU2morU4S82KZxLRl5kieGErlGBEypSmnf86+JFfUEQfR3mlL5vWGWg==
X-Received: by 2002:a5d:510e:0:b0:2c3:e4f5:18c with SMTP id s14-20020a5d510e000000b002c3e4f5018cmr2188054wrt.30.1675770044402;
        Tue, 07 Feb 2023 03:40:44 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:43 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/6] sm8550: Add USB HC and PHYs support
Date:   Tue,  7 Feb 2023 13:40:18 +0200
Message-Id: <20230207114024.944314-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for USB for Qualcomm SM8550 platform.

This patchset is based on top of the following patchset:
https://lore.kernel.org/all/20230206212619.3218741-1-abel.vesa@linaro.org/

Changes since v4:
 * dropped the dts/dtsi patches as there is no change needed to what is
   already merged
 * rebased on top of next-20230206 which has Luca's patches for SM6350,
   like Johan suggested

Abel Vesa (6):
  dt-bindings: phy: Add qcom,snps-eusb2-phy schema file
  phy: qcom: Add QCOM SNPS eUSB2 driver
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550
    compatible
  phy: qcom-qmp: pcs-usb: Add v6 register offsets
  phy: qcom-qmp: Add v6 DP register offsets
  phy: qcom-qmp-combo: Add support for SM8550

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |   1 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     |  74 +++
 drivers/phy/qualcomm/Kconfig                  |   9 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 409 ++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h    |  31 ++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c    | 423 ++++++++++++++++++
 8 files changed, 945 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c

-- 
2.34.1

