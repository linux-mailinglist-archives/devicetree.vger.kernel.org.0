Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C95F70722A
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 21:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjEQT3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 15:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjEQT3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 15:29:10 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1311421D
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:28:29 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f13ef4ad91so1473876e87.3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 12:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684351706; x=1686943706;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AoCBXCVisneTJ/xKyGw/fzqU76GzvlUnibRbCGUPltc=;
        b=yFJ3jImtIluIRduy/GMhEyappIoBnHVZuVVSjpeXSPp9AXhSb9p40kyjEnIPnc7OBW
         OUUqzaYv4WCJ2o7nYWBOd1pZifrcjwb6w7JhND8HhAX4DdNm88gWwbHoTwYH7bnDZott
         g0Sw0qXOY4XQTPavkPeGUcgNF4d4XomEUAb4x9SU++2a+qMPMlfBl3p+EN5Ytjlj7/U4
         cYe/WnzkQEAZaZYYw2lGBup40s5kdfiLeUVJQWZ/T5xzgxGKT9yumt7wDHyrXAzqu+P9
         HXfdNoJnJFyq8Sy99wCs0/+SonCRzP+JpZwLwFyNcHWsVzm6C9P4PDycucwhPkVmCzDO
         d8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684351706; x=1686943706;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AoCBXCVisneTJ/xKyGw/fzqU76GzvlUnibRbCGUPltc=;
        b=NYQGLIXCysucyKpWo3uVwUm5q8fdledH/f5fh+3mDbEIep2dKMEyeeyuYQ9xR+IS9e
         p5fPaZ3weRLqEgUDRPK2zZRFajG+LWfDPw0R4jNoAdrdrAm1a4ZNmaqrUD7fns2BfEqO
         oY/jpKi/uZfAPvc07SvdWWfMJAAXu7lnhFjcf67j/jANZUOZpOVlXcPWOv1VbsiEGm0r
         zTqnpBuY16wBpN4NBEZHNDFhXqtr66bwvVtcs6JaG1p7VyFDsTuFsM5EeG5Dx3/MTjBw
         ilK6ge8om8XXkUtyIWpzxhae28D+T7W6wkiWjX3cSONZec18avh7KRbPv+OYInSa75Z9
         r7wA==
X-Gm-Message-State: AC+VfDxGqiayzOi0XDjWg9o+dwePjGxyXounnkpDt9elTFVVeWO776w4
        bLJRQ2Ys4mgwxOhJFFV5lloG2A==
X-Google-Smtp-Source: ACHHUZ45Y+CMq9N0vDVyJFWoKSyN16TjQkNJ2EdaelJGczyJCWYJyxPU1WTv7OgPe6Sss8E24x6DVg==
X-Received: by 2002:ac2:4575:0:b0:4f3:5038:5857 with SMTP id k21-20020ac24575000000b004f350385857mr567731lfm.55.1684351706034;
        Wed, 17 May 2023 12:28:26 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id z13-20020a056512376d00b004f019d3eab4sm3468608lft.23.2023.05.17.12.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 May 2023 12:28:25 -0700 (PDT)
Message-ID: <15df78fc-c35b-aae0-fd64-917c9882c815@linaro.org>
Date:   Wed, 17 May 2023 21:28:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/5] of: reserved_mem: Implement
 alloc-{bottom-up,top-down}
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20230510-dt-resv-bottom-up-v1-0-3bf68873dbed@gerhold.net>
 <20230510-dt-resv-bottom-up-v1-2-3bf68873dbed@gerhold.net>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230510-dt-resv-bottom-up-v1-2-3bf68873dbed@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15.05.2023 12:12, Stephan Gerhold wrote:
> Use memblock_set_bottom_up() to specify an explicit allocation order for
> dynamic reservations with "alloc-ranges". Since the default value varies
> between architectures the previous value is saved and restored after
> trying the allocations.
> 
> If neither alloc-bottom-up or alloc-top-down are specified the previous
> implementation-defined allocation order is preserved.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/of/of_reserved_mem.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> index 948efa9f99e3..6443140deacf 100644
> --- a/drivers/of/of_reserved_mem.c
> +++ b/drivers/of/of_reserved_mem.c
> @@ -89,7 +89,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node,
>  	phys_addr_t base = 0, align = 0, size;
>  	int len;
>  	const __be32 *prop;
> -	bool nomap;
> +	bool nomap, prev_bottom_up;
>  	int ret;
>  
>  	prop = of_get_flat_dt_prop(node, "size", &len);
> @@ -130,6 +130,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node,
>  			return -EINVAL;
>  		}
>  
> +		prev_bottom_up = memblock_bottom_up();
> +		if (of_get_flat_dt_prop(node, "alloc-bottom-up", NULL))
> +			memblock_set_bottom_up(true);
> +		if (of_get_flat_dt_prop(node, "alloc-top-down", NULL))
> +			memblock_set_bottom_up(false);
> +
>  		base = 0;
>  
>  		while (len > 0) {
> @@ -148,6 +154,7 @@ static int __init __reserved_mem_alloc_size(unsigned long node,
>  			len -= t_len;
>  		}
>  
> +		memblock_set_bottom_up(prev_bottom_up);
>  	} else {
>  		ret = early_init_dt_alloc_reserved_memory_arch(size, align,
>  							0, 0, nomap, &base);
> 
