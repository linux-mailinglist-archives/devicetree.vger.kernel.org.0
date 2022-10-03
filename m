Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9F25F2C7F
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229507AbiJCIyC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:54:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiJCIxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:53:39 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2704810F
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:37:18 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7E3D9519;
        Mon,  3 Oct 2022 10:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664786236;
        bh=/MqIsK/qEtq82VO9b2l7RvAht7ukLTESK16+yH3NnXs=;
        h=From:To:Cc:Subject:Date:From;
        b=cHANTbsyqyZ//k8JxGzG+1mPszZTWC0qs2KySHAMjVhtM7JUTEm71FQNElR1eyoDA
         tc3HbzZ90pNda87pnYJ9XOOs4Rcohxh666Yp491BjdhYe10Mv/bw6JFugP79UlDf82
         4xU6+QAYfhj4bYhTn9CEx6n12aVAyar9dIwuWOoM=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH 0/3] Debix Model A board devicetree
Date:   Mon,  3 Oct 2022 09:37:02 +0100
Message-Id: <20221003083705.22495-1-dan.scally@ideasonboard.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello

This series adds a .dts file for the Polyhex Debix Model A (2GB) [1]
A binding for the vendor is also added.

[1] http://www.polyhex.net/product/embedded-motherboard/board/nxp.html?id=483

Thanks
Dan

Daniel Scally (3):
  dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
  dt-bindings: arm: fsl: Enumerate Debix Model A Board
  arm64: dts: Add device tree for the Debix Model A Board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mp-debix-model-a.dts    | 550 ++++++++++++++++++
 4 files changed, 554 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

-- 
2.34.1

