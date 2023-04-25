Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AFFF6EE52E
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 18:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234631AbjDYQBk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 12:01:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234641AbjDYQBi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 12:01:38 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 855DE15477
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:01:29 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94eff00bcdaso1089881766b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 09:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1682438488; x=1685030488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qZwe+g9Dxagr64hvkp0DhXSjVEAgZXo7VQunQF7wJI=;
        b=s6lxl/bNCKB74RDhUWpS6sp3eZRcXFwdRnzT/5iAvi8qIT7vmatOaU+ON5LbTlP1Ke
         t40qJ2JzqOyRd6/Emtfw9AC27BFIDI6WXh/J+u2QKv1Yt7zvcYLmsRa+sIUfwIocsX64
         8W92McU54ZiLTZcKDTRLEax1MOUzMe95jVR3CbWaMGtAQLpH8bJriauESPZfAjun81xG
         I70XpVc/9k8RjAmUo59/nDUIgYSeOmf0yRuY7jYB/MMk/g+1GMfySEuYRtnTq0FD9wWj
         4iRebKqersE7iF/XG5HV9k06kmh6hKvLI3Evj0XuX755mnRNBeXUjqOcif2pRr55fVGW
         th+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682438488; x=1685030488;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qZwe+g9Dxagr64hvkp0DhXSjVEAgZXo7VQunQF7wJI=;
        b=EKLwNWAxuBLDbVokoIqUMRUJj2xed15arsjOE5FZGlMXibrMsn3Eg+R4u0boTw+pJP
         /Heds2n8nh5WsQKjqKWWdZ04dv7T8nWhUnAxo9+ctYTFpy4DZux9sfohVE02a+nvebE6
         b8HS5wE/GTIyu5Xu6dMYOp68LYht5YnNkOrmAiu7frnER7IBCfuV+MOs4lCPyYxA+WGz
         Tt+kqe2RL7BrwscPoi9PaQme4L3yoamx5EiMK8oJ1Zid8bRmO++rXGRTqIvJdkDnXexg
         Jxsr5t6ySKclEYZXVH5Z7DPUArUJdbDTSSWiWlmB5O3i+lgUZUhZevexR3Q2E+CAGa+y
         Of3Q==
X-Gm-Message-State: AAQBX9eN6ENQNcn86k6+EfDT0JQEkLF171itHubk+PeU34OOcjInjTuP
        I+xeTOUZhsxRJ2IIoQVRdL3PhViQy6T8JFzlJQ4Jgw==
X-Google-Smtp-Source: AKy350bCTCO5FEN3I9Rp+cI+k9IsgEyugAx+bZ7mqb2EP6CD9TQx690F5KVSw5g1qGf64xP5J4DwvncWgDkwOqAS+4I=
X-Received: by 2002:a17:907:168d:b0:94a:82ca:12e5 with SMTP id
 hc13-20020a170907168d00b0094a82ca12e5mr17161732ejc.45.1682438487931; Tue, 25
 Apr 2023 09:01:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230414140203.707729-1-pan@semihalf.com> <20230414140203.707729-3-pan@semihalf.com>
 <5544de12-396c-29d4-859c-a6e17b2e2de4@linaro.org>
In-Reply-To: <5544de12-396c-29d4-859c-a6e17b2e2de4@linaro.org>
From:   =?UTF-8?Q?Pawe=C5=82_Anikiel?= <pan@semihalf.com>
Date:   Tue, 25 Apr 2023 18:01:17 +0200
Message-ID: <CAF9_jYRXsdQX22bOVG5Dp20GnC7JniqGC6popTS5dSxmiqjizQ@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: ASoC: Add chv3-i2s
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org, lars@metafoo.de, nuno.sa@analog.com,
        upstream@semihalf.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 14, 2023 at 7:00=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 14/04/2023 16:01, Pawe=C5=82 Anikiel wrote:
> > Add binding for chv3-i2s device.
>
> Your subject needs improvements:
> 1. ASoC goes before bindings
> 2. You miss some meaningful title of device. "chv3-i2s" can be anything,
> so add Google or Google Chameleon. Or use entire compatible.

Would "ASoC: dt-bindings: Add Google Chameleon v3 I2S device" be better?

>
>
> >
> > Signed-off-by: Pawe=C5=82 Anikiel <pan@semihalf.com>
> > ---
> >  .../bindings/sound/google,chv3-i2s.yaml       | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/google,chv3=
-i2s.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/sound/google,chv3-i2s.ya=
ml b/Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
> > new file mode 100644
> > index 000000000000..6f49cf059ac5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
> > @@ -0,0 +1,42 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/google,chv3-i2s.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Chameleon v3 I2S device
> > +
> > +maintainers:
> > +  - Pawe=C5=82 Anikiel <pan@semihalf.com>
> > +
> > +description: |
> > +  I2S device for the Google Chameleon v3. The device handles both RX
> > +  and TX using a producer/consumer ring buffer design.
> > +
> > +properties:
> > +  compatible:
> > +    const: google,chv3-i2s
>
> Missing blank line.
>
> Is chv3 the name of your SoC? Where are the SoC bindings? What's exactly
> the versioning scheme for it (compatibles must be specific, not generic).

The Chameleon v3 is based around an Intel Arria 10 SoC FPGA. The i2s
device is implemented inside the FPGA. Does this case require SoC
bindings?

>
> > +  reg:
> > +    items:
> > +      - description: core registers
> > +      - description: irq registers
>
> As well...
>
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +    i2s0: i2s@c0060300 {
> > +        compatible =3D "google,chv3-i2s";
> > +        reg =3D <0xc0060300 0x100>,
> > +              <0xc0060f00 0x10>;
> > +        interrupts =3D <0 20 IRQ_TYPE_LEVEL_HIGH>;
>
> Isn't 0 also a known define?

Do you mean this?
interrupts =3D <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;

Regards,
Pawe=C5=82
