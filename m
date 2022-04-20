Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AF4F5083F6
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 10:47:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344527AbiDTItx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 04:49:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235189AbiDTItp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 04:49:45 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A326E186FA
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 01:46:59 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id q14so1081036ljc.12
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 01:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JjwgVR25fOpo94MrJPZVArRITLkolD2RuuKCBdYhNzY=;
        b=RZ+ikrgo+BjsNGw26e+go2LbMbf96IPh2LW4clRqX8E2MnxFpzoFF8JiPsOQv5xAy7
         NZwc3XyJEvUe8gJ/3QsBAwWl/Di4ditGXZ6zJTARZOj8GMVpycdsO8rAu0uK4/a+DbgB
         Pbc20OzJRVV3LjHumKVHbdWO1V6a0/Bfa1EtfsUob3C/viSfnSxaxBCKnNmLEbR23NfM
         9NSe+IOUfKbNfsd/vL5KRU9w6TSEzm+Z4oxXnCjyldFCHQ4HcQgS30evggmpLC9WprTh
         /4X0G38pPFj0fV0e8yHy1xg8HJds0Rk4riqcssz5CwJD7TmiQb4l3dUJO6ZpSlCyvgVw
         O7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JjwgVR25fOpo94MrJPZVArRITLkolD2RuuKCBdYhNzY=;
        b=vSaWUCl9xbvYXb1u4uBcKGrbvp5LI09bIbdInOgUp+LWXQbf4sJjCl62aEVEQfXZoK
         0at99NOO+YsRM9z1PCQLDrya4uuaRGkBhesH2uY91KH869J8F+anrVpMf+os/tlb4Sw7
         y/PqqJG1E5JJPV9NUt4GQRxYDsWH1KAWedTakOibkCjjeVXTuu28HcuAzpYZ3PsnI9f5
         Pyy2EnY6VfCQtNCzP8IPuBmwjpekM9PizxhHQmFk+2zcc5+bDuRx6QmDkYPFE/KfVyjX
         MSS9qvsUcjKkC+2hlQ+8wBhx+udDOcbMjWxigZ8qAHR6pxukt097+hyVtbd7wFMx/9he
         pkSw==
X-Gm-Message-State: AOAM531yCRKO94qteis7SAUX4+0mKOP0tkHiwVqXtNrJXhkkUk0aTe0F
        Ui1Xy5pgxnB/B5nc5FS5WQRpGy9fAw2pSF72nxBXBA==
X-Google-Smtp-Source: ABdhPJz+h1GX4XLudNgrwSIEdojpi93OmucwSzatZwTI4giwColnNsRBurf+uc0IKVn49/2aHe9h3XLzaMebnRm9LS4=
X-Received: by 2002:a05:651c:1784:b0:24b:ce8:528a with SMTP id
 bn4-20020a05651c178400b0024b0ce8528amr12675701ljb.364.1650444417868; Wed, 20
 Apr 2022 01:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220420013258.3639264-1-atishp@rivosinc.com> <20220420013258.3639264-2-atishp@rivosinc.com>
 <CAOnJCU+r8KhhQP-LZN+oGGCDkdQt9ZbF+LCTtZWY8r=qwmSOng@mail.gmail.com>
In-Reply-To: <CAOnJCU+r8KhhQP-LZN+oGGCDkdQt9ZbF+LCTtZWY8r=qwmSOng@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Wed, 20 Apr 2022 14:16:45 +0530
Message-ID: <CAK9=C2WHwRLyRHw4AVFpZcYJsDdGwaza_cpQsaMz-4qVamc+VQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] RISC-V: KVM: Remove 's' & 'u' as valid ISA extension
To:     Atish Patra <atishp@atishpatra.org>
Cc:     Atish Patra <atishp@rivosinc.com>,
        KVM General <kvm@vger.kernel.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, kvm-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 20, 2022 at 1:14 PM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Tue, Apr 19, 2022 at 6:33 PM Atish Patra <atishp@rivosinc.com> wrote:
> >
> > There are no ISA extension defined as 's' & 'u' in RISC-V specifications.
> > The misa register defines 's' & 'u' bit as Supervisor/User privilege mode
> > enabled. But it should not appear in the ISA extension in the device tree.
> >
> > Remove those from the allowed ISA extension for kvm.
> >
> > Signed-off-by: Atish Patra <atishp@rivosinc.com>
> > ---
> >  arch/riscv/kvm/vcpu.c | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> > index 6785aef4cbd4..2e25a7b83a1b 100644
> > --- a/arch/riscv/kvm/vcpu.c
> > +++ b/arch/riscv/kvm/vcpu.c
> > @@ -43,9 +43,7 @@ const struct kvm_stats_header kvm_vcpu_stats_header = {
> >                                  riscv_isa_extension_mask(d) | \
> >                                  riscv_isa_extension_mask(f) | \
> >                                  riscv_isa_extension_mask(i) | \
> > -                                riscv_isa_extension_mask(m) | \
> > -                                riscv_isa_extension_mask(s) | \
> > -                                riscv_isa_extension_mask(u))
> > +                                riscv_isa_extension_mask(m))
> >
> >  static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
> >  {
> > --
> > 2.25.1
> >
>
> Sorry. Forgot to add the fixes tag.
>
> Fixes: a33c72faf2d7 (RISC-V: KVM: Implement VCPU create, init and
> destroy functions)

I have queued this for fixes.

Thanks,
Anup

>
> --
> Regards,
> Atish
>
> --
> kvm-riscv mailing list
> kvm-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kvm-riscv
