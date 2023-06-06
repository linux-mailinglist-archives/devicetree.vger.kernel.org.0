Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 137BC7241A9
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 14:07:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232989AbjFFMHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 08:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232984AbjFFMHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 08:07:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D16AE78
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 05:07:46 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1q6VTI-0006uM-0P; Tue, 06 Jun 2023 14:07:32 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1q6VTG-0003Qv-HJ; Tue, 06 Jun 2023 14:07:30 +0200
Date:   Tue, 6 Jun 2023 14:07:30 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Markus Niebel <Markus.Niebel@tq-group.com>,
        devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 1/3] dt-bindings: arm: add TQMa8Xx boards
Message-ID: <20230606120730.6exdpylr24qn6hdw@pengutronix.de>
References: <20230606112108.685885-1-alexander.stein@ew.tq-group.com>
 <20230606112108.685885-2-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606112108.685885-2-alexander.stein@ew.tq-group.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On 23-06-06, Alexander Stein wrote:
> TQMa8Xx is a SOM series featuring NXP i.MX8X SoC.
> They are called TQMa8XQP and TQMa8XDP respectively.
> MBa8Xx is an evaluation mainboard for this SOM
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 2510eaa8906dd..c4dcdac43bafb 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -1195,6 +1195,23 @@ properties:
>            - const: toradex,colibri-imx8x
>            - const: fsl,imx8qxp
>  
> +      - description:
> +          TQMa8Xx is a series of SOM featuring NXP i.MX8X system-on-chip
> +          variants. It is designed to be clicked on different carrier boards
> +          MBa8Xx is the starterkit
> +        oneOf:
> +          - items:
> +              - enum:
> +                  - tq,imx8dxp-tqma8xdp-mba8xx # TQ-Systems GmbH TQMa8XDP SOM on MBa8Xx
> +              - const: tq,imx8dxp-tqma8xdp     # TQ-Systems GmbH TQMa8XDP SOM (with i.MX8DXP)
> +              - const: fsl,imx8dxp
> +              - const: fsl,imx8qxp
				^
Should be removed? The rest lgtm, so feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Nit: Please check the dts(i) files for C++ comments '//' and replace
them with '/**/'. There was at least one C++ comment.

Regards,
  Marco

> +          - items:
> +              - enum:
> +                  - tq,imx8qxp-tqma8xqp-mba8xx # TQ-Systems GmbH TQMa8XQP SOM on MBa8Xx
> +              - const: tq,imx8qxp-tqma8xqp     # TQ-Systems GmbH TQMa8XQP SOM (with i.MX8QXP)
> +              - const: fsl,imx8qxp
> +
>        - description: i.MX8ULP based Boards
>          items:
>            - enum:
> -- 
> 2.34.1
> 
> 
> 
