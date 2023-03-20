Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEF696C1357
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 14:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230174AbjCTN2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 09:28:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbjCTN2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 09:28:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AA5E72BB
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 06:28:09 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1peFYU-00065i-AI; Mon, 20 Mar 2023 14:28:06 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 00/10] ARM: stm32: add support for Phycore STM32MP1
Date:   Mon, 20 Mar 2023 14:27:45 +0100
Message-Id: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
   
this is the fifth installement of my series for adding support for the
Phytec STM32MP1-based SoM and board.
 
Phytec itself calls the board "Phycore STM32MP1-3" and has other
endnumbers. I only have access to the "-3" and that's what this series
adds.

Changes since v4:
  - cleanup usage of "status = okay|disabled"
  - fix remaining non-generic node names
  - rework sai nodes to not duplicate the existing settings in stm32mp151.dtsi
  - move the dt-bindings patch in front of the patch adding the board
    
Changes since v3:
  - cleanup board-compatible
  - cleanup aliases
  - rename nodes according to schema
  - use interrupt flag
  - integrate pinmux into main stm32mp15-pinctrl.dtsi

Best regards,
Steffen


Steffen Trumtrar (10):
  ARM: dts: stm32: Add alternate pinmux for ethernet
  ARM: dts: stm32: Add alternate pinmux for sai2b
  ARM: dts: stm32: Add new pinmux for sdmmc1_b4
  ARM: dts: stm32: Add new pinmux for sdmmc2_d47
  ARM: dts: stm32: Add pinmux for USART1 pins
  ARM: dts: stm32: Add idle/sleep pinmux for USART3
  ARM: dts: stm32: Add sleep pinmux for SPI1 pins_a
  dt-bindings: arm: stm32: Add Phytec STM32MP1 board
  ARM: dts: stm32: add STM32MP1-based Phytec SoM
  ARM: dts: stm32: add STM32MP1-based Phytec board

 .../devicetree/bindings/arm/stm32/stm32.yaml  |   6 +
 arch/arm/boot/dts/Makefile                    |   3 +-
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi      | 231 +++++++
 .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  66 ++
 .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 609 ++++++++++++++++++
 5 files changed, 914 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp1-3.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157c-phycore-stm32mp15-som.dtsi

-- 
2.39.1

