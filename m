Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 25B5AD3334
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2019 23:11:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726913AbfJJVIx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Oct 2019 17:08:53 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:43277 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726804AbfJJVIx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Oct 2019 17:08:53 -0400
Received: by mail-oi1-f196.google.com with SMTP id t84so6185196oih.10
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2019 14:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=l54FjJ8z4HLKOcYQ7YxhdU7HViL2A0HU+e+F64cnpis=;
        b=dtvUoYx4WbrbJLluVSVGRAeVi0gGe25MkakqcyyXPw4uqSkCj26E0G1a+CisEJxYck
         gIW53Rw9zpzGEZ75I14ErCvysfTH2A6q+RTg78aVc4QYBd7MSjKP3T+HFT2ia7gF8uQo
         YTafCdLRJuG1wmBz9V7f7zE5kbC3Y9fnHLZSNReWDCuHfeagSJggItLmXoqgA5D971LV
         um/mVRYVLAFx0bp5QqgY3/7qjExbQEl9/m0ajoyilm5yh/raiPFglqJFjYrSFEDgQavb
         QHZFW5PS4///sCvQaBAvGbbANgBSclinkG4PG5P5wMRyWu6yZHMZfeos0jJn0LGBKcTj
         nWQg==
X-Gm-Message-State: APjAAAXEIXYJ/ltmA4OBR2EP3Ld4MoR5INHhM10H4tyWxTbvVqRxmNA8
        f7voa7ie8AzA1B/O5nxJEg==
X-Google-Smtp-Source: APXvYqyAnPiRORQxzBSx4Evevv+Ogz9cws69r0XAcEZx/YFfaDPSWCbKEzN1ut/DXUCLYFFaw/QpDg==
X-Received: by 2002:aca:bd08:: with SMTP id n8mr9758386oif.107.1570741732015;
        Thu, 10 Oct 2019 14:08:52 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 38sm2145141otw.28.2019.10.10.14.08.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 14:08:51 -0700 (PDT)
Date:   Thu, 10 Oct 2019 16:08:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Mark Rutland <mark.rutland@arm.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Takashi Iwai <tiwai@suse.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: asoc: Add ADAU7118 documentation
Message-ID: <20191010210850.GA20184@bogus>
References: <20191010074234.7344-1-nuno.sa@analog.com>
 <20191010074234.7344-2-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191010074234.7344-2-nuno.sa@analog.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 10, 2019 at 09:42:34AM +0200, Nuno Sá wrote:
> Document the ADAU7118 8 channel PDM to I2S/TDM converter devicetree
> bindings.
> 
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>
> ---
> Changes in v2:
>  * List regulators as required;
> 
> Changes in v3:
>  * Set the correct license for new bindings.
> 
>  .../bindings/sound/adi,adau7118.yaml          | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/adi,adau7118.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
> new file mode 100644
> index 000000000000..cfcef602b3d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/adi,adau7118.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +
> +title: Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter
> +
> +maintainers:
> +  - Nuno Sá <nuno.sa@analog.com>
> +
> +description: |
> +  Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter over I2C or HW
> +  standalone mode.
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU7118.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adau7118
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  IOVDD-supply:

Use lowercase please.

> +    description: Digital Input/Output Power Supply.
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

*-supply already has a type, so just a description is enough.

> +
> +  DVDD-supply:
> +    description: Internal Core Digital Power Supply.
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

Same here.

> +
> +  adi,decimation-ratio:
> +    description: |
> +      This property set's the decimation ratio of PDM to PCM audio data.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [64, 32, 16]
> +        default: 64
> +
> +  adi,pdm-clk-map:
> +    description: |
> +      The ADAU7118 has two PDM clocks for the four Inputs. Each input must be
> +      assigned to one of these two clocks. This property set's the mapping
> +      between the clocks and the inputs.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - minItems: 4
> +        maxItems: 4
> +        items:
> +          maximum: 1
> +        default: [0, 0, 1, 1]
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - IOVDD-supply
> +  - DVDD-supply
> +
> +examples:
> +  - |
> +    i2c0 {

i2c {

> +        /* example with i2c support */
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        status = "okay";

Don't show status in examples.

> +        adau7118_codec: adau7118-codec@14 {

audio-codec@14

> +                compatible = "adi,adau7118";
> +                reg = <14>;
> +                #sound-dai-cells = <0>;
> +                status = "okay";
> +                IOVDD-supply = <&supply>;
> +                DVDD-supply = <&supply>;
> +                adi,pdm-clk-map = <1 1 0 0>;
> +                adi,decimation-ratio = <16>;
> +        };
> +    };
> +
> +    /* example with hw standalone mode */
> +    adau7118_codec_hw: adau7118-codec-hw {
> +            compatible = "adi,adau7118";
> +            #sound-dai-cells = <0>;
> +            status = "okay";
> +            IOVDD-supply = <&supply>;
> +            DVDD-supply = <&supply>;
> +    };
> -- 
> 2.23.0
> 
