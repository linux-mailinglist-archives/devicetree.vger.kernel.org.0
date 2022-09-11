Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD6185B4DAF
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:12:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiIKLML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:12:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbiIKLMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:12:09 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8749032ABC
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:06 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bt10so10404495lfb.1
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=DyvQtQkLpVQGMhu0HWq1UrLx3hRGrWAe+cspY6VBYTw=;
        b=NADjhuYepfTACJoX+veq4BIyQhdJPojNAGf6lHHEgmoQLsDSFGL8wrDj5wgZczVFGy
         enyirl4iNFvwp2hEyGLs5gWVJPkLcJxDRno5fZPEtHgLrFQE/HORZRKloc82C+u2ROpQ
         MKuI6naYuhN4snServdW5jUDtFBx8fZe/yWQwTnd+Wznw5j/tNePkrbpYQrTmm87R1V0
         SdU7SaG6UJCBR2EVWwMIXycDSe8NthTJXLDpKmEVDddvTe6y3+4aEz7MxBKUkJENoup8
         d25Hc3TwbM2C0exPmU9bu1Q2tpTwhnmVBVeyWSpjUOYleEaVmGtE1cJcoQACBD/s5CVo
         jVNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=DyvQtQkLpVQGMhu0HWq1UrLx3hRGrWAe+cspY6VBYTw=;
        b=KZQdSaZR/ic1de/UTvMhgm3zEhFrqguz2QWGJzyu/Bp/Kx4VNx+NsmsE4rvVeI1KFP
         yPSN+HWlEEpu8+0EQlvy8OdRxVft5HMBlAf7HIF4dBpry5XYpBBzgwsP8HUPSAmTOD00
         fsMAodvV662dYOXJMc6aMGsTm3e2fSgMrlhOnX0mrjLVTxAHi3vKWebqYtDuF/SOPRNS
         t8+NrNSpeMXTaNsP9x0yG2eAah58wmcgOoy9DEGF/SOU5sLIgGfsT3nlbK0Ylxay+dmx
         hBHut44z0TTiLSLVxJ4BM8i+EigGiSU8slXvkR36y2Bhuig111dWjjOQO7huCAu6FpHX
         ZiWQ==
X-Gm-Message-State: ACgBeo0zFNi1WSsy+GJ+tzja6rhZnKqmhMUNmGQQjEGl046FZOHjFxF4
        5X4jHnKAf9ej18kzFxUwKUDE3A==
X-Google-Smtp-Source: AA6agR7dluRdbnpHfiFP7SDpOslhxBJxISBrAIwWCcucclqnKUH7uFefctD3/fFQdvb+wyhywbWneQ==
X-Received: by 2002:ac2:4d2b:0:b0:498:fbf0:4f89 with SMTP id h11-20020ac24d2b000000b00498fbf04f89mr3511358lfk.500.1662894724836;
        Sun, 11 Sep 2022 04:12:04 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/40] pinctrl/arm64: qcom: fix some of Qualcomm pinctrl schema warnings
Date:   Sun, 11 Sep 2022 13:11:20 +0200
Message-Id: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi,

That's a set for some of arm64 pinctrl bindings fixing most common warnings.  I
have a plan to continue this for remaining arm64 (sm8250 needs updates) and for
arm.

Dependencies
============
1. dt-bindings are independent of DTS patches.

Best regards,
Krzysztof

Krzysztof Kozlowski (40):
  dt-bindings: pinctrl: qcom,sm6115-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm6115-pinctrl: fix matching SD card pins
  dt-bindings: pinctrl: qcom,sm6115-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm6125-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm6125-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm6125-pinctrl: extend example
  dt-bindings: pinctrl: qcom,sm6350-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm6350-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm6350-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm6375-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm6375-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm6375-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm8250-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm8250-pinctrl: reference tlmm common pins
  dt-bindings: pinctrl: qcom,sm8250-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm8350-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm8350-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm8350-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm8450-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sm8450-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sm8450-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sm8450-pinctrl: add gpio-line-names
  dt-bindings: pinctrl: qcom,sc7280-pinctrl: correct number of GPIOs
  dt-bindings: pinctrl: qcom,sc7280-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sc7280-pinctrl: add gpio-line-names
  dt-bindings: pinctrl: qcom,sc7280-pinctrl: reference tlmm schema
  dt-bindings: pinctrl: qcom,sc7280-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sc8180x-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sc8180x-pinctrl: do not require function on
    non-GPIOs
  dt-bindings: pinctrl: qcom,sc8180x-pinctrl: fix indentation in example
  dt-bindings: pinctrl: qcom,sc8280xp-pinctrl: fix matching pin config
  dt-bindings: pinctrl: qcom,sc8280xp-pinctrl: do not require function
    on non-GPIOs
  dt-bindings: pinctrl: qcom,sc8280xp-pinctrl: fix indentation in
    example
  arm64: dts: qcom: sm6125: align TLMM pin configuration with DT schema
  arm64: dts: qcom: sm6350: align TLMM pin configuration with DT schema
  arm64: dts: qcom: sm8350-sagami: correct TS pin property
  arm64: dts: qcom: sm8350: align TLMM pin configuration with DT schema
  arm64: dts: qcom: sm8450: align TLMM pin configuration with DT schema
  arm64: dts: qcom: sc7280: align TLMM pin configuration with DT schema
  arm64: dts: qcom: sc7280-herobrine: correct TLMM gpio-line-names

 .../bindings/pinctrl/qcom,sc7280-pinctrl.yaml |  55 +--
 .../pinctrl/qcom,sc8180x-pinctrl.yaml         |  79 +++--
 .../pinctrl/qcom,sc8280xp-pinctrl.yaml        |  73 ++--
 .../bindings/pinctrl/qcom,sm6115-pinctrl.yaml |  94 +++---
 .../bindings/pinctrl/qcom,sm6125-pinctrl.yaml |  61 +++-
 .../bindings/pinctrl/qcom,sm6350-pinctrl.yaml |  73 ++--
 .../bindings/pinctrl/qcom,sm6375-tlmm.yaml    |  73 ++--
 .../bindings/pinctrl/qcom,sm8250-pinctrl.yaml |  41 ++-
 .../bindings/pinctrl/qcom,sm8350-pinctrl.yaml |  73 ++--
 .../bindings/pinctrl/qcom,sm8450-pinctrl.yaml |  82 +++--
 .../boot/dts/qcom/sc7280-herobrine-crd.dts    |   2 -
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  44 +--
 .../arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi |   8 +-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |  20 +-
 arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi    |  14 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi          | 316 +++++++++---------
 .../qcom/sm6125-sony-xperia-seine-pdx201.dts  |   4 +-
 arch/arm64/boot/dts/qcom/sm6125.dtsi          |  10 +-
 arch/arm64/boot/dts/qcom/sm6350.dtsi          |  14 +-
 .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   |   4 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi          |  44 +--
 .../qcom/sm8450-sony-xperia-nagara-pdx223.dts |  12 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 152 ++++-----
 23 files changed, 733 insertions(+), 615 deletions(-)

-- 
2.34.1

