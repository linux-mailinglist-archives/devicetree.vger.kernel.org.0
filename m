Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BE97601281
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 17:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230196AbiJQPLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 11:11:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231197AbiJQPLN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 11:11:13 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CE8513F87
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 08:11:09 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B7C87CCF;
        Mon, 17 Oct 2022 17:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1666019466;
        bh=UywV9EwflqN7o1P8wZQ+8poHiBexF6cgCeCSBfcFieA=;
        h=From:To:Cc:Subject:Date:From;
        b=P/RnBJ+0d2XBUgeqBz6tV9r9692Y7VLp5ELaP3u03WjRB8c+5pTCN7cnajKtKSS5S
         UorMMNhlLo9avAMat1vwMtEyX5gold1V/27ef/OmOYJ2jZQdIoLig57SpwgQEElK9S
         DC02NbpO7jBr5LiPzAnLpb8Hojh3/aXvhLommBRo=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v4 0/3] Debix Model A board devicetree
Date:   Mon, 17 Oct 2022 16:10:47 +0100
Message-Id: <20221017151050.2321919-1-dan.scally@ideasonboard.com>
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

This series adds a .dts file for the Polyhex Debix Model A board [1]
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
 .../dts/freescale/imx8mp-debix-model-a.dts    | 529 ++++++++++++++++++
 4 files changed, 533 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

-- 
2.34.1

