Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F48048F77F
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 16:24:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbiAOPYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 10:24:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231882AbiAOPY3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 10:24:29 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDAE9C061574
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 07:24:28 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id s6-20020a7bc386000000b0034a89445406so9395771wmj.2
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 07:24:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=MIwf8yvIjurNq+8ZmooEUhTCOweGHlhBW+ycD+r+W+M=;
        b=KArD1aJWDBitPrfhrGl4AEVaAm+nWOd47OEZEPcEpS39uG1yWZVVQRwcaoX3UpGUXD
         UVt6S6/vh7k1EwzC0jNltoI5c9RaOZH+Cj4pzE2S4FFcpfDY7XxmoItLgchRmv3XW5NU
         1ZWZLIgogY6z3NWLHpRbk0+4xuRNIAizCFmJPghNxsgge5hSnCd4mSpwFiYBYNI2axi0
         9mjphUR6mqLDnpakeIp+Daay/CgFe9pwv92kJJ5CJZqhcmd/DgMN00iCJDoZk8xMjM5g
         T2M42yUSuv4GO3R6K5zChSyQeidnwyPU1SakWOKkVAACcO3jc0ttUf3tvYfz8gVHBzvF
         R8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=MIwf8yvIjurNq+8ZmooEUhTCOweGHlhBW+ycD+r+W+M=;
        b=LT5Qa4H/HeN6YJsCrf6ATb4ix2DyUam+UtK5TyByx0YWuw1fztJfPQZTC6AeIfnbeR
         jIid6c51zrv1SBlVXz/ztMJlvyirbBkFb6KxH/9aDsCUn/KWes8XQept078ajz+fLVN6
         4TixALtynvLYHXyMaYJYz/rb3lvZdoyHo1JyaLd46vY4hez+bDKa+ALdjx7JarWp0flt
         IzkNepEMarJgQ8Ib4+UdGfdHcPS/ri1+KKLCqJmlzA//nFAPcXFMOrTooPyBVDecIuiP
         JmsPURGV7SdlctAXKuYtERPeMakKsiU3lYBlHqB/a1InhTgKaCHKK72HP9iQWZl0w1to
         er+g==
X-Gm-Message-State: AOAM530RbLWPdfXcmi0H/z3MWBLlasOV8L2rYjlsw3dGWG7dexRd6Kl/
        9wcTkjBtQXgrkwnJc8LvOmL4UQ==
X-Google-Smtp-Source: ABdhPJwyC+uOoPCVKfA4kOhT8hoHk7ogCsaJnwifo7tWDptOoKEx/vcPs+iXlLO8CnRHn7I84pJbfg==
X-Received: by 2002:a05:600c:5108:: with SMTP id o8mr4437667wms.190.1642260267237;
        Sat, 15 Jan 2022 07:24:27 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id b6sm9322411wri.56.2022.01.15.07.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jan 2022 07:24:26 -0800 (PST)
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
 <20220115093557.30498-2-alexander.stein@mailbox.org>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/2] ASoC: meson: axg-fifo: convert Amlogic FIFO
 controller to yaml
Date:   Sat, 15 Jan 2022 16:16:41 +0100
In-reply-to: <20220115093557.30498-2-alexander.stein@mailbox.org>
Message-ID: <1jee59auok.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> wrote:

> Convert Amlogic FIFO controller documentation to yaml format.
>
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Things to note:
> First of, Jerome, sorry for adding you as maintainer, but
> 1) it's mandatory
> 2) your are the (only) author of amlogic,axg-fifo.txt
>
> Please add your Signed-off-by if that is okay with you.
>
> License is mandated by checkpath, not my choice.
>
> I'm not so sure about the compatible check. Essentially it is either
> * 'amlogic,axg-frddr' OR
> * 'amlogic,g12a-frddr' + 'amlogic,axg-frddr'
>   (or 'sm1' instead of 'g12a')
>
> Same goes for *-toddr. Is this schema correct in that regard? At least I
> got no warnings on existing device trees.
>

There has already been a submission of this.
It should answer your questions. You've also missed some
constraints regarding resets. Please check:

https://patchwork.kernel.org/project/linux-amlogic/list/?series=246453&state=%2A&archive=both


>  .../bindings/sound/amlogic,axg-fifo.txt       | 34 -------
>  .../bindings/sound/amlogic,axg-fifo.yaml      | 97 +++++++++++++++++++
>  2 files changed, 97 insertions(+), 34 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
>
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
> deleted file mode 100644
> index fa4545ed81ca..000000000000
> --- a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -* Amlogic Audio FIFO controllers
> -
> -Required properties:
> -- compatible: 'amlogic,axg-toddr' or
> -	      'amlogic,axg-toddr' or
> -	      'amlogic,g12a-frddr' or
> -	      'amlogic,g12a-toddr' or
> -	      'amlogic,sm1-frddr' or
> -	      'amlogic,sm1-toddr'
> -- reg: physical base address of the controller and length of memory
> -       mapped region.
> -- interrupts: interrupt specifier for the fifo.
> -- clocks: phandle to the fifo peripheral clock provided by the audio
> -	  clock controller.
> -- resets: list of reset phandle, one for each entry reset-names.
> -- reset-names: should contain the following:
> -  * "arb" : memory ARB line (required)
> -  * "rst" : dedicated device reset line (optional)
> -- #sound-dai-cells: must be 0.
> -- amlogic,fifo-depth: The size of the controller's fifo in bytes. This
> -  		      is useful for determining certain configuration such
> -		      as the flush threshold of the fifo
> -
> -Example of FRDDR A on the A113 SoC:
> -
> -frddr_a: audio-controller@1c0 {
> -	compatible = "amlogic,axg-frddr";
> -	reg = <0x0 0x1c0 0x0 0x1c>;
> -	#sound-dai-cells = <0>;
> -	interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
> -	clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
> -	resets = <&arb AXG_ARB_FRDDR_A>;
> -	fifo-depth = <512>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
> new file mode 100644
> index 000000000000..54bc073591f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/amlogic,axg-fifo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic Audio FIFO controllers
> +
> +maintainers:
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +
> +allOf:
> +  - $ref: name-prefix.yaml#
> +
> +properties:
> +  $nodename:
> +    pattern: "^audio-controller@.*"
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - amlogic,g12a-frddr
> +              - amlogic,sm1-frddr
> +          - const: amlogic,axg-frddr
> +      - const: amlogic,axg-frddr
> +      - items:
> +          - enum:
> +              - amlogic,g12a-toddr
> +              - amlogic,sm1-toddr
> +          - const: amlogic,axg-toddr
> +      - const: amlogic,axg-toddr
> +
> +  reg:
> +    items:
> +      - description: physical base address of the controller
> +
> +  interrupts:
> +    items:
> +      - description: FIFO interrupt
> +
> +  clocks:
> +    items:
> +      - description: FIFO peripheral clock provided by the audio clock controller
> +
> +  resets:
> +    minItems: 1
> +    items:
> +      - description: memory ARB line
> +      - description: optional device reset line
> +
> +  reset-names:
> +    minItems: 1
> +    items:
> +      - const: arb
> +      - const: rst
> +
> +  amlogic,fifo-depth:
> +    description: >
> +      The size of the controller's fifo in bytes. This
> +      is useful for determining certain configuration such
> +      as the flush threshold of the fifo
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  sound-name-prefix: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - resets
> +  - reset-names
> +  - '#sound-dai-cells'
> +  - amlogic,fifo-depth
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/axg-audio-clkc.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
> +
> +    frddr_a: audio-controller@1c0 {
> +        compatible = "amlogic,axg-frddr";
> +        reg = <0x1c0 0x1c>;
> +        #sound-dai-cells = <0>;
> +        interrupts = <88 IRQ_TYPE_EDGE_RISING>;
> +        clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
> +        resets = <&arb AXG_ARB_FRDDR_A>;
> +        reset-names = "arb";
> +        amlogic,fifo-depth = <512>;
> +    };

