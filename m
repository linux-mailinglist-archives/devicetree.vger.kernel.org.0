Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50B5728331A
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgJEJXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725914AbgJEJXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:23:21 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F5FC0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 02:23:20 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 58A80297463
Subject: Re: [PATCH 3/3] dt-bindings: mfd: google,cros-ec: add missing
 properties
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
        robh@kernel.org
Cc:     kernel@collabora.com, bleung@chromium.org, groeck@chromium.org,
        sjg@chromium.org, dianders@chromium.org, devicetree@vger.kernel.org
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-4-ricardo.canuelo@collabora.com>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <a6132b1e-7613-35c2-f450-e3ca300ab49b@collabora.com>
Date:   Mon, 5 Oct 2020 11:23:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201005071403.17450-4-ricardo.canuelo@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ricardo,

Thank you to work on this.

On 5/10/20 9:14, Ricardo Cañuelo wrote:
> Add missing properties that are currently used in the examples of
> subnode bindings and in many DTs.
> This fixes all current dt_binding_check and dtbs_check warnings related
> to this binding.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/mfd/google,cros-ec.yaml          | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index f49c0d5d31ad..c2dc05cdef9f 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -59,18 +59,58 @@ properties:
>        whether this nvram is present or not.
>      type: boolean
>  
> +  mtk,rpmsg-name:

AFAIK mtk is not a valid vendor prefix (vendor-prefixes.yaml), so I am wondering
if this should be mediatek,rpmsg-name. I see this being used in
drivers/rpmsg/mtk_rpmsg.c file, but there isn't a devitree using it. So maybe
we're on time to fix it.

Thanks,
 Enric

> +    description:
> +      Must be defined if the cros-ec is a rpmsg device for a Mediatek
> +      ARM Cortex M4 Co-processor. Contains the name pf the rpmsg
> +      device. Used to match the subnode to the rpmsg device announced by
> +      the SCP.
> +    $ref: /schemas/types.yaml#/definitions/string
> +
>    spi-max-frequency:
>      description: Maximum SPI frequency of the device in Hz.
>  
>    reg:
>      maxItems: 1
>  
> +  '#address-cells':
> +    enum: [1, 2]
> +
> +  '#size-cells':
> +    enum: [0, 1]
> +
>    interrupts:
>      maxItems: 1
>  
>    wakeup-source:
>      description: Button can wake-up the system.
>  
> +  typec:
> +    $ref: "/schemas/chrome/google,cros-ec-typec.yaml#"
> +
> +  ec-pwm:
> +    $ref: "/schemas/pwm/google,cros-ec-pwm.yaml#"
> +
> +  keyboard-controller:
> +    $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
> +
> +patternProperties:
> +  "^regulator@[a-f0-9]+$":
> +    type: object
> +    $ref: "/schemas/regulator/google,cros-ec-regulator.yaml#"
> +
> +  "^extcon[0-9]*$":
> +    type: object
> +    $ref: "/schemas/extcon/extcon-usbc-cros-ec.yaml#"
> +
> +  "^ec-codec@[a-f0-9]+$":
> +    type: object
> +    $ref: "/schemas/sound/google,cros-ec-codec.yaml#"
> +
> +  "^i2c-tunnel[0-9]*$":
> +    type: object
> +    $ref: "/schemas/i2c/google,cros-ec-i2c-tunnel.yaml#"
> +
>  required:
>    - compatible
>  
> 
