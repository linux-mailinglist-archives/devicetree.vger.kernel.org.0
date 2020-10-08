Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6348F287BC2
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 20:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729056AbgJHSct (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 14:32:49 -0400
Received: from mail-ot1-f65.google.com ([209.85.210.65]:46991 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728736AbgJHScr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 14:32:47 -0400
Received: by mail-ot1-f65.google.com with SMTP id m11so6435862otk.13
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 11:32:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=P7Wc7Pyu8f7j/NNWqMztrx9p+ecpGEvKl6XLaPGEcXY=;
        b=QkWaXiIwjHyW7WfqBdGiuXA8p2MBT1OxSWW68SBtBaCMGlD3hfaBvOi/ULh3bmY3uc
         tS+MXvNm2Qc5PW5Y+t3rlqReajawmbJnzGYLkmchUMjRqOMpR3QrCCpqVot/SEf9ztPS
         ZsvtYF1wV3SxbESGWqWKmj0xoNl7Wr5c57KLiX0o+Sf0fFBj5agp31DQFpjuwr+yvFY1
         8psYfRwJfi2Ee3y9FpAQFQ49kVGsbh/25SUYzGN5fubR99vQwVl2h1bwcjk/uSnM595O
         2goMd7Y8j6xfFvXg+R72R9omNmvm3Bw0LeRZ/MGcMlwO5V5DcXhkI+llpd8/Po3FUw1t
         1CHg==
X-Gm-Message-State: AOAM532ayx2xwP/C125UhWFAwZKVIpLLkUwZ9jEoerqdONHFryqEpCB0
        mUzK0Qqu4m/Q5zJl/loVkA==
X-Google-Smtp-Source: ABdhPJw+9HGyxe9fI4Zsg7DqFRsZl+2NyewCSR2r0CNjpR0wc0nkijNXL9ojTJP2GDx6DpRSNLhZuA==
X-Received: by 2002:a05:6830:138f:: with SMTP id d15mr5839815otq.342.1602181963712;
        Thu, 08 Oct 2020 11:32:43 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d10sm4488048otq.43.2020.10.08.11.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 11:32:42 -0700 (PDT)
Received: (nullmailer pid 2409094 invoked by uid 1000);
        Thu, 08 Oct 2020 18:32:41 -0000
Date:   Thu, 8 Oct 2020 13:32:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
Cc:     kernel@collabora.com, enric.balletbo@collabora.com,
        bleung@chromium.org, groeck@chromium.org, sjg@chromium.org,
        dianders@chromium.org, devicetree@vger.kernel.org,
        dmitry.torokhov@gmail.com
Subject: Re: [PATCH v2 2/3] dt-bindings: input: convert cros-ec-keyb to
 json-schema
Message-ID: <20201008183241.GA2395464@bogus>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-3-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201008102825.3812-3-ricardo.canuelo@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 08, 2020 at 12:28:24PM +0200, Ricardo Cañuelo wrote:
> Convert the google,cros-ec-keyb binding to YAML and add it as a property
> of google,cros-ec.yaml
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  .../bindings/input/cros-ec-keyb.txt           |  72 -----------
>  .../bindings/input/google,cros-ec-keyb.yaml   | 120 ++++++++++++++++++
>  .../bindings/mfd/google,cros-ec.yaml          |   3 +
>  3 files changed, 123 insertions(+), 72 deletions(-)
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
> index 000000000000..5286d9d8ac45
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
> @@ -0,0 +1,120 @@
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
> +  linux,keymap:
> +    $ref: '/schemas/types.yaml#/definitions/uint32-array'
> +    description: |
> +      An array of packed 1-cell entries containing the equivalent of row,
> +      column and linux key-code. The 32-bit big endian cell is packed as:
> +          row << 24 | column << 16 | key-code

These already have a type and description, don't repeat it here.

If no other constraints, then just 'linux,keymap: true'. Or you can use 
unevaluatedProperties instead of additionalProperties. The former will 
take the $ref to matrix-keymap.yaml into account.

> +
> +  keypad,num-rows:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: Number of row lines connected to the keypad controller.
> +
> +  keypad,num-columns:
> +    $ref: '/schemas/types.yaml#/definitions/uint32'
> +    description: Number of column lines connected to the keypad controller.
> +
> +  google,needs-ghost-filter:
> +    description:
> +      Enable a ghost filter for the matrix keyboard. This is recommended
> +      if the EC does not have its own logic or hardware for this.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - linux,keymap
> +  - keypad,num-rows
> +  - keypad,num-columns
> +
> +additionalProperties: false
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
> +
> +            keyboard-controller {
> +                compatible = "google,cros-ec-keyb";
> +                keypad,num-rows = <8>;
> +                keypad,num-columns = <13>;
> +                google,needs-ghost-filter;
> +                /*
> +                 * Keymap entries take the form of 0xRRCCKKKK where
> +                 * RR=Row CC=Column KKKK=Key Code
> +                 * The values below are for a US keyboard layout and
> +                 * are taken from the Linux driver. Note that the
> +                 * 102ND key is not used for US keyboards.
> +                 */
> +                linux,keymap = <
> +                    /* CAPSLCK F1         B          F10     */
> +                    0x0001003a 0x0002003b 0x00030030 0x00040044
> +                    /* N       =          R_ALT      ESC     */
> +                    0x00060031 0x0008000d 0x000a0064 0x01010001
> +                    /* F4      G          F7         H       */
> +                    0x0102003e 0x01030022 0x01040041 0x01060023
> +                    /* '       F9         BKSPACE    L_CTRL  */
> +                    0x01080028 0x01090043 0x010b000e 0x0200001d
> +                    /* TAB     F3         T          F6      */
> +                    0x0201000f 0x0202003d 0x02030014 0x02040040
> +                    /* ]       Y          102ND      [       */
> +                    0x0205001b 0x02060015 0x02070056 0x0208001a
> +                    /* F8      GRAVE      F2         5       */
> +                    0x02090042 0x03010029 0x0302003c 0x03030006
> +                    /* F5      6          -          \       */
> +                    0x0304003f 0x03060007 0x0308000c 0x030b002b
> +                    /* R_CTRL  A          D          F       */
> +                    0x04000061 0x0401001e 0x04020020 0x04030021
> +                    /* S       K          J          ;       */
> +                    0x0404001f 0x04050025 0x04060024 0x04080027
> +                    /* L       ENTER      Z          C       */
> +                    0x04090026 0x040b001c 0x0501002c 0x0502002e
> +                    /* V       X          ,          M       */
> +                    0x0503002f 0x0504002d 0x05050033 0x05060032
> +                    /* L_SHIFT /          .          SPACE   */
> +                    0x0507002a 0x05080035 0x05090034 0x050B0039
> +                    /* 1       3          4          2       */
> +                    0x06010002 0x06020004 0x06030005 0x06040003
> +                    /* 8       7          0          9       */
> +                    0x06050009 0x06060008 0x0608000b 0x0609000a
> +                    /* L_ALT   DOWN       RIGHT      Q       */
> +                    0x060a0038 0x060b006c 0x060c006a 0x07010010
> +                    /* E       R          W          I       */
> +                    0x07020012 0x07030013 0x07040011 0x07050017
> +                    /* U       R_SHIFT    P          O       */
> +                    0x07060016 0x07070036 0x07080019 0x07090018
> +                    /* UP      LEFT    */
> +                    0x070b0067 0x070c0069>;
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index c45cf30ea3aa..351bfb6d37ba 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -71,6 +71,9 @@ properties:
>    wakeup-source:
>      description: Button can wake-up the system.
>  
> +  keyboard-controller:
> +    $ref: "/schemas/input/google,cros-ec-keyb.yaml#"
> +
>  patternProperties:
>    "^i2c-tunnel[0-9]*$":
>      type: object
> -- 
> 2.18.0
> 
