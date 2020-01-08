Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC8A6133A05
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 05:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726252AbgAHENE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jan 2020 23:13:04 -0500
Received: from mail-oi1-f195.google.com ([209.85.167.195]:36806 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726142AbgAHEND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jan 2020 23:13:03 -0500
Received: by mail-oi1-f195.google.com with SMTP id c16so1542753oic.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 20:13:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bVEmriYX9VcSaqW3+ubpAnBoimQDo1dYPWqbf3v17Hs=;
        b=PTB3JzQrz4dbn371df5KQbKM3Ywx/qEP7NbO6urRo1TgSB8a6oozEYQCCZ6Ap0onZG
         itMC8x7itOwjvSWVqBpfgssJ3uSqcwCfu8dx4jSZ6ZJLR2Wjd5Tk9Lmvg08kD3PF597T
         VxO8QHD3JpkWhEpA79qkWaOS5QuAgx7FjMT5y9/AQEsYFGpBt4aYFf3g1upFdpzLAX/d
         Pq9kOxhKyAtqQPnqXlkhHuheEpkhEpDmMo7R2ias5xFMANwC042yfGaHBbDjNfLFebO7
         PvygFGAAxo+dRskQPbKu/K0vqNaKvnWvm6XCWR/aFBOfQDU2OFrLSO7mZju8UVoEnPt0
         Cddw==
X-Gm-Message-State: APjAAAXZC9zRinDOtiFewN7ieNXTUR13XOM6p10nv4S11+bWy3ZFfIFN
        Nff1cdcXyWkQ/M6qusChTstm0rs=
X-Google-Smtp-Source: APXvYqwae0xW4bR5zLDW82YmZ9xn4Vv79Vi0yt14advQuFtJQ5gUoTovP3ykzq4Nh2nMnnBFm1mvpg==
X-Received: by 2002:aca:be57:: with SMTP id o84mr1600632oif.138.1578456782040;
        Tue, 07 Jan 2020 20:13:02 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c10sm654599otl.77.2020.01.07.20.12.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 20:13:01 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220d1c
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Tue, 07 Jan 2020 22:12:59 -0600
Date:   Tue, 7 Jan 2020 22:12:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mircea Caprioru <mircea.caprioru@analog.com>
Cc:     jic23@kernel.org, Michael.Hennerich@analog.com,
        alexandru.ardelean@analog.com, lars@metafoo.de,
        gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: iio: frequency: Add docs for LTC6952
Message-ID: <20200108041259.GA30234@bogus>
References: <20191219134810.6677-1-mircea.caprioru@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191219134810.6677-1-mircea.caprioru@analog.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 19, 2019 at 03:48:08PM +0200, Mircea Caprioru wrote:
> Document support for Analog Devices LTC6952 ultralow jitter, 4.5GHz PLL
> with 11 outputs and JESD204B/C support.
> 
> Signed-off-by: Mircea Caprioru <mircea.caprioru@analog.com>
> ---
>  .../bindings/iio/frequency/adi,ltc6952.yaml   | 127 ++++++++++++++++++
>  1 file changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/frequency/adi,ltc6952.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,ltc6952.yaml b/Documentation/devicetree/bindings/iio/frequency/adi,ltc6952.yaml
> new file mode 100644
> index 000000000000..a28c773c3948
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,ltc6952.yaml
> @@ -0,0 +1,127 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2019 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/iio/frequency/adi,ltc6952.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices LTC6952 ultralow jitter, JESD204B/C clock generation IC.
> +
> +maintainers:
> +  - Mircea Caprioru <mircea.caprioru@analog.com>
> +
> +description: |
> +  Analog Devices LTC6952 ultralow jitter, JESD204B/C clock generation IC.
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ltc6952.pdf 
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ltc6952
> +
> +  reg:
> +    maxItems: 1
> +
> +  clock-output-names:
> +    description: |
> +      Clock output signal names indexed by the first cell in the clock
> +      specifier (see clock/clock-bindings.txt)
> +    maxItems: 1

Only one string? Then why is this needed?

> +
> +  adi,vco-frequency-hz:
> +    description: |
> +      VCO input frequency. This is fed to the internal distribution path and
> +      feedback dividers.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

Standard units already have a type definition.

> +    maxItems: 1

Drop this. Not an array.

> +
> +  adi,ref-frequency-hz:
> +    description: |
> +      Reference input frequency. This is fed in the reference divider.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    maxItems: 1

Same comments here.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clock-output-names
> +
> +patternProperties:
> +  "^channel@[0-9]$":
> +    type: object
> +    description: Represents the external channels which are connected to the device.
> +
> +    properties:
> +      reg:
> +        description: |
> +          The channel number. It can have up to 11 channels numbered from 0 to 10.

Your unit address above does not allow for 0xa (unit addresses are hex).

> +        maxItems: 1
> +
> +      adi,extended-name:
> +        description: Descriptive channel name.
> +        maxItems: 1

Needs a type ref.

maxItems is for arrays.

> +
> +      adi,divider:
> +        description: |
> +          Channel divider. This divides the incoming VCO frequency.
> +        maxItems: 1

type ref.

Range of values?

> +
> +      adi,digital-delay:
> +        description: |
> +          Each output divider can have the start time of the output delayed by
> +          integer multiples of half of the VCO period after a synchronization
> +          event.
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32
> +          - minimum: 0
> +          - maximum: 4095

These 2 need to be grouped together. minimum and maximum can be at the 
same level as allOf.


> +        maxItems: 1

Drop this.

> +
> +      adi,analog-delay:
> +        description: |
> +          Each output has a fine analog delay feature to further adjust its
> +          output delay time (tADELx) in small steps.
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32
> +          - minimum: 0
> +          - maximum: 63
> +        maxItems: 1

Same comments here.

> +
> +    required:
> +      - reg
> +
> +examples:
> +   - |
> +     ltc6952@0 {
> +       compatible = "adi,ltc6952";
> +       reg = <0>;
> +
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +
> +       spi-max-frequency = <10000000>;
> +
> +       clock-output-names = "ltc6952_out0", "ltc6952_out1", "ltc6952_out2",
> +         "ltc6952_out3", "ltc6952_out4", "ltc6952_out5", "ltc6952_out6",
> +         "ltc6952_out7", "ltc6952_out8", "ltc6952_out9", "ltc6952_out10";
> +       #clock-cells = <1>;
> +
> +       adi,vco-frequency-hz = <4000000000>;
> +       adi,ref-frequency-hz = <100000000>;
> +
> +       ltc6952_c0: channel@0 {
> +         reg = <0>;
> +         adi,extended-name = "REF_CLK";
> +         adi,divider = <10>;
> +         adi,digital-delay = <100>;
> +         adi,analog-delay = <0>;
> +       };
> +
> +       ltc6952_c1: channel@1 {
> +         reg = <1>;
> +         adi,extended-name = "TEST_CLK";
> +         adi,divider = <10>;
> +       };
> +     };
> -- 
> 2.17.1
> 
