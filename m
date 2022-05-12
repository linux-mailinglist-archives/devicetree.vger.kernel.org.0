Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36F81525377
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 19:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356984AbiELRWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 13:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356986AbiELRWL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 13:22:11 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9D1A663D8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 10:22:09 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id q130so7345838ljb.5
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 10:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=k5uBtUuVEeyc/uDRq1ERjuwGFNzbvMoQDv2ORcXlb34=;
        b=zSde4TismK45+H65/WKteA+kIU8dYdT5m6nUNBnPGE10a/oyMx9hE8U3rDy16Xu1eQ
         5vWYkxU0GKQp6i6p6DMtPshoptRmUTYUYsUWN/vePrAPF5fClSkzPdwBZGYs4dzlulKF
         3mg7REuBmBQrPAJsvOPivBw3HuAXK9PIwQRoVEmM2bXYJers3CHKHzuva4OQ6cAW80Vw
         Hatmw/L8aLsB4rJ8IyF4OGEEf3na/ogfoTln7b/NDIDnoVAmREbxmA1FdstbMiU8i3WQ
         iFXW3Qb62yRy+N0sGcJo7YJR4i0sfyNVx9bND0XVIZ8BhwvhFJ9lFaz/4QJt43NMNFq/
         hRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=k5uBtUuVEeyc/uDRq1ERjuwGFNzbvMoQDv2ORcXlb34=;
        b=x7I526jk5+OccIzb58U3A7MLH6odETHaT2YNcNj3Ezg/c7qApeuPC+Sz6EzVRPrKGY
         gjFUhFSlm/GDr3k+UXacj1Y2NyA65M8UmsQlERuTxK4WpAq7lQSf5eYQYEqDxVZe0hzO
         SwFj/ck8pK88tQ/NoCQh3fdwCUuMX/iavhsVOY3JK4TuSJOwoQbYl9v0PNPqtWSlXkjk
         sNJDm87y7+Ub2iW6bddGo3+vUSVdsbhfun/K5ohWJp35MVIU+H3gNWIwt0fv9VITQQYe
         BnFMwe6P5W4uHJIaJMacrDz8HTdJDO9FQv3Nvk2wBO/kDOIMWyAFovi1c4KGwdQLfthe
         AyNg==
X-Gm-Message-State: AOAM531ED2vJuEFmNtk1CNonTInZgkPGVQkdqI1kVCq87IrVoDPPu30m
        rUVslG9V9OPW1USb3ct5pArq7xqcHjkBXMyr8n3inQ==
X-Google-Smtp-Source: ABdhPJwRQYyKvWXSdO1RUyMSIOChIO0JcTz2B2sJ96JajpdlrOav1FcCfG0mrPRe+zl3iw+NxE/6pYCDfEEZBBurGtA=
X-Received: by 2002:a2e:82c5:0:b0:247:e81f:8b02 with SMTP id
 n5-20020a2e82c5000000b00247e81f8b02mr644883ljh.90.1652376128189; Thu, 12 May
 2022 10:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <20220511201107.2311757-1-atishp@rivosinc.com> <CAAhSdy3mbGdK9LrLxZX0JL0mQxP5FrFUuneX1cQS2SABpO=7dw@mail.gmail.com>
 <23274575.ouqheUzb2q@diego> <CAAhSdy3t6cnfR02kfHvnKdCcDPvyX4jwccV7qkR_=-dV_m0aGQ@mail.gmail.com>
In-Reply-To: <CAAhSdy3t6cnfR02kfHvnKdCcDPvyX4jwccV7qkR_=-dV_m0aGQ@mail.gmail.com>
From:   Atish Kumar Patra <atishp@rivosinc.com>
Date:   Thu, 12 May 2022 10:21:56 -0700
Message-ID: <CAHBxVyF5T7r26nAp1Hep+DRkZErr2PH43k=HwLi6iuqMXWju6Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] RISC-V: Fix counter restart during overflow for RV32
To:     Anup Patel <anup@brainfault.org>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        DTML <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 12, 2022 at 8:36 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Thu, May 12, 2022 at 6:12 PM Heiko St=C3=BCbner <heiko@sntech.de> wrot=
e:
> >
> > Am Donnerstag, 12. Mai 2022, 06:44:12 CEST schrieb Anup Patel:
> > > On Thu, May 12, 2022 at 1:41 AM Atish Patra <atishp@rivosinc.com> wro=
te:
> > > >
> > > > Pass the upper half of the initial value of the counter correctly
> > > > for RV32.
> > > >
> > > > Fixes: 4905ec2fb7e6 ("RISC-V: Add sscofpmf extension support")
> > > >
> > > > Signed-off-by: Atish Patra <atishp@rivosinc.com>
> > > > ---
> > > >  drivers/perf/riscv_pmu_sbi.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_=
sbi.c
> > > > index a1317a483512..24cea59612be 100644
> > > > --- a/drivers/perf/riscv_pmu_sbi.c
> > > > +++ b/drivers/perf/riscv_pmu_sbi.c
> > > > @@ -526,7 +526,7 @@ static inline void pmu_sbi_start_overflow_mask(=
struct riscv_pmu *pmu,
> > > >                         max_period =3D riscv_pmu_ctr_get_width_mask=
(event);
> > > >                         init_val =3D local64_read(&hwc->prev_count)=
 & max_period;
> > > >                         sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_=
START, idx, 1,
> > > > -                                 flag, init_val, 0, 0);
> > > > +                                 flag, init_val, init_val >> 32, 0=
);
> > >
> > > This should be under "#if __riscv_xlen =3D=3D 32".
> >
> > What's the difference between using CONFIG_32BIT
> > and checking the __riscv_xlen flag value?
>
> It's one and the same.
>
> >
> > CONFIG_32BIT seems to be a bit the more kernel'ish
> > way to do this, but it looks like most SBI parts check the
> > __riscv_xlen instead.
>

Not only SBI parts, there are more users of __riscv_xlen compared
CONFIG_32BIT in arch/riscv.

> I agree with you. We should prefer "#ifdef CONFIG_32BIT"
> in this case to match the kernel coding style.
>

Sure. I will change it to CONFIG_32BIT.


> Currently, OpenSBI does not have CONFIG_xyz defines so
> over there we use "#if __riscv_xlen =3D=3D 32".
>
> Regards,
> Anup
>
> >
> >
> > In any case, looking at the opensbi-side of the call,
> > this fix is abviously correct, so
> >
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> >
> >
> >
