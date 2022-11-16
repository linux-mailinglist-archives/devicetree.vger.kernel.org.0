Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6CD762C6CE
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 18:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231996AbiKPRtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 12:49:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238923AbiKPRtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 12:49:47 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C04B60EBB
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 09:49:32 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <pza@pengutronix.de>)
        id 1ovMXK-0004OO-Mn; Wed, 16 Nov 2022 18:49:22 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <pza@pengutronix.de>)
        id 1ovMXJ-0000us-Q0; Wed, 16 Nov 2022 18:49:21 +0100
Date:   Wed, 16 Nov 2022 18:49:21 +0100
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1] dt-bindings: display: Convert fsl,imx-fb.txt to
 dt-schema
Message-ID: <20221116174921.GA25509@pengutronix.de>
References: <20221110094945.191100-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221110094945.191100-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 10, 2022 at 10:49:45AM +0100, Uwe Kleine-König wrote:
[...]
> new file mode 100644
> index 000000000000..c3cf6f92a766
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx-lcdc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX LCD Controller, found on i.MX1, i.MX21, i.MX25 and i.MX27
> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +  - Pengutronix Kernel Team <kernel@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx1-fb
> +              - fsl,imx21-fb

Are the items/enum keywords superfluous here? Couldn't this just be two

         - const: fsl,imx1-fb
         - const: fsl,imx21-fb

entries?

> +      - items:
> +          - enum:
> +              - fsl,imx25-fb
> +              - fsl,imx27-fb
> +          - const: fsl,imx21-fb
> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: ahb
> +      - const: per

clocks and clock-names are new, so this is a little bit more than a
straight forward conversion. I'd mention this in the commit description.

regards
Philipp
