Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB4484EE2A2
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 22:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235264AbiCaU35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 16:29:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233604AbiCaU34 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 16:29:56 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09613231AEC
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:28:08 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id i11so600465plg.12
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 13:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=bnq3RGPMzBMV/g9aWknvx9FGXd6IFr5H5AAWOs4ymHk=;
        b=1uYsPp4Tl1AUltqW3P44nhWS7GvP4CJgKOhn+4VSW6tjebojOna8+DqcXGZ9k0L/qg
         /kFWpO1A9VCxXURXGLxWREhOlFDrf7SGsxEcHzf+/1uE2v7LBC1dWVqweOKhApxLgw9D
         amggZOnWK8/4wpWGOGhiK4cjY2SQMXyCD0VEruU0dGq6NnWYK88rwYoSegTMJzw1+tk3
         HxcB/8JTpf60c1hpvFHq7hYKJ2LX9yB1v55R/v8Dni9DydCTumhK63hi5FUT8HXbvn5w
         bDcJd/qTfwfOiArpTbcdXfkKKBEw5RYSV5PG8FRRIY48vM4BJn5dkI4bFNb4KeQt435X
         zj9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=bnq3RGPMzBMV/g9aWknvx9FGXd6IFr5H5AAWOs4ymHk=;
        b=USrElWUIACqTlGdmK2t9d8wkPltu91/ciQktizTN43aKzJq3rmFqFVRb6UmK2rMuWj
         TmLS35Na14f68ni39Fz9TxRVqjFWsITfJbbQE7L5vNzSubeOLoRT+lCyTD/9LTJqte0S
         /bAkoqH+I2Gjijw3odAVs3wPPbuLC2pqHK5/A5tNN5mSXAJ3e07L2M58k3a/xhbFJQVV
         Fl3A9IQJr43zEcwBQ9H6gVK6x9/tMPg5s4K6AhBovYxCODm2DqjOr7ojatAki2XnAIBX
         qYeDcf1/WQ3+R5brt8it/rSjDS/HW8BJtl2pr7t65DBQsROhE9zXIRVq8eFUQMjAGRas
         MTTQ==
X-Gm-Message-State: AOAM533Y18AXRb9wIPZzjxJWUGubh1cuKSjYNlq8FH0ODiQu6Iln+6xk
        K/wY7CCwI9HRFCFGpIxaDOFUbg==
X-Google-Smtp-Source: ABdhPJz8WAGQPMzQnR1/kKYbzZSKsNbVNJ28AVKuGN4my5flJHiGhwEnQ3iZcV5Chnf26dEqytnXVg==
X-Received: by 2002:a17:902:f544:b0:154:5ecb:eb24 with SMTP id h4-20020a170902f54400b001545ecbeb24mr7143398plf.11.1648758487456;
        Thu, 31 Mar 2022 13:28:07 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id y13-20020a17090a390d00b001c995e0a481sm203407pjb.30.2022.03.31.13.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 13:28:06 -0700 (PDT)
Date:   Thu, 31 Mar 2022 13:28:06 -0700 (PDT)
X-Google-Original-Date: Thu, 31 Mar 2022 13:04:31 PDT (-0700)
Subject:     Re: [PATCH] RISC-V: Declare per cpu boot data as static
In-Reply-To: <20220323171726.1303706-1-atishp@rivosinc.com>
CC:     linux-kernel@vger.kernel.org, Atish Patra <atishp@rivosinc.com>,
        lkp@intel.com, aou@eecs.berkeley.edu, atishp@atishpatra.org,
        anup@brainfault.org, damien.lemoal@wdc.com,
        devicetree@vger.kernel.org, jszhang@kernel.org,
        krzysztof.kozlowski@canonical.com, linux-riscv@lists.infradead.org,
        Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     Atish Patra <atishp@rivosinc.com>
Message-ID: <mhng-00dae2b9-e45c-43c7-a67d-75c937215a19@palmer-mbp2014>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Mar 2022 10:17:26 PDT (-0700), Atish Patra wrote:
> The per cpu boot data is only used within the cpu_ops_sbi.c. It can
> be delcared as static.
>
> Fixes: 9a2451f18663 ("RISC-V: Avoid using per cpu array for ordered booting")
>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Atish Patra <atishp@rivosinc.com>
> ---
>  arch/riscv/kernel/cpu_ops_sbi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> index dae29cbfe550..7f2ad008274f 100644
> --- a/arch/riscv/kernel/cpu_ops_sbi.c
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -21,7 +21,7 @@ const struct cpu_operations cpu_ops_sbi;
>   * be invoked from multiple threads in parallel. Define a per cpu data
>   * to handle that.
>   */
> -DEFINE_PER_CPU(struct sbi_hart_boot_data, boot_data);
> +static DEFINE_PER_CPU(struct sbi_hart_boot_data, boot_data);
>
>  static int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
>  			      unsigned long priv)

Thanks, this is on for-next.
