Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FE5F6E4D9B
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 17:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbjDQPtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 11:49:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbjDQPtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 11:49:11 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D31A3C67E
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:46 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v3so1012657wml.0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 08:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681746514; x=1684338514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KfS8K8m8DfdcF5M3jH2xa2Wa/kofGwNcdDqzwQSaKn0=;
        b=yxKhTchBTArFTGjQvZbOjnkh4WbWkgvGcgvPSUZTTDLkprYHylR1zF1gXY2jM2L3wB
         wxP4G0PosWshyQF+oLQi7PlXzRWU9JpczY/RWgotiS49XF4nx5n/v8P2Z0Z99LhzV5vj
         4obKhk2NZxwsEbcpICVTiIFpwjowtKCvjAnw/QmqC8wkiJnppeIAKp5FI3Cu2q4Qfo2L
         oaaugiySZY+gioIBE8KBZer8lKvcYXOWxacfLvi7IY7M+q3inYUtxxILrddzydhXweee
         rslg0af193/QVrsiMBAgFXBYcsQ3IxXHNv3aj61LeVKG05kEblNhZU409yKZmMRuN1Qg
         BIiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681746514; x=1684338514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KfS8K8m8DfdcF5M3jH2xa2Wa/kofGwNcdDqzwQSaKn0=;
        b=DzQa+5+4GaE3f1suyi1h8/RDyeF7b4980wi28nqO6t9n1J/ZAWOiqm8k1iifHKh7de
         DRPzqX7umr57KPefQ/yNiMRZey2EbSutt1oErsKqR6j6bYdubBZ/51rD26zLRFJ6nYJI
         8oeZ1HuFRFRGCKGGWAYzu4LNwimNlf4rUQlGCygDzwJ8ueCKgtqLfwfGpf4+n3K2FHI3
         Q5jRn47YVaqPU6sfYgbqbeg75Uk5P9BenPNENqVVmwykTdEzo55ASs5uYWlOjWiDkVwc
         HkZAMUXrmxxKhjMF0o3ceJQXQluZSMf2PS23SLSYSMgO82IfkKuUf2cUeEexNnVJ3V7B
         zjlg==
X-Gm-Message-State: AAQBX9eX1zcQsaM8hsprDwq31o8LpZRwRN+9NaR3+aHn7oFUa+k13Ygy
        5xBToLalvUQyzuHEP2gmutDEew==
X-Google-Smtp-Source: AKy350aFxi8d7waj6AjNIWNw5InKNtq0YnPz1uAR1GbP8k55NQ/sqJJfxDvxDRSraNuQKEC/AFXuNg==
X-Received: by 2002:a1c:4b04:0:b0:3ee:282d:1016 with SMTP id y4-20020a1c4b04000000b003ee282d1016mr11130671wma.25.1681746514541;
        Mon, 17 Apr 2023 08:48:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:28d:66d0:5888:afdf:3f10:3b2b])
        by smtp.gmail.com with ESMTPSA id v5-20020a05600c444500b003f09cda253esm16189932wmn.34.2023.04.17.08.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 08:48:34 -0700 (PDT)
From:   Esteban Blanc <eblanc@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        eblanc@baylibre.com, jneanne@baylibre.com, jpanis@baylibre.com,
        aseketeli@baylibre.com
Subject: [PATCH v3 0/6] Add TPS6594 PMIC support on several boards
Date:   Mon, 17 Apr 2023 17:48:26 +0200
Message-Id: <20230417154832.216774-1-eblanc@baylibre.com>
X-Mailer: git-send-email 2.39.2
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

Changes since v1:
https://lore.kernel.org/lkml/20230329142948.833800-1-eblanc@baylibre.com/
- Harmonize regulators names across the different boards
- Adjust AVS voltage range
- Remove some outdated comments
- Add PMIC to J784S4 board
- Compatible string modified to match dt-bindings
- Add gpio-controller and gpio-cells properties

Changes since v2:
https://lore.kernel.org/lkml/20230414112843.1358067-1-eblanc@baylibre.com/
- Change node name as per Krzysztof review
- Add a fix for the interrupt range of wakeup gpio used by TPS6594 pmic
  on J784S4.
  The interruptions of the PMIC were not working before that
- Remove dependencies on other patch series as that was a mistake, see
  https://lore.kernel.org/lkml/CRYY2V3HJ0CP.96JQ18PLZB3C@burritosblues/

Apelete Seketeli (1):
  arm64: dts: ti: k3-j784s4-evm: Fix wakeup gpio pinmux interrupt range

Esteban Blanc (2):
  arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family PMICs
  arm64: dts: ti: k3-j721s2-som-p0: Add TP6594 family PMICs

Jerome Neanne (2):
  arm64: dts: ti: k3-j721e-som-p0: Add TP6594 family PMICs
  arm64: dts: ti: k3-j784s4-evm: Add support for TPS6594 PMIC

Julien Panis (1):
  arm64: dts: ti: k3-am62a7-sk: Add support for TPS6593 PMIC

 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts       |  95 ++++++++
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 175 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721e-som-p0.dtsi   | 171 ++++++++++++++
 arch/arm64/boot/dts/ti/k3-j721s2-som-p0.dtsi  | 213 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-j784s4-evm.dts      | 116 ++++++++++
 .../boot/dts/ti/k3-j784s4-mcu-wakeup.dtsi     |   2 +-
 6 files changed, 771 insertions(+), 1 deletion(-)

-- 
2.39.2

