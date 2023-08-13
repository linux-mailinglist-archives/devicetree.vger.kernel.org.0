Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 213AF77A764
	for <lists+devicetree@lfdr.de>; Sun, 13 Aug 2023 17:26:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229507AbjHMP0i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Aug 2023 11:26:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbjHMP0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Aug 2023 11:26:37 -0400
Received: from out-66.mta1.migadu.com (out-66.mta1.migadu.com [IPv6:2001:41d0:203:375::42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16011127
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 08:26:40 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ansari.sh; s=key1;
        t=1691940396;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=xiUHadBBfzwAXv22MtAE8CXMU4tcGpIIFbQOLKRod5A=;
        b=jlQE4pD+CAHLnmYJycyH5Pd+73zNGf0etGRmqcfGyOOmDmxT7PxDFtcXsaANaCRSYCI/0x
        otH3lhbhKT2uR4Iuzh+g6aSuOF0roO5XOMr9Q54eH8RIY7uJQQnDuYFksTwu8YbveNqkJ6
        eUi3evIjrR6MxMx4zFbeZ8UsaujPE94=
From:   Rayyan Ansari <rayyan@ansari.sh>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Rayyan Ansari <rayyan@ansari.sh>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/6] Initial support for MSM8x26 Lumias
Date:   Sun, 13 Aug 2023 16:23:09 +0100
Message-ID: <20230813152623.64989-1-rayyan@ansari.sh>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

The following patches: 
- Add device tree files for Nokia/Microsoft Lumia phones based around
  the MSM8x26 family of Qualcomm chipsets, utilising a common tree 
- Document this support

v1: https://lore.kernel.org/linux-arm-msm/20230811213728.23726-1-rayyan@ansari.sh/
Changes in v2:
- Fix style issues and CHECK_DTBS warnings
- Squash common dt commit with a device commit
- Use both msm8926 and msm8226 compatibles for msm8926 devices

Rayyan Ansari (6):
  dt-bindings: arm: qcom: Document MSM8x26-based Lumia phones
  ARM: dts: qcom: add common dt for MSM8x26 Lumias along with Nokia
    Lumia 630
  ARM: dts: qcom: add device tree for Microsoft Lumia 640
  ARM: dts: qcom: add device tree for Microsoft Lumia 640 XL
  ARM: dts: qcom: add device tree for Nokia Lumia 735
  ARM: dts: qcom: add device tree for Nokia Lumia 830

 .../devicetree/bindings/arm/qcom.yaml         |  10 +
 arch/arm/boot/dts/qcom/Makefile               |   5 +
 .../qcom/qcom-msm8226-microsoft-common.dtsi   | 329 ++++++++++++++++++
 .../qcom/qcom-msm8226-microsoft-dempsey.dts   |  17 +
 .../qcom/qcom-msm8226-microsoft-makepeace.dts |  17 +
 .../qcom-msm8226-microsoft-moneypenny.dts     |  23 ++
 .../qcom-msm8926-microsoft-superman-lte.dts   |  52 +++
 .../dts/qcom/qcom-msm8926-microsoft-tesla.dts |  66 ++++
 8 files changed, 519 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-common.dtsi
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-dempsey.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-makepeace.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8226-microsoft-moneypenny.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-superman-lte.dts
 create mode 100644 arch/arm/boot/dts/qcom/qcom-msm8926-microsoft-tesla.dts

-- 
2.41.0

