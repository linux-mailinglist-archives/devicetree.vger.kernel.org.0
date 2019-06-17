Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D77648882
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 18:14:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726669AbfFQQOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 12:14:44 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:53249 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727404AbfFQQOo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 12:14:44 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.lab.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1hcuHI-0000aF-F0; Mon, 17 Jun 2019 18:14:40 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hcuHH-0000va-CG; Mon, 17 Jun 2019 18:14:39 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, linux-imx@nxp.com
Cc:     devicetree@vger.kernel.org, Gilles.Buloz@kontron.com,
        frieder.schrempf@kontron.de, thomas.schaefer@kontron.com,
        Stefan.Nickl@kontron.com, Michael.Brunner@kontron.com,
        kernel@pengutronix.de, festevam@gmail.com, plaes@plaes.org
Subject: [PATCH v2 0/3] Add Support for Kontron SMARC-sAMX6i
Date:   Mon, 17 Jun 2019 18:14:29 +0200
Message-Id: <20190617161432.32268-1-m.felsch@pengutronix.de>
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

this v2 covers the feedback made on my v1 [1]. Patch 3-17 are now
squashed into one patch.

[1] https://www.spinics.net/lists/devicetree/msg287251.html

Marco Felsch (1):
  dt-bindings: add Kontron vendor prefix

Michael Grzeschik (1):
  ARM: dts: imx6qdl-kontron-samx6i: add Kontron SMARC SoM Support

Priit Laes (1):
  ARM: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron SMARC-sAMX6i
    module

 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi  |  12 +
 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi   |  36 +
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 815 ++++++++++++++++++
 4 files changed, 865 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6dl-kontron-samx6i.dtsi
 create mode 100644 arch/arm/boot/dts/imx6q-kontron-samx6i.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi

-- 
2.20.1

