Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED2452D6E07
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 03:12:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389822AbgLKCLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 21:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389877AbgLKCLB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 21:11:01 -0500
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33431C061282
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 18:09:43 -0800 (PST)
Received: by mail-pj1-x1041.google.com with SMTP id b5so9450pjk.2
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 18:09:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=YBlvYT4u5OxK5j8EJbV+g1HuI5bT3QSP3buVFiGA1os=;
        b=ojGKW+CeYR5epryGbpALej+OHjrnYYY4F5AcYsJXq2QKzqeCscsKaThjnyeJ9Ylfqy
         stNFexzvzSlxzo11CsCIrvXoot940KDLwNq6U8iyf6o2VVoJmXu5ZEkKzf0kZRN/XH4K
         c5tUCpzDOXA7Qwj7udYJ0zJBRHGi1iHmlFcXB3SSu5MmB6K6QYJHE60hVdtnnFFfjJou
         QdAUsr+MsXZjyQLPZzfO9RP8uOPeNbL+1RQZOuuOS0KF6mtZktlFReA0HtIO119vFWyv
         IW4vS44VNOYcmqhfaGNCUzVPPSQDEa88yoo+n6tMPqyqdkQSNuqX75EHsGQJQxDMLzvr
         UKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=YBlvYT4u5OxK5j8EJbV+g1HuI5bT3QSP3buVFiGA1os=;
        b=HC1HT6PddXLWxkwqItlVKcoo8kPmlfdXkXUX3sHfAZ7KUEhnLQji9soY132VdsXyPU
         /++w/OohiXxyroMzAZv/TOv4M9FVSxHTqm8ohcfU+r8EIajkmbEBk+WjuJJaxk0omUDA
         /x3mkcORZJqMEI14l6j3JEEyyIMD3/SYcw+4EqRFt+1DT4O1T5TFHmAGPHRc1ssV8rbN
         aiic2gpdqtOibz7mPqIG5ujXuF9qoEkIFbabDmnTYxcbgJWqYsnsDI0PoSCNQn57y/Bj
         3qdzJbgXSl35bZ954aXt1EchSXl6PoCVJWPjug0vXfakS38ZtpY0jHWI/bz8HHUSSx3U
         f/7Q==
X-Gm-Message-State: AOAM530TNz2P/hXgUS4bFIKJ/T1Y2UfXeUMaq5rPKkkfRyleI95GZC1Y
        2Pg2c4Nedt2fPFnPVsCiMEQfiA==
X-Google-Smtp-Source: ABdhPJzeGFWjq3hV8gFbllyK08YaWDVJZPTgEzBarNAGC/GyiCHgx9fKOPPu5k/w9L1BBKd6CjJLhw==
X-Received: by 2002:a17:902:bf0b:b029:d8:f677:30f2 with SMTP id bi11-20020a170902bf0bb02900d8f67730f2mr8951276plb.25.1607652582712;
        Thu, 10 Dec 2020 18:09:42 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id f126sm8252120pfg.153.2020.12.10.18.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 18:09:42 -0800 (PST)
Date:   Thu, 10 Dec 2020 18:09:42 -0800 (PST)
X-Google-Original-Date: Thu, 10 Dec 2020 18:05:22 PST (-0800)
Subject:     Re: [PATCH v8 03/22] riscv: Enable interrupts during syscalls with M-Mode
In-Reply-To: <20201210140313.258739-4-damien.lemoal@wdc.com>
CC:     linux-riscv@lists.infradead.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org,
        linux-clk@vger.kernel.org, linus.walleij@linaro.org,
        linux-gpio@vger.kernel.org, p.zabel@pengutronix.de,
        seanga2@gmail.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Damien Le Moal <Damien.LeMoal@wdc.com>
Message-ID: <mhng-c9e2b17f-75ec-47d0-bfad-47b2ad1195dd@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 06:02:54 PST (-0800), Damien Le Moal wrote:
> When running is M-Mode (no MMU config), MPIE does not get set. This
> results in all syscalls being executed with interrupts disabled as
> handle_exception never sets SR_IE as it always sees SR_PIE being
> cleared. Fix this by always force enabling interrupts in
> handle_syscall when CONFIG_RISCV_M_MODE is enabled.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  arch/riscv/kernel/entry.S | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index 524d918f3601..080eb8d78589 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -155,6 +155,15 @@ skip_context_tracking:
>  	tail do_trap_unknown
>
>  handle_syscall:
> +#ifdef CONFIG_RISCV_M_MODE
> +	/*
> +	 * When running is M-Mode (no MMU config), MPIE does not get set.
> +	 * As a result, we need to force enable interrupts here because
> +	 * handle_exception did not do set SR_IE as it always sees SR_PIE
> +	 * being cleared.
> +	 */
> +	csrs CSR_STATUS, SR_IE
> +#endif
>  #if defined(CONFIG_TRACE_IRQFLAGS) || defined(CONFIG_CONTEXT_TRACKING)
>  	/* Recover a0 - a7 for system calls */
>  	REG_L a0, PT_A0(sp)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
