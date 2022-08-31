Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D15B25A76F4
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 08:55:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230155AbiHaGzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 02:55:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbiHaGzJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 02:55:09 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E37324BF8
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:55:06 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id q7so18606673lfu.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=L+B/6A2HCPuRiI3qqp8Q6EFBeowqp+Dn2ncX1CvCRK4=;
        b=NA9WBXvdZVHJb2T58VWVH0MfKTs0Cy7wtQNnkNkzbhTm+DD6QGqFYlutim8nERN3Sd
         Pfdub2MB2Yho0EWhSGBlftTsuEOICZsZBT8iDvyked3w0KBWPfDPV8/oDbLxBb/H+zvz
         u/Zv1SCAgsTQzJEkMk3ISUuc16gKhcgaYLAiRUwQNmD+nuBz8UDC+K7LGoam4qx4t0+r
         QCAaLMQ3NxNhFQPMYyBwe+Xs7JkutDrXCsO05lsuCMTpwVwM7MB2fTioVmVbK57HdKw9
         YvbqVxR6/ILZA+eFuYnvBw4o+nXiW0ja+pQ0/QvHr9cwvzdDvDQYe0Xkur/DICz5J8NH
         KqLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=L+B/6A2HCPuRiI3qqp8Q6EFBeowqp+Dn2ncX1CvCRK4=;
        b=PqOVTI5b4Ir8+r3ElUupx6J4LgzZ9qF2uIXnrui8sy3NWWAe4v2as463eGwyLiRUBG
         6O9XxNCTXfM3Ogvnj2kzmJIVZvtxRVwgIdX4gvJIz3ythz9v5Atm2it92MgLWhBzak2i
         jlVbsRNpTbktUjth5wdQcHNHYq6jlWKtMxLcAdXDFDxOWPi8LGgCjLDtswuF4vAPG5f9
         hZ5iRR15CbBAgHZ02oId93cxycwNYueQq1QxyfU2XCXslWMGK+R67ZcvVmo4AtugvHju
         uKiFBbpdrSMnMLxF28bkY6UN8d6gFcCzKzy4A72iYf71v1U6xmECSUe7XqC/mKRwblqH
         LUkA==
X-Gm-Message-State: ACgBeo3JypUqED+sSt7C7eNWKKiellE4kCGHxUbGua4vc4idDFu1Lafc
        a1ptGfYryLq7kN8axPIUBMT7vWHdmHEf2opX
X-Google-Smtp-Source: AA6agR6EckFh8vz2EkGB+cabsEsDSkYnz3oYB8hTA1BY2Jj98dJxhqSoZHypvJVoo9SrQFwDCJ2AuA==
X-Received: by 2002:ac2:4e63:0:b0:493:20a:be3a with SMTP id y3-20020ac24e63000000b00493020abe3amr8683316lfs.114.1661928904946;
        Tue, 30 Aug 2022 23:55:04 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id y9-20020a196409000000b0048af749c060sm1877637lfb.157.2022.08.30.23.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 23:55:04 -0700 (PDT)
Message-ID: <63c350a0-2393-208b-4fab-94db050407c2@linaro.org>
Date:   Wed, 31 Aug 2022 09:55:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 4/4] dt-bindings: memory: Add jedec,lpddrX-channel binding
Content-Language: en-US
To:     Julius Werner <jwerner@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220831013359.1807905-1-jwerner@chromium.org>
 <20220831013359.1807905-5-jwerner@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831013359.1807905-5-jwerner@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 04:33, Julius Werner wrote:
> This patch adds a new device tree binding for an LPDDR channel to serve
> as a top-level organizing node for LPDDR part nodes nested below it. An
> LPDDR channel needs to have an "io-width" property to describe its width
> (this is important because this width does not always match the io-width
> of the part number, indicating that multiple parts are wired in parallel
> on the same channel), as well as one or more nested "rank@X" nodes.
> Those represent information about the individual ranks of each LPDDR
> part connected on that channel and should match the existing
> "jedec,lpddrX" bindings for individual LPDDR parts.
> 
> New platforms should be using this node -- the existing practice of
> providing a raw, toplevel "jedec,lpddrX" node without indication of how
> many identical parts are in the system should be considered deprecated.
> 
> Signed-off-by: Julius Werner <jwerner@chromium.org>
> ---
>  .../ddr/jedec,lpddr-channel.yaml              | 116 ++++++++++++++++++
>  .../ddr/jedec,lpddr-props.yaml                |  10 +-
>  2 files changed, 125 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml
> new file mode 100644
> index 00000000000000..517e770d8e7133
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-channel.yaml
> @@ -0,0 +1,116 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr-channel.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: LPDDR channel with chip/rank topology description
> +
> +description:
> +  An LPDDR channel is a completely independent set of LPDDR pins (DQ, CA, CS,
> +  CK, etc.) that connect one or more LPDDR chips to a host system. The main
> +  purpose of this node is to overall LPDDR topology of the system, including the
> +  amount of individual LPDDR chips and the ranks per chip.

"channel" in this context confuses me a bit, because usually everyone is
talking about DDR controller channels, not memory channels. I think this
actually maps to a DDR controller channel?

> +
> +maintainers:
> +  - Julius Werner <jwerner@chromium.org>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - jedec,lpddr2-channel
> +      - jedec,lpddr3-channel
> +      - jedec,lpddr4-channel
> +      - jedec,lpddr5-channel
> +
> +  io-width:
> +    description:
> +      The number of DQ pins in the channel. If this number is different
> +      from (a multiple of) the io-width of the LPDDR chip, that means that
> +      multiple instances of that type of chip are wired in parallel on this
> +      channel (with the channel's DQ pins split up between the different
> +      chips, and the CA, CS, etc. pins of the different chips all shorted
> +      together).  This means that the total physical memory controlled by a
> +      channel is equal to the sum of the densities of each rank on the
> +      connected LPDDR chip, times the io-width of the channel divided by
> +      the io-width of the LPDDR chip.
> +    enum:
> +      - 8
> +      - 16
> +      - 32
> +      - 64
> +      - 128
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^rank@[0-9]+$":
> +    type: object
> +    description:
> +      Each physical LPDDR chip may have one or more ranks. Ranks are
> +      internal but fully independent sub-units of the chip. Each LPDDR bus
> +      transaction on the channel targets exactly one rank, based on the
> +      state of the CS pins. Different ranks may have different densities and
> +      timing requirements.
> +    oneOf:
> +      - $ref: /schemas/memory-controllers/ddr/jedec,lpddr2.yaml#
> +      - $ref: /schemas/memory-controllers/ddr/jedec,lpddr3.yaml#
> +      - $ref: /schemas/memory-controllers/ddr/jedec,lpddr4.yaml#
> +      - $ref: /schemas/memory-controllers/ddr/jedec,lpddr5.yaml#

This should be rather chosen depending on top-level compatible. IOW, add
allOf where ref is chosen. Something like:
https://lore.kernel.org/linux-devicetree/20220828084341.112146-15-krzysztof.kozlowski@linaro.org/

Unless LPDDR3 memory can be put in LPDDR5 channel? But I think it cannot...

> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - io-width
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    lpddr-channel0 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      compatible = "jedec,lpddr4-channel";
> +      io-width = <32>;
> +
> +      rank@0 {
> +        compatible = "lpddr4-ff,0100", "jedec,lpddr4";
> +        reg = <0>;
> +        density = <8192>;
> +        io-width = <16>;
> +        manufacturer-id = <255>;
> +        revision-id = <1 0>;
> +      };
> +    };
> +
> +    lpddr-channel1 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      compatible = "jedec,lpddr4-channel";
> +      io-width = <32>;

I wonder now, how does it exactly work - channel is 32 bits, two ranks
each with 32 bit IO bus. Your description said that:

total_ram = (rank0 + rank1) * (channel_width / chip_width)
so for this case: (4+2)*(32/32) = 6 Mbit

If channel io-width = <64>, then memories are stacked in parallel and
according to your description total RAM would be: (4+2)*(64/32) = 12 Mbit
I wonder why stacking memories in parallel increases their size?

> +
> +      rank@0 {
> +        compatible = "lpddr4-05,0301", "jedec,lpddr4";
> +        reg = <0>;
> +        density = <4096>;
> +        io-width = <32>;
> +        manufacturer-id = <5>;
> +        revision-id = <3 1>;
> +      };
> +
> +      rank@1 {
> +        compatible = "lpddr4-05,0301", "jedec,lpddr4";
> +        reg = <1>;
> +        density = <2048>;
> +        io-width = <32>;
> +        manufacturer-id = <5>;
> +        revision-id = <3 1>;
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> index e1182e75ca1a3f..53a4836028cd25 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
> @@ -9,7 +9,8 @@ title: Common properties for LPDDR types
>  description:
>    Different LPDDR types generally use the same properties and only differ in the
>    range of legal values for each. This file defines the common parts that can be
> -  reused for each type.
> +  reused for each type. Nodes using this schema should generally be nested under
> +  an LPDDR channel node.
>  
>  maintainers:
>    - Krzysztof Kozlowski <krzk@kernel.org>
> @@ -71,4 +72,11 @@ properties:
>        - 16
>        - 8
>  
> +  reg:
> +    description:
> +      The rank number of this LPDDR rank when used as a subnode to an LPDDR
> +      channel.
> +    minimum: 0
> +    maximum: 3

Put reg just after compatible.

> +
>  additionalProperties: true


Best regards,
Krzysztof
