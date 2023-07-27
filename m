Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54A1C76548F
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 15:09:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232296AbjG0NJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 09:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230411AbjG0NJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 09:09:13 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE801FC4
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 06:09:11 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so9656825e9.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 06:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1690463350; x=1691068150;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xdr7a1zxIjE41L1aP5DMj9AQCGqisfi4eUcGMyHfM7k=;
        b=45A1zvucx3H64BF/DJz76ORjDbRhHvf5s5smDZhA/+e+fet4Mx9sqDuRc+1Ryc0sRq
         jR9TiZvDWclNjO6p2m1uZaDpbD2Xk9xG8AXIfzT9bGG8v2I9MqR1D6H0ANheaFobzSyV
         87kMSuEuEL6eG1fwJyIo8Z91qNS7Afhzk7aoPGAu67KaHMeV27AbsEnOa+ctA59U9ik9
         YjfLj36yN2syrsbrA5eqKufNLbZ4rHm5n75KOWrAf1ism5DviJ6/PuaYDsqohJ+4uZxK
         2e/ytcCa1D+0BxbKnb6/vXhkNeW+iCVfppmgRpWH7vX72/3FT35yZ6/GCyb4LAGGyOHa
         rY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690463350; x=1691068150;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xdr7a1zxIjE41L1aP5DMj9AQCGqisfi4eUcGMyHfM7k=;
        b=YT7T+HB9dlUXNpPSqDf/Z0SOlKv1ObsiCyMjHYBaIwI8lGGX91I5aNK+5gBS+kN4rJ
         d2P301cdb0/3g1XvN0CC/icL5iTYwiHJuw5S2eu+5sos9MXF5fjXMHYGMNXwNO2j6S67
         hWARbp0xmGvl88cw3KYjoHiGQVJrUxcDa24Y6YsJbP/njZYOZbmS7fX2eiuNGMC8aqn8
         4rqAERVqkBKCrzU0vwqiDy5MlWMFLzGGkchSZUDVPtOSbT2uFG8vYPcap03h7pfxxpa7
         RTUCMo+zDN+ETLByAaUdUy5Z2QlfKIzAAi3hBJ33D9qYMzn/+lb1MkyNEtYtNDFCjTiV
         YM5Q==
X-Gm-Message-State: ABy/qLZRfCPp8vWG7piWY8ivpZ4XRVW867yVNXgVxJ11rDVUGB6RCtCm
        4xsBNBmVc6L/DJbuZOkCy12b7g==
X-Google-Smtp-Source: APBJJlGc9QrVFvmE4C4bkcFYiXoO+u2KC64aURWeVrD2cKlZZ3RNiKRomk/6myFGpH7tU9/39D7l6Q==
X-Received: by 2002:a1c:f702:0:b0:3fa:7478:64be with SMTP id v2-20020a1cf702000000b003fa747864bemr1704834wmh.1.1690463349705;
        Thu, 27 Jul 2023 06:09:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:28d:66d0:4512:80d4:6b13:bb70])
        by smtp.gmail.com with ESMTPSA id h14-20020a05600c260e00b003fbca942499sm4698042wma.14.2023.07.27.06.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 06:09:09 -0700 (PDT)
From:   Esteban Blanc <eblanc@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, u-kumar1@ti.com, eblanc@baylibre.com,
        jneanne@baylibre.com, aseketeli@baylibre.com, jpanis@baylibre.com
Subject: [PATCH v4 0/6] Add TPS6594 PMIC support on several boards
Date:   Thu, 27 Jul 2023 15:09:02 +0200
Message-ID: <20230727130908.10656-1-eblanc@baylibre.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TPS6594 is a Power Management IC which provides regulators and others
features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
PFSM (Pre-configurable Finite State Machine). The SoC and the PMIC can
communicate through the I2C or SPI interfaces.
TPS6594 is the super-set device while TPS6593 and LP8764 are derivatives.

This serie adds device tree nodes for TI TPS6594 PMICs found in the
following boards:
- J721EXSOMXEVM:
  Link: https://www.ti.com/tool/J721EXSOMXEVM
- J721S2XSOMXEVM:
  Link: https://www.ti.com/tool/J721S2XSOMXEVM
- J7200XSOMXEVM:
  Link: https://www.ti.com/tool/J7200XSOMXEVM
- AM62A-SKEVM:
  Link: https://www.ti.com/tool/SK-AM62A-LP
- J784S4XEVM
  Link: https://www.ti.com/tool/J784S4XEVM

Changes from v3:
https://lore.kernel.org/all/20230417154832.216774-1-eblanc@baylibre.com/
- Rebased on top of v6.5-rc1.
- Change pinctrl number for irq pin as wkup_pmx0 was split on some boards.
- Use already present wkup_i2c0 node instead of creating a new one.

Changes from v2:
https://lore.kernel.org/lkml/20230414112843.1358067-1-eblanc@baylibre.com/
- Change node name as per Krzysztof review.
- Add a fix for the interrupt range of wakeup gpio used by TPS6594 pmic
  on J784S4.
  The interruptions of the PMIC were not working before that.
- Remove dependencies on other patch series as that was a mistake, see
  https://lore.kernel.org/lkml/CRYY2V3HJ0CP.96JQ18PLZB3C@burritosblues/

Changes from v1:
https://lore.kernel.org/lkml/20230329142948.833800-1-eblanc@baylibre.com/
- Harmonize regulators names across the different boards.
- Adjust AVS voltage range.
- Remove some outdated comments.
- Add PMIC to J784S4 board.
- Compatible string modified to match dt-bindings.
- Add gpio-controller and gpio-cells properties.

Apelete Seketeli (1):
  arm64: dts: ti: k3-j784s4-evm: Fix interrupt ranges for TPS6594 PMIC

Esteban Blanc (2):
  arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family PMICs
  arm64: dts: ti: k3-j721s2-som-p0: Add TP6594 family PMICs

Jerome Neanne (2):
  arm64: dts: ti: k3-j721e-som-p0: Add TP6594 family PMICs
  arm64: dts: ti: k3-j784s4-evm: Add support for TPS6594 PMIC

Julien Panis (1):
  arm64: dts: ti: k3-am62a7-sk: Add support for TPS6593 PMIC

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts       |  95 +++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 157 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   | 163 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi  | 199 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts      | 104 +++++++++
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     |   2 +-
 6 files changed, 719 insertions(+), 1 deletion(-)

-- 
2.38.5

