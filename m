Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61430664055
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 13:22:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238361AbjAJMWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 07:22:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238378AbjAJMVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 07:21:45 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 619AF76ECF
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 04:19:38 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pFDb7-000183-1T; Tue, 10 Jan 2023 13:19:21 +0100
Message-ID: <d742174d-f677-e487-c1ff-8c324524b6f7@pengutronix.de>
Date:   Tue, 10 Jan 2023 13:19:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v6 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
 <20230110114027.634719-4-johannes.schneider@leica-geosystems.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230110114027.634719-4-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10.01.23 12:40, Johannes Schneider wrote:
> Add DT compatible strings for a rev-b imx8mm-EVK which come with a
> different PMIC than rev-a.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

Please manually include Acked-by and Reviewed-by's you get when sending
a new revision. It's not necessary to send a new version when there
are no other changes. In that case the maintainer scripts will usually
pick up the tags and fold it into the patch description, but they
won't usually go looking in old mailing list postings to collect Acks
as that would also involve them judging whether changes in the new
series are extensive enough to invalidate previous reviews/testing.

Cheers,
Ahmad

> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index fbfc4f99c01e..9c3a02c19847 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -818,6 +818,7 @@ properties:
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board
> +              - fsl,imx8mm-evkb           # i.MX8MM EVK Board, rev-B
>                - gateworks,imx8mm-gw7904
>                - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
>                - gw,imx8mm-gw72xx-0x       # i.MX8MM Gateworks Development Kit

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

