Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 353574F2FB9
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 14:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244534AbiDEJyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 05:54:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344970AbiDEJWH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 05:22:07 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82E7F27FFC
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 02:08:54 -0700 (PDT)
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 29311192B;
        Tue,  5 Apr 2022 11:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1649149731;
        bh=3tXgQFcMnjcqCWr23dDfaGZcZKh9OesZ+8K844MOx88=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JTJlAAmORGQeBLXkNu2csIu/mSpWdrVRw9H7sXYwLvhtv7ByOefUeSdOOiuJu8prg
         KNvIUKq9pi5eCFo2wJp9gxLbN7O5PsLPQzqV0kgb6x2mXOHFarIDo0C+fPjQBhj07c
         NEGHTl+/eqkKgp+zAh/L8hfhJSU8CR78hIJ046wE=
Date:   Tue, 5 Apr 2022 12:08:47 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
Message-ID: <YkwHH6RXZ3jZ56Cz@pendragon.ideasonboard.com>
References: <20220404192105.12547-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220404192105.12547-1-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Mon, Apr 04, 2022 at 09:21:05PM +0200, Marek Vasut wrote:
> Make the width-mm/height-mm panel properties mandatory
> to correctly report the panel dimensions to the OS.
> 
> Fixes: 2f3468b82db97 ("dt-bindings: display: add bindings for MIPI DBI compatible SPI panels")
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Noralf Trønnes <noralf@tronnes.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> index f29789994b180..c2df8d28aaf5f 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> @@ -83,6 +83,8 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - width-mm
> +  - height-mm
>    - panel-timing
>  
>  unevaluatedProperties: false

-- 
Regards,

Laurent Pinchart
