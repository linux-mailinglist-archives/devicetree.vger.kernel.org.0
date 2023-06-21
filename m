Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6784C738213
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 13:12:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbjFUJz0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 05:55:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjFUJz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 05:55:26 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C096D9B
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 02:55:24 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 627E41063;
        Wed, 21 Jun 2023 02:56:08 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFC193F663;
        Wed, 21 Jun 2023 02:55:22 -0700 (PDT)
Date:   Wed, 21 Jun 2023 10:55:20 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, uwu@icenowy.me, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] dt-binding: arm: sunxi: add Anbernic RG-Nano
Message-ID: <20230621105520.6272fa1f@donnerap.cambridge.arm.com>
In-Reply-To: <20230620200022.295674-3-macroalpha82@gmail.com>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
        <20230620200022.295674-3-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Jun 2023 15:00:21 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG-Nano is a portable handheld console from Anbernic which
> uses the Allwinner V3s SoC.
> 
> Add the board to the list of known board strings.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Apart from that nit-pick about the subject prefix that Krzysztof
mentioned, this looks alright:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 013821f4a7b8..a886f8390857 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -56,6 +56,11 @@ properties:
>            - const: amarula,a64-relic
>            - const: allwinner,sun50i-a64
>  
> +      - description: Anbernic RG-Nano
> +        items:
> +          - const: anbernic,rg-nano
> +          - const: allwinner,sun8i-v3s
> +
>        - description: Auxtek T003 A10s HDMI TV Stick
>          items:
>            - const: allwinner,auxtek-t003

