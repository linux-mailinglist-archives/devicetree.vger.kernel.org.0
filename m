Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14B874B0A16
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 10:58:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239221AbiBJJ6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 04:58:41 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239218AbiBJJ6l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 04:58:41 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EAD6BAC
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 01:58:42 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 28CA04004C
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 09:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644487121;
        bh=QVjWVo4q1GQDHRafCv7HdVFRi4TY/Fg/yK2d0li5IAU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=GYgqB5eqplpYz09bTDignBNkOw7AJwTrjEYgRcFjS6VXnBiiD/oxN9UPF66nwCJM0
         jzqnDgFZorjOvxT4rT8KIfqGoJkYOIFVkuszizZRyu+h2ieJah+NmxAmSoibRRC5u+
         1OcZsrfxbX18WsHnsMCsriiQX8BhRyVN+AcxKhXbEdPNgl/FQt2vCatCQnhl24Uw3P
         t0AvomxliOel4J1Bnus0WALCoSDIJZZXkanLCPnKXQmUeF7ME2mrTfGC2cmTm+KGl3
         i7P3V+xsNa2eQNTc1YyDb8wttHlOjDkhjSGedk8fGML323j5ESHyW5lw3QFOZ9yw7L
         7HoAGiHcoRiog==
Received: by mail-ed1-f69.google.com with SMTP id k5-20020a508ac5000000b00408dec8390aso3019413edk.13
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 01:58:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QVjWVo4q1GQDHRafCv7HdVFRi4TY/Fg/yK2d0li5IAU=;
        b=t8grCtlje6n8hkNk8b4N8EdRCvhDqAgTh0Qt3hKk7XmD7tNhIQMXBzkFmD5LLRRcGL
         ednY1L3h13g76uKNIK2aMqMBKOKQi1YZ843nSbGAXwsObZpXtzee0HIQs0FjNe/wMTNH
         f1ik0fPQS6rDsDotR26ndfltauH+GVTrf3Gt0OfhRbyRylng4a+t9bCBCl9c04Hb1l14
         WjfP6BRlCGRvCSDqVxvZCciTMT0kiFUAYPQaxHktAALeSPGcDDmMXsWLhlGc7kPxEmhI
         kvBrchWSmMrLjv7eQhJZxlxLL+olw6GAdoEbid5k++LRdVzL+pn2LBxrNjCYrRcWfBOP
         6xZQ==
X-Gm-Message-State: AOAM531iiMN/dRg0U4XHA/QZ3q4VEsvIScOw7VypinjzC3tWUxJFbmAU
        +sT9RkWAOqUHfps7gLuRyWC/1XkeoN0k+lOgMhtz/2WK2kSpfYROnDv1+yjaHouZ2hhzUJqA/xR
        hT1k+9AMgKmEKPgUzdIXhaRS0xxPmyXz3kp70pj4=
X-Received: by 2002:a17:906:4f16:: with SMTP id t22mr5663887eju.413.1644487120645;
        Thu, 10 Feb 2022 01:58:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxgTuz7GR1Tb+hH0mgjyDwXJlDMVpwZtl0H/pA/cQgp2TZegrbiDgjRzZahIarS9kQQNVWX8w==
X-Received: by 2002:a17:906:4f16:: with SMTP id t22mr5663869eju.413.1644487120426;
        Thu, 10 Feb 2022 01:58:40 -0800 (PST)
Received: from [192.168.0.97] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h1sm4357445eja.201.2022.02.10.01.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 01:58:39 -0800 (PST)
Message-ID: <50d3bef2-82af-325e-72e9-15af5794ce12@canonical.com>
Date:   Thu, 10 Feb 2022 10:58:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3] dt-bindings: convert ata/cortina,gemini-sata-bridge to
 yaml
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>,
        damien.lemoal@opensource.wdc.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
References: <20220210094414.2815616-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220210094414.2815616-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2022 10:44, Corentin Labbe wrote:
> This patch converts ata/cortina,gemini-sata-bridge binding to yaml
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - fixed cosmetic nits reported by Damien Le Moal
> Changes since v2:
> - Added blank lines between properties
> - Removed useless quotes and label
> - Re-indented description
> 
>  .../ata/cortina,gemini-sata-bridge.txt        |  55 ---------
>  .../ata/cortina,gemini-sata-bridge.yaml       | 107 ++++++++++++++++++
>  2 files changed, 107 insertions(+), 55 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
> deleted file mode 100644
> index 1c3d3cc70051..000000000000
> --- a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.txt
> +++ /dev/null
> @@ -1,55 +0,0 @@
> -* Cortina Systems Gemini SATA Bridge
> -
> -The Gemini SATA bridge in a SoC-internal PATA to SATA bridge that
> -takes two Faraday Technology FTIDE010 PATA controllers and bridges
> -them in different configurations to two SATA ports.
> -
> -Required properties:
> -- compatible: should be
> -  "cortina,gemini-sata-bridge"
> -- reg: registers and size for the block
> -- resets: phandles to the reset lines for both SATA bridges
> -- reset-names: must be "sata0", "sata1"
> -- clocks: phandles to the compulsory peripheral clocks
> -- clock-names: must be "SATA0_PCLK", "SATA1_PCLK"
> -- syscon: a phandle to the global Gemini system controller
> -- cortina,gemini-ata-muxmode: tell the desired multiplexing mode for
> -  the ATA controller and SATA bridges. Values 0..3:
> -  Mode 0: ata0 master <-> sata0
> -          ata1 master <-> sata1
> -          ata0 slave interface brought out on IDE pads
> -  Mode 1: ata0 master <-> sata0
> -          ata1 master <-> sata1
> -          ata1 slave interface brought out on IDE pads
> -  Mode 2: ata1 master <-> sata1
> -          ata1 slave  <-> sata0
> -          ata0 master and slave interfaces brought out
> -               on IDE pads
> -  Mode 3: ata0 master <-> sata0
> -          ata0 slave  <-> sata1
> -          ata1 master and slave interfaces brought out
> -               on IDE pads
> -
> -Optional boolean properties:
> -- cortina,gemini-enable-ide-pins: enables the PATA to IDE connection.
> -  The muxmode setting decides whether ATA0 or ATA1 is brought out,
> -  and whether master, slave or both interfaces get brought out.
> -- cortina,gemini-enable-sata-bridge: enables the PATA to SATA bridge
> -  inside the Gemnini SoC. The Muxmode decides what PATA blocks will
> -  be muxed out and how.
> -
> -Example:
> -
> -sata: sata@46000000 {
> -	compatible = "cortina,gemini-sata-bridge";
> -	reg = <0x46000000 0x100>;
> -	resets = <&rcon 26>, <&rcon 27>;
> -	reset-names = "sata0", "sata1";
> -	clocks = <&gcc GEMINI_CLK_GATE_SATA0>,
> -		 <&gcc GEMINI_CLK_GATE_SATA1>;
> -	clock-names = "SATA0_PCLK", "SATA1_PCLK";
> -	syscon = <&syscon>;
> -	cortina,gemini-ata-muxmode = <3>;
> -	cortina,gemini-enable-ide-pins;
> -	cortina,gemini-enable-sata-bridge;
> -};
> diff --git a/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> new file mode 100644
> index 000000000000..f0fad63bb1af
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/cortina,gemini-sata-bridge.yaml
> @@ -0,0 +1,107 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/cortina,gemini-sata-bridge.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cortina Systems Gemini SATA Bridge
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |
> +    The Gemini SATA bridge in a SoC-internal PATA to SATA bridge that
> +    takes two Faraday Technology FTIDE010 PATA controllers and bridges
> +    them in different configurations to two SATA ports.
> +
> +properties:
> +  compatible:
> +    const: cortina,gemini-sata-bridge
> +
> +  reg:
> +    minItems: 1

maxItems? Why min?

> +
> +  resets:
> +    minItems: 2
> +    description: phandles to the reset lines for both SATA bridges

min+maxItems

> +
> +  reset-names:
> +    items:
> +      - const: sata0
> +      - const: sata1
> +
> +  clocks:
> +    minItems: 2
> +    description: phandles to the compulsory peripheral clocks

min+maxItems

> +
> +  clock-names:
> +    items:
> +      - const: SATA0_PCLK
> +      - const: SATA1_PCLK
> +
> +  syscon:
> +    minItems: 1

maxItems


Best regards,
Krzysztof
