Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57389637AB8
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 14:58:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbiKXN6B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 08:58:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbiKXN5r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 08:57:47 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23E4812BFC4
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:56:53 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id g12so2561501wrs.10
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 05:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MKy7telqHd11HTPv3+ayDIJY4ik4OoAmOld4l3dr43k=;
        b=WIgWT9UExMUT8thEPd5eIeUMiiQq7v1HSe6+vjUm/jqXZB1uqqH1DsMjf9UEztgdn/
         ZMZVcmv76UpYawTsoc6GjKKThwUkyyfwaSqw6FFlbs6JIDLMagIZFHHx6BNeBWj8uBxT
         TpunKDUWQcB7Mv2U8PnJ2HweoqPsxGRhPvqnxjAervsftS1yk3UC0gDIZ0td9eXHGzpt
         uPR/OohLTFWLzeVnAxGigcWPqhifFLbIsUcSPy0dkXH+N/s3dxkqgiMdFzUqOnXkhH9H
         PWbsDnHWbdYE5hz5pFYmsCDn06tts5U5Y6IFMLqd/RdA5Cj0Pd8NJI1PTf8NGyu/iPRp
         Hung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MKy7telqHd11HTPv3+ayDIJY4ik4OoAmOld4l3dr43k=;
        b=aLhWcUxlIevRYV7qeigeFTCm0rv0JPoN2yYN4f2HdTCAb96crCgeIgJ7HEdgCBbVoM
         mczcqNXkiTtYpf+FF6NIOeuCBLWHZJSr4hiP4k53mGB3ueDKQ23eFGO7lJS5oaXmIhd9
         6XbAn+4B8TN+EuIaM0X8X6lpTv2US3FO1k3S04VasqyvpthbJ4DfIQoK33GilOLHKTBj
         oGtEmcP2IqFsCnQdVyABXGY/3AjfHjhfJfl7z5rZXdany3WJ2jWoKkCMLkJaZy1kkzo0
         gh+UnNjSv8IauynWYWN0KwVVlH7TLcEySx1YL6KbXthZ/ROFuWWKXxOFptKHfyrPaD3T
         GGDg==
X-Gm-Message-State: ANoB5pn+bNm3YWzayR8Yx8W6FNVHb1vs/mwkYE6XROH6fXMq6nWat+NH
        7pcRV9lb8GQAd2lbFte3jXB5ICxBQl7kQQ==
X-Google-Smtp-Source: AA0mqf7iQOUQCknFxjDcRzNCKiB/vNg4WEpm3a6jb14JzuJO31BQ0KlJFBMCL8SGgWVuN8WlzZSzaQ==
X-Received: by 2002:a5d:5191:0:b0:236:7c38:147b with SMTP id k17-20020a5d5191000000b002367c38147bmr13446500wrv.569.1669298211505;
        Thu, 24 Nov 2022 05:56:51 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020adfebce000000b00241d21d4652sm1414322wrn.21.2022.11.24.05.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 05:56:51 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 00/10] arm64: dts: Add base device tree files for SM8550
Date:   Thu, 24 Nov 2022 15:56:36 +0200
Message-Id: <20221124135646.1952727-1-abel.vesa@linaro.org>
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

This series adds the base device tree files and MTP board support
for the Qualcomm SM8550 SoC, including the clock, pinctrl, smmu,
regulators, interconnect, cpufreq, and qup nodes.

The SM8550 is the latest Qualcomm Mobile Platform.
See more at:
https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/Snapdragon-8-Gen-2-Product-Brief.pdf

The first verion of this patchset is here:
https://lore.kernel.org/all/20221116103146.2556846-1-abel.vesa@linaro.org/

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
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 3522 +++++++++++++++++
 11 files changed, 4547 insertions(+)
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

