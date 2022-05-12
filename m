Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 499CC524474
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 06:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347552AbiELEp0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 00:45:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348024AbiELEpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 00:45:24 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDD75219F5F
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:45:19 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id b19so5496748wrh.11
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 21:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nB/czAIXlJJ8PHEUqcnrNljzAJJcfTV3UmWzXVmd/Cs=;
        b=uJorObYandt+4O05YsIkNx5pXRqDbRHU94W6N1cx4h7FkzmjxjYu6zQ7JOC2IoqZ3I
         K+NokQmLZvZEsSnrPI32VjBpodTdZ4CVMuSZQMDyvwiY3KvOVa6bsn1EiKPQXY+xbHx2
         3ujNWKnT/cicNYkm+ZB8mDvF5YLtei+WOgqMXS6Ste14Qpp4j8w/owZUfdtOqs1ZBq32
         AVrGkmulAwPqQs3SbZ8RJVXmPovBQMWMOLfo//EsVyhqI6OKdY/vHSOrvkKQyHfJ1T1a
         w/gaDWYAPXbqyKh4vrhpDUkT+LXZABfi3lv1aGyO1dmftPUcvF+C2R5tp81bm2HlF/VH
         YRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nB/czAIXlJJ8PHEUqcnrNljzAJJcfTV3UmWzXVmd/Cs=;
        b=ikqvaK8pI9HG5gSwhUH/4iGTCun6sG0DU54f4OXM/OquL+n+JwsfwdJxQUuWmjylAJ
         onnDsk1KIFTK9pwJSXCci2YDeKy9+Mw29qZ2uU39mLQ8Ay4xq0JrlMUvrGHiPW1AnqX+
         Z0YylNtcMKvwj2xsKKTUnDPp8quWJ2607I0dCpoQ9VtnY19ZasAUyxOqVS33acMUkJij
         9PZhAm0kFLrtFcACMQLl1RwV+a9aJeeaVpJ6nzcz9XDdGqOH5CTuTCSClonbu1XPqrAu
         rMRiRG2t8905OkjJ2CmQxqSj642MQjyNmXOQ8yUIgS6xmpyv/869EcEq1YOF8jq4Ymqe
         pc0w==
X-Gm-Message-State: AOAM533fJwh/vlLXrM/Q1hyd+YZaxsbYsQWv28yktJjGCshdZOTQo4GR
        GU1C+uwlEgaTTNOVcfkE8mmLDW7U15Fc5zKdcnooXA==
X-Google-Smtp-Source: ABdhPJx+mk1aBg9Ve43PcEgLYy3YQNt0epJCWo9clPxMAFTEILckRPTvps8178/xvCNaRUYKctEKvhkGi0JxLePLj3Y=
X-Received: by 2002:a5d:6483:0:b0:20c:5c21:5c8c with SMTP id
 o3-20020a5d6483000000b0020c5c215c8cmr25640208wri.86.1652330717991; Wed, 11
 May 2022 21:45:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220511201107.2311757-1-atishp@rivosinc.com> <20220511201107.2311757-2-atishp@rivosinc.com>
In-Reply-To: <20220511201107.2311757-2-atishp@rivosinc.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Thu, 12 May 2022 10:15:06 +0530
Message-ID: <CAAhSdy2=EspQ10wn6WiACov58GJESsR8udOU=j=CgvmH2bgHoA@mail.gmail.com>
Subject: Re: [PATCH 2/2] RISC-V: Update user page mapping only once during start
To:     Atish Patra <atishp@rivosinc.com>
Cc:     "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        DTML <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 12, 2022 at 1:41 AM Atish Patra <atishp@rivosinc.com> wrote:
>
> Currently, riscv_pmu_event_set_period updates the userpage mapping.
> However, the caller of riscv_pmu_event_set_period should update
> the userpage mapping because the counter can not be updated/started
> from set_period function in counter overflow path.
>
> Invoke the perf_event_update_userpage at the caller so that it
> doesn't get invoked twice during counter start path.
>
> Fixes: f5bfa23f576f ("RISC-V: Add a perf core library for pmu drivers")
>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>  drivers/perf/riscv_pmu.c     | 1 -
>  drivers/perf/riscv_pmu_sbi.c | 1 +
>  2 files changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/perf/riscv_pmu.c b/drivers/perf/riscv_pmu.c
> index b2b8d2074ed0..130b9f1a40e0 100644
> --- a/drivers/perf/riscv_pmu.c
> +++ b/drivers/perf/riscv_pmu.c
> @@ -170,7 +170,6 @@ int riscv_pmu_event_set_period(struct perf_event *event)
>                 left = (max_period >> 1);
>
>         local64_set(&hwc->prev_count, (u64)-left);
> -       perf_event_update_userpage(event);
>
>         return overflow;
>  }
> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 24cea59612be..2eac5db2cc18 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -527,6 +527,7 @@ static inline void pmu_sbi_start_overflow_mask(struct riscv_pmu *pmu,
>                         init_val = local64_read(&hwc->prev_count) & max_period;
>                         sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_START, idx, 1,
>                                   flag, init_val, init_val >> 32, 0);
> +                       perf_event_update_userpage(event);
>                 }
>                 ctr_ovf_mask = ctr_ovf_mask >> 1;
>                 idx++;
> --
> 2.25.1
>
