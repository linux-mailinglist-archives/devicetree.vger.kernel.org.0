Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29F2B6CCAB3
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 21:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjC1Tgp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 15:36:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjC1Tgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 15:36:44 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F089DE9
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 12:36:41 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id q7-20020a05600c46c700b003ef6e809574so4952671wmo.4
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 12:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680032200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YE2Vnaye8C509j8FwD0OaC9nnswGjGn4NUoIiKMJiP8=;
        b=qwbUcIr3/UeX50WRU3XfNCXSmhh2PU7r4m//e/13KH10OtpNf7xJTAjOquBlrGVCnm
         d8Y3VRBI+44Z0VpH48v0IZ778L7gcG3j4s1nOqSyIXTvam7Te4Qfi/ur2wTRxol/NBC1
         h/OHZup9DTz0iUlecgLNB9x/GnSOC9B8OhVqvC0USVGIdA/3mvLmAiW5TqhXeja8YEKZ
         9kZ3ZRxGr9OMjGeOk/Qp8R93pLl6EVOhrFJmzMZ8S/cQXgvRDpiB0W9nwVJd+5DYcD/j
         bJrTf/oaws1AYXf6rIoGY8esmPuuNL7xvcKyZLk29V97VRGejiHefV0FwKe1YF9BnsLq
         6WcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680032200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YE2Vnaye8C509j8FwD0OaC9nnswGjGn4NUoIiKMJiP8=;
        b=Aco9tj932OOn7ccBB9T10rjGkDqeboOUFjXi1gtl2W4je5bnQ3vuJFfa8cjh0JyuuV
         cmXtx10Ug8cUEFtJBdiudEa88bWj5V0g2JiUjTnY2xcIBxaug0l3PJ55MfY1u9Yj5bJ+
         Gsy6PbfOTJPXJzv8Jks7RYIg1vYdA36pAvnWgs6bPvw4GiASxXx+efro/MZPwQEH/RTp
         cgqZqyyLCwDlHhOAlYMTmBEmc4jBfPHTuz+o0Mk1ud6OjMvc02riErDPxOB+l7UnRmuM
         E4HfKugdMwhCJ53tqh3YLiNGlGgzuWZqrwmaR04c18alehd0TD4QuHNBKbfDw+avUhjk
         e7nQ==
X-Gm-Message-State: AAQBX9fCoIRvXqdhhjfql4k3Za1eHto9nZpbvi2fgGmMW9rYY/RCRN1N
        sOoHbA70nIHSEtB7SZaiIvdI8w==
X-Google-Smtp-Source: AKy350boJJcBVCWVLp5b2Cr7dfBLOUvoCy2Pa/aTv1zwX4d02xsQudFx8XlHHpP7oPMqK6j/XByzWg==
X-Received: by 2002:a1c:7215:0:b0:3ef:d8c6:4bc0 with SMTP id n21-20020a1c7215000000b003efd8c64bc0mr9977wmc.40.1680032200501;
        Tue, 28 Mar 2023 12:36:40 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:7b39:552d:b2f1:d7e8])
        by smtp.gmail.com with ESMTPSA id g23-20020a7bc4d7000000b003eb5ce1b734sm18060544wmk.7.2023.03.28.12.36.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 12:36:40 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 0/7] arm64: dts: qcom: sa8775p: add more IOMMUs
Date:   Tue, 28 Mar 2023 21:36:25 +0200
Message-Id: <20230328193632.226095-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the GPU and PCIe IOMMUs for sa8775p platforms as well as the required
GPU clock controller driver.

Bartosz Golaszewski (6):
  dt-bindings: clock: qcom: describe the GPUCC clock for SA8775P
  arm64: defconfig: enable the SA8775P GPUCC driver
  dt-bindings: iommu: arm,smmu: enable clocks for sa8775p
  arm64: dts: qcom: sa8775p: add the pcie smmu node
  arm64: dts: qcom: sa8775p: add the GPU clock controller node
  arm64: dts: qcom: sa8775p: add the GPU IOMMU node

Shazad Hussain (1):
  clk: qcom: add the GPUCC driver for sa8775p

 .../bindings/clock/qcom,sa8775p-gpucc.yaml    |  61 ++
 .../devicetree/bindings/iommu/arm,smmu.yaml   |   1 -
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 115 ++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/qcom/Kconfig                      |   8 +
 drivers/clk/qcom/Makefile                     |   1 +
 drivers/clk/qcom/gpucc-sa8775p.c              | 633 ++++++++++++++++++
 .../dt-bindings/clock/qcom,sa8775p-gpucc.h    |  50 ++
 8 files changed, 869 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sa8775p-gpucc.yaml
 create mode 100644 drivers/clk/qcom/gpucc-sa8775p.c
 create mode 100644 include/dt-bindings/clock/qcom,sa8775p-gpucc.h

-- 
2.37.2

