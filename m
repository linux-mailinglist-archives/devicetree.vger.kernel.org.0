Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C58105FD91F
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 14:20:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiJMMU1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 08:20:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbiJMMU0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 08:20:26 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E85DE105378
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 05:20:24 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6FA7C492;
        Thu, 13 Oct 2022 14:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665663622;
        bh=xzy6JsDhXyvoXQiqBSvPXdA6yEH6j7Jz/E9TPh8hHkU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=knFDKUKt8m9AVaa2BwRtejYK3YgnlqNvresR70K7JdfxneyXTgLcDdjtgSfc14D7X
         A6JDzo2ytPkFRC/OgTp+PQfVqO/wj63P/a6FJqAT3MRGxg2Eu7es0qdpQRbmr5Tn3T
         SuKRj/Ri7fhych1WEu7DwvmGauuIa6kCQqWvdHQ4=
Date:   Thu, 13 Oct 2022 15:20:16 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Daniel Scally <dan.scally@ideasonboard.com>
Cc:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net
Subject: Re: [PATCH v3 0/3]  Debix Model A board devicetree
Message-ID: <Y0gCgMP6zzYRymRX@pendragon.ideasonboard.com>
References: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221012102121.1747491-1-dan.scally@ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dan,

Thank you for the patches.

On Wed, Oct 12, 2022 at 11:21:18AM +0100, Daniel Scally wrote:
> Hello
> 
> This series adds a .dts file for the Polyhex Debix Model A board [1]
> A binding for the vendor is also added.
> 
> [1] http://www.polyhex.net/product/embedded-motherboard/board/nxp.html?id=483

For the whole series,

Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> Daniel Scally (3):
>   dt-bindings: vendor-prefixes: Add Polyhex Technology Co.
>   dt-bindings: arm: fsl: Enumerate Debix Model A Board
>   arm64: dts: Add device tree for the Debix Model A Board
> 
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx8mp-debix-model-a.dts    | 529 ++++++++++++++++++
>  4 files changed, 533 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

-- 
Regards,

Laurent Pinchart
