Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDB8F602648
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 10:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230167AbiJRIAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 04:00:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbiJRIAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 04:00:03 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A019648CA5
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 01:00:01 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1okhW4-0003HI-0X; Tue, 18 Oct 2022 10:00:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1okhW3-0002X6-GE; Tue, 18 Oct 2022 09:59:59 +0200
Date:   Tue, 18 Oct 2022 09:59:59 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v4 0/3] arm64: dts: Add InnoComm WB15-EVK support
Message-ID: <20221018075959.GA9130@pengutronix.de>
References: <20220922081347.3860008-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922081347.3860008-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Shawn,

will you take this series?

Thanks
  Sascha

On Thu, Sep 22, 2022 at 10:13:44AM +0200, Sascha Hauer wrote:
> The InnoComm WB15-EVK [1] board is a Eval base board for the WB15 SoM
> [2] which is based on the NXP i.MX8MM. This series adds InnoComm as a
> vendor prefix and the necessary dts/dtsi files.
> 														     [1] https://www.innocomm.com/product_inner.aspx?num=2233
> 														     [2] https://www.innocomm.com/product_inner.aspx?num=2232
> 
> Changes since v3:
> - drop unnecessary status = "okay" from new node
> 
> Changes since v2:
> - Fix another remaining s/innocom/innocomm/
> - Don't use underscores in node names
> - Use IRQ_TYPE_LEVEL_LOW to specify interrupt polarity
> 
> Changes since v1:
> - Fix spelling of InnoComm:
>   s/innocom/innocomm/
>   s/Innocom/InnoComm/
> 
> Sascha Hauer (3):
>   dt-bindings: vendor-prefixes: Add prefix for InnoComm
>   dt-bindings: arm: fsl: Add InnoComm WB15 EVK
>   arm64: dts: freescale: Add InnoComm i.MX8MM based WB15 SoM and EVK
> 
>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mm-innocomm-wb15-evk.dts    | 146 ++++++
>  .../dts/freescale/imx8mm-innocomm-wb15.dtsi   | 480 ++++++++++++++++++
>  5 files changed, 630 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> 
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
