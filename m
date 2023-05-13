Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0657701A10
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 23:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjEMVec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 17:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjEMVeb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 17:34:31 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4D652704
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 14:34:28 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f4271185daso70973525e9.2
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 14:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jrtc27.com; s=gmail.jrtc27.user; t=1684013667; x=1686605667;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/vLBPvrsIsiN7w5pMy74KH2saDihqP0R8Ezgeiomxc=;
        b=YbDe5y43mVbdrIywbptD4VHiFZRVJnd1oaaqkVH6PGzzfAsCXMu6F1Z3vzyn9FVHek
         ddCQcGnt+7EHJm2YTyynSbCFtSF/e5i31q+Hrd++JzDIRnEt/Kl56ukkwiFE4ufZWQTg
         NWuinPqcg2MOjZhHA+R55T9XX4BoKsrHPYHQgI/mnwSAm3RApB6AXE4SREPXtk0rSV/9
         A/BEwiFoBSnxAex5XFnNGMjEYlUlNBj2ewc0FTK2DRDshHLLWr3VpCp1egDOxMZynF1g
         fSJPBONW36VWG9+HPZZrBc9/THsx3S4WUdjG7G7oGPCkfPEP4lVsm0YoV3k41GTA+zoY
         hwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684013667; x=1686605667;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/vLBPvrsIsiN7w5pMy74KH2saDihqP0R8Ezgeiomxc=;
        b=Jl8O21ge9tT5EPxnqeLryKfk2ZNPuafEsNabMYtshwEV5VIr9En+N09ofF5tDXu0t0
         bXbEfVO4H/tIRPd3oRlBwkHK55XjaFiF3pf/qi7vixeQ4g184rqBsxjZnn2NdkGy4ac+
         iGlYxyVA7TkoMUXZ4W3tZMBVjH3lTB+y8GCZSJZtVUQgeUtOlIy2eMSv1PeuRt1gfoRP
         s1Js4EHoPcD9GEZEa7FE1878kvthFfLM+261h6NPdaiMH9OaiBYNEdyxnGDJi7zp8aM6
         iE0U4WVvFXL/MIIQyhy2uRH0dowQ6IJ542N90Se5EyJBacX8VoI0FW9tiOsBmuKCt75V
         hnFw==
X-Gm-Message-State: AC+VfDxa7hAqPMPLoGuOm18GOfX1JjstUU15wn7Fol5ETG2U5WOPLSNp
        pdzL7kwCpPekMpXYBU69G6/aJg==
X-Google-Smtp-Source: ACHHUZ4rPgcBTpiZtTgCqnVJCy0Jkz69uCx7oHYA5esBE3P4BnAvs7i69nk/mFf2Yvha/RarjOQukQ==
X-Received: by 2002:a7b:cb94:0:b0:3f4:ec32:69fd with SMTP id m20-20020a7bcb94000000b003f4ec3269fdmr5831997wmi.40.1684013667334;
        Sat, 13 May 2023 14:34:27 -0700 (PDT)
Received: from smtpclient.apple ([131.111.5.246])
        by smtp.gmail.com with ESMTPSA id i1-20020a5d55c1000000b003062b2c5255sm27567562wrw.40.2023.05.13.14.34.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 May 2023 14:34:26 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
From:   Jessica Clarke <jrtc27@jrtc27.com>
In-Reply-To: <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
Date:   Sat, 13 May 2023 22:34:15 +0100
Cc:     Conor Dooley <conor@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, conor+dt@kernel.org,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greg Favor <gfavor@ventanamicro.com>,
        Philipp Tomsich <philipp.tomsich@vrull.eu>,
        Andrew Waterman <andrew@sifive.com>, cyy@cyyself.name,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Atish Patra <atishp@atishpatra.org>,
        Krste Asanovic <krste@sifive.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Mark Himelstein <markhimelstein@riscv.org>,
        Andrew Jones <ajones@ventanamicro.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <12BD8A89-CC3C-4C67-A501-7BB6BAD2EF59@jrtc27.com>
References: <20230511-occupancy-cleat-06e532e3ea11@spud>
 <mhng-495c690b-454c-408f-a4f2-287d7ce8a9ea@palmer-ri-x1c9a>
 <20230512-streak-camper-08a68afb5897@spud>
 <20230512-exhume-unfold-f104dd4c4cbf@spud>
 <CAK9=C2XJDDYKN_HO8Q2OShQs=crQUhx4aUi5Xx4=YiAA9OYSqQ@mail.gmail.com>
To:     Anup Patel <apatel@ventanamicro.com>
X-Mailer: Apple Mail (2.3731.500.231)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13 May 2023, at 08:47, Anup Patel <apatel@ventanamicro.com> wrote:
>=20
> On Sat, May 13, 2023 at 3:35=E2=80=AFAM Conor Dooley =
<conor@kernel.org> wrote:
>>=20
>> +CC Greg, Mark, Krste, Philipp, Andrew,
>>=20
>> (this is LKML now, no top posting or html replies)
>>=20
>> On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
>>> On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
>>>> On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
>>>>> On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
>>>>>> On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley =
<conor@kernel.org> wrote:
>>>>>>> On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
>>>>>=20
>>>>>>> That's more than last year at this point, and nothing has =
changed in the
>>>>>>> documentation! Talk's cheap, ehh?
>>>>>>>=20
>>>>>>=20
>>>>>> Yup. I will poke RVI folks to check if it still is the plan or =
changed !!
>>>>>=20
>>>>> Sounds good, thanks!
>>>=20
>>> There has been some movement on that front, shall see where it goes
>>> :upsidedown_smile:
>>=20
>> There's been some off-list discussion prompted by Atish with some of =
the
>> RVI spec folk, from which the upshot __appears__ to be an =
understanding
>> that using version numbering to indicate removal of ISA features is a =
bad
>> idea.
>> I'm hoping that this results in the enshrinement of this in the ISA
>> specs, so that we have something concrete to point to as the basis =
for
>> not needing to handle version numbering.
>> Certainly that'd be great for ACPI and remove concerns there.
>>=20
>>>>>> We will likely have a vendor specific string parsing logic.
>>>>>=20
>>>>> Complicating the parsing logic is the exact sort of crap that I =
want
>>>>> to avoid.
>>>>=20
>>>> Ya, I think we're reallly overcomplicating things with the ISA =
strings.
>>>> Let's just deprecate them and move to something that doesn't need =
all the
>>>> bespoke string parsing.
>>>=20
>>> Versioning aside, although that removes a large part of the =
motivation,
>>> the interface becomes quite nice:
>>> of_property_present(node, "riscv,isa-extension-zicbom")
>>=20
>> My current feeling is that, rather than introducing a key-value type =
of
>> property, adding boolean properties for extensions is the way to go
>> here. The "riscv,isa" part of the DT ABI pre-dates even the =
ratification
>> of the base extensions (and thus the removal of some features...).
>> Starting again with a new property would allow us to define =
extensions
>> as per their ratified state, rather than the intermediate & =
incompatible
>> states that we have currently got with "riscv,isa".
>> Such a model does rely on the strengthening of the wording in the
>> specification.
>=20
> ISA string parsed for both DT and ACPI.
>=20
> For ACPI, moving to a per-extension bit in a bitmap and defining
> a new bit with every ISA extension will be very very inconvenient
> for updating the ACPI specs. We should continue the ISA string
> parsing at least for ACPI.
>=20
> For DT, users can either use "riscv,isa" DT property or use boolean
> DT properties.

Can we please not gratuitously have two ways of doing the same thing.

I say this as a non-Linux OS that has to deal with whatever Linux
decides to do with device trees. It is a total nuisance when you flip
flop on things and we have to follow suit. Please consider the breakage
very carefully.

Jess

>> This had the advantage of being, as I mention above, even easier to
>> parse in software than the key-value pair business - but also is
>> trivially implemented in a dt-binding. What I have been trying to do
>> with the validation of the key-value stuff does not appear to be =
readily
>> doable!
>>=20
>> (Another drawback that has come to mind is that we have no way to
>> validate whether mutually exclusive extensions have been added with
>> "riscv,isa")
>>=20
>>> That also gives us the ability to define what supported vendor
>>> extensions actually mean in a dt-binding, which to me is a big win =
in
>>> terms of the aforementioned "wild west".
>>=20
>> Vendor extensions etc are oft quoted as one of the strengths of =
RISC-V,
>> and my feeling is that "riscv,isa" is not a mechanism where we can
>> easily handle meanings - especially for vendor stuff where there is
>> otherwise no centralised location for _xfoo -> feature mappings.
>>=20
>> Cheers,
>> Conor.
>=20
> Regards,
> Anup
>=20
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


