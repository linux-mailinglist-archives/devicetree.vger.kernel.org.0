Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45C12631DD8
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:11:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbiKUKLl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:11:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbiKUKL1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:11:27 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1FFAF00A
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:11:25 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id a15so13939652ljb.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vkbm4Bxn5eLnjPj3/tOUOnl04OhPLdTSTUnYDiGnDgo=;
        b=bR/nvBGSZjElA8QI/+tH/765a4y1M2Z+4n0UDqntO79EVlF1v7gSzOkFqB0mmLdDNj
         hOt6Kx6yDqk6TdNyNxegPDA45Yx0nzjaOTEyfn5KrZCMGNutG2of+2wV6Dms1L1GqR8N
         pmkSNKO4mEJkwD+7YrtKCJ5mpfGXgV+ccv4g3F1JKKPsYfFBwyubXPB9b6pFq8f2suft
         VlfBiXfLZpUvsDkWsrN/6JOKGF8TgBap+757VGyxsw8qk/HjB/ML/O8tXBfwYxkKj5CS
         JselQKZ24Kxskv+/m9hOFQjCXcc6/YfJexxtCPLux/6+Cd1+bYWrzG1aIIRgzzmb/fsw
         axJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vkbm4Bxn5eLnjPj3/tOUOnl04OhPLdTSTUnYDiGnDgo=;
        b=bN96yKLWuHyf4nsjd9+r3c9LBXejEUPIHxxcStQYFA3o8d25GoF84giTgaIk6O6ZpL
         1S56kY+rsiiByy3nAgOKbvl4qV371EPM0gU6Xs6pB6U3JPjOpFv0ZUV+q0EuKGhVHbTL
         zK6db8UwQgdnHMUk5cyNsUcP+w8QfME5jB4fAhV45RbUJe/ccIwAwegkunCFELanFowh
         1J4MXgVctrbVfqb5uiPY9RaCjfyK7biGBvnWU7EH1Zzvpv473Ph/a5T1f+p3NZuGjHJb
         V7HM7pAKFK/vuJHDFN4saU0bOeLd2dccgw04YaH4iZxeqECA5dfUD1AHwnVDAAHqAS90
         L0EA==
X-Gm-Message-State: ANoB5pmovIpKALFvR3MLVw9mJxzsfVIlg27m8bjb8M8Iezy+YoidAGvG
        bE49acAEtPhOIC+bvOQoN7+Suw==
X-Google-Smtp-Source: AA0mqf68/n19Rjf7V+oTQiueK1njPoKnq0nXUA6E151V5mffE88KckL4M3G268YOmAXtMqrcnqK5hQ==
X-Received: by 2002:a05:651c:1510:b0:277:75fb:1fc5 with SMTP id e16-20020a05651c151000b0027775fb1fc5mr5398278ljf.405.1669025483901;
        Mon, 21 Nov 2022 02:11:23 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v4-20020a056512348400b0048af397c827sm1974128lfr.218.2022.11.21.02.11.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:11:23 -0800 (PST)
Message-ID: <9cc705dd-191d-ddf9-9e26-403d5124c77c@linaro.org>
Date:   Mon, 21 Nov 2022 11:11:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 7/7] MAINTAINERS: add myself as Bouffalolab SoC entry
 maintainer
Content-Language: en-US
To:     Jisheng Zhang <jszhang@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Jiri Slaby <jirislaby@kernel.org>
Cc:     linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20221120082114.3030-1-jszhang@kernel.org>
 <20221120082114.3030-8-jszhang@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221120082114.3030-8-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/11/2022 09:21, Jisheng Zhang wrote:
> I want to maintain this Bouffalolab riscv SoC entry from now on.

Use 3rd person narrative, so:
1. Subject: MAINTAINERS: riscv: add entry for Bouffalolab SoC
2. Commit: Add Jisheng Zhang as Bouffalolab SoC maintainer.

> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 92451834b940..3564b27d7da4 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17738,6 +17738,12 @@ F:	arch/riscv/
>  N:	riscv
>  K:	riscv
>  
> +RISC-V BOUFFALOLAB SOC SUPPORT
> +M:	Jisheng Zhang <jszhang@kernel.org>
> +L:	linux-riscv@lists.infradead.org
> +S:	Maintained
> +F:	arch/riscv/boot/dts/bouffalolab/
> +
>  RISC-V MICROCHIP FPGA SUPPORT
>  M:	Conor Dooley <conor.dooley@microchip.com>
>  M:	Daire McNamara <daire.mcnamara@microchip.com>

Best regards,
Krzysztof

