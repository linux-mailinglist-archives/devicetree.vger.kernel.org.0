Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40D9D4D0CF8
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 01:47:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244171AbiCHAsU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 19:48:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243373AbiCHAsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 19:48:20 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8824E1CB14
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 16:47:24 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id q11so15568291pln.11
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 16:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=q2WsEFsrCkkzU/B5lUpkC+cQ38+qzE8NHBPBAWz7WGk=;
        b=cjYUaVWW1GAgLShT2FpEl3RjDvQhhJuGbeV2n0V0HGEgwV+36z1t89iiP4rsAJ40s1
         3VmPNb46CocptsoYxwyIUC+qNMejwMoBRNXP68E8LiTBtDJe26ON0quTuCMpUs70Dwfh
         pOJ1Zgno+W2GYFSira/Wa0KsI4FOA0ORxFa2nKgPAoKLBNjG7SvwBN3/ngahBxJoJi6Y
         J1Ybhtw69gcxaZ3M45dEXUOuPO1moiY8ZCBWOFtxjlDwJEcTqp5q3KcZjs8gNQbdQNpK
         hXfEc3ptZ+4FkpPDJ3cMPyUKBzj7CnFKYJoKhYOsWvDsA5xDDVkJ5EVuARjbyuP8cHlW
         Kb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=q2WsEFsrCkkzU/B5lUpkC+cQ38+qzE8NHBPBAWz7WGk=;
        b=XbR+C734c1Km5EMHZyvf5ANUl6FIouXGvAiEeQ54aeVvpZNk1eyrGgqwOBZmWPbE7M
         4kubUBFtF89O0vxioE3jvv9n8lPpN4spNO5Z8qYS1DhTFRIztxHTOkojskbMIkGciUxc
         vZVkwDbdVyS5wdIQpORCcJ8+VsNG5LDXQdyO4CIIELcctrZpsW/PiRHm4/AvhST4gUag
         DidrFmn7hFiXBvl3bw+dKG2Q29f/AqGGmi4ShCxp9nVGQExoqheF8UH8v2Ef72v3fC0T
         82sxSStxz39c+T7ye3Vjn3GqtdRycgnQbb2Nvfj7fY+xScJpm4uM2LFhXWzKBdKv8F6T
         gglQ==
X-Gm-Message-State: AOAM532AImCWreJrXtzkhCKQXsAVOZL7D8dO+zMrEN7xLpUdBGkrPRc5
        lGRqk0xImZfB9gS9eEwWRjri5g==
X-Google-Smtp-Source: ABdhPJx00mCNVKzx0KZr8h0heAGNsLLi8xaqRn0uFWnac5NvkDSzyFLghxkVhinRifRYa+LamXOqXg==
X-Received: by 2002:a17:902:9690:b0:14f:fc09:fd02 with SMTP id n16-20020a170902969000b0014ffc09fd02mr14366480plp.66.1646700443967;
        Mon, 07 Mar 2022 16:47:23 -0800 (PST)
Received: from localhost ([12.3.194.138])
        by smtp.gmail.com with ESMTPSA id k14-20020aa7820e000000b004f7134a70cdsm3275273pfi.61.2022.03.07.16.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 16:47:23 -0800 (PST)
Date:   Mon, 07 Mar 2022 16:47:23 -0800 (PST)
X-Google-Original-Date: Mon, 07 Mar 2022 13:01:42 PST (-0800)
Subject:     Re: [PATCH v6 08/14] riscv: move boot alternatives to a slightly earlier position
In-Reply-To: <20220209123800.269774-9-heiko@sntech.de>
CC:     Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org, wefu@redhat.com,
        liush@allwinnertech.com, guoren@kernel.org, atishp@atishpatra.org,
        anup@brainfault.org, drew@beagleboard.org,
        Christoph Hellwig <hch@lst.de>, Arnd Bergmann <arnd@arndb.de>,
        wens@csie.org, maxime@cerno.tech, gfavor@ventanamicro.com,
        andrea.mondelli@huawei.com, behrensj@mit.edu, xinhaoqu@huawei.com,
        huffman@cadence.com, mick@ics.forth.gr,
        allen.baum@esperantotech.com, jscheid@ventanamicro.com,
        rtrauben@gmail.com, samuel@sholland.org, cmuellner@linux.com,
        philipp.tomsich@vrull.eu, heiko@sntech.de
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     heiko@sntech.de
Message-ID: <mhng-3d591628-2c87-40c7-91e4-407ad313a4aa@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 09 Feb 2022 04:37:54 PST (-0800), heiko@sntech.de wrote:
> Move the application of boot alternatives to soc_early_init().
> This allows to catch more generic cases of code needing patches
> than doing it in smp_prepare_boot_cpu() and also makes it actually
> work if CONFIG_SMP is disabled for whatever reason.
>
> The position is chosen mainly as it is before the actual soc early
> init runs but also already allows accessing the devicetree
> via fdt_* functions.

I think this is OK, but it warrants testing on the K210 -- specifically 
the system is in an odd state before soc_early_init (IIRC some of memory 
doesn't work right) so I'm always a bit worried about calling stuff 
there.  I don't have a K210 (or at least a working one), so I'm not 
going to be able to test it.

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/riscv/kernel/head.S    | 2 ++
>  arch/riscv/kernel/smpboot.c | 2 --
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 2363b43312fc..0e1bb97f9749 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -10,6 +10,7 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/pgtable.h>
> +#include <asm/alternative.h>
>  #include <asm/csr.h>
>  #include <asm/cpu_ops_sbi.h>
>  #include <asm/hwcap.h>
> @@ -341,6 +342,7 @@ clear_bss_done:
>  	call kasan_early_init
>  #endif
>  	/* Start the kernel */
> +	call apply_boot_alternatives
>  	call soc_early_init
>  	tail start_kernel
>
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index a6d13dca1403..f1e4948a4b52 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -32,7 +32,6 @@
>  #include <asm/sections.h>
>  #include <asm/sbi.h>
>  #include <asm/smp.h>
> -#include <asm/alternative.h>
>
>  #include "head.h"
>
> @@ -41,7 +40,6 @@ static DECLARE_COMPLETION(cpu_running);
>  void __init smp_prepare_boot_cpu(void)
>  {
>  	init_cpu_topology();
> -	apply_boot_alternatives();
>  }
>
>  void __init smp_prepare_cpus(unsigned int max_cpus)
