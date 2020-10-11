Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4134E28A71C
	for <lists+devicetree@lfdr.de>; Sun, 11 Oct 2020 13:17:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729802AbgJKLRV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Oct 2020 07:17:21 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:60298 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgJKLRU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Oct 2020 07:17:20 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id E6EA31F44274
Subject: Re: [PATCH v2 1/3] dt-bindings: i2c: convert i2c-cros-ec-tunnel to
 json-schema
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
        robh@kernel.org
Cc:     kernel@collabora.com, bleung@chromium.org, groeck@chromium.org,
        sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org, dmitry.torokhov@gmail.com
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-2-ricardo.canuelo@collabora.com>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <e8111e8b-c599-7ce2-6148-80a9aedb58c9@collabora.com>
Date:   Sun, 11 Oct 2020 13:17:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201008102825.3812-2-ricardo.canuelo@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ricardo,

Thank you for the patches.

On 8/10/20 12:28, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-i2c-tunnel binding to YAML and add it as a
> property of google,cros-ec.yaml.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>

Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
  Enric

> ---
>  .../i2c/google,cros-ec-i2c-tunnel.yaml        | 63 +++++++++++++++++++
>  .../bindings/i2c/i2c-cros-ec-tunnel.txt       | 39 ------------
>  .../bindings/mfd/google,cros-ec.yaml          |  5 ++
>  3 files changed, 68 insertions(+), 39 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
> 
> diff --git a/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml b/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
> new file mode 100644
> index 000000000000..f83ff67596e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/google,cros-ec-i2c-tunnel.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/i2c/google,cros-ec-i2c-tunnel.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I2C bus that tunnels through the ChromeOS EC (cros-ec)
> +
> +maintainers:
> +  - Doug Anderson <dianders@chromium.org>
> +  - Benson Leung <bleung@chromium.org>
> +  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
> +
> +description: |
> +  On some ChromeOS board designs we've got a connection to the EC
> +  (embedded controller) but no direct connection to some devices on the
> +  other side of the EC (like a battery and PMIC).  To get access to
> +  those devices we need to tunnel our i2c commands through the EC.
> +
> +  The node for this device should be under a cros-ec node like
> +  google,cros-ec-spi or google,cros-ec-i2c.
> +
> +properties:
> +  compatible:
> +    const: google,cros-ec-i2c-tunnel
> +
> +  google,remote-bus:
> +    description: The EC bus we'd like to talk to.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - google,remote-bus
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        cros-ec@0 {
> +            compatible = "google,cros-ec-spi";
> +            reg = <0>;
> +            spi-max-frequency = <5000000>;
> +
> +            i2c-tunnel {
> +                compatible = "google,cros-ec-i2c-tunnel";
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                google,remote-bus = <0>;
> +
> +                battery: sbs-battery@b {
> +                    compatible = "sbs,sbs-battery";
> +                    reg = <0xb>;
> +                    sbs,poll-retry-count = <1>;
> +                };
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt b/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
> deleted file mode 100644
> index 898f030eba62..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-cros-ec-tunnel.txt
> +++ /dev/null
> @@ -1,39 +0,0 @@
> -I2C bus that tunnels through the ChromeOS EC (cros-ec)
> -======================================================
> -On some ChromeOS board designs we've got a connection to the EC (embedded
> -controller) but no direct connection to some devices on the other side of
> -the EC (like a battery and PMIC).  To get access to those devices we need
> -to tunnel our i2c commands through the EC.
> -
> -The node for this device should be under a cros-ec node like google,cros-ec-spi
> -or google,cros-ec-i2c.
> -
> -
> -Required properties:
> -- compatible: google,cros-ec-i2c-tunnel
> -- google,remote-bus: The EC bus we'd like to talk to.
> -
> -Optional child nodes:
> -- One node per I2C device connected to the tunnelled I2C bus.
> -
> -
> -Example:
> -	cros-ec@0 {
> -		compatible = "google,cros-ec-spi";
> -
> -		...
> -
> -		i2c-tunnel {
> -			compatible = "google,cros-ec-i2c-tunnel";
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			google,remote-bus = <0>;
> -
> -			battery: sbs-battery@b {
> -				compatible = "sbs,sbs-battery";
> -				reg = <0xb>;
> -				sbs,poll-retry-count = <1>;
> -			};
> -		};
> -	}
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index f49c0d5d31ad..c45cf30ea3aa 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -71,6 +71,11 @@ properties:
>    wakeup-source:
>      description: Button can wake-up the system.
>  
> +patternProperties:
> +  "^i2c-tunnel[0-9]*$":
> +    type: object
> +    $ref: "/schemas/i2c/google,cros-ec-i2c-tunnel.yaml#"
> +
>  required:
>    - compatible
>  
> 
