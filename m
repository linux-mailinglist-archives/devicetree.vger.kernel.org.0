Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 80AA56438EC
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 00:04:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233951AbiLEXEG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 18:04:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233441AbiLEXEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 18:04:05 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 217B4B6D
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 15:04:04 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id n21so2044647ejb.9
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 15:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0Ec+l0nlwGy/v2CTMTt6SAIw8VBIu7ITlTRFvUB12G4=;
        b=yi25Z/qwsXbkwTDkcZ99D40U/K46P5Ufhc1o6lWvDvCPLXZcVOvuwE+6T/1L0vQt9E
         cWaSwjMFTD+VXTfE/Pfb35jkpuF1vnziwXkpnIV4tE6GfWKkn4XQAUHOEuAJlwHNOipU
         G6jZu23WE+9FVO+lkDxhsDJoxWgfImlTBnpZbbu5srzrEXCw7U6oPEeLGgBElrUVnn0y
         xwNDzUeKfoFC2WJLVk+2yWIkOBqSkb6sol+/UGTxiKjxGkIdY8Qd1pCKiaWAROb894ro
         oucqALFpgqUcdixD1JIiheNX/pLAahJ4NV9CN7zwjXNNn821TyPhmDL6NwTZK7n2Y5pH
         g97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Ec+l0nlwGy/v2CTMTt6SAIw8VBIu7ITlTRFvUB12G4=;
        b=c77MRm/g3fQytb2J1VQTKosCtS4WKWPnuClfN9oxIjAVbGNJCIqp4kTS/2NgHOAorP
         1Y/vDlTIF8olalAHI44AYHDp9W79/JoyUpNTwdQ7hbTgpCHJKdLmycvTUosgZbt/4a4t
         wYPmGV945MASYt8If3ks2DNxeaFxV45iGNO1Xbj/zAXowmEFhbw9Fq8o9tfCdiRpLR5x
         XPJ2XgcWa4qdd29bcb7IlIvc5J81KZ5w25svKXggcis5VI2OWdzz6X8YGQGe+fGTfwca
         COP6uMeM4ZNttKEuSn0lwB1oY7WVt9h1L2447kF+4fhIo8lt6zyqG0OHILj/X+Urw539
         Lm4Q==
X-Gm-Message-State: ANoB5pl3Y6ORr0/hgcSfPNwZRM16MdGt+asv2K4l8rtEU+axAQ7DztBN
        J5WHE7OOyHR8pvhN62RDyRiTuQ==
X-Google-Smtp-Source: AA0mqf4zlzW6c1JlCOhwVzCD95MxnWSYExA4CJe2FhkBljezvLgs69rCYUGmY4QNMHl2BiOBar4Oww==
X-Received: by 2002:a17:906:f0cc:b0:7c0:f4f5:3268 with SMTP id dk12-20020a170906f0cc00b007c0f4f53268mr5591586ejb.483.1670281442684;
        Mon, 05 Dec 2022 15:04:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id kw26-20020a170907771a00b00783f32d7eaesm6655642ejc.164.2022.12.05.15.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 15:04:02 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v5 00/10] arm64: dts: Add base device tree files for SM8550
Date:   Tue,  6 Dec 2022 01:03:32 +0200
Message-Id: <20221205230342.494923-1-abel.vesa@linaro.org>
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

This series adds the base device tree files and MTP board support
for the Qualcomm SM8550 SoC, including the clock, pinctrl, smmu,
regulators, interconnect, cpufreq, and qup nodes.

The SM8550 is the latest Qualcomm Mobile Platform.
See more at:
https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/Snapdragon-8-Gen-2-Product-Brief.pdf

The v4 of this patchset is here:
https://lore.kernel.org/all/20221130101744.2849294-1-abel.vesa@linaro.org/

Here is a branch where the entire support has been merged:
https://git.codelinaro.org/linaro/qcomlt/linux/-/commits/topic/sm8550/next

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Abel Vesa (3):
  dt-bindings: arm: qcom: Document SM8550 SoC and boards
  arm64: dts: qcom: Add base SM8550 dtsi
  arm64: dts: qcom: Add base SM8550 MTP dts

Neil Armstrong (7):
  arm64: dts: qcom: Add pm8010 pmic dtsi
  arm64: dts: qcom: Add PM8550 pmic dtsi
  arm64: dts: qcom: Add PM8550b pmic dtsi
  arm64: dts: qcom: Add PM8550ve pmic dtsi
  arm64: dts: qcom: Add PM8550vs pmic dtsi
  arm64: dts: qcom: Add PMK8550 pmic dtsi
  arm64: dts: qcom: Add PMR735d pmic dtsi

 .../devicetree/bindings/arm/qcom.yaml         |    6 +
 arch/arm64/boot/dts/qcom/Makefile             |    1 +
 arch/arm64/boot/dts/qcom/pm8010.dtsi          |   84 +
 arch/arm64/boot/dts/qcom/pm8550.dtsi          |   59 +
 arch/arm64/boot/dts/qcom/pm8550b.dtsi         |   59 +
 arch/arm64/boot/dts/qcom/pm8550ve.dtsi        |   59 +
 arch/arm64/boot/dts/qcom/pm8550vs.dtsi        |  194 +
 arch/arm64/boot/dts/qcom/pmk8550.dtsi         |   55 +
 arch/arm64/boot/dts/qcom/pmr735d.dtsi         |  104 +
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  404 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 3534 +++++++++++++++++
 11 files changed, 4559 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/pm8010.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550b.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550ve.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pm8550vs.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pmk8550.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pmr735d.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sm8550-mtp.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sm8550.dtsi

-- 
2.34.1

