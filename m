Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C37915F9F69
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:32:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiJJNcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbiJJNcG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:32:06 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0675572B50
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:32:01 -0700 (PDT)
Received: from mail.ideasonboard.com (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B4F67BB0;
        Mon, 10 Oct 2022 15:31:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665408718;
        bh=GZ9V7PAMl9t1SJW86CjCS4yI0ToudvJ+jOKUuLnnYNI=;
        h=From:To:Cc:Subject:Date:From;
        b=gz8IO0/K7jXxpwagc+cVt4NhU+bXcguigq7nD1MdqPMWf13GIHVWkNz3B+XY80Nn+
         3c+oypkpqj5pUUrd6gcykGwL4dMdlfghIH19YZVHz71yz0WpOTBDcUU6L4ubrt7kqC
         +Xs/XzA5WBzs7Cs/nl2NqEMePGKTkybEOtXT3gYg=
From:   Daniel Scally <dan.scally@ideasonboard.com>
To:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net,
        Daniel Scally <dan.scally@ideasonboard.com>
Subject: [PATCH v2 0/3] Debix Model A board devicetree
Date:   Mon, 10 Oct 2022 14:31:43 +0100
Message-Id: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
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
 .../dts/freescale/imx8mp-debix-model-a.dts    | 550 ++++++++++++++++++
 4 files changed, 554 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

-- 
2.34.1

