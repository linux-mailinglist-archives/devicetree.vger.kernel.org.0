Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEBEE50E098
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 14:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235291AbiDYMpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 08:45:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241862AbiDYMpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 08:45:19 -0400
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B644D891A
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 05:42:15 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id j6so10614035qkp.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 05:42:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LZf1GrCckJe0wVu2MCyi5HuoNfLGjLy3HZ1VU5D0sTw=;
        b=P8Kfe4KFIb/ZSBgLZ29FYJpiDK0C9xBZs4swDWUk1UeRVBkAHM27xPSE//ZIeUmD59
         I9A4lql93gUuZ811uHUZGU7jtW+M59pmh+hAUR/tH/2BEIbx4qm4V+W9iRHBz6JVS7U9
         Ioh+KqLXyAVcGst6M99lIjTz+66xTFSVQSb3GfIm01LR8Zr4prbqNUiCu2ondcQbQSSi
         FCfl1iu4FwnM1wsD4xKevi2EQLfHBFOnXG+urohEHlmDOrT1bejYdx5MJVAeum0WrQ2T
         OBVPoUCMni4DdM3pElDKemX0v9p2Jr0OJ8nD5HatYZNrQuPZ2+ZZpdOPwPTt16YMgbtQ
         VtUA==
X-Gm-Message-State: AOAM533LAZMWuejeJN7x58CfPaA0SMR5fwWl9woDR7LaRa4m04OEDevB
        1ztpPWp4Eb10w3MmT2Ug6I5DwdsFobVj1A==
X-Google-Smtp-Source: ABdhPJwanjcebEGUo8Yk6seCRccXCqJCBWNW2BsUAcS6u9MB4VxZuKh2Xf27cRfcR/+3zIRWVCmJJQ==
X-Received: by 2002:a37:bbc4:0:b0:69c:3f31:3eb8 with SMTP id l187-20020a37bbc4000000b0069c3f313eb8mr9979624qkf.489.1650890534266;
        Mon, 25 Apr 2022 05:42:14 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id h17-20020ac87d51000000b002f345058960sm6117310qtb.49.2022.04.25.05.42.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 05:42:14 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id h7so3441867ybj.1
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 05:42:13 -0700 (PDT)
X-Received: by 2002:a25:d84c:0:b0:648:7d5e:e2d4 with SMTP id
 p73-20020a25d84c000000b006487d5ee2d4mr1960099ybg.6.1650890533603; Mon, 25 Apr
 2022 05:42:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220422211055.9278-1-palmer@rivosinc.com>
In-Reply-To: <20220422211055.9278-1-palmer@rivosinc.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Mon, 25 Apr 2022 14:42:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
Message-ID: <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW
 supports sv57
To:     Palmer Dabbelt <palmer@rivosinc.com>
Cc:     alexandre.ghiti@canonical.com,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Palmer,.

On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
> Similar to the previous patch, this allows a dt-selected downgrade to
> sv48 on systems that support sv57 in case users don't need the extra VA
> bits and want to save memory or improve performance.
>
> Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> ---
> This is on top of the patches from Alex's set that I dropped.

You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
when hw supports sv48 if !KASAN"?
20211206104657.433304-14-alexandre.ghiti@canonical.com

For both: "DT describes hardware, not software policy"?

> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -740,6 +740,11 @@ static __init void set_satp_mode(uintptr_t dtb_pa)
>                         if (!mmu_type)
>                                 continue;
>
> +                       if (!strcmp(mmu_type, "riscv,sv48")) {
> +                               disable_pgtable_l5();
> +                               return;
> +                       }
> +
>                         if (!strcmp(mmu_type, "riscv,sv39")) {
>                                 disable_pgtable_l5();
>                                 disable_pgtable_l4();

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
