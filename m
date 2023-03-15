Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C0506BA65F
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 05:54:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjCOEye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 00:54:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbjCOEyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 00:54:33 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4A4622CA3
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:54:31 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id cy23so70611815edb.12
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 21:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112; t=1678856070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ok1v60C5hPiwt9Qd3eQGKQsz4sLfFgPUGqenltTPq64=;
        b=kSGujrpCi7S9oQQcF+KXLiXF2AFyWye+S4QzPP8Efci6YdYY31CKrqR6+MAqfh8PD8
         k/mA0O5wQOviXpwVIGZPBJKSxCVdonLlRAMh0Y0Pr0lCcU63qrKu38cwOny1VOsQkSiY
         Bx00WTN+Q0Y7gdHO6ooWtTUWqMBug6rtCiLJ95XQ3NGUkA/oq0VLVG5Af12ALFMwc5N+
         +zvCEKO7e4qEVcnoRzyUqS1BVnT6XhYtoyC7oJa3b/YocKVq+Jf7vrqvJVS4PxBWpVXW
         1DcoiQr3tq20itKfd9/RdTtGAPL6wf0EMqHaca0Ey6cX4Lvmgbsoo+NnsjR4KQQbXsvE
         zgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678856070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ok1v60C5hPiwt9Qd3eQGKQsz4sLfFgPUGqenltTPq64=;
        b=APZ1PkQWFNCCTPc94exCooZYN47nL6VkC/EE61Scwk4CZ26xVXhDvy/7FVRVqToT2n
         RpdGT4UsUtUdikzlXHRHyx7e1ichpnso8lg8a2zj0vc5ItASk1p0V3qze/zNfG9fMt4E
         sPBUDvZoFVl7MtWwWJAAdLRiOKhWN6q5qg0H2PEGR1s58QgbCvzpbNX53OhsHnMkZdP+
         Hcnx0mfWuhFEqyfvU+iq7nGEOGIc7YrbjIkMMEwpug5YNLOM2IS6YggyRpJLduCMjDVy
         YSBdwkEy/xslpbo3GvUPPwOnL8TzNunWaWa/PwV1MuJ+Iuo+ivn+2lVXTZojx5zYuxNB
         yXSQ==
X-Gm-Message-State: AO0yUKXO3LbCNl291LrvF0U3JWZl9IZTwvB6fb+GVsxaqjDY+aKre79J
        NUBq0vs5yKZfQDhVn/vUtwtiOXkVvnxZbZQq/Dk/Mw==
X-Google-Smtp-Source: AK7set/1nnqVtUQCG1aacxcLFFzizJxqkOES2bKXzjpRS7IsRswJfaU17038Z0AGjDb5rVIlx+1ThTGZ/2P7CxosKTo=
X-Received: by 2002:a17:907:7ba6:b0:92b:f0f9:427a with SMTP id
 ne38-20020a1709077ba600b0092bf0f9427amr2706405ejc.13.1678856070062; Tue, 14
 Mar 2023 21:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230224162631.405473-9-ajones@ventanamicro.com> <mhng-f27eaa3e-34e3-4843-abdb-4b17cbe24ddb@palmer-ri-x1c9a>
In-Reply-To: <mhng-f27eaa3e-34e3-4843-abdb-4b17cbe24ddb@palmer-ri-x1c9a>
From:   Anup Patel <anup@brainfault.org>
Date:   Wed, 15 Mar 2023 10:24:19 +0530
Message-ID: <CAAhSdy1qOH25QdwkikwGU9xnhz_+UUGqAcXqU2Hd2d7RoaP9Vg@mail.gmail.com>
Subject: Re: [PATCH v6 8/8] RISC-V: KVM: Expose Zicboz to the guest
To:     Palmer Dabbelt <palmer@dabbelt.com>
Cc:     ajones@ventanamicro.com, apatel@ventanamicro.com,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        sudip.mukherjee@codethink.co.uk, ben.dooks@codethink.co.uk,
        Atish Patra <atishp@rivosinc.com>, aou@eecs.berkeley.edu,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        jszhang@kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 15, 2023 at 10:08=E2=80=AFAM Palmer Dabbelt <palmer@dabbelt.com=
> wrote:
>
> On Fri, 24 Feb 2023 08:26:31 PST (-0800), ajones@ventanamicro.com wrote:
> > Guests may use the cbo.zero instruction when the CPU has the Zicboz
> > extension and the hypervisor sets henvcfg.CBZE.
> >
> > Add Zicboz support for KVM guests which may be enabled and
> > disabled from KVM userspace using the ISA extension ONE_REG API.
> >
> > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Sorry, I guess I wasn't looking closely enough.  It's just a review, not
> an ack.
>
> Anup: is it OK if this goes along with the others?

Yes, no problem.

Acked-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

>
> > ---
> >  arch/riscv/include/uapi/asm/kvm.h | 1 +
> >  arch/riscv/kvm/vcpu.c             | 4 ++++
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uap=
i/asm/kvm.h
> > index c1a1bb0fa91c..e44c1e90eaa7 100644
> > --- a/arch/riscv/include/uapi/asm/kvm.h
> > +++ b/arch/riscv/include/uapi/asm/kvm.h
> > @@ -106,6 +106,7 @@ enum KVM_RISCV_ISA_EXT_ID {
> >       KVM_RISCV_ISA_EXT_SVINVAL,
> >       KVM_RISCV_ISA_EXT_ZIHINTPAUSE,
> >       KVM_RISCV_ISA_EXT_ZICBOM,
> > +     KVM_RISCV_ISA_EXT_ZICBOZ,
> >       KVM_RISCV_ISA_EXT_MAX,
> >  };
> >
> > diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> > index e5126cefbc87..198ee86cad38 100644
> > --- a/arch/riscv/kvm/vcpu.c
> > +++ b/arch/riscv/kvm/vcpu.c
> > @@ -63,6 +63,7 @@ static const unsigned long kvm_isa_ext_arr[] =3D {
> >       KVM_ISA_EXT_ARR(SVPBMT),
> >       KVM_ISA_EXT_ARR(ZIHINTPAUSE),
> >       KVM_ISA_EXT_ARR(ZICBOM),
> > +     KVM_ISA_EXT_ARR(ZICBOZ),
> >  };
> >
> >  static unsigned long kvm_riscv_vcpu_base2isa_ext(unsigned long base_ex=
t)
> > @@ -865,6 +866,9 @@ static void kvm_riscv_vcpu_update_config(const unsi=
gned long *isa)
> >       if (riscv_isa_extension_available(isa, ZICBOM))
> >               henvcfg |=3D (ENVCFG_CBIE | ENVCFG_CBCFE);
> >
> > +     if (riscv_isa_extension_available(isa, ZICBOZ))
> > +             henvcfg |=3D ENVCFG_CBZE;
> > +
> >       csr_write(CSR_HENVCFG, henvcfg);
> >  #ifdef CONFIG_32BIT
> >       csr_write(CSR_HENVCFGH, henvcfg >> 32);
