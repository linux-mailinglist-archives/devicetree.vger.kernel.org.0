Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6CEC5F9FC8
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 16:06:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229630AbiJJOGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 10:06:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbiJJOGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 10:06:23 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528575A2F4
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 07:06:22 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 43EBCBB0;
        Mon, 10 Oct 2022 16:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665410780;
        bh=gja20346I3bUT9Z+qGWH0jCghH8BNAcyCZum5x9aNjQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TTtuwDTQnYeWYrVEOlnhS3A2y4m+R1ro0PIr0JQw/FJbv3NnsmsOl19OYN2CaSNAs
         EnltXU8iCO+NCUAKvzx2aCdptWf+c83+Jp9BZYph1NWEEJQy2CjET9BsgHTST5eaCb
         8WKvT+Hk2Hzc2RapmVSWB9N34WJorJCxM9EdiIFk=
Date:   Mon, 10 Oct 2022 17:06:14 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Dan Scally <dan.scally@ideasonboard.com>
Cc:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        marcel.ziswiler@toradex.com, robh@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, debix-tech@polyhex.net
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A
 Board
Message-ID: <Y0Qm1qMyM40ud1KF@pendragon.ideasonboard.com>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
 <20221010133146.1430768-3-dan.scally@ideasonboard.com>
 <166541021982.3760285.2314715216039776873@Monstersaurus>
 <7a7699fd-d8aa-3657-eefc-16bac57ff444@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <7a7699fd-d8aa-3657-eefc-16bac57ff444@ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 10, 2022 at 02:57:35PM +0100, Dan Scally wrote:
> On 10/10/2022 14:56, Kieran Bingham wrote:
> > Quoting Daniel Scally (2022-10-10 14:31:45)
> >> Add an entry to the list of imx8mp boards denoting the Debix Model A
> >> board from Polyhex Technology Co.
> >>
> >> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> >> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> >> ---
> >> Changes in v2:
> >>
> >>      - Dropped 2gb suffix, added hyphens for readability (Laurent)
> >>
> >>   Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> >> index 7431579ab0e8..fc0c8eb15114 100644
> >> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> >> @@ -931,6 +931,7 @@ properties:
> >>                 - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
> >>                 - fsl,imx8mp-evk            # i.MX8MP EVK Board
> >>                 - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
> >> +              - polyhex,imx8mp-debix-model-a # Polyhex Debix Model A (2GB) Board
> > 
> > If we've dropped the 2gb suffix from the compatible string, does that
> > mean we should drop it from the description too? I presume the
> > implication is that we can support different sizes from the same compat
> > string.
> 
> Argh! Yes, my bad - I'll fix that.

What that change,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> >>                 - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
> >>                 - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modules without Wi-Fi / BT
> >>                 - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules

-- 
Regards,

Laurent Pinchart
