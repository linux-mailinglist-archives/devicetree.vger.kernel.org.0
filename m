Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21F4A389128
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348233AbhESOip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347786AbhESOio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:38:44 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BAC7C061760
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:37:24 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id o17-20020a17090a9f91b029015cef5b3c50so3603104pjp.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nZMq8xWSXZHjYFFX9U2EDQv78qoTWHbTqwBMbdQQv0s=;
        b=lVsbFM6aeHV9QO0yMWIoUEsFvuZICTWzjhH06XiLX53vIJd5fOltlBQU1AsHgkhC7b
         GU7k6gSGN0lQBG7GaWR3AXAnUcQMwsq433ErObGTb6pDseELCOfit4GmF45i6IK022NF
         M+m7ctX0SDRhPS+HjsgbUljOhedYqSDTR0Pi7DN1iY821hWBTzJRccUOL7JfRceTEhVm
         WiUIbNY+lmeBWXgJiDm5Bwzu0VW1qgp0cDMdjjim4TeuzJzCwjGTtf4WhgkqrvH6NwRG
         gT/bcRL0+NO+q5WxqSE5QH4O5aVBTDe0mV1ytUVtiFZLkjVcha+EmZ/cETYMz3SYJzbG
         gh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nZMq8xWSXZHjYFFX9U2EDQv78qoTWHbTqwBMbdQQv0s=;
        b=qhYcc7Y7M+rc3mMcVKf5l4bAvYOQ4ZFCXDiMMnFDOZPtV+69VIsqdQsTvNfFHKGe9d
         ZwQQHPT/yrqPbxAxksKGfyeJjEgLsIA22V7hkbNBDXJES7INDe7OaL/kyp5EybWW5sq4
         DNxIPJEg8sKfV2hsVzSTN/6YNn7JOYA4htxuieRnhgtSd1jcnyHamFYE/ObHWME0/lZp
         Efhf5Y+2qyBOv+slTuABIm19rx5ulAYU9q6sXlAkCMw3pQNlkxLpOCIBGdlR7rDOb5xn
         k6lm+7AbH4JNim9FxwPWVxSsFR5XgU9JB0uLHEwAEDDioMAB6uojQR1JKRXyddg5YuGY
         I2bw==
X-Gm-Message-State: AOAM532GXS8GfjhInCFOuC2U15mux+o+pRyHTMvPY375usFPOaHBNC/c
        p6A+KO6j3cFioINc54oMnTmYBg==
X-Google-Smtp-Source: ABdhPJx1AAoohm3tZC2APaKhDLsi3QklihlNmlo84V+Pzp/Q+nnZSaKyM1DsUUTiJWfa4t751iNqNg==
X-Received: by 2002:a17:90a:f87:: with SMTP id 7mr12090307pjz.38.1621435043946;
        Wed, 19 May 2021 07:37:23 -0700 (PDT)
Received: from localhost.localdomain.name ([122.177.135.250])
        by smtp.gmail.com with ESMTPSA id o24sm9239515pgl.55.2021.05.19.07.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:37:23 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org,
        Thara Gopinath <thara.gopinath@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com
Subject: [PATCH v3 00/17] Enable Qualcomm Crypto Engine on sm8250
Date:   Wed, 19 May 2021 20:06:43 +0530
Message-Id: <20210519143700.27392-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v2:
=================
- v2 can be seen here: https://lore.kernel.org/dmaengine/20210505213731.538612-1-bhupesh.sharma@linaro.org/
- Drop a couple of patches from v1, which tried to address the defered
  probing of qce driver in case bam dma driver is not yet probed.
  Replace it instead with a single (simpler) patch [PATCH 16/17].
- Convert bam dma and qce crypto dt-bindings to YAML.
- Addressed review comments from Thara, Bjorn, Vinod and Rob.

Changes since v1:
=================
- v1 can be seen here: https://lore.kernel.org/linux-arm-msm/20210310052503.3618486-1-bhupesh.sharma@linaro.org/ 
- v1 did not work well as reported earlier by Dmitry, so v2 contains the following
  changes/fixes:
  ~ Enable the interconnect path b/w BAM DMA and main memory first
    before trying to access the BAM DMA registers.
  ~ Enable the interconnect path b/w qce crytpo and main memory first
    before trying to access the qce crypto registers.
  ~ Make sure to document the required and optional properties for both
    BAM DMA and qce crypto drivers.
  ~ Add a few debug related print messages in case the qce crypto driver
    passes or fails to probe.
  ~ Convert the qce crypto driver probe to a defered one in case the BAM DMA
    or the interconnect driver(s) (needed on specific Qualcomm parts) are not
    yet probed.

Qualcomm crypto engine is also available on sm8250 SoC.
It supports hardware accelerated algorithms for encryption
and authentication. It also provides support for aes, des, 3des
encryption algorithms and sha1, sha256, hmac(sha1), hmac(sha256)
authentication algorithms.

Tested the enabled crypto algorithms with cryptsetup test utilities
on sm8250-mtp and RB5 board (see [1]) and also with crypto self-tests,
including the fuzz tests (CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y).

While at it, also make a minor fix in 'sdm845.dtsi', to make
sure it confirms with the other .dtsi files which expose
crypto nodes on qcom SoCs.

Note that this series is rebased on AEAD fixes from Thara (see [2]).
This is required for all of the fuzz tests to work.

[1]. https://linux.die.net/man/8/cryptsetup
[2]. https://lore.kernel.org/linux-crypto/20210429150707.3168383-5-thara.gopinath@linaro.org/T/

Cc: Thara Gopinath <thara.gopinath@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: linux-clk@vger.kernel.org
Cc: linux-crypto@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: bhupesh.linux@gmail.com
 
Bhupesh Sharma (14):
  dt-bindings: qcom-bam: Convert binding to YAML
  dt-bindings: qcom-bam: Add 'interconnects' & 'interconnect-names' to
    optional properties
  dt-bindings: qcom-bam: Add 'iommus' to required properties
  dt-bindings: qcom-qce: Convert bindings to yaml
  dt-bindings: qcom-qce: Add 'interconnects' and move 'clocks' to
    optional properties
  dt-bindings: qcom-qce: Add 'iommus' to required properties
  arm64/dts: qcom: sdm845: Use RPMH_CE_CLK macro directly
  dt-bindings: crypto : Add new compatible strings for qcom-qce
  arm64/dts: qcom: Use new compatibles for crypto nodes
  crypto: qce: Add new compatibles for qce crypto driver
  crypto: qce: Print a failure msg in case probe() fails
  crypto: qce: Convert the device found dev_dbg() to dev_info()
  crypto: qce: Defer probing if BAM dma channel is not yet initialized
  arm64/dts: qcom: sm8250: Add dt entries to support crypto engine.

Thara Gopinath (3):
  dma: qcom: bam_dma: Add support to initialize interconnect path
  crypto: qce: core: Add support to initialize interconnect path
  crypto: qce: core: Make clocks optional

 .../devicetree/bindings/crypto/qcom-qce.txt   |  25 ----
 .../devicetree/bindings/crypto/qcom-qce.yaml  |  92 +++++++++++++++
 .../devicetree/bindings/dma/qcom_bam_dma.txt  |  50 --------
 .../devicetree/bindings/dma/qcom_bam_dma.yaml | 110 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |   2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |   6 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  28 +++++
 drivers/crypto/qce/core.c                     | 110 ++++++++++++------
 drivers/crypto/qce/core.h                     |   3 +
 drivers/dma/qcom/bam_dma.c                    |  10 ++
 10 files changed, 322 insertions(+), 114 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/crypto/qcom-qce.txt
 create mode 100644 Documentation/devicetree/bindings/crypto/qcom-qce.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/qcom_bam_dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/qcom_bam_dma.yaml

-- 
2.31.1

