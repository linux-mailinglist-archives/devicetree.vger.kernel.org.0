Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22E5C4D2EB4
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 13:07:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232343AbiCIMIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 07:08:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232744AbiCIMIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 07:08:05 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C638117225D
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 04:07:06 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AAD71688;
        Wed,  9 Mar 2022 04:07:06 -0800 (PST)
Received: from [10.57.41.254] (unknown [10.57.41.254])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A75E3FA4D;
        Wed,  9 Mar 2022 04:07:04 -0800 (PST)
Message-ID: <7aa79c15-a758-1e9d-2e53-6dd03d4611b7@arm.com>
Date:   Wed, 9 Mar 2022 12:06:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v7 11/24] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Content-Language: en-GB
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-12-s.hauer@pengutronix.de>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220225075150.2729401-12-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-25 07:51, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. The purpose of that clock is not clear. It is
> named "hclk" in the downstream driver, so use the same name.

Further to the clarification of the underlying purpose on the other 
thread, I suggest we call the new clock "niu" and describe it as 
something like "Additional clock required to ungate the bus interface on 
certain SoCs".

Cheers,
Robin.

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
> 
> Notes:
>      Changes since v4:
>      - Add Robs Ack
> 
>   .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 38ebb69830287..67a76f51637a7 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -44,12 +44,13 @@ properties:
>       items:
>         - {}
>         - {}
> -      # The next three clocks are all optional, but shall be specified in this
> +      # The next four clocks are all optional, but shall be specified in this
>         # order when present.
>         - description: The HDMI CEC controller main clock
>         - description: Power for GRF IO
>         - description: External clock for some HDMI PHY (old clock name, deprecated)
>         - description: External clock for some HDMI PHY (new name)
> +      - description: hclk
>   
>     clock-names:
>       minItems: 2
> @@ -61,13 +62,17 @@ properties:
>             - grf
>             - vpll
>             - ref
> +          - hclk
>         - enum:
>             - grf
>             - vpll
>             - ref
> +          - hclk
>         - enum:
>             - vpll
>             - ref
> +          - hclk
> +      - const: hclk
>   
>     ddc-i2c-bus:
>       $ref: /schemas/types.yaml#/definitions/phandle
