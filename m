Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED1E6700E64
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 20:09:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235775AbjELSJE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 14:09:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjELSJE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 14:09:04 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F405B170F
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 11:08:59 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1ab0c697c2bso94916375ad.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 11:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20221208.gappssmtp.com; s=20221208; t=1683914939; x=1686506939;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ncIB5GRFCuqDF5RFJqvSRahM7HsRGDff3Z2iS5VZUPo=;
        b=kHRsFBkHh3cA4NN/KPoHT4P2l/ugsQ5G5bmLKB4C2k03qJ+WSMFKivf31B8hme1aM9
         yFgxU+rF3sxBQjFx5UB4BdEiFGBeYEN9TAR88JrLcbpMBj+iGBN4lVm8ZewDqKsoqua1
         1e3a4eGVEfi+ckUpwm8fm36D2LBXI6jO6x5cdbJaZ8D4GGmYN8P69mhlveChqPL445pR
         joO4LILiG37icGGptxPoQvMF0R2xpMVZ4uknSk8I3OMUgH4XhTGCfXx46rtz5K/B1fmN
         VCMC3lHWXJ/ks7awi0f5jyw0JEScr5sCb8P0tJlx9Ae4hGBmiY6gBidZuvGsqjIduIvi
         434g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683914939; x=1686506939;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ncIB5GRFCuqDF5RFJqvSRahM7HsRGDff3Z2iS5VZUPo=;
        b=YCGNYzBHZ4G2nXeNkuIfdcd30HM57FK08pa3Y5wfb7xajkTZyVu5mVyJprDfZ+4p6+
         +TPfdrXbd2tnDD1K2udydI+6PioNvt8SoSKwtrVblaZEoFPNLiFa9u/4v+l8Q/bP6Ucg
         On0jgoUITzWCtKZHCMxu1+jdKqGGG1ccLDZ7/uG4LyehDapZ6ZolfeAdQwFnSK1E0+xb
         HWqQWdRxZlvreG5AqlFP9SUdQ68+nld0c4g3uEZxOiSDsfXwSa1SWt9T4mz9RaHZlYNo
         8WIMhXDoC5G+KGH5VR7MZtUUIagGaN7WF/W+z5CKyXeZD67Pqi7o3DDIISO7TgwHxGZs
         wy6g==
X-Gm-Message-State: AC+VfDz56ryGNbO3DzgHX9eDoq50bj1xLwhzJ7f9Xggmo9SCsQBDdZ5i
        NMy/3izYhR09xcsaH8w4wFFMWQ==
X-Google-Smtp-Source: ACHHUZ7lfDq/46GluYY3yZqbczLcZB9NtVQorwaKiEjOIlxeoD7SCL/FgmGTMcPLsvN0InrRjXR1Lw==
X-Received: by 2002:a17:902:c1cd:b0:1ab:18ea:f922 with SMTP id c13-20020a170902c1cd00b001ab18eaf922mr26131683plc.52.1683914939188;
        Fri, 12 May 2023 11:08:59 -0700 (PDT)
Received: from localhost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id t17-20020a170902e85100b0019309be03e7sm8219502plg.66.2023.05.12.11.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 11:08:58 -0700 (PDT)
Date:   Fri, 12 May 2023 11:08:58 -0700 (PDT)
X-Google-Original-Date: Fri, 12 May 2023 11:08:38 PDT (-0700)
Subject:     Re: [RFC 0/6] Deprecate riscv,isa DT property?
In-Reply-To: <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
CC:     Conor Dooley <conor@kernel.org>, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
        cyy@cyyself.name, Conor Dooley <conor.dooley@microchip.com>,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        ajones@ventanamicro.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     atishp@atishpatra.org
Message-ID: <mhng-139bc54b-df8f-45c7-8a16-c80385f47ce1@palmer-ri-x1c9a>
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

On Thu, 11 May 2023 14:27:44 PDT (-0700), atishp@atishpatra.org wrote:
> On Mon, May 8, 2023 at 11:20 AM Conor Dooley <conor@kernel.org> wrote:
>>
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Yo,
>>
>> So here's some bits that I have been poking at on top of the recent bits
>> of ISA string parser work:
>> https://lore.kernel.org/linux-riscv/20230504-divisive-unsavory-5a2ff0c3c2d1@spud/
>>
>> TL;DR is that I do not trust the riscv,isa property to carry sufficient
>> information to not cause us problems in the future.
>>
>> Note that this is a very very early RFC, and the implementation etc is
>> intended to be *demonstrative* rather than acceptable.
>>
>> Problem
>> =======
>>
>> I've been kinda triggered by the whole "Zicsr and Zifencei are not part
>> of i" thing, where the dt-binding was defined prior to that split and
>> thus `i` means `zicsr_zifencei` without a real way to differentiate
>> between the two. From a Linux kernel point of view, it's "fine" because
>> we require require Zicsr and Zifencei, so a system without them will not
>> get far enough along for this problem to even manifest - but that's just
>> the example that we already have in front of us & we don't know what
>> might be done in the future when it comes to backwards-compatilibty
>> issues.
>>
>> Yes you might say, expand the dt-binding to allow the version numbers,
>> as the Linux kernel's parser already supports strings containing the
>> version number (although it just ignores them). But that may not be the
>> case for any other consumer of the riscv,isa property - and such an
>> expansion of the dt-binding may actually cause them problems. A valid
>> parser for the current dt-binding may very well fall over if it is
>> expanded to allow free-form numbering.
>>
>> Secondly, it is not realistic to maintain a list of every possible
>> version that someone may insert for every extension to do an explicit
>> comparison, nor can we rely on RVI interpreting "backwards compatible"
>> in a way that means software intended for the older version will still
>> run. (Or for that matter, can we rely on vendors *at all*).
>> If we could rely on that, then we could at least read "x2p2" and realise
>> that we can fall back to "x2p0", but I don't think we have that luxury.
>>
>> The other thought I had was that perhaps some software may choose not to
>> implement version x.y.0 of an extension and only support x.z.0, z > y
>> for some reason. We'd want to refuse that extension if the extension is
>> found, but the version is not listed as being something compatible with
>> x.z.0, and while the ISA spec does say that the default assumption is
>> 2p0 for unversioned extensions in its current form, I struggle to
>> extrapolate that to extensions not currently part of the unpriv spec,
>> but rather defined on their own.
>>
>
> That's a fair point. However, any new RVI ISA extension will only have v1.0
> as per my knowledge. Any new feature will have to be part of a
> different extension.
> At least that was the plan discussed last year.
>
> https://github.com/riscv/riscv-isa-manual/issues/781#issuecomment-983222655
>
> Are you aware of any discussion that changes this ?

That comment was made in November 2021.  The recently ratified list 
<https://wiki.riscv.org/display/HOME/Recently+Ratified+Extensions> has a 
bunch in November that I'm going to skip, but since then there's been:

* Zmmul: ratified at version 2.0
* Zawrs: ratified at version 1.01
* Ztso: ratified at version 1.0
* RV32E/RV64E: ratified at version 2.0
* Zicntr: ratified without a version
* Zihpm: ratified without a version
* Zc*: ratified at version 1.0 (which is newer than v1.0.1, v1.0.2, 
  v1.0.3, and v1.0.3-1).

So I think it doesn't really matter what some comment in a github issues 
says, there's still no consistent versioning scheme for the extensions.  

>
>> Proposal
>> ========
>>
>> Instead, I propose a per-extension key/value property, for example
>> riscv,isa-extension-v = "v1.0.0"
>> in the style of compatible strings - so the value is not what hardware
>> implements, but rather the minimum-known version for which the
>> programming model is compatible.
>> Until something comes along that is not compatible with v1.0.0 that we
>> want to support in the kernel, no new keys need to be added to the
>> kernel, just changes to the dt-binding.
>>
>> The binding for it is currently set up so that either you need to
>> be compatible version with v1.0.0, or add a special case. Although
>> v1.0.0 in this case is just a placeholder number, it could be v2.0.0 or
>> any other number. It could even be "initial" to something like that, to
>> match against whatever the first released spec version is.
>>
>>         As an aside, the dt-binding doesn't actually work properly for
>>         enforcement etc at present, but I wanted to get some feedback
>>         before going too far down the rabbit hole there.
>>
>> This method gives us the implemented version -> compatible version "for
>> free", as it is done by the creator of the DT, rather than software
>> running on the platform.
>> We can hopefully be strict about what people are inserting version wise,
>> using dt-validate, rather than it being pot-luck as to what gets filled in,
>> if anything.
>> I'm very reluctant to add more complexity to the property, and therefore
>> parsers, when a key-value type interface is more easily used with
>> standard OF functions - of_property_present(), of_property_read_string()
>> etc to use the Linux kernel's examples.
>>
>> Another benefit of this approach is that we, by way of the dt-binding,
>> control the meaning of the versions.
>> If a vendor decides to release something using Xfoo, but provides no
>> version information, we can then assign one ourselves in case Xfoo in
>> their next SoC is not quite the same. Something similar came up this
>> morning, talking with Heiko about the TH1520, and how to explain the
>> meaning of "_xfoo" properties in "riscv,isa". The ISA spec documentation
>> is pointed to by the binding for that, but vendor properties are
>> obviously not described there. At the expensive of bloating the binding
>> file, the proposed scheme would provide a way to stably document vendor
>> properties.
>>
>> I guess I am trying to design in some flexibility rather than two years
>> down the line realise that the isa string is a source of problems, and
>> have to try and retrofit something in.
>>
>> I would like to encourage people to populate their DT with every
>> extension under the sun that they support, even if software doesn't use
>> it right now (look at the starfive folk that didn't add the bitmanip
>> until told to) so that if/when it is used in the future these boards
>> will pick up the support automagically.
>>
>> ACPI
>> ====
>>
>> This whole proposal is written for a pre-ACPI world, and I have yet to
>> give any thought to how such a key-value interface would work there.
>> I'm not really sure how to deal with that, given they have some ECR
>> process yada yada, but thoughts on that side of things would be very
>> much appreciated.
>>
>> Why x.y.z rather than x.y per the ISA specs?
>> ============================================
>>
>> I said the same, Palmer wanted x.y.z. For example, the T-HEAD vector stuff
>> is 0.7.1 & he cited an example (that now eludes me) of a breaking change
>> in an extension between 1.0 and 1.0.1. God knows how vendors will choose
>> to version things, so having the extra level is likely advantageous.
>>
>> Other stuff
>> ===========
>>
>> The code here is very much in an RFC state. I tested it on an Icicle kit
>> as a PoC - and it does work, but I have not even remotely tested it
>> sufficiently.
>>
>> The dt-binding changes need to be worked on as they do not actually
>> enforce anything!
>>
>> I've intentionally only send this to the linux lists, despite this
>> having wider impact, as it is in a very early state & there's no point
>> involving all & sundry if the idea is hated.
>> If it is not universally derided, I will send the binding patches to
>> various other lists also.
>>
>> What do I hate about this?
>> ==========================
>>
>> I fear bloat in the dt-binding and devicetrees as properties are added
>> mostly. Depending on what I have to do to get enforcement with
>> dt-validate, a complicated binding is also a concern.
>>
>> Suggestions etc very much welcome :)
>>
>> Cheers,
>> Conor.
>>
>> CC: Rob Herring <robh+dt@kernel.org>
>> CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> CC: Conor Dooley <conor+dt@kernel.org>
>> CC: Palmer Dabbelt <palmer@dabbelt.com>
>> CC: Paul Walmsley <paul.walmsley@sifive.com>
>> CC: Heiko Stuebner <heiko@sntech.de>
>> CC: Andrew Jones <ajones@ventanamicro.com>
>> CC: Sunil V L <sunilvl@ventanamicro.com>
>> CC: Yangyu Chen <cyy@cyyself.name>
>> CC: devicetree@vger.kernel.org
>> CC: linux-riscv@lists.infradead.org
>>
>> Conor Dooley (6):
>>   dt-bindings: riscv: clarify what an unversioned extension means
>>   dt-bindings: riscv: add riscv,isa-extension-* property and
>>     incompatible example
>>   RISC-V: deprecate riscv,isa & replace it with per-extension properties
>>   RISC-V: add support for riscv,isa-base property
>>   RISC-V: drop a needless check in print_isa_ext()
>>   riscv: dts: microchip: use new riscv,isa-extension-* properties for
>>     mpfs
>>
>>  .../devicetree/bindings/riscv/cpus.yaml       |  64 +++++-
>>  arch/riscv/boot/dts/microchip/mpfs.dtsi       |  42 +++-
>>  arch/riscv/include/asm/hwcap.h                |  29 ++-
>>  arch/riscv/kernel/cpu.c                       | 124 +++---------
>>  arch/riscv/kernel/cpufeature.c                | 188 +++++++++++++++---
>>  5 files changed, 316 insertions(+), 131 deletions(-)
>>
>> --
>> 2.39.2
>>
>>
>> _______________________________________________
>> linux-riscv mailing list
>> linux-riscv@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-riscv
>
>
>
> -- 
> Regards,
> Atish
