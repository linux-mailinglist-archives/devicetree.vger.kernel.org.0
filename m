Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB6D65BF72B
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:11:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbiIUHLM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:11:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbiIUHKS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:10:18 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFA863D581
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:10:16 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id t62so6864998oie.10
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=UeV15dhrzSkJVSr8c8vflfr/94yUpadqysB6VWlfuQM=;
        b=a6UfoxK+YJYxIUdvh4XbrjBYFr15esIJMD9d73qgxqbMd4r+PnLM3N4CCQVbAaWK5d
         DD9GtWupC8c+AnUDBOAeVtXZR0QRnV+6msF/9Ozkek/En4SxZw8PrnWD74kwcKuV9DS9
         QGi0bRDcXBXsy8oCz+I1ILUcg64JdldQKjLrE6M/rmj9RdR020TtjlO0WgFgyb7XgtAP
         pU3TTOy6GfXy8qvoq32jOwscse2nNCOwxj1h41R/nuwaJaHEQcbjWimte9bPMmXP33OX
         VoMsqjxMbxeLhcNUt4ZQ4CpYQxL5PFEzfa58pV3aDMJn6CW9kPpWCo0tEJChmVI+PDRN
         0NgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=UeV15dhrzSkJVSr8c8vflfr/94yUpadqysB6VWlfuQM=;
        b=Sikkq6I0/mlWyHYo5paOc3Av9LEY8QQMO969dgIaomjtHocCyO1J6O0CpqfxrnW95h
         BzssQMicpJTrCxdkIO95fhG5jW9o0KTMasylxNO8JlLl4lzbRV58wiczlBuqM57rLMFf
         n5wGuKUfARBkjaE+X5EwMhrsCcnonUWCDqhQXVW7yT3mQfFsp/Pl58MAI+BsJh+4U8o9
         dfbA5ksb3xeFA9xzkUI6VDkUoHnK40P1cH55nf5Hm2WmPNwHhbbvBfA/E+K5Tda9UpRl
         mqKrwGuhdv+CO6pUFXAN6wuzzeKKvyDjYcjsm6394+eyiXBiwlAOZZ/tEyBt2k9f2+eb
         zbdQ==
X-Gm-Message-State: ACrzQf2dp5SGsJrAXDqbABHU37EjMT2HlNUXCSzmaZSz88Wkea4PS2bJ
        jZzZ/6IyLCcGl6sxMNo5RTnaTgLXkm+AiUXC30eu7xqaqDU=
X-Google-Smtp-Source: AMsMyM78lEBROxqdH/36zAKFKOocUhZPbgiFprpz8iEC1U1Ph5HHCIR/UIPZSfxVVRykTILm6I5VN6O1wEcU0BvEp9Y=
X-Received: by 2002:a05:6808:23ca:b0:350:92c4:3422 with SMTP id
 bq10-20020a05680823ca00b0035092c43422mr3272313oib.144.1663744215398; Wed, 21
 Sep 2022 00:10:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220920052455.582565-1-sergio.paracuellos@gmail.com> <3763cfe7-972d-55a6-21ce-a45a7669a9df@linaro.org>
In-Reply-To: <3763cfe7-972d-55a6-21ce-a45a7669a9df@linaro.org>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Wed, 21 Sep 2022 09:10:04 +0200
Message-ID: <CAMhs-H_862_6i8sGb3TLcF7yRtUH9qqDjqpu=OcCzJ51uUU4bA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: migrate MIPS CPU
 interrupt controller text bindings to YAML
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 21, 2022 at 8:45 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/09/2022 07:24, Sergio Paracuellos wrote:
> > MIPS CPU interrupt controller bindings used text format, so migrate them
> > to YAML.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v2:
> > - Address review comment from Krzysztof:
> >     - Rebase onto last kernel version.
> >     - Add Thomas Bogendoerfer as maintainer since this is arch stuff.
> >     - Change compatible to go first as property and required.
> >     - Change sample node name to be generic. Use 'interrupt-controller'.
>
> Thank you for your patch. There is something to discuss/improve.
>
> >
> >  .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
> >  .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
> >  2 files changed, 46 insertions(+), 47 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> > new file mode 100644
> > index 000000000000..06dc65f0bbd2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
> > @@ -0,0 +1,46 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/mti,cpu-interrupt-controller.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MIPS CPU Interrupt Controller bindings
>
> Drop bindings

Understood, wil drop.
>
> > +
> > +description: >
> > +   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
> > +   IRQs from a devicetree file and create a irq_domain for IRQ controller.
> > +
> > +   With the irq_domain in place we can describe how the 8 IRQs are wired to the
> > +   platforms internal interrupt controller cascade.
> > +
> > +maintainers:
> > +  - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> > +
> > +properties:
> > +  compatible:
> > +    const: mti,cpu-interrupt-controller
> > +
> > +  '#interrupt-cells':
> > +    const: 1
> > +
> > +  '#address-cells':
> > +    const: 0
> > +
> > +  interrupt-controller: true
> > +
> > +additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - '#interrupt-cells'
> > +  - '#address-cells'
> > +  - interrupt-controller
> > +
> > +examples:
> > +  - |
> > +    interrupt-controller {
> > +      #address-cells = <0>;
> > +      #interrupt-cells = <1>;
> > +      interrupt-controller;
> > +      compatible = "mti,cpu-interrupt-controller";
>
> Put compatible first in list of properties. It's always first in DTS, by
> convention.

Ok, I will put it first. Current dts files in arch/mips/boot/ using
this do not follow this convention at all so my copy-paste for adding
the sample here ended up in the same mistake :)

Thanks,
    Sergio Paracuellos

>
> > +    };
>
>
>
> Best regards,
> Krzysztof
