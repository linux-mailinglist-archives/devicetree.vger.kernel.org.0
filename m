Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 208E0622F57
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 16:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiKIPtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 10:49:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbiKIPtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 10:49:01 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55EDF20360
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 07:49:00 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id f27so47817072eje.1
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 07:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqHnaA6DjFrTcYV3c/HGfsKzb3i7R0Nn5IlzcqzvMSo=;
        b=wxWwoBYzlHD3LgHzNdUF+7epP2rnY22wweLpRofKy1xIhDG9HEmTYZAIlB5w9/W6mp
         dc7S214m7OQvGUMKmpHiZXumiEf3SR6XmaM0ttrZ8p5wHIQlDFeNDuioFkvqmSmSTQp3
         l6aRvE12hEi7ksWDVnb5v1Qx3CKFoxv7f2UEObNjVQSpLboLKl0cVXfuI+/gvT+cN+j/
         1G1j+L+KWRyzsfB3pyQI1SHE2vbwsOPvwShGBCF8CwbnxsLL0EVFKec0ncg+pxNcnFdG
         SDhZGyrL7H6jldY9MAZTPIZDPfr8LK7pTzQc6ZNQV8Qemx6aB4aEvTDxZbLMj2zxk7O2
         lrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OqHnaA6DjFrTcYV3c/HGfsKzb3i7R0Nn5IlzcqzvMSo=;
        b=BBaAKaJMYaMputwtB85tBEcq7QfqeS3GP5wRLPhUKliEBee4M3yltiZP36nGFMNqSR
         s8/gdkivFLg4FBAXGEHRbPkgog8jFW5wm0SobXpuUVxOeb0bCtFoD8Ku36NiS1Ri7HPA
         lpkWjmYzUVAAZNxeOcaOLvDvXuyOvbDexhYtxAgMypjSMBJaxu+cpOTQCzabk6ABBaBK
         j7QfJR3LyDhtAHO0ynGKjJdaBRmw7Tiq2e1q9cVOWrv2VZeZemRVZxEgWxBKa19vZAIg
         N9OizwPh6yPM1KmywEa/3yIVY9ja7Jk7+k0s82U5Y1PtngL5vcx9XLwuxajsNPjD6aC7
         ImlQ==
X-Gm-Message-State: ACrzQf1Kf7l4ia7EjxF4IY0lof60X/N8wTLWfTe3XDSOTNbtN2aSVHOY
        1oQq1jjL73hB1FynY1kcIDJ5zbCx0EoEVfRs2kwDtg==
X-Google-Smtp-Source: AMsMyM4Mad/0W1DimHEbSn31CXQyLYxXd4hl0hOt4+eYo8ANyoxYbSn8Ljw/oLy3QTKn4lXX91MF5SC6O9L2Kb2H0j8=
X-Received: by 2002:a17:906:c78d:b0:781:bc28:f455 with SMTP id
 cw13-20020a170906c78d00b00781bc28f455mr1255703ejb.170.1668008938538; Wed, 09
 Nov 2022 07:48:58 -0800 (PST)
MIME-Version: 1.0
References: <20221109023100.64143-1-nicholas@rothemail.net>
 <20221109023100.64143-2-nicholas@rothemail.net> <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
In-Reply-To: <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
From:   Nicholas Roth <nicholas@rothemail.net>
Date:   Wed, 9 Nov 2022 09:48:47 -0600
Message-ID: <CAD2rFCpMnyfMpVp1inPG3dhZ2rQZMXuJ-FQmkuTymnRyD7Vfxg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I=E2=80=99m doing my best to follow along here. Your feedback didn=E2=80=99=
t get lost
and I tried my best to follow it=E2=80=94 I just must not have understood i=
t
correctly.

> Where is the driver? If it was sent separately, you must resent entire
> patchset.
...
> 1. There is no driver, no DTS. You received the feedback about it.

Driver: I submitted the .c files to linux-media, and as part of the
review they asked for me to separately submit device tree bindings
(https://patchwork.kernel.org/project/linux-media/patch/20221106171129.1668=
92-2-nicholas@rothemail.net/).
Are you saying that the driver and the bindings should be the same
commit after all? Are you saying that I need to change this into a
series and include both linux-media@ and devicetree@ mailing lists in
a v3 with both patches? Are you saying something else? I=E2=80=99m afraid I
still don=E2=80=99t understand what you mean by this, but I want to, and I=
=E2=80=99m
trying to.

> 2. Wrong cc list. You were asked to use get_maintainers.pl and still
> decide not to.

I included the people from get_maintainers.pl, but it seems like you
would like for me to include all entries, including the multiple
mailing lists. Do I understand correctly?

> Subject: drop redundant, second "binding".
Is this new subject good, or would you prefer just "dt-bindings:
media: Add Omnivision ov8858"? Just want to make sure I follow up.

> How can you test bindings with libcamera?
I validated the device tree + driver on this setup, though I did not
know about the binding linter (and this one should pass). I am happy
to drop the comment about validation though and just say this is
tested with the binding checker, or say nothing at all if you'd like.

> Filename matching the compatible.
...
> Filename still does not match compatible. ovti,ov8858.yaml
I didn't understand this the first time, but now I think I do-- seems
like you're asking me to change the binding filename to
"ovti,ov8858.yaml". I was trying to be consistent with ov8856.yaml,
but happy to change the file name if that=E2=80=99s the convention. Is ther=
e a
doc I can read with this information or is it institutional knowledge?

> The frequency of clock should go via common clock framework - you have
> get_rate and set_rate. Drop entire property.
I am trying to be consistent with the ov8856 driver and bindings but
would be happy to change if there's a different standard I should be
following. I=E2=80=99m not familiar with that framework though. Is there
somewhere I could read about this common clock framework, including
the driver and device-tree changes I need in order to use it as
compared to this or the ov8856 driver?

> Which driver? In OpenBSD? Which version of OpenBSD? Drop the sentence.
Seems like your point here and in the subsequent comments is to avoid
implementation specifics. That makes a ton of sense, and I=E2=80=99ll make
those changes for v3.

All of your other comments make sense explicitly and I=E2=80=99ll make thes=
e
changes. Please help me understand what you mean by (1) and (2),
correct me where I=E2=80=99m wrong or misunderstanding you here, clarify wh=
ere
needed, and I=E2=80=99ll submit the v3.

Thanks,
-Nicholas

On Wed, Nov 9, 2022 at 2:26 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 09/11/2022 03:31, Nicholas Roth wrote:
> > Add a device tree binding for the Omnivision OV8858 image sensor.
> > The OV8858 is an 8 megapixel image sensor which provides images in RAW
> > format over MIPI CSI-2 data bus and is controlled through an
> > I2C-compatibile SCCB bus.
> >
> > Tested on PinePhone Pro with libcamera cam and qcam.
>
> How can you test bindings with libcamera?
> >
> > Signed-off-by: Nicholas Roth <nicholas@rothemail.net>
>
> This is a friendly reminder during the review process.
>
> It seems my previous comments were not fully addressed. Maybe my
> feedback got lost between the quotes, maybe you just forgot to apply it.
> Please go back to the previous discussion and either implement all
> requested changes or keep discussing them.
>
> Thank you.
>
> 1. There is no driver, no DTS. You received the feedback about it.
> 2. Wrong cc list. You were asked to use get_maintainers.pl and still
> decide not to.
>
> > ---
> >  .../devicetree/bindings/media/i2c/ov8858.yaml | 139 ++++++++++++++++++
> >  1 file changed, 139 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8858.=
yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8858.yaml b/=
Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> > new file mode 100644
> > index 000000000000..f004e57b05ed
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov8858.yaml
> > @@ -0,0 +1,139 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ov8858.yaml#
>
> Filename still does not match compatible. ovti,ov8858.yaml
>
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> > +
> > +maintainers:
> > +  - Nicholas Roth <nicholas@rothemail.net>
> > +
> > +description: |-
> > +  The Omnivision OV8858 is an 8 megapixel image sensor which provides
> > +  images in RAW format over MIPI CSI-2 data bus with up to 4 lanes
> > +  and is controlled through an I2C-compatibile SCCB bus.
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov8858
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    description:
> > +      Input clock for the sensor.
> > +    items:
> > +      - const: xvclk
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the xvclk clock in Hertz.
>
> The frequency of clock should go via common clock framework - you have
> get_rate and set_rate. Drop entire property.
>
> > +    minimum: 6000000
> > +    default: 24000000
> > +    maximum: 27000000
> > +
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
>
> Drop "Definition of the regulator used as "
>
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  reset-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor rese=
t.
>
> Drop this sentence.
>
> > +      This corresponds to the hardware pin XSHUTDN which is physically
> > +      active low.
> > +
> > +  powerdown-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls power down.
>
> Drop this sentence.
>
> > +      This corresponds to the hardware pin PWDNB which is physically
> > +      active low.
> > +
> > +  port:
> > +    $ref: /schemas/graph.yaml#/$defs/port-base
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      endpoint:
> > +        $ref: /schemas/media/video-interfaces.yaml#
> > +        unevaluatedProperties: false
> > +
> > +        properties:
> > +          data-lanes:
> > +            description: |-
> > +              The driver supports both two- and four-lane operation.
>
> Which driver? In OpenBSD? Which version of OpenBSD? Drop the sentence.
>
> > +            items:
> > +              - const: 1
> > +              - const: 2
> > +              - const: 3
> > +              - const: 4
> > +
> > +          link-frequencies:
> > +            description: Frequencies listed are driver, not h/w limita=
tions.
>
> If these are driver limitations, then drop it. Link frequencies are
> hardware related and you should here describe the minimum and maximum.
> Or leave it empty if any is allowed by hardware.
>
>
> > +            maxItems: 1
> > +            items:
> > +              enum: [ 360000000 ]
> > +
> > +        required:
> > +          - link-frequencies
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - clock-frequency
> > +  - dovdd-supply
> > +  - avdd-supply
> > +  - dvdd-supply
> > +  - reset-gpios
> > +  - port
> > +
> > +additionalProperties: false
>
> Best regards,
> Krzysztof
>
