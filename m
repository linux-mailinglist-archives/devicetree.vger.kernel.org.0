Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9701C701383
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 02:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241016AbjEMAsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 20:48:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241486AbjEMAss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 20:48:48 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F361D1985
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 17:48:39 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7576eb88a46so669922285a.3
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 17:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1683938919; x=1686530919;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/XcTFDCdOjt0ESAs0+4JmPM1FQzXZaVGz3yFbRxM+pA=;
        b=Vi6Gf8Lf1gSrmVnK9rIA/BZLLoE7Zl8fiNAEyFGwPQk/QZ68+6Az0uBSYKa7Lriv+W
         FqdlcF1W7nTNGfNU8DQ0Giyb7jxjlgPvH4NdOgrPsb4BWF6ixl83zxN+gIzvTvRWeik2
         H3uZK609EEu+WeA2iD0aZKlDh6Bju4rm2pWL+pWW7BcTjv7Hiyk7y3Jy+Yc8e5/QSFo0
         8nVKZn8ALigoYg1SJzPHHHgyXF0Y8f2B5f0pCwanEbhAG6VcL4MibbakOSm/kTJoUldg
         rWzulcxVJ5OAEV1/1vUVhNFjaFczr59eiHs2x6GthlXGKPlF68FimteoHP/6GnFyoYrx
         xSEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683938919; x=1686530919;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/XcTFDCdOjt0ESAs0+4JmPM1FQzXZaVGz3yFbRxM+pA=;
        b=Pwp/lpzMg9fKKLlWoOSFaBFqEulees2ExuQm85qchSZk/FyTf1DjfntDd4p1e1LMUv
         YJTxoYtKfLK/ErmOqwHninlz32vUK8ZTN2+DEsbvQBywp8VvI5A7MNSEK9SNxcTR3838
         hmngmIFl5cNtHHw9zWwphSs2B7pg7C5LUIubBJSvuF5Z/tRgUW/mBEF/1zXdU3TyEuBm
         TTk35NaZjh64dwIB/lnr0Dc1mmivEsmZrI7XTLpfjW2dfaoe6C8osi3Pz59B2hDemFpM
         T+HmTK4J/ym7k8slvVhTwPRAQYk11P44ryi7QlnsbAM47HDsOmcI9gjgtqbV4excTW2E
         wDaA==
X-Gm-Message-State: AC+VfDxPCwtrik7rERsQGVVvq5PaNSoKQyQxj8WJ39hMRCbY2x2/EhrX
        lQDYJIkKfgjZ6WN7Puzr3MGD+SE2SBiqRx6u7Vw=
X-Google-Smtp-Source: ACHHUZ40np0maZNshZo/S1XXTsAhmvDXnx9Fb5DMz5epmwLLhL86v65GPQwsr6UkMYw2rutFqGGUWQ==
X-Received: by 2002:a17:90a:74c6:b0:249:8963:c72 with SMTP id p6-20020a17090a74c600b0024989630c72mr26341732pjl.17.1683938329607;
        Fri, 12 May 2023 17:38:49 -0700 (PDT)
Received: from localhost ([135.180.227.0])
        by smtp.gmail.com with ESMTPSA id q4-20020a17090a304400b0024e2230fdafsm19530636pjl.54.2023.05.12.17.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 17:38:49 -0700 (PDT)
Date:   Fri, 12 May 2023 17:38:49 -0700 (PDT)
X-Google-Original-Date: Fri, 12 May 2023 17:38:46 PDT (-0700)
Subject:     Re: [RFC 0/6] Deprecate riscv,isa DT property?
In-Reply-To: <20230513-produce-frivolous-dacc685bac72@spud>
CC:     atishp@atishpatra.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
        cyy@cyyself.name, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com, krste@sifive.com,
        Andrew Waterman <andrew@sifive.com>, gfavor@ventanamicro.com,
        markhimelstein@riscv.org, philipp.tomsich@vrull.eu
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Conor Dooley <conor@kernel.org>
Message-ID: <mhng-cb423b94-3694-417e-a81c-52751d958546@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 May 2023 17:09:00 PDT (-0700), Conor Dooley wrote:
> On Fri, May 12, 2023 at 04:55:50PM -0700, Palmer Dabbelt wrote:
>> On Fri, 12 May 2023 15:05:24 PDT (-0700), Conor Dooley wrote:
>> > +CC Greg, Mark, Krste, Philipp, Andrew,
>> > 
>> > (this is LKML now, no top posting or html replies)
>> > 
>> > On Fri, May 12, 2023 at 08:40:10PM +0100, Conor Dooley wrote:
>> > > On Fri, May 12, 2023 at 11:01:09AM -0700, Palmer Dabbelt wrote:
>> > > > On Thu, 11 May 2023 15:38:10 PDT (-0700), Conor Dooley wrote:
>> > > > > On Thu, May 11, 2023 at 03:34:24PM -0700, Atish Patra wrote:
>> > > > > > On Thu, May 11, 2023 at 2:47 PM Conor Dooley <conor@kernel.org> wrote:
>> > > > > > > On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
>> > > > > > > > > That's more than last year at this point, and nothing
>> > > has changed in the
>> > > > > > > documentation! Talk's cheap, ehh?
>> > > > > > >
>> > > > > > > > > Yup. I will poke RVI folks to check if it still is the
>> > > plan or changed !!
>> > > > > > > Sounds good, thanks!
>> > > 
>> > > There has been some movement on that front, shall see where it goes
>> > > :upsidedown_smile:
>> > 
>> > There's been some off-list discussion prompted by Atish with some of the
>> > RVI spec folk, from which the upshot __appears__ to be an understanding
>> > that using version numbering to indicate removal of ISA features is a bad
>> > idea.
>> > I'm hoping that this results in the enshrinement of this in the ISA
>> > specs, so that we have something concrete to point to as the basis for
>> > not needing to handle version numbering. Certainly that'd be great for
>> > ACPI and remove concerns there.
>> > 
>> > > > > > We will likely have a vendor specific string parsing logic.
>> > > > > > > Complicating the parsing logic is the exact sort of crap
>> > > that I want
>> > > > > to avoid.
>> > > > > Ya, I think we're reallly overcomplicating things with the ISA
>> > > strings.
>> > > > Let's just deprecate them and move to something that doesn't need all the
>> > > > bespoke string parsing.
>> > > 
>> > > Versioning aside, although that removes a large part of the motivation,
>> > > the interface becomes quite nice:
>> > > of_property_present(node, "riscv,isa-extension-zicbom")
>> > 
>> > My current feeling is that, rather than introducing a key-value type of
>> > property, adding boolean properties for extensions is the way to go
>> > here. The "riscv,isa" part of the DT ABI pre-dates even the ratification
>> > of the base extensions (and thus the removal of some features...).
>> > Starting again with a new property would allow us to define extensions
>> > as per their ratified state, rather than the intermediate & incompatible
>> > states that we have currently got with "riscv,isa".
>> > Such a model does rely on the strengthening of the wording in the
>> > specification.
>> 
>> IMO the important part is that we encode an exact version (or commit if
>> they're going to stop doing versions) of the spec in the DT.  We've gotten
>> burned enough times by just trying to point at the latest spec and trusting
>> that compatibility will be handled in the specs, in practice that doesn't
>> work.
>> 
>> Given how inconsistent the RISC-V version schemes have been, we really can't
>> assign any semantic meaning to version numbers.  So I don't think it matters
>> all that much if we encode this as
>> 
>>    riscv,$SPEC = ["v1.0", "v1.1"]
>> 
>> or
>> 
>>    riscv,$SPEC = true // with the binding saying v1.0 or $SHA...
>>    riscv,$SPEC-1.1 = true // with the binding saying v1.1 or $SHA...
>> 
>> Since we can't ascribe any meaning to those version numbers there's nothing
>> to parse in them, so it's just going to plumb into some lookup table in the
>> kernel either way.  The important part is just that we document exactly what
>> spec version we're encoding, as that way we can avoid getting burned by
>> these changes again in the future.
>
> What I was envisioning was something like:
>
> property:
>   riscv,isa-extension-i:
>     description:
>       This hart implements I, as per version 20191213 of the unpriv
>       spec.
>
> If you don't implement that, then don't populate it. If you do, and
> things break, you keep both pieces.

That seems reasonable to me, I guess the "true" was entirely redundant 
there.  I don't think that makes much of a difference in the rest of the 
discussion, it's just a bit cleaner in the encoding.

> The current:
>
>   riscv,isa:
>     description:
>       Identifies the specific RISC-V instruction set architecture
>       supported by the hart.  These are documented in the RISC-V
>       User-Level ISA document, available from
>       https://riscv.org/specifications/
>
> Is, IMO, utterly unhelpful. My recent addition:
>
>       Due to revisions of the ISA specification, some deviations
>       have arisen over time.
>       Notably, riscv,isa was defined prior to the creation of the
>       Zicsr and Zifencei extensions and thus "i" implies
>       "zicsr_zifencei".
>
> Is accurate, but is a symptom of the problem rather than a solution.

Ya, it's like the GCC docs that say "this is like an ISA string, but 
different".  Good to note, but not that helpful for users.  Though I 
suppose the fact that we can never seem to document how ISA strings work 
is a pretty good sign they're not a good interface...

>> > This had the advantage of being, as I mention above, even easier to
>> > parse in software than the key-value pair business - but also is
>> > trivially implemented in a dt-binding. What I have been trying to do
>> > with the validation of the key-value stuff does not appear to be readily
>> > doable!
>> 
>> IMO that's the most important deciding factor on how these should be
>> encoded.  We're not tracking the ISA string any more, so it doesn't matter
>> how closely those line up.  We do have a chance to actually validate the
>> interface, though, which was a big problem with the ISA strings.
>> 
>> From talking it sounds like the form you're proposing is easier to encode in
>> dt-schema than what I'd proposed.  I didn't look at dt-schema at all before
>> thinking up the interface, so you're probably right ;).
>> 
>> Assuming that's the case it seems like the way to go as for as I'm
>> concerned.
>> 
>> > (Another drawback that has come to mind is that we have no way to
>> > validate whether mutually exclusive extensions have been added with
>> > "riscv,isa")
>> > 
>> > > That also gives us the ability to define what supported vendor
>> > > extensions actually mean in a dt-binding, which to me is a big win in
>> > > terms of the aforementioned "wild west".
>> > 
>> > Vendor extensions etc are oft quoted as one of the strengths of RISC-V,
>> > and my feeling is that "riscv,isa" is not a mechanism where we can
>> > easily handle meanings - especially for vendor stuff where there is
>> > otherwise no centralised location for _xfoo -> feature mappings.
>> 
>> IMO there's not any fundamental difference: it's not like the standard
>> extensions have any meaningful naming/versioning scheme, so it's still all
>> just lookup tables.
>> 
>> We do get the same benefits from schema validation that we'd get for
>> standard extensions, though.  That's probably a way bigger win for vendor
>> extensions, as it'll close a big loophole in our DT validation right now
>> where users can cram arbitrary stuff into "riscv,isa" and then we have to
>> just deal with it.
>
> TL;DR appears to be that I should revise this in a way that functions
> in a way that is compatible with dt-schema & send a non-RFC version of
> this that also CCs the likes of QEMU, U-Boot & the BSD folk.

Sounds good, thanks for picking this up.

> I'll give it a wee bit for the RVI lads to figure out what they are
> doing.
>
> Thanks,
> Conor.
