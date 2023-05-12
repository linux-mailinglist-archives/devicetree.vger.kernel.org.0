Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56B3C701261
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 01:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240305AbjELXU5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 19:20:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239656AbjELXU4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 19:20:56 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B7CF2720
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 16:20:55 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5144a9c11c7so9596757a12.2
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 16:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1683933655; x=1686525655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tsqv5yZtjzgGVCTC6zYg+so9N6LNpVChrepKDtNMD+k=;
        b=Be/MgCmasraQD7qoD4UIHi1tb//vBhOuvsHO5huZxvtbFTF4+pUU8RvGbnWpPPrCvB
         twtU/fQwoLGEq1KuBR1S9QhCUh1/lUdcE35FTMRfQLFjdH2zMq6C16l3WYIQAbMJ6HVl
         6FTmQgFhtxTW5bpC8ChukgjfJUPlzbUi27EKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683933655; x=1686525655;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tsqv5yZtjzgGVCTC6zYg+so9N6LNpVChrepKDtNMD+k=;
        b=feoOtX8sLckabKrMWMQOpy5MhD06V5DhXjAL2scHR6ccwUat0PszC3Vt/AQLsjwlAj
         2TXoVCx/Et+yFPRNyKHXWoVqAbEfFBVZGF0RV5O+fG6X+qz8EtHbgXQsdhktcyJR1dAj
         royWBL5MQqWpWpapl62bs+dtNfO6jeVCyjiFjATxcW4zjVjTLwlGldcvnmUHXx0J4ZgJ
         bkiimGT9pvrlwRFO9fp8PwLEbD2SOaw1oPyILXh4tEw+ZkJGRcudgqMgSdn2hQ8SRyCg
         yN2lyNHIXAxyFeruBOMrR1gBGKnOyzkj7IKzdhjJg9/octFlB/FR79hDqQsonB/eGXRF
         C5xQ==
X-Gm-Message-State: AC+VfDxA+mdhuD0eqEYucbBz+BdzOV4sjKw3B54KG1psRuDnLqAfeXQ5
        HZkV+yjSKJ3v/+O9/sq9GxP0qRqsGXVqBTqqAuje
X-Google-Smtp-Source: ACHHUZ7frChYX75PX3AVx0D4QWZo6RtsOgDhRSqVIl2P/AqZEUWChap9VSPwm68Aansd9qCGDM+eWrKOrEReApbG0FU=
X-Received: by 2002:a05:6a20:7da1:b0:101:65a2:e06b with SMTP id
 v33-20020a056a207da100b0010165a2e06bmr18352683pzj.20.1683933654882; Fri, 12
 May 2023 16:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230511-occupancy-cleat-06e532e3ea11@spud> <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud> <20230512-exhume-unfold-f104dd4c4cbf@spud>
In-Reply-To: <20230512-exhume-unfold-f104dd4c4cbf@spud>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Fri, 12 May 2023 16:20:43 -0700
Message-ID: <CAOnJCULTwDkWdKhJRr2ATPcLfHbDN6_VK=kJhqE3WmmrAGAB7Q@mail.gmail.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
To:     Conor Dooley <conor@kernel.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        conor+dt@kernel.org, heiko@sntech.de, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, Krste Asanovic <krste@sifive.com>,
        Andrew Waterman <andrew@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>
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

On Fri, May 12, 2023 at 3:05=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
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

The only problem with boolean properties is you lose the ability to
add extra information
about an ISA extension in case we require it. One of the examples is
CMO extensions.
The current riscv,isa string parsing scheme that doesn't have
infrastructure to do that either.

We had some related discussions in the past about how to extend the
key-value pair to include
that value.

https://lore.kernel.org/lkml/CAOnJCUKgt1+SVXTBmGChJf74JrsqeqACXbjQAXnhFALkX=
hPFew@mail.gmail.com/

> of the base extensions (and thus the removal of some features...).
> Starting again with a new property would allow us to define extensions
> as per their ratified state, rather than the intermediate & incompatible
> states that we have currently got with "riscv,isa".
> Such a model does rely on the strengthening of the wording in the
> specification.
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



--=20
Regards,
Atish
