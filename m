Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4490373E30F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 17:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbjFZPTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 11:19:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230503AbjFZPTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 11:19:13 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3609E10CF
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:19:12 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b69f71a7easo19401661fa.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1687792750; x=1690384750;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Czk7x5n6Mrmu3uCgM3g0XObvviS7O6LtljfnSRp8Lu4=;
        b=jtGX7siBQsyT+P/YzALMFWZBXNwz5KO8DiHH5xFg5dR7umyNG/JCelf8OHbIvwd00H
         L5aYgm3pIsNnnksn6odR+lIoNlgt+sIY1PYazdO5A0j2lzeuyAspG64RLq9XgC/W6Io3
         Q02ZhpuJPhZs8+voHoBl7lRYZK+fLMLd2z8QVg90dZkOaWXoBCeCOlGJillHy04rmWOU
         VYLIQHkAuqo9ZTyXbkMpOB0JvezN9Up+nXHeOa21mmvl7LJV2BLbobdAzM4OpunDkBjW
         7+kRGIyUAotwRjhGuwEjypdFfOl9JpAtQ58RxwTYW75+4M4ffp8qdUjjmbWhxKcvTq00
         23CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687792750; x=1690384750;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Czk7x5n6Mrmu3uCgM3g0XObvviS7O6LtljfnSRp8Lu4=;
        b=DNr52Od2Q4fShBpFCSVkJOPN/B/zhMj+gVQkuJP5BL2p2ntpn5VYVHCW3sA3pQX9FK
         i3bJ3tcuebf6bnLae756381kkxCg2WYq/lmnZJtqAaSQD8cRK6hB2xiTYfvJlPQMZbFv
         k3DbP/MP2EmT9NnlMeA02Owv82xRV4R0YvUdwCIaCbjfbn6/pK02HIJzNaHGE2qMg0f7
         n7lpNmKWr3QwPaQ/nq3v1jdy7q+DpGAFfZtVL38P7Jv2qyfTDu3pFoAFzQ5qxoI/YWy2
         dmArvVroFuU2DXHY8PTyAIdT1bvYaxA0QuooJkuP7iouM8bBCxoHw5CSnwEVvRGYMGy+
         GP+g==
X-Gm-Message-State: AC+VfDzAGzndWCHyzq20eCFdc6AXQ9ZOIGuYmpTAwwDLp9fvsJefHuoX
        F9+irk7Skxat/nQIim7SlORXTw==
X-Google-Smtp-Source: ACHHUZ42zN9JaEPH6AXQSnwMo5S3K8EOoc3Rp6A8ANRQ0lo1K6rI0KDmb+Dk7IdBqVvVuuK/RweOWg==
X-Received: by 2002:a2e:7306:0:b0:2b6:9930:871 with SMTP id o6-20020a2e7306000000b002b699300871mr2554964ljc.13.1687792750438;
        Mon, 26 Jun 2023 08:19:10 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id p21-20020a170906499500b0097404f4a124sm3399047eju.2.2023.06.26.08.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 08:19:09 -0700 (PDT)
Date:   Mon, 26 Jun 2023 17:19:08 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Heiko Stuebner <heiko.stuebner@vrull.eu>,
        Evan Green <evan@rivosinc.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/9] RISC-V: drop a needless check in print_isa_ext()
Message-ID: <20230626-67e571e6d9f02c28a09dab33@orel>
References: <20230626-provable-angrily-81760e8c3cc6@wendy>
 <20230626-skydiver-frown-659b982a43ad@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230626-skydiver-frown-659b982a43ad@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 26, 2023 at 12:19:40PM +0100, Conor Dooley wrote:
> isa_ext_arr cannot be empty, as some of the extensions within it are
> always built into the kernel.

This is only true since commit 07edc32779e3 ("RISC-V: always report
presence of extensions formerly part of the base ISA"), right? If
so, it might be nice to call that commit out in this commit message.

> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/kernel/cpu.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
> index 742bb42e7e86..01f7e5c62997 100644
> --- a/arch/riscv/kernel/cpu.c
> +++ b/arch/riscv/kernel/cpu.c
> @@ -233,10 +233,6 @@ static void print_isa_ext(struct seq_file *f)
>  
>  	arr_sz = ARRAY_SIZE(isa_ext_arr) - 1;
>  
> -	/* No extension support available */
> -	if (arr_sz <= 0)
> -		return;
> -
>  	for (i = 0; i <= arr_sz; i++) {
>  		edata = &isa_ext_arr[i];
>  		if (!__riscv_isa_extension_available(NULL, edata->isa_ext_id))
> -- 
> 2.40.1
>

Otherwise,

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Thanks,
drew
