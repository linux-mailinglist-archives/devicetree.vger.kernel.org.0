Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2F273F05A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 03:24:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjF0BY1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 21:24:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjF0BY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 21:24:26 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3597D10CF
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:25 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f875b267d9so5579845e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687829063; x=1690421063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZA4cawoZRNgrqzAENjP01rJKcNc9B6zeDmJj+ATh09U=;
        b=r54wxMwZpOFc5UJLxh5fYB9ukPpCefKzcBodyQw0bjt4EJC3289D+8aGWWNcZzDNH7
         q7mHqppR9uJi/lCf4275wuKz7VWVbc+jHzjuUFtQIv25KooLYqsZhxbTb5yvbQw1Zz3q
         207Zmy1Rj5/fXwXkl24l0anKGwCyIx2t0wsh1zqB3BQRHfjCY6tdb2ern7WfipCfMQKg
         KT22UflLcwObzJOBl5oXV4YYACDjXQhqhEjoBLrx77L6R/bRTpAle+wt/WjCAnXDCcYD
         9rAIIg1B9dbk+XPRUSH1FNIniYrcEtmXpB3aUmrHcMJIPj4zDNZZIEk9/vbIeXCZBgwy
         BOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687829063; x=1690421063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZA4cawoZRNgrqzAENjP01rJKcNc9B6zeDmJj+ATh09U=;
        b=fk2F/ZEK63VRaS2PZwGUcOwTKthPJuqaFzUG2hKsUYsd/Rfycbn/LJJRNuYCHfrASI
         7afVM0J5WzksSGEc6aJkKva+3J+z1BSm/vUOTgRwUaarCqGUThyi2cd9W+VhpOOC3E9Z
         EEbNk1mmDDIxFYG8LDngPdFFthPPH7Vnqzv0GokgqsOisCfSX00l0vNkIRepYxdaxyV7
         8Siogu9J9HUtFY3aFbxNMS3aEEdEr700iikKGZPZ3fTS+Ehefz6eV1dN8x43OKduR4KY
         59Ddc4uhQ9yRfnVoHAiNKg/Mq4x6R6PkpGcmH/9jQwfLapRO3K4tNpiX+BbHaegD5qeB
         G32Q==
X-Gm-Message-State: AC+VfDwYoif8fpcIKSm4u6hj1jhMF5yOoUco6t0yat6xo3Ob3+0nVMjP
        okesFwDrhbL9haq42G2mdMFXkz0xwwESgK5RmUM=
X-Google-Smtp-Source: ACHHUZ5CpI4vZEGpB7oisPKttFApFtuxRtPklAiE6EywRqGxcAmnfCiPczi8BgBu/MLbyHtCvisiLw==
X-Received: by 2002:a19:f201:0:b0:4f6:25ca:f147 with SMTP id q1-20020a19f201000000b004f625caf147mr16300353lfh.63.1687829063430;
        Mon, 26 Jun 2023 18:24:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b004cc9042c9cfsm1331301lfh.158.2023.06.26.18.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:24:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 00/15] ARM: dts: qcom: cleanup PMIC usage
Date:   Tue, 27 Jun 2023 04:24:07 +0300
Message-Id: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While reviewing APQ8064 CPUFreq patchset, Konrad pointed out that PMICs
are not a part of SoC and as such do not belong to the per-SoC files.

Cleanup the way 32-bit Qualcomm platforms treat PMICs:

- Move SSBI PMICs to separate files (as a bonus merging two different
  instances of PM8921, benefitting both platforms).

- Include such PMIC files only from the board files, keeping SoC file
  generic.

- Move RPM regulator definitions to board files too. They do not belong
  to the SoC dtsi files for the same reason.

- Move PMIC-specific GPIOs and supply properties to individual board
  files.

Dmitry Baryshkov (15):
  ARM: dts: qcom: apq8064: correct XOADC register address
  ARM: dts: qcom: msm8960: introduce label for PMIC keypad
  ARM: dts: qcom: msm8660-surf: use keypad label directly
  ARM: dts: qcom: apq8064-nexus7: move sdcc1 node to proper place
  ARM: dts: qcom: mdm9615-wp8548-mangoh-green: group include clauses
  ARM: dts: qcom: strip prefix from PMIC files
  ARM: dts: qcom: apq8064: split PMICs to separate dtsi files
  ARM: dts: qcom: mdm9615: split PMIC to separate dtsi files
  ARM: dts: qcom: msm8660: split PMIC to separate dtsi files
  ARM: dts: qcom: msm8960: split PMIC to separate dtsi files
  ARM: dts: qcom: msm8974: move vreg-boost GPIO to board files
  ARM: dts: qcom: apq8064: move RPM regulators to board files
  ARM: dts: qcom: mdm9615: move RPM regulators to board files
  ARM: dts: qcom: msm8660: move RPM regulators to board files
  ARM: dts: qcom: msm8960: drop useless rpm regulators node

 arch/arm/boot/dts/qcom/pm8018.dtsi            |  57 +++++
 arch/arm/boot/dts/qcom/pm8058.dtsi            | 162 +++++++++++++
 .../qcom/{qcom-pm8226.dtsi => pm8226.dtsi}    |   0
 arch/arm/boot/dts/qcom/pm8821.dtsi            |  22 ++
 .../qcom/{qcom-pm8841.dtsi => pm8841.dtsi}    |   0
 arch/arm/boot/dts/qcom/pm8921.dtsi            | 137 +++++++++++
 .../qcom/{qcom-pm8941.dtsi => pm8941.dtsi}    |   0
 .../qcom/{qcom-pma8084.dtsi => pma8084.dtsi}  |   0
 .../dts/qcom/{qcom-pmx55.dtsi => pmx55.dtsi}  |   0
 .../dts/qcom/{qcom-pmx65.dtsi => pmx65.dtsi}  |   0
 .../dts/qcom/qcom-apq8026-asus-sparrow.dts    |   2 +-
 .../dts/qcom/qcom-apq8026-huawei-sturgeon.dts |   2 +-
 .../boot/dts/qcom/qcom-apq8026-lg-lenok.dts   |   2 +-
 .../qcom-apq8026-samsung-matisse-wifi.dts     |   2 +-
 .../dts/qcom/qcom-apq8060-dragonboard.dts     | 146 +++++++-----
 .../dts/qcom/qcom-apq8064-asus-nexus7-flo.dts |  69 +++---
 .../boot/dts/qcom/qcom-apq8064-cm-qs600.dts   |  31 +--
 .../boot/dts/qcom/qcom-apq8064-ifc6410.dts    |  38 ++--
 .../qcom-apq8064-sony-xperia-lagan-yuga.dts   | 110 +++++----
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi      | 195 +---------------
 .../dts/qcom/qcom-apq8074-dragonboard.dts     |   4 +-
 .../boot/dts/qcom/qcom-apq8084-ifc6540.dts    |   2 +-
 arch/arm/boot/dts/qcom/qcom-apq8084-mtp.dts   |   2 +-
 .../qcom/qcom-mdm9615-wp8548-mangoh-green.dts |   4 +-
 .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    | 139 +++++++++++-
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 180 +--------------
 arch/arm/boot/dts/qcom/qcom-msm8660-surf.dts  |  59 +++--
 arch/arm/boot/dts/qcom/qcom-msm8660.dtsi      | 214 +-----------------
 arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts   |  21 +-
 .../qcom/qcom-msm8960-samsung-expressatt.dts  |   3 +-
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      |  42 +---
 .../qcom-msm8974-lge-nexus5-hammerhead.dts    |   8 +-
 .../qcom/qcom-msm8974-sony-xperia-rhine.dtsi  |   8 +-
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi      |   1 -
 .../qcom/qcom-msm8974pro-fairphone-fp2.dts    |   8 +-
 .../qcom/qcom-msm8974pro-oneplus-bacon.dts    |   8 +-
 .../dts/qcom/qcom-msm8974pro-samsung-klte.dts |   2 +-
 ...-msm8974pro-sony-xperia-shinano-castor.dts |   8 +-
 arch/arm/boot/dts/qcom/qcom-sdx55-mtp.dts     |   2 +-
 arch/arm/boot/dts/qcom/qcom-sdx55-t55.dts     |   2 +-
 .../dts/qcom/qcom-sdx55-telit-fn980-tlb.dts   |   2 +-
 arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts     |   2 +-
 42 files changed, 851 insertions(+), 845 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/pm8018.dtsi
 create mode 100644 arch/arm/boot/dts/qcom/pm8058.dtsi
 rename arch/arm/boot/dts/qcom/{qcom-pm8226.dtsi => pm8226.dtsi} (100%)
 create mode 100644 arch/arm/boot/dts/qcom/pm8821.dtsi
 rename arch/arm/boot/dts/qcom/{qcom-pm8841.dtsi => pm8841.dtsi} (100%)
 create mode 100644 arch/arm/boot/dts/qcom/pm8921.dtsi
 rename arch/arm/boot/dts/qcom/{qcom-pm8941.dtsi => pm8941.dtsi} (100%)
 rename arch/arm/boot/dts/qcom/{qcom-pma8084.dtsi => pma8084.dtsi} (100%)
 rename arch/arm/boot/dts/qcom/{qcom-pmx55.dtsi => pmx55.dtsi} (100%)
 rename arch/arm/boot/dts/qcom/{qcom-pmx65.dtsi => pmx65.dtsi} (100%)

-- 
2.39.2

