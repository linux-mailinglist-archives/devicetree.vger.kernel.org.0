Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52698597E3C
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 07:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243349AbiHRFtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 01:49:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238680AbiHRFtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 01:49:01 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0BEC49B57
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 22:48:56 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gb36so1279681ejc.10
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 22:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=zl2T5yu71OCZ3gEUlCSd7WNQiwAgE6fudMgRt3dBKns=;
        b=NOzfGWE4AW9ZmOsBO954Q17+AKVcl5JeUUM1sy2wwGXKvacuUd+FtfffNKwlvrIlUK
         h+IvPG//sIb5yfq6tLpvVblMsJi2GIQ7i4hhhMo8yxvqVRsMRLI0MfRuZwtR0tVV+qh3
         nvArlrIZ5vkliAS1ooNsz2q5c38dit6DAXLpH4+9Yuj99Tz66TtX738iJZpV19wGLeGj
         0BB+WiWeoxCMZAvw4kzccNZiCGiruiQ75z3d6rrNEWGehME3FtKY89a7fixv07ONeT6N
         1J18JXzLdjSWu1KAtBya8mY/4vRR6KlOPuO4s9uqrRb/qJrpC13KjmCn1gxKNwSSIe1H
         xyNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=zl2T5yu71OCZ3gEUlCSd7WNQiwAgE6fudMgRt3dBKns=;
        b=2Dm2Xib+VbOWp4rsca9MssGFmh8vPy/xWfWUibozI939CBGZwXX6Lt3su+s9cWVENB
         1iEf7GyBktLY913TjdgBrIhPXtl7qQRaguJTdZ1eZgx7ias2HrDoTeksvJQQMePG4FSf
         Nmcjnpd1b7RgsIuOHOtR4ZDYk+zuO1166d0ZM+5OCUWtNzkAiOv5nGvq0nBtbP/49f6+
         9hUAkcWZU/Z8pYE0SSI+JRwmAws89KxRbXGWMd+SYI87Yh1ttYQSBvaPVqMF2n2qm9Hy
         9g2jEn/jlWR74ltzoywf5FwXrPOBjf/kWnCJpaoqeXYCJgtfb77pIumn5BgsNurVP24f
         AciQ==
X-Gm-Message-State: ACgBeo2zn6fv2wb0YXUOyHdBRxy12eOmXIAhHtXkKAhb4RhSI5w/cogj
        hewF3hONOiGxOdhA+N86UHyE2Q==
X-Google-Smtp-Source: AA6agR7sl8W4NWP6T2+xI37/1YHtHNxEAKlt6i3VFxsR/ZhQDW8pdCfCsAWcYjQMwMLeVTEF+TCuBQ==
X-Received: by 2002:a17:907:28ca:b0:730:aabe:2e28 with SMTP id en10-20020a17090728ca00b00730aabe2e28mr876966ejc.72.1660801735424;
        Wed, 17 Aug 2022 22:48:55 -0700 (PDT)
Received: from localhost (cst2-173-67.cust.vodafone.cz. [31.30.173.67])
        by smtp.gmail.com with ESMTPSA id by6-20020a0564021b0600b0043d34ab7ad6sm491661edb.49.2022.08.17.22.48.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 22:48:55 -0700 (PDT)
Date:   Thu, 18 Aug 2022 07:48:53 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <mail@conchuod.ie>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Guo Ren <guoren@kernel.org>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Jessica Clarke <jrtc27@jrtc27.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 3/4] dt-bindings: riscv: add new riscv,isa strings for
 emulators
Message-ID: <20220818054853.7rivuc4qyojzeu3s@kamzik>
References: <20220817201212.990712-1-mail@conchuod.ie>
 <20220817201212.990712-4-mail@conchuod.ie>
 <20220818054014.wad7uqqnmoc2wrbp@kamzik>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220818054014.wad7uqqnmoc2wrbp@kamzik>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 07:40:14AM +0200, Andrew Jones wrote:
> On Wed, Aug 17, 2022 at 09:12:12PM +0100, Conor Dooley wrote:
> > From: Conor Dooley <conor.dooley@microchip.com>
> > 
> > The QEMU virt and spike machines currently export a riscv,isa string of
> > "rv64imafdcsuh",
> > 
> > While the RISC-V foundation has been ratifying a bunch of extenstions
> > etc, the kernel has remained relatively static with what hardware is
> > supported - but the same is not true of QEMU. Using the virt machine
> > and running dt-validate on the dumped dtb fails, partly due to the
> > unexpected isa string.
> > 
> > Rather than enumerate the many many possbilities, change the pattern
> > to a regex, with the following assumptions:
> > - the single letter order is fixed & we don't care about things that
> >   can't even do "ima"
> > - the standard multi letter extensions are all in a "_z<foo>" format
> >   where the first letter of <foo> is a valid single letter extension
> > - _s & _h are used for supervisor and hyper visor extensions.
> > - after the first two chars, a standard multi letter extension name
> >   could be an english   word (ifencei anyone?) so it's not worth
> >   restricting the charset
> > - vendor ISA extensions begind with _x and have no charset restrictions
> > - we don't care about an e extension from an OS pov
> > - that attempting to validate the contents of the multiletter extensions
> >   with dt-validate beyond the formatting is a futile, massively verbose
> >   or unwieldy exercise at best.
> > - ima are required
> > 
> > The following limitations also apply:
> > - multi letter extension ordering is not enforced. dt-schema does not
> >   appear to allow for named match groups, so the resulting regex would
> >   be even more of a headache.
> > - ditto for the numbered extensions.
> > 
> > Finally, add me as a maintainer of the binding so that when it breaks
> > in the future, I can be held responsible!
> > 
> > Reported-by: Rob Herring <robh@kernel.org>
> > Link: https://lore.kernel.org/linux-riscv/20220803170552.GA2250266-robh@kernel.org/
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> > Palmer, feel free to drop the maintainer addition. I just mostly want
> > to clean up my own mess on this when they decide to ratify more
> > extensions & this comes back up again.
> > ---
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index 873dd12f6e89..c0e0bc5dce04 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -9,6 +9,7 @@ title: RISC-V bindings for 'cpus' DT nodes
> >  maintainers:
> >    - Paul Walmsley <paul.walmsley@sifive.com>
> >    - Palmer Dabbelt <palmer@sifive.com>
> > +  - Conor Dooley <conor@kernel.org>
> >  
> >  description: |
> >    This document uses some terminology common to the RISC-V community
> > @@ -79,9 +80,7 @@ properties:
> >        insensitive, letters in the riscv,isa string must be all
> >        lowercase to simplify parsing.
> >      $ref: "/schemas/types.yaml#/definitions/string"
> > -    enum:
> > -      - rv64imac
> > -      - rv64imafdc
> > +    pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:(?:_[zsh][imafdqcbvksh]|_x)(?:[a-z])+)*$

Actually we don't want S and H extensions to be treated like Z, but rather
like X. Only Z extensions have the category character convention. (And I'm
still tempted to just drop the enforcement from Z too, since it adds
additional maintenance and we've already settled for something less than
complete.)

Thanks,
drew

> >  
> >    # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
> >    timebase-frequency: false
> > -- 
> > 2.37.1
> >
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
