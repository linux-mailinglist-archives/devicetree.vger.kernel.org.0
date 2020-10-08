Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8113287BCA
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 20:38:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728827AbgJHSiW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 14:38:22 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:40167 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728800AbgJHSiW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 14:38:22 -0400
Received: by mail-ot1-f65.google.com with SMTP id l4so6479195ota.7
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 11:38:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=FOsFPIn8s3y/ZaBEWv1CSXHWHRSqMxV9DWmd7lr5SX0=;
        b=pbSMhjnvSq8ZINX2A+iArZ8ZPI1N+WUWmdVJunphoDEuuradiBgGdC2OO3vztsJoAq
         bFuzHCz2vA8j+ImHONq2ogXhjnbtjNTzVDjotVISm+k1zb1dbbe7Diwb8aq5vfVtWMNu
         pUeJh5aOcwLN/YirZW9o4dV49+G7T/NWTz3EphMRqqy0rPGa/09wlQreof1HLLDTb1rO
         dlXTjPsYpUDCiX01eiBn0DzJO/t+wQZKj6b+dHYG7LXw1K04HOSehdllleXmDhLbyHJ5
         h29Hf0JVTqiMSQMAf9YAeZ2zl+oc5kHOETRPnhrfxQHr2OZuvKx2+U4U/YQdIjxCTTnM
         nwKA==
X-Gm-Message-State: AOAM532H6wmbEYubXj8sw3j/E1BGz9Z0/kC5+Y+wORMtm2m4CdSeaWTz
        GTXKRJyhJNulJh+cfMH6+A==
X-Google-Smtp-Source: ABdhPJzCz63Wl3NYH/sNUA74VfEc9iDzyhWxMOwGymni7JrpFJYqkF+PgINLYMSMDxKvgj5GaqX0sQ==
X-Received: by 2002:a05:6830:1c62:: with SMTP id s2mr1139785otg.177.1602182299648;
        Thu, 08 Oct 2020 11:38:19 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 68sm4613048otu.33.2020.10.08.11.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 11:38:18 -0700 (PDT)
Received: (nullmailer pid 2416641 invoked by uid 1000);
        Thu, 08 Oct 2020 18:38:18 -0000
Date:   Thu, 8 Oct 2020 13:38:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
Message-ID: <20201008183818.GB2395464@bogus>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201008102825.3812-4-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 08, 2020 at 12:28:25PM +0200, Ricardo Cañuelo wrote:
> Add missing properties that are currently used in the examples of
> subnode bindings and in many DTs.
> 
> Also updates the example in sound/google,cros-ec-codec.yaml to comply
> with the google,cros-ec binding.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
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

Doesn't moving this require a driver change? 

If you only need 1 codec, then just drop the unit-address.

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
> -- 
> 2.18.0
> 
