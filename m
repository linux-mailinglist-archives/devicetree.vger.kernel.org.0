Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6BA5701527
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 09:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229786AbjEMHrR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 03:47:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjEMHrQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 03:47:16 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 566DD272C
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 00:47:15 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-ba6e8965227so3159100276.0
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 00:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1683964034; x=1686556034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Du5txBgXPaY4l9wXwu8h1eWyOo8+VHL+14eNIwOHuZY=;
        b=eBGlGQesjhuFxczyZSm0ycELKKu8rq+6NNoDDFHIOh2XzZUhq/bo2U57GZl/9Mo5jB
         k+4EW+f3CVnagbt82WrePsBb8uZ7rtlaxmmcaXdmyJGbNrO5sHzwNQJ820FaXCPIaXXC
         l19ODE8K034wsj7SffW2Jj98ojpl51vR24z4oC64Rngy1HrjZjwb5JhphpVLPMgJdHIp
         umv+CAbiDeRhVlFRLfVt4C+UUW+ZWGIax1OsR5Nd57qQ9WvTnz3a/aG39/fm4Q4gET2+
         YWv/If8L/5flDciCiN491dqvx1PGsrLPePG+mZFej4A2/pT+SDPvKn+UVPgacSzFuRgL
         CIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683964034; x=1686556034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Du5txBgXPaY4l9wXwu8h1eWyOo8+VHL+14eNIwOHuZY=;
        b=E0C0FGyHY8GTX+FrK0b0bc8Q90WTEAiYQCSOr8SyJO36xH1uDCjjSRhLgj6b7fcc1y
         OxHJROX8bUhalyyIDE3HKXS1B/fCZQ9H9JrkfyoByFRsSEA3rvtvwCyCF+xwW7DxE/uM
         M+t5gqgs1AcMRYF8zeSrp7EGmYdpD96Q1P+C9EfLCVoLqKhRV9i3WRFFCdAYpxihWkWD
         5BRxZzR6ILBEHb3kHsVI5n7K/P1v/tLngvOSe2ootfei5tvvHexIvlSuYJchERNnHvic
         bwI6WMJ7JeNRdpSZDfc4FEVjU0sbLZXbC2Ytai04aeTGePjPBXPvlBSIbdba0av0LSj9
         95FQ==
X-Gm-Message-State: AC+VfDwJCYVqR5UXUomHbYtQkYs9knxDbJaAAAg7fadVwueLxlUYn9G6
        uAngtAP1siH182kcjEZI0S2Ojw0xqnE7o+0+afkxWQ==
X-Google-Smtp-Source: ACHHUZ7UeK9nJxVy+YqTMODqpw6+x+6wa2kJMrj461CO30wNanBeTK4N1GrGjvU9+HGi8Ij97qWdTFKPCtg+fME7BqM=
X-Received: by 2002:a05:6902:1545:b0:b96:5fd4:c967 with SMTP id
 r5-20020a056902154500b00b965fd4c967mr32885432ybu.57.1683964034429; Sat, 13
 May 2023 00:47:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230511-occupancy-cleat-06e532e3ea11@spud> <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud> <20230512-exhume-unfold-f104dd4c4cbf@spud>
In-Reply-To: <20230512-exhume-unfold-f104dd4c4cbf@spud>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Sat, 13 May 2023 13:17:03 +0530
Message-ID: <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
To:     Conor Dooley <conor@kernel.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>, atishp@atishpatra.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        conor+dt@kernel.org, heiko@sntech.de, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>,
        Sunil V L <sunilvl@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 13, 2023 at 3:35=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> +CC Greg, Mark, Krste, Philipp, Andrew,
>
> (this is LKML now, no top posting or html replies)
>
> On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
> > On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
> > > On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
> > > > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
> > > > > On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@kerne=
l.org> wrote:
> > > > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
> > > >
> > > > > > That's more than last year at this point, and nothing has chang=
ed in the
> > > > > > documentation! Talk's cheap, ehh?
> > > > > >
> > > > >
> > > > > Yup. I will poke RVI folks to check if it still is the plan or ch=
anged !!
> > > >
> > > > Sounds good, thanks!
> >
> > There has been some movement on that front, shall see where it goes
> > :upsidedown_smile:
>
> There's been some off-list discussion prompted by Atish with some of the
> RVI spec folk, from which the upshot __appears__ to be an understanding
> that using version numbering to indicate removal of ISA features is a bad
> idea.
> I'm hoping that this results in the enshrinement of this in the ISA
> specs, so that we have something concrete to point to as the basis for
> not needing to handle version numbering.
> Certainly that'd be great for ACPI and remove concerns there.
>
> > > > > We will likely have a vendor specific string parsing logic.
> > > >
> > > > Complicating the parsing logic is the exact sort of crap that I wan=
t
> > > > to avoid.
> > >
> > > Ya, I think we're reallly overcomplicating things with the ISA string=
s.
> > > Let's just deprecate them and move to something that doesn't need all=
 the
> > > bespoke string parsing.
> >
> > Versioning aside, although that removes a large part of the motivation,
> > the interface becomes quite nice:
> > of_property_present(node, "riscv,isa-extension-zicbom")
>
> My current feeling is that, rather than introducing a key-value type of
> property, adding boolean properties for extensions is the way to go
> here. The "riscv,isa" part of the DT ABI pre-dates even the ratification
> of the base extensions (and thus the removal of some features...).
> Starting again with a new property would allow us to define extensions
> as per their ratified state, rather than the intermediate & incompatible
> states that we have currently got with "riscv,isa".
> Such a model does rely on the strengthening of the wording in the
> specification.

ISA string parsed for both DT and ACPI.

For ACPI, moving to a per-extension bit in a bitmap and defining
a new bit with every ISA extension will be very very inconvenient
for updating the ACPI specs. We should continue the ISA string
parsing at least for ACPI.

For DT, users can either use "riscv,isa" DT property or use boolean
DT properties.

>
> This had the advantage of being, as I mention above, even easier to
> parse in software than the key-value pair business - but also is
> trivially implemented in a dt-binding. What I have been trying to do
> with the validation of the key-value stuff does not appear to be readily
> doable!
>
> (Another drawback that has come to mind is that we have no way to
> validate whether mutually exclusive extensions have been added with
> "riscv,isa")
>
> > That also gives us the ability to define what supported vendor
> > extensions actually mean in a dt-binding, which to me is a big win in
> > terms of the aforementioned "wild west".
>
> Vendor extensions etc are oft quoted as one of the strengths of RISC-V,
> and my feeling is that "riscv,isa" is not a mechanism where we can
> easily handle meanings - especially for vendor stuff where there is
> otherwise no centralised location for _xfoo -> feature mappings.
>
> Cheers,
> Conor.

Regards,
Anup
