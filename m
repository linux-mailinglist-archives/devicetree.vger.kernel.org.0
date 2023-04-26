Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCBD96EF42B
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 14:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240826AbjDZMTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 08:19:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240825AbjDZMTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 08:19:03 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56B9859DE
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 05:19:01 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f178da21b5so48266775e9.3
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 05:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1682511540; x=1685103540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RmcjdQ8RsVLRzv4Q3ef05jNyRl9ej4qHvJanOCZLJ0E=;
        b=K1RxM3g3ODFypAviB+wu3nxOeIZV0HPru6hpU1H0nNRY/BzQYSGXLanrNxtdZARdgL
         hxqNblt9p/koSNHmgIs3q6ndXnWymgcYwvRw2oQcujS0gVe0mYQaBHvMvXKiapWFW9My
         6pQl57VKgLF9KjVyBC8RQ1kChazvENrloOypxONMyE9nJCm4O1PORFJ9+TZUmOida3Bv
         zVrmHswFHY+vYfkgXszldRkZCDZinQ6kUhzWzAu91f8uZnQdDcWW8wMBx+8RcriKGtiA
         nvJIBT7SpoVwv0I49LtBrN9Dp/u4ClnXBXGhZZh/jzEPRzzFIoSQnFMKVurqXY5l46R6
         2W+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682511540; x=1685103540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RmcjdQ8RsVLRzv4Q3ef05jNyRl9ej4qHvJanOCZLJ0E=;
        b=ae1kObZkbs7dBfewPPr8ZlftMZK+AsuYPC1V50AyAOzNJAnFhBofA4SBneAjDG3t7i
         YGZMPiWfb1h7QIcOqPm+9UjVrPgSBIUMXG85kWIHSSRv2fL4uLyqo3rur0NNK2OQNlYm
         +ybjq3uDxZDhSC8zI1UEJPWCgjQmcFzyghpMckLNi4jB3Dk93851u4hfuTK8/kgtltpO
         1lV+mhyTkKIcNe3xMPIMbYs/mYUj3iBH5Cticch8JLWIo4CUyPirM5UnCatV6HHG8X/i
         HlWbcZvCyF8Ldpl2ilaGbvPIlC9eMUEkJdvhpEYP6eE6fG6uSL/wm+jpdZQPRFJ6Cy3P
         UKQA==
X-Gm-Message-State: AAQBX9e51oOOoo/qlWX3T6cY1+aHIlWTBmW5WAfsGfkCeRoE9csxSdaa
        PhrfgExfs57d4CAcwlgTuMPxrQ==
X-Google-Smtp-Source: AKy350ZuAQG2NzMLpZsGbGbslS8EiUE5c3iWnjYb2zoOD/0f8W4YMwo2MONCPTPjhlYYwFkvkprawA==
X-Received: by 2002:a7b:c446:0:b0:3ed:ea48:cd92 with SMTP id l6-20020a7bc446000000b003edea48cd92mr13616937wmi.15.1682511539807;
        Wed, 26 Apr 2023 05:18:59 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id e16-20020a5d5950000000b0030490c8ccafsm3720048wri.52.2023.04.26.05.18.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 05:18:59 -0700 (PDT)
Date:   Wed, 26 Apr 2023 14:18:52 +0200
From:   Andrew Jones <ajones@ventanamicro.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     palmer@dabbelt.com, conor@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Wende Tan <twd2.me@gmail.com>, Soha Jin <soha@lohu.info>,
        Hongren Zheng <i@zenithal.me>, Yangyu Chen <cyy@cyyself.name>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1 1/2] RISC-V: skip parsing multi-letter extensions
 starting with caps
Message-ID: <zzxnphgq34d7pbbvjaoxal4i3mtn57x7avujr2brb3ddxorzno@3fsb57layf7m>
References: <20230426-satin-avenging-086d4e79a8dd@wendy>
 <20230426-devalue-enlarging-afb4fa1bb247@wendy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230426-devalue-enlarging-afb4fa1bb247@wendy>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 26, 2023 at 11:43:24AM +0100, Conor Dooley wrote:
> Yangyu Chen reported that if an multi-letter extension begins with a
> capital letter the parser will treat the remainder of that multi-letter
> extension as single-letter extensions.

I think the problem is that the parser doesn't completely abort when
it sees something it doesn't understand. Continuing is risky since
it may be possible to compose an invalid string that gets the parser
to run off the rails.

How about completely aborting, noisily, when the string doesn't match
expectations, falling back to a default string such as rv64ima instead.
That also ought to get faster corrections of device trees.

> 
> Certain versions of rocket-chip will export devicetree containing
> rv64ima_Zifencei, which is parsed by the kernel as rv64imafc.
> 
> While capital letters in riscv,isa are invalid and the validation of
> devicetree's isn't the kernel's job, we should behave more gracefully
> here. Rather than abort parsing on meeting a capital letter, mark the
> extension as an error & allow the parser to skip ahead to the next
> extension.
> 
> Reported-by: Yangyu Chen <cyy@cyyself.name>
> Link: https://lore.kernel.org/all/tencent_1647475C9618C390BEC601BE2CC1206D0C07@qq.com/
> Fixes: 2a31c54be097 ("RISC-V: Minimal parser for "riscv, isa" strings")
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/kernel/cpufeature.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 52585e088873..93850540b0b4 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -142,6 +142,10 @@ void __init riscv_fill_hwcap(void)
>  			const char *ext_end = isa;
>  			bool ext_long = false, ext_err = false;
>  
> +			if (unlikely(!islower(*ext))) {
> +				ext_err = true;
> +			}

Can drop the {}

> +
>  			switch (*ext) {
>  			case 's':
>  				/**
> @@ -156,6 +160,15 @@ void __init riscv_fill_hwcap(void)
>  					break;
>  				}
>  				fallthrough;
> +			case 'S':
> +			case 'X':
> +			case 'Z':
> +				/*
> +				 * As the riscv,isa string must be lower-case,
> +				 * S, X and Z are not valid characters. Parse
> +				 * the invalid extension anyway, to skip ahead
> +				 * to the next valid one.
> +				 */
>  			case 'x':
>  			case 'z':
>  				ext_long = true;
> @@ -185,10 +198,8 @@ void __init riscv_fill_hwcap(void)
>  				++ext_end;
>  				break;
>  			default:
> -				if (unlikely(!islower(*ext))) {
> -					ext_err = true;
> +				if (unlikely(ext_err))
>  					break;
> -				}
>  				/* Find next extension */
>  				if (!isdigit(*isa))
>  					break;
> -- 
> 2.39.2
>

Thanks,
drew
