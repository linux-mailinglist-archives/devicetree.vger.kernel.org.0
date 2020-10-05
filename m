Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED24F2832B4
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 11:04:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgJEJEA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 05:04:00 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:46668 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgJEJD7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 05:03:59 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 28742298618
Subject: Re: [PATCH 2/3] dt-bindings: input: convert cros-ec-keyb to
 json-schema
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
        robh@kernel.org
Cc:     kernel@collabora.com, bleung@chromium.org, groeck@chromium.org,
        sjg@chromium.org, dianders@chromium.org,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
References: <20201005071403.17450-1-ricardo.canuelo@collabora.com>
 <20201005071403.17450-3-ricardo.canuelo@collabora.com>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <3f30a00e-8b1c-4ac7-c5ed-8f23c7af9af0@collabora.com>
Date:   Mon, 5 Oct 2020 11:03:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201005071403.17450-3-ricardo.canuelo@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ricardo,

Thank you for your on this. Some few comments below.

Note that there was already an attempt for this here [1]. So I think you should
address those comments too.

cc'ing Dmitry as he is the input maintainer.

[1] https://patchwork.kernel.org/patch/11350059/

On 5/10/20 9:14, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-keyb binding to YAML.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/input/cros-ec-keyb.txt           | 72 ---------------
>  .../bindings/input/google,cros-ec-keyb.yaml   | 92 +++++++++++++++++++
>  2 files changed, 92 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/cros-ec-keyb.txt
>  create mode 100644 Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/cros-ec-keyb.txt b/Documentation/devicetree/bindings/input/cros-ec-keyb.txt
> deleted file mode 100644
> index 0f6355ce39b5..000000000000
> --- a/Documentation/devicetree/bindings/input/cros-ec-keyb.txt
> +++ /dev/null
> @@ -1,72 +0,0 @@
> -ChromeOS EC Keyboard
> -
> -Google's ChromeOS EC Keyboard is a simple matrix keyboard implemented on
> -a separate EC (Embedded Controller) device. It provides a message for reading
> -key scans from the EC. These are then converted into keycodes for processing
> -by the kernel.
> -
> -This binding is based on matrix-keymap.txt and extends/modifies it as follows:
> -
> -Required properties:
> -- compatible: "google,cros-ec-keyb"
> -
> -Optional properties:
> -- google,needs-ghost-filter: True to enable a ghost filter for the matrix
> -keyboard. This is recommended if the EC does not have its own logic or
> -hardware for this.
> -
> -
> -Example:
> -
> -cros-ec-keyb {
> -	compatible = "google,cros-ec-keyb";
> -	keypad,num-rows = <8>;
> -	keypad,num-columns = <13>;
> -	google,needs-ghost-filter;
> -	/*
> -	 * Keymap entries take the form of 0xRRCCKKKK where
> -	 * RR=Row CC=Column KKKK=Key Code
> -	 * The values below are for a US keyboard layout and
> -	 * are taken from the Linux driver. Note that the
> -	 * 102ND key is not used for US keyboards.
> -	 */
> -	linux,keymap = <
> -		/* CAPSLCK F1         B          F10     */
> -		0x0001003a 0x0002003b 0x00030030 0x00040044
> -		/* N       =          R_ALT      ESC     */
> -		0x00060031 0x0008000d 0x000a0064 0x01010001
> -		/* F4      G          F7         H       */
> -		0x0102003e 0x01030022 0x01040041 0x01060023
> -		/* '       F9         BKSPACE    L_CTRL  */
> -		0x01080028 0x01090043 0x010b000e 0x0200001d
> -		/* TAB     F3         T          F6      */
> -		0x0201000f 0x0202003d 0x02030014 0x02040040
> -		/* ]       Y          102ND      [       */
> -		0x0205001b 0x02060015 0x02070056 0x0208001a
> -		/* F8      GRAVE      F2         5       */
> -		0x02090042 0x03010029 0x0302003c 0x03030006
> -		/* F5      6          -          \       */
> -		0x0304003f 0x03060007 0x0308000c 0x030b002b
> -		/* R_CTRL  A          D          F       */
> -		0x04000061 0x0401001e 0x04020020 0x04030021
> -		/* S       K          J          ;       */
> -		0x0404001f 0x04050025 0x04060024 0x04080027
> -		/* L       ENTER      Z          C       */
> -		0x04090026 0x040b001c 0x0501002c 0x0502002e
> -		/* V       X          ,          M       */
> -		0x0503002f 0x0504002d 0x05050033 0x05060032
> -		/* L_SHIFT /          .          SPACE   */
> -		0x0507002a 0x05080035 0x05090034 0x050B0039
> -		/* 1       3          4          2       */
> -		0x06010002 0x06020004 0x06030005 0x06040003
> -		/* 8       7          0          9       */
> -		0x06050009 0x06060008 0x0608000b 0x0609000a
> -		/* L_ALT   DOWN       RIGHT      Q       */
> -		0x060a0038 0x060b006c 0x060c006a 0x07010010
> -		/* E       R          W          I       */
> -		0x07020012 0x07030013 0x07040011 0x07050017
> -		/* U       R_SHIFT    P          O       */
> -		0x07060016 0x07070036 0x07080019 0x07090018
> -		/* UP      LEFT    */
> -		0x070b0067 0x070c0069>;
> -};
> diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> new file mode 100644
> index 000000000000..384df2fc21f8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/input/google,cros-ec-keyb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ChromeOS EC Keyboard
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +  - Benson Leung <bleung@chromium.org>
> +  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
> +
> +description: |
> +  Google's ChromeOS EC Keyboard is a simple matrix keyboard
> +  implemented on a separate EC (Embedded Controller) device. It provides
> +  a message for reading key scans from the EC. These are then converted
> +  into keycodes for processing by the kernel.
> +
> +allOf:
> +  - $ref: "/schemas/input/matrix-keymap.yaml#"
> +
> +properties:
> +  compatible:
> +    const: google,cros-ec-keyb
> +
> +  google,needs-ghost-filter:
> +    description:
> +      Enable a ghost filter for the matrix keyboard. This is recommended
> +      if the EC does not have its own logic or hardware for this.
> +    type: boolean
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +

Not sure about unevaluatedProperties does here, I might miss something. But,
shouldn't you add `additionalProperties: false` instead?


> +examples:
> +  - |
> +    cros-ec-keyb {

The keyboard controller is always a subnode inside the cros_ec, please use a
complete example.

Thanks,
 Enric

> +        compatible = "google,cros-ec-keyb";
> +        keypad,num-rows = <8>;
> +        keypad,num-columns = <13>;
> +        google,needs-ghost-filter;
> +        /*
> +         * Keymap entries take the form of 0xRRCCKKKK where
> +         * RR=Row CC=Column KKKK=Key Code
> +         * The values below are for a US keyboard layout and
> +         * are taken from the Linux driver. Note that the
> +         * 102ND key is not used for US keyboards.
> +         */
> +        linux,keymap = <
> +            /* CAPSLCK F1         B          F10     */
> +            0x0001003a 0x0002003b 0x00030030 0x00040044
> +            /* N       =          R_ALT      ESC     */
> +            0x00060031 0x0008000d 0x000a0064 0x01010001
> +            /* F4      G          F7         H       */
> +            0x0102003e 0x01030022 0x01040041 0x01060023
> +            /* '       F9         BKSPACE    L_CTRL  */
> +            0x01080028 0x01090043 0x010b000e 0x0200001d
> +            /* TAB     F3         T          F6      */
> +            0x0201000f 0x0202003d 0x02030014 0x02040040
> +            /* ]       Y          102ND      [       */
> +            0x0205001b 0x02060015 0x02070056 0x0208001a
> +            /* F8      GRAVE      F2         5       */
> +            0x02090042 0x03010029 0x0302003c 0x03030006
> +            /* F5      6          -          \       */
> +            0x0304003f 0x03060007 0x0308000c 0x030b002b
> +            /* R_CTRL  A          D          F       */
> +            0x04000061 0x0401001e 0x04020020 0x04030021
> +            /* S       K          J          ;       */
> +            0x0404001f 0x04050025 0x04060024 0x04080027
> +            /* L       ENTER      Z          C       */
> +            0x04090026 0x040b001c 0x0501002c 0x0502002e
> +            /* V       X          ,          M       */
> +            0x0503002f 0x0504002d 0x05050033 0x05060032
> +            /* L_SHIFT /          .          SPACE   */
> +            0x0507002a 0x05080035 0x05090034 0x050B0039
> +            /* 1       3          4          2       */
> +            0x06010002 0x06020004 0x06030005 0x06040003
> +            /* 8       7          0          9       */
> +            0x06050009 0x06060008 0x0608000b 0x0609000a
> +            /* L_ALT   DOWN       RIGHT      Q       */
> +            0x060a0038 0x060b006c 0x060c006a 0x07010010
> +            /* E       R          W          I       */
> +            0x07020012 0x07030013 0x07040011 0x07050017
> +            /* U       R_SHIFT    P          O       */
> +            0x07060016 0x07070036 0x07080019 0x07090018
> +            /* UP      LEFT    */
> +            0x070b0067 0x070c0069>;
> +    };
> 
