Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4E8B7984D9
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 11:32:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237572AbjIHJcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 05:32:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234150AbjIHJcn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 05:32:43 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D9FA311B
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 02:32:39 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70E84D75;
        Fri,  8 Sep 2023 02:33:17 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A8733F64C;
        Fri,  8 Sep 2023 02:32:36 -0700 (PDT)
Date:   Fri, 8 Sep 2023 10:32:34 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        airlied@gmail.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH V4 4/8] dt-bindings: usb: Add V3s compatible string for
 EHCI
Message-ID: <20230908103234.6a78275c@donnerap.manchester.arm.com>
In-Reply-To: <20230828181941.1609894-5-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
        <20230828181941.1609894-5-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Aug 2023 13:19:37 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Allwinner V3s uses a generic EHCI and OHCI for USB host
> communication and the MUSB controller for OTG mode. Add compatible
> strings for the EHCI node.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

That looks alright, but you can squash this and the next patch into one -
but only in case you need to re-send anyway.

Cheers,
Andre

> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> index b956bb5fada7..f37191f21501 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> @@ -38,6 +38,7 @@ properties:
>                - allwinner,sun8i-a83t-ehci
>                - allwinner,sun8i-h3-ehci
>                - allwinner,sun8i-r40-ehci
> +              - allwinner,sun8i-v3s-ehci
>                - allwinner,sun9i-a80-ehci
>                - allwinner,sun20i-d1-ehci
>                - aspeed,ast2400-ehci

