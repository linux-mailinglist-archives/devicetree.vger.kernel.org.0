Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3ED7776FB
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 13:28:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234567AbjHJL2o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 07:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234187AbjHJL2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 07:28:43 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C678268A
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:28:41 -0700 (PDT)
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E6EB641BF0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1691666919;
        bh=TRU6tUd9wDUUaUwwFM5Bjzb7u7hecXj9L7oTyXsIeCA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=gahCg0U//OpH467uyTYbpPwW+xT21/XeXApKwcAzDb7l2nYk57GAjXMih8fumWoxn
         244tXaiBhWbf5HGCLd3W4vV+52aay/QqHxqzCPTBttUUwn7uJKtTAE2VT9TNE6UJgD
         lqTnciBtpup+jVt8f19VnqsOOSkhJLIXzLhjsntD2rOljzOsW3i+H5u2r5NW898w7S
         T4zK8NAyDxBmM5Vfi2BPKXl5gZ97Vo0ERot+srGE+LrR8gnvkdcTOFBD9EcMdJMC40
         95lB1Ug7pZ8+p2nxloem8y7Z1K5WPE3VihO6BiXNsOcTXBOZaE3bERDQLXjqUC1gAI
         DQH6uFElw5P1Q==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-40a91222d8fso11028701cf.1
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 04:28:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691666919; x=1692271719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRU6tUd9wDUUaUwwFM5Bjzb7u7hecXj9L7oTyXsIeCA=;
        b=i+EZ0SJTuI3Yao+XFPhzCFwdLEkTj3sfr/6Ij8/2hVmeq79uxA5D7IAdQyiLtJcD08
         6GRbbzQkdaKcQ+9uqKOMgZOQihMB4ZQE1BnxM2RZccGFGvf+NAUMj+j2KalRKsZjR2Tu
         w73W8Ci0VdmWU0TFqNM+Ar3jNP2DmLR0rTIkX9EgqLnbbi9NwDB/0lAvWH7tizZIo2Y7
         oBFlYSkFGXMEMbu5NFcsPtoYGrOfA7gBtQV7m8B9ycbHsAf6PszCUiS02cdSg31LQGWt
         oavdKJM5jlJBpLe4Cf5RhzT6VhJ/Gs0iNp756cHoEvYyP8NgVLN13aX2azpXsf7PutSZ
         Bbpg==
X-Gm-Message-State: AOJu0YzsefFAircilqkqkSojiyTFI3L6x+xYTT9Ho4ZLxXiwHG321QIt
        WVgBqwR/++PZVqf1xlMICWw7ndOY0Jel7eh8OjeT0qSkjEGUC6jfeZPRQHUOgrt+r79VUSWHMnX
        3a+qnGpgC6XsTEXFKHZ7RqRxrth/Wx+PgTsPhw8gpmrdXIALAnh2gkpw=
X-Received: by 2002:a05:622a:2c1:b0:40f:c669:a130 with SMTP id a1-20020a05622a02c100b0040fc669a130mr2947878qtx.36.1691666919030;
        Thu, 10 Aug 2023 04:28:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnvFC2HPaIsW8TudoAo6get1aLdMx0txncY0jSPizTM4n+QIRlX7JcQnvFJl+u+M8NbZE3G+EzISNoXnySSB8=
X-Received: by 2002:a05:622a:2c1:b0:40f:c669:a130 with SMTP id
 a1-20020a05622a02c100b0040fc669a130mr2947865qtx.36.1691666918799; Thu, 10 Aug
 2023 04:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230810074646.19076-1-samin.guo@starfivetech.com> <20230810074646.19076-2-samin.guo@starfivetech.com>
In-Reply-To: <20230810074646.19076-2-samin.guo@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 10 Aug 2023 13:28:23 +0200
Message-ID: <CAJM55Z_AKXa-cKy8kS4-8XPcqgFb4ts2ywhcWwL7Nf3wMBCWJA@mail.gmail.com>
Subject: Re: [-next v1 1/1] riscv: dts: starfive: jh7110: Fix GMAC configuration
To:     Samin Guo <samin.guo@starfivetech.com>
Cc:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Aug 2023 at 09:46, Samin Guo <samin.guo@starfivetech.com> wrote:
>
> Fixed configuration to improve the speed of TCP RX.
>
> Before:
>   # iperf3 -s
>   -----------------------------------------------------------
>   Server listening on 5201 (test #1)
>   -----------------------------------------------------------
>   Accepted connection from 192.168.1.4, port 47604
>   [  5] local 192.168.1.3 port 5201 connected to 192.168.1.4 port 47612
>   [ ID] Interval           Transfer     Bitrate
>   [  5]   0.00-1.00   sec  36.3 MBytes   305 Mbits/sec
>   [  5]   1.00-2.00   sec  35.6 MBytes   299 Mbits/sec
>   [  5]   2.00-3.00   sec  36.5 MBytes   306 Mbits/sec
>   [  5]   3.00-4.00   sec  36.5 MBytes   306 Mbits/sec
>   [  5]   4.00-5.00   sec  35.7 MBytes   300 Mbits/sec
>   [  5]   5.00-6.00   sec  35.4 MBytes   297 Mbits/sec
>   [  5]   6.00-7.00   sec  37.1 MBytes   311 Mbits/sec
>   [  5]   7.00-8.00   sec  35.6 MBytes   298 Mbits/sec
>   [  5]   8.00-9.00   sec  36.4 MBytes   305 Mbits/sec
>   [  5]   9.00-10.00  sec  36.3 MBytes   304 Mbits/sec
>   - - - - - - - - - - - - - - - - - - - - - - - - -
>   [ ID] Interval           Transfer     Bitrate
>   [  5]   0.00-10.00  sec   361 MBytes   303 Mbits/sec        receiver
>
> After:
>   # iperf3 -s
>   -----------------------------------------------------------
>   Server listening on 5201 (test #1)
>   -----------------------------------------------------------
>   Accepted connection from 192.168.1.4, port 47710
>   [  5] local 192.168.1.3 port 5201 connected to 192.168.1.4 port 47720
>   [ ID] Interval           Transfer     Bitrate
>   [  5]   0.00-1.00   sec   111 MBytes   932 Mbits/sec
>   [  5]   1.00-2.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   2.00-3.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   3.00-4.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   4.00-5.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   5.00-6.00   sec   111 MBytes   935 Mbits/sec
>   [  5]   6.00-7.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   7.00-8.00   sec   111 MBytes   935 Mbits/sec
>   [  5]   8.00-9.00   sec   111 MBytes   934 Mbits/sec
>   [  5]   9.00-10.00  sec   111 MBytes   934 Mbits/sec
>   [  5]  10.00-10.00  sec   167 KBytes   933 Mbits/sec
>   - - - - - - - - - - - - - - - - - - - - - - - - -
>   [ ID] Interval           Transfer     Bitrate
>   [  5]   0.00-10.00  sec  1.09 GBytes   934 Mbits/sec        receiver
>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> Signed-off-by: Samin Guo <samin.guo@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index a608433200e8..76884cf373bf 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -318,8 +318,8 @@
>
>         stmmac_axi_setup: stmmac-axi-config {
>                 snps,lpi_en;
> -               snps,wr_osr_lmt = <4>;
> -               snps,rd_osr_lmt = <4>;
> +               snps,wr_osr_lmt = <0xf>;
> +               snps,rd_osr_lmt = <0xf>;

nit: this is a limit, so presumably counting things and not an address
or bitmask, so I'd prefer decimal numbers here, eg <15>.

It works fine either way, so
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>                 snps,blen = <256 128 64 32 0 0 0>;
>         };
>
> @@ -839,7 +839,7 @@
>                         rx-fifo-depth = <2048>;
>                         tx-fifo-depth = <2048>;
>                         snps,multicast-filter-bins = <64>;
> -                       snps,perfect-filter-entries = <8>;
> +                       snps,perfect-filter-entries = <256>;
>                         snps,fixed-burst;
>                         snps,no-pbl-x8;
>                         snps,force_thresh_dma_mode;
> @@ -870,7 +870,7 @@
>                         rx-fifo-depth = <2048>;
>                         tx-fifo-depth = <2048>;
>                         snps,multicast-filter-bins = <64>;
> -                       snps,perfect-filter-entries = <8>;
> +                       snps,perfect-filter-entries = <256>;
>                         snps,fixed-burst;
>                         snps,no-pbl-x8;
>                         snps,force_thresh_dma_mode;
> --
> 2.17.1
>
