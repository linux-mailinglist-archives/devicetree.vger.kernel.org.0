Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A1A06FFBDB
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 23:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239292AbjEKV16 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 17:27:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232437AbjEKV16 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 17:27:58 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1DE59ED
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 14:27:56 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-24ded4b33d7so6342339a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 14:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1683840475; x=1686432475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oqglBDGf3E7s6ilJlUS9d0suN4w0n8H/tkEV5PHXSco=;
        b=bo1FIrhCYtucpA9gP4ILc+/vak2xoGsyIBmzdUkkTACYeHoVT31xCfNHz7+GE4M9LC
         z4LGMqD4RybuA8qdRVXFOROrzUkOb3c59lo7zXqp6okFSC/ci2ZizjS7NqcVInqeLviN
         wL27nBamcXQiP8dVuJt+rGLhcC7QNNgo5vHRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683840475; x=1686432475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oqglBDGf3E7s6ilJlUS9d0suN4w0n8H/tkEV5PHXSco=;
        b=C9vAS0S6hcOJzm705PGZZyPfGvJ+oeaEiJI62MTZZUtyjfdz5h7ONI6IkZGuacm5xl
         A9c5gq+n9ZhsYOEnLDY2D7FPOxWqB2GMRpcHUsTrxXtBYy28mqLbUbw5wO1hjJOy/zWY
         qCzYiyJU/nd1nbJl/7MyfDQx6+4FKaOw9MXlpUV9cgCGbkpGVFUjOT5TeXoQAiTNO5PT
         qYyPfgUbUzKssXmARx3a0xSMmo4MpgvbdRbEFXRmYWTI551FgrfNJMCQLo5qpz8GdzeD
         QyC5fREnk5MxSmu2441M+W1VMeZ/tI6JV2G32ZuuWyOKgFR3/6MpLfxTOQOayV0/waUz
         7Ovg==
X-Gm-Message-State: AC+VfDylzhUi1zCxCfwWktAc3kxvgHlWZajbdNkkr2qH8fcEVwXnZ6+h
        PB4+z3YRhHYwgV4RWZ3mJy5y6ZvXyqWGiLQwFfgb
X-Google-Smtp-Source: ACHHUZ4EIvQPUqAysTvHay11Y8qg6IGlO6R5/sJXQtWQQqgF581LcBOsrKV05Y1jcZy5/zlMkToPlC9NBm+8O8Fq/Dc=
X-Received: by 2002:a17:90a:f8d:b0:250:85ba:6c3d with SMTP id
 13-20020a17090a0f8d00b0025085ba6c3dmr15057561pjz.6.1683840475502; Thu, 11 May
 2023 14:27:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230508-hypnotic-phobia-99598439d828@spud>
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Thu, 11 May 2023 14:27:44 -0700
Message-ID: <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Yangyu Chen <cyy@cyyself.name>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 8, 2023 at 11:20=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> From: Conor Dooley <conor.dooley@microchip.com>
>
> Yo,
>
> So here's some bits that I have been poking at on top of the recent bits
> of ISA string parser work:
> https://lore.kernel.org/linux-riscv/20230504-divisive-unsavory-5a2ff0c3c2=
d1@spud/
>
> TL;DR is that I do not trust the riscv,isa property to carry sufficient
> information to not cause us problems in the future.
>
> Note that this is a very very early RFC, and the implementation etc is
> intended to be *demonstrative* rather than acceptable.
>
> Problem
> =3D=3D=3D=3D=3D=3D=3D
>
> I've been kinda triggered by the whole "Zicsr and Zifencei are not part
> of i" thing, where the dt-binding was defined prior to that split and
> thus `i` means `zicsr_zifencei` without a real way to differentiate
> between the two. From a Linux kernel point of view, it's "fine" because
> we require require Zicsr and Zifencei, so a system without them will not
> get far enough along for this problem to even manifest - but that's just
> the example that we already have in front of us & we don't know what
> might be done in the future when it comes to backwards-compatilibty
> issues.
>
> Yes you might say, expand the dt-binding to allow the version numbers,
> as the Linux kernel's parser already supports strings containing the
> version number (although it just ignores them). But that may not be the
> case for any other consumer of the riscv,isa property - and such an
> expansion of the dt-binding may actually cause them problems. A valid
> parser for the current dt-binding may very well fall over if it is
> expanded to allow free-form numbering.
>
> Secondly, it is not realistic to maintain a list of every possible
> version that someone may insert for every extension to do an explicit
> comparison, nor can we rely on RVI interpreting "backwards compatible"
> in a way that means software intended for the older version will still
> run. (Or for that matter, can we rely on vendors *at all*).
> If we could rely on that, then we could at least read "x2p2" and realise
> that we can fall back to "x2p0", but I don't think we have that luxury.
>
> The other thought I had was that perhaps some software may choose not to
> implement version x.y.0 of an extension and only support x.z.0, z > y
> for some reason. We'd want to refuse that extension if the extension is
> found, but the version is not listed as being something compatible with
> x.z.0, and while the ISA spec does say that the default assumption is
> 2p0 for unversioned extensions in its current form, I struggle to
> extrapolate that to extensions not currently part of the unpriv spec,
> but rather defined on their own.
>

That's a fair point. However, any new RVI ISA extension will only have v1.0
as per my knowledge. Any new feature will have to be part of a
different extension.
At least that was the plan discussed last year.

https://github.com/riscv/riscv-isa-manual/issues/781#issuecomment-983222655

Are you aware of any discussion that changes this ?

> Proposal
> =3D=3D=3D=3D=3D=3D=3D=3D
>
> Instead, I propose a per-extension key/value property, for example
> riscv,isa-extension-v =3D "v1.0.0"
> in the style of compatible strings - so the value is not what hardware
> implements, but rather the minimum-known version for which the
> programming model is compatible.
> Until something comes along that is not compatible with v1.0.0 that we
> want to support in the kernel, no new keys need to be added to the
> kernel, just changes to the dt-binding.
>
> The binding for it is currently set up so that either you need to
> be compatible version with v1.0.0, or add a special case. Although
> v1.0.0 in this case is just a placeholder number, it could be v2.0.0 or
> any other number. It could even be "initial" to something like that, to
> match against whatever the first released spec version is.
>
>         As an aside, the dt-binding doesn't actually work properly for
>         enforcement etc at present, but I wanted to get some feedback
>         before going too far down the rabbit hole there.
>
> This method gives us the implemented version -> compatible version "for
> free", as it is done by the creator of the DT, rather than software
> running on the platform.
> We can hopefully be strict about what people are inserting version wise,
> using dt-validate, rather than it being pot-luck as to what gets filled i=
n,
> if anything.
> I'm very reluctant to add more complexity to the property, and therefore
> parsers, when a key-value type interface is more easily used with
> standard OF functions - of_property_present(), of_property_read_string()
> etc to use the Linux kernel's examples.
>
> Another benefit of this approach is that we, by way of the dt-binding,
> control the meaning of the versions.
> If a vendor decides to release something using Xfoo, but provides no
> version information, we can then assign one ourselves in case Xfoo in
> their next SoC is not quite the same. Something similar came up this
> morning, talking with Heiko about the TH1520, and how to explain the
> meaning of "_xfoo" properties in "riscv,isa". The ISA spec documentation
> is pointed to by the binding for that, but vendor properties are
> obviously not described there. At the expensive of bloating the binding
> file, the proposed scheme would provide a way to stably document vendor
> properties.
>
> I guess I am trying to design in some flexibility rather than two years
> down the line realise that the isa string is a source of problems, and
> have to try and retrofit something in.
>
> I would like to encourage people to populate their DT with every
> extension under the sun that they support, even if software doesn't use
> it right now (look at the starfive folk that didn't add the bitmanip
> until told to) so that if/when it is used in the future these boards
> will pick up the support automagically.
>
> ACPI
> =3D=3D=3D=3D
>
> This whole proposal is written for a pre-ACPI world, and I have yet to
> give any thought to how such a key-value interface would work there.
> I'm not really sure how to deal with that, given they have some ECR
> process yada yada, but thoughts on that side of things would be very
> much appreciated.
>
> Why x.y.z rather than x.y per the ISA specs?
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I said the same, Palmer wanted x.y.z. For example, the T-HEAD vector stuf=
f
> is 0.7.1 & he cited an example (that now eludes me) of a breaking change
> in an extension between 1.0 and 1.0.1. God knows how vendors will choose
> to version things, so having the extra level is likely advantageous.
>
> Other stuff
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The code here is very much in an RFC state. I tested it on an Icicle kit
> as a PoC - and it does work, but I have not even remotely tested it
> sufficiently.
>
> The dt-binding changes need to be worked on as they do not actually
> enforce anything!
>
> I've intentionally only send this to the linux lists, despite this
> having wider impact, as it is in a very early state & there's no point
> involving all & sundry if the idea is hated.
> If it is not universally derided, I will send the binding patches to
> various other lists also.
>
> What do I hate about this?
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>
> I fear bloat in the dt-binding and devicetrees as properties are added
> mostly. Depending on what I have to do to get enforcement with
> dt-validate, a complicated binding is also a concern.
>
> Suggestions etc very much welcome :)
>
> Cheers,
> Conor.
>
> CC: Rob Herring <robh+dt@kernel.org>
> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> CC: Conor Dooley <conor+dt@kernel.org>
> CC: Palmer Dabbelt <palmer@dabbelt.com>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Heiko Stuebner <heiko@sntech.de>
> CC: Andrew Jones <ajones@ventanamicro.com>
> CC: Sunil V L <sunilvl@ventanamicro.com>
> CC: Yangyu Chen <cyy@cyyself.name>
> CC: devicetree@vger.kernel.org
> CC: linux-riscv@lists.infradead.org
>
> Conor Dooley (6):
>   dt-bindings: riscv: clarify what an unversioned extension means
>   dt-bindings: riscv: add riscv,isa-extension-* property and
>     incompatible example
>   RISC-V: deprecate riscv,isa & replace it with per-extension properties
>   RISC-V: add support for riscv,isa-base property
>   RISC-V: drop a needless check in print_isa_ext()
>   riscv: dts: microchip: use new riscv,isa-extension-* properties for
>     mpfs
>
>  .../devicetree/bindings/riscv/cpus.yaml       |  64 +++++-
>  arch/riscv/boot/dts/microchip/mpfs.dtsi       |  42 +++-
>  arch/riscv/include/asm/hwcap.h                |  29 ++-
>  arch/riscv/kernel/cpu.c                       | 124 +++---------
>  arch/riscv/kernel/cpufeature.c                | 188 +++++++++++++++---
>  5 files changed, 316 insertions(+), 131 deletions(-)
>
> --
> 2.39.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



--=20
Regards,
Atish
