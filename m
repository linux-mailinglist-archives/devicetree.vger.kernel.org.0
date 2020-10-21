Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0F7294FAE
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 17:14:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2501941AbgJUPOj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 11:14:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2501892AbgJUPOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 11:14:38 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B763DC0613CE
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 08:14:38 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 1BCCA1F45603
Subject: Re: [PATCH v3 3/3] mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
        robh@kernel.org
Cc:     kernel@collabora.com, bleung@chromium.org, groeck@chromium.org,
        sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
        cychiang@chromium.org, tzungbi@google.com
References: <20201021114308.25485-1-ricardo.canuelo@collabora.com>
 <20201021114308.25485-4-ricardo.canuelo@collabora.com>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <bdc4e20a-e767-5cb4-0d03-b0ecfcd96b4e@collabora.com>
Date:   Wed, 21 Oct 2020 17:14:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201021114308.25485-4-ricardo.canuelo@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ricardo,

On 21/10/20 13:43, Ricardo Cañuelo wrote:
> Add missing properties that are currently used in the examples of
> subnode bindings and in many DTs.
> 
> Also updates the example in sound/google,cros-ec-codec.yaml to comply
> with the google,cros-ec binding.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

> ---
>  .../bindings/mfd/google,cros-ec.yaml          | 42 +++++++++++++++++++
>  .../bindings/sound/google,cros-ec-codec.yaml  | 26 +++++++-----
>  2 files changed, 58 insertions(+), 10 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index 351bfb6d37ba..48929bb07d98 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -59,6 +59,14 @@ properties:
>        whether this nvram is present or not.
>      type: boolean
>  
> +  mtk,rpmsg-name:
> +    description:
> +      Must be defined if the cros-ec is a rpmsg device for a Mediatek
> +      ARM Cortex M4 Co-processor. Contains the name pf the rpmsg
> +      device. Used to match the subnode to the rpmsg device announced by
> +      the SCP.
> +    $ref: "/schemas/types.yaml#/definitions/string"
> +
>    spi-max-frequency:
>      description: Maximum SPI frequency of the device in Hz.
>  
> @@ -71,14 +79,48 @@ properties:
>    wakeup-source:
>      description: Button can wake-up the system.
>  
> +  typec:
> +    $ref: "/schemas/chrome/google,cros-ec-typec.yaml#"
> +
> +  ec-pwm:
> +    $ref: "/schemas/pwm/google,cros-ec-pwm.yaml#"
> +
>    keyboard-controller:
>      $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
>  
> +  codecs:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      '#address-cells':
> +        const: 2
> +
> +      '#size-cells':
> +        const: 1
> +
> +    patternProperties:
> +      "^ec-codec@[a-f0-9]+$":
> +        type: object
> +        $ref: "/schemas/sound/google,cros-ec-codec.yaml#"
> +
> +    required:
> +      - "#address-cells"
> +      - "#size-cells"
> +
>  patternProperties:
>    "^i2c-tunnel[0-9]*$":
>      type: object
>      $ref: "/schemas/i2c/google,cros-ec-i2c-tunnel.yaml#"
>  
> +  "^regulator@[0-9]+$":
> +    type: object
> +    $ref: "/schemas/regulator/google,cros-ec-regulator.yaml#"
> +
> +  "^extcon[0-9]*$":
> +    type: object
> +    $ref: "/schemas/extcon/extcon-usbc-cros-ec.yaml#"
> +
>  required:
>    - compatible
>  
> diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.yaml b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.yaml
> index c84e656afb0a..acfb9db021dc 100644
> --- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.yaml
> +++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.yaml
> @@ -11,9 +11,10 @@ maintainers:
>  
>  description: |
>    Google's ChromeOS EC codec is a digital mic codec provided by the
> -  Embedded Controller (EC) and is controlled via a host-command interface.
> -  An EC codec node should only be found as a sub-node of the EC node (see
> -  Documentation/devicetree/bindings/mfd/cros-ec.txt).
> +  Embedded Controller (EC) and is controlled via a host-command
> +  interface.  An EC codec node should only be found inside the "codecs"
> +  subnode of a cros-ec node.
> +  (see Documentation/devicetree/bindings/mfd/google,cros-ec.yaml).
>  
>  properties:
>    compatible:
> @@ -54,14 +55,19 @@ examples:
>          #size-cells = <0>;
>          cros-ec@0 {
>              compatible = "google,cros-ec-spi";
> -            #address-cells = <2>;
> -            #size-cells = <1>;
>              reg = <0>;
> -            cros_ec_codec: ec-codec@10500000 {
> -                compatible = "google,cros-ec-codec";
> -                #sound-dai-cells = <1>;
> -                reg = <0x0 0x10500000 0x80000>;
> -                memory-region = <&reserved_mem>;
> +
> +            codecs {
> +                #address-cells = <2>;
> +                #size-cells = <1>;
> +
> +                cros_ec_codec: ec-codec@10500000 {
> +                    compatible = "google,cros-ec-codec";
> +                    #sound-dai-cells = <1>;
> +                    reg = <0x0 0x10500000 0x80000>;
> +                    memory-region = <&reserved_mem>;
> +                };
> +
>              };
>          };
>      };
> 
