Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A893508279
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 09:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376329AbiDTHq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 03:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376339AbiDTHqn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 03:46:43 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAB623BBDC
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 00:43:54 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-2edbd522c21so8873897b3.13
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 00:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4rECfG0J0jcZuxwrgwhg30CvDbd+wKJQrKHF5lEEWz8=;
        b=JJ84zEuWmJdIZ7TstEV8XP6tov0sYCEo450P8hEILZNpuvqlc8LvmWDw8vMK9BIzyx
         p80wG38wyBCDllGZ8kRIEVtDhjYvl5nJhws3qJnrkrbECz8bby3fQzPYKA5RPVLCLzfJ
         eni5YMWY7Iu1XUrIumWZfAM5TinCUnaEoTBPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4rECfG0J0jcZuxwrgwhg30CvDbd+wKJQrKHF5lEEWz8=;
        b=6b660JgsCyM2YiAC2RMhWcGC16nzWAYWPl2RpW2e9yNI1Wydjonyl4ePpEnO31YpvG
         GP1Sdtwuko0DIo04ZTl5DO4CaDOF5O2PBZ065tvoN3DySHKs6uxorB/WnEOjEFEPzMsz
         0qSGL1mln+OXqK+G1sobqVuOzMCB3siO75YjViWUDUKDb47/kYiDK1KVbXOQyWJuOYJ8
         Nm67xDIhpaGo4GORphtP7YPw1ubyzweEH9cM1P7O6jhev3CRSJOcjvb6ytD6LqiFPJDF
         gk1oq2NGttZDkfDz+N2qtASd3FRiLQH154RUl1kY5iH4p6L54188j/5JqykGv4Mo0RsE
         DPcg==
X-Gm-Message-State: AOAM5327W5vK4scwssWmcXFpIbqW7UmhBjBioS1r8QYU98ph27wlkldZ
        iquc0Vvug0oZo1ssLCb+qIUbreIb7c4tn/xLGzkB
X-Google-Smtp-Source: ABdhPJwC6ND2mFoDrO8/LZH+VaOdsYNDA7F6jKsenEvyVuoe+DYFot+AtDlzxrI+mCwBEaCI0C4EwGHyNVH1lr+kPjQ=
X-Received: by 2002:a81:5285:0:b0:2ec:471:e745 with SMTP id
 g127-20020a815285000000b002ec0471e745mr19863668ywb.443.1650440633909; Wed, 20
 Apr 2022 00:43:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220420013258.3639264-1-atishp@rivosinc.com> <20220420013258.3639264-2-atishp@rivosinc.com>
In-Reply-To: <20220420013258.3639264-2-atishp@rivosinc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Wed, 20 Apr 2022 00:43:43 -0700
Message-ID: <CAOnJCU+r8KhhQP-LZN+oGGCDkdQt9ZbF+LCTtZWY8r=qwmSOng@mail.gmail.com>
Subject: Re: [PATCH 1/2] RISC-V: KVM: Remove 's' & 'u' as valid ISA extension
To:     Atish Patra <atishp@rivosinc.com>
Cc:     KVM General <kvm@vger.kernel.org>,
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 19, 2022 at 6:33 PM Atish Patra <atishp@rivosinc.com> wrote:
>
> There are no ISA extension defined as 's' & 'u' in RISC-V specifications.
> The misa register defines 's' & 'u' bit as Supervisor/User privilege mode
> enabled. But it should not appear in the ISA extension in the device tree.
>
> Remove those from the allowed ISA extension for kvm.
>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> ---
>  arch/riscv/kvm/vcpu.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
> index 6785aef4cbd4..2e25a7b83a1b 100644
> --- a/arch/riscv/kvm/vcpu.c
> +++ b/arch/riscv/kvm/vcpu.c
> @@ -43,9 +43,7 @@ const struct kvm_stats_header kvm_vcpu_stats_header = {
>                                  riscv_isa_extension_mask(d) | \
>                                  riscv_isa_extension_mask(f) | \
>                                  riscv_isa_extension_mask(i) | \
> -                                riscv_isa_extension_mask(m) | \
> -                                riscv_isa_extension_mask(s) | \
> -                                riscv_isa_extension_mask(u))
> +                                riscv_isa_extension_mask(m))
>
>  static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
>  {
> --
> 2.25.1
>

Sorry. Forgot to add the fixes tag.

Fixes: a33c72faf2d7 (RISC-V: KVM: Implement VCPU create, init and
destroy functions)

-- 
Regards,
Atish
