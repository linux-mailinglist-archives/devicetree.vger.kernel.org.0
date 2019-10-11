Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 607CFD4812
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 21:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728748AbfJKTBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 15:01:30 -0400
Received: from mail.kernel.org ([198.145.29.99]:49930 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728738AbfJKTBa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Oct 2019 15:01:30 -0400
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D143621D71
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 19:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570820489;
        bh=OXJpfC4PrKGIB0TVKIum4+UlgdgsdznVD/1erJWU1xY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Z2rNKddnpKvkbfZ6y3xl5CYbvxvVd8FMIAWU1m5ZgDfNeZyF3MdGUelY3cxAexea4
         G7jM07raB4p1LS1DsaT8+1MbJOQXXAOQbTLg5+Lixm+sLnhNffS96OOLdo0TvCNrHF
         fKOM4cHfyqVDc3jIJXCG1Sv/tCIeZtM7V7Gcs93g=
Received: by mail-qk1-f180.google.com with SMTP id 201so9818771qkd.13
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 12:01:28 -0700 (PDT)
X-Gm-Message-State: APjAAAUVdiYz/C/DxI3JO+RpGQP1P2WwuyMnzTxb4WzhvO8c+Lo7JkPv
        noavzWzVvoXRyfgh7SyN4Ij1ZjDe9QH7dE3SQQ==
X-Google-Smtp-Source: APXvYqw+m3BdPtQ5veiI0zXWmiSbx0T/kyJQQfEG9X2O2adiRL4KqiawWEpCpbUQXOUcM2fbKWxSpRszEnrF7v2Dmi0=
X-Received: by 2002:a37:98c1:: with SMTP id a184mr16091935qke.119.1570820487882;
 Fri, 11 Oct 2019 12:01:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191010074234.7344-1-nuno.sa@analog.com> <20191010074234.7344-2-nuno.sa@analog.com>
 <20191010210850.GA20184@bogus>
In-Reply-To: <20191010210850.GA20184@bogus>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 11 Oct 2019 14:01:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJu06hW-VRGZ4nFx6TYtf3yVJezUVhCSyTjP+qPmG7+Gw@mail.gmail.com>
Message-ID: <CAL_JsqJu06hW-VRGZ4nFx6TYtf3yVJezUVhCSyTjP+qPmG7+Gw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: asoc: Add ADAU7118 documentation
To:     =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc:     devicetree@vger.kernel.org,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Takashi Iwai <tiwai@suse.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 10, 2019 at 4:08 PM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Oct 10, 2019 at 09:42:34AM +0200, Nuno S=C3=A1 wrote:
> > Document the ADAU7118 8 channel PDM to I2S/TDM converter devicetree
> > bindings.
> >
> > Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> > ---
> > Changes in v2:
> >  * List regulators as required;
> >
> > Changes in v3:
> >  * Set the correct license for new bindings.
> >
> >  .../bindings/sound/adi,adau7118.yaml          | 90 +++++++++++++++++++
> >  1 file changed, 90 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/adi,adau711=
8.yaml

Looks like Mark already applied this. Please send a follow-up patch
addressing my comments.

> >
> > diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml =
b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
> > new file mode 100644
> > index 000000000000..cfcef602b3d9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
> > @@ -0,0 +1,90 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/adi,adau7118.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +
> > +title: Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter
> > +
> > +maintainers:
> > +  - Nuno S=C3=A1 <nuno.sa@analog.com>
> > +
> > +description: |
> > +  Analog Devices ADAU7118 8 Channel PDM to I2S/TDM Converter over I2C =
or HW
> > +  standalone mode.
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/=
ADAU7118.pdf
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,adau7118
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  IOVDD-supply:
>
> Use lowercase please.
>
> > +    description: Digital Input/Output Power Supply.
> > +    $ref: "/schemas/types.yaml#/definitions/phandle"
>
> *-supply already has a type, so just a description is enough.
>
> > +
> > +  DVDD-supply:
> > +    description: Internal Core Digital Power Supply.
> > +    $ref: "/schemas/types.yaml#/definitions/phandle"
>
> Same here.
>
> > +
> > +  adi,decimation-ratio:
> > +    description: |
> > +      This property set's the decimation ratio of PDM to PCM audio dat=
a.
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > +      - enum: [64, 32, 16]
> > +        default: 64
> > +
> > +  adi,pdm-clk-map:
> > +    description: |
> > +      The ADAU7118 has two PDM clocks for the four Inputs. Each input =
must be
> > +      assigned to one of these two clocks. This property set's the map=
ping
> > +      between the clocks and the inputs.
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +      - minItems: 4
> > +        maxItems: 4
> > +        items:
> > +          maximum: 1
> > +        default: [0, 0, 1, 1]
> > +
> > +required:
> > +  - "#sound-dai-cells"
> > +  - compatible
> > +  - IOVDD-supply
> > +  - DVDD-supply
> > +
> > +examples:
> > +  - |
> > +    i2c0 {
>
> i2c {
>
> > +        /* example with i2c support */
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +        status =3D "okay";
>
> Don't show status in examples.
>
> > +        adau7118_codec: adau7118-codec@14 {
>
> audio-codec@14
>
> > +                compatible =3D "adi,adau7118";
> > +                reg =3D <14>;
> > +                #sound-dai-cells =3D <0>;
> > +                status =3D "okay";
> > +                IOVDD-supply =3D <&supply>;
> > +                DVDD-supply =3D <&supply>;
> > +                adi,pdm-clk-map =3D <1 1 0 0>;
> > +                adi,decimation-ratio =3D <16>;
> > +        };
> > +    };
> > +
> > +    /* example with hw standalone mode */
> > +    adau7118_codec_hw: adau7118-codec-hw {
> > +            compatible =3D "adi,adau7118";
> > +            #sound-dai-cells =3D <0>;
> > +            status =3D "okay";
> > +            IOVDD-supply =3D <&supply>;
> > +            DVDD-supply =3D <&supply>;
> > +    };
> > --
> > 2.23.0
> >
