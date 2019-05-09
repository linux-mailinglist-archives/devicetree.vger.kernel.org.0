Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F133018D83
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 17:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726779AbfEIP6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 11:58:50 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:38149 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726767AbfEIP6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 11:58:49 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRS-00076P-2k; Thu, 09 May 2019 17:58:42 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hOlRR-00062K-0J; Thu, 09 May 2019 17:58:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     Stefan.Nickl@kontron.com, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, thomas.schaefer@kontron.com,
        frieder.schrempf@kontron.de, kernel@pengutronix.de,
        devicetree@vger.kernel.org
Subject: [PATCH 00/17] Add Support for Kontron SMARC-sAMX6i
Date:   Thu,  9 May 2019 17:58:17 +0200
Message-Id: <20190509155834.22838-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series adds the Kontron SoM 'SMARC-sAMX6i' which is compatible to
the SMARC 1.1 standard [1]. Most of the muxing can be done within the
SoM dtsi since the standard defines a unique SoM hardware interface.

This series is based on Priit Laes initial commit [2] which adds the
initial support. I addressed the comments and changed the copyright
since there where a lot of fixes.

Testers are welcome :) since I used a custome baseboard which doesn't
use all of the interfaces.

[1] https://sget.org/standards/smarc
[2] https://lore.kernel.org/patchwork/patch/762261/

Marco Felsch (14):
  dt-bindings: add Kontron vendor prefix
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SDIO interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC LCD interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Management pins
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC GPIO interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC HDMI interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC CSI Camera interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC I2S interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI1 interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC Watchdog
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC module eeprom
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add power management support
  ARCH: arm: dts: imx6q-kontron-samx6i: add Kontron SMARC Quad/Dual SoM
  ARCH: arm: dts: imx6dl-kontron-samx6i: add Kontron SMARC
    Dual-Lite/Solo SoM

Michael Grzeschik (2):
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add SMARC SPI0 interface
  ARCH: arm: dts: imx6qdl-kontron-samx6i: add boot spi-nor

Priit Laes (1):
  ARCH: arm: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron
    SMARC-sAMX6i module

 .../devicetree/bindings/vendor-prefixes.txt   |   1 +
 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi  |  12 +
 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi   |  36 +
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 812 ++++++++++++++++++
 4 files changed, 861 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi
 create mode 100644 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi

-- 
2.20.1

