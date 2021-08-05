Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54A163E0F5D
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 09:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238572AbhHEHhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 03:37:04 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:44092
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231181AbhHEHhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 03:37:03 -0400
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 47C293F34E
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 07:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628149009;
        bh=FkL9np5HE5mawBpGWfUQVMs1Jp3nZ1r2uXir2/3ncE4=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=Oc8nntu2s1I/sH9u0Ys5OwwSkRUrZ/9sSoexGgFm5QOHfcRBuigXHmNU0IM62epdD
         klE4/5jQ0ATH81HHCssh7EHv0GLU+JAVr3gv1tOBjJiom3cZft0a53/8ieQCNVQtag
         ie2fHmEmD+0mqbEC/dLIEINGUT8tYsP46iwFTTxirTkxI6U1qNYv4aksoa8tyfLIsl
         nk2aNhzd+baubu0DtTEEef11RQ5VPOeLNtXj1clqr2W/ALIlnJY69+dqTXfIsKFZhx
         9tSwOkBiTw9XNjOBH3ZjXuxitIXuU1hBig4w+C0XLst/5bstd4LEBQ9LsZq4f2aGMM
         /K3CYSqZ81XXw==
Received: by mail-ej1-f70.google.com with SMTP id qh25-20020a170906ecb9b02905a655de6553so1615380ejb.19
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 00:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FkL9np5HE5mawBpGWfUQVMs1Jp3nZ1r2uXir2/3ncE4=;
        b=agO/KApPLflx8nkZsd0ruuTK2ydQSw4FNd6uWycLSyNBY7jN1KAZvybY1HrgKhkXGs
         PsUjDYCCujUUaNwXeX0SEeobhtfFojWCpjg9eIbPg9ALtQIleVxD6oEPiEdjocGTNkaq
         WXiuDuVLuSS25Yi2jxbLjhryNGjpheHOYZO4MPU9ryBdq49JcQEUL05OswHpP1XGI6iP
         yEOE46rY4gsvUfWJ7a36GZRaL9BC9ndaKuXgRpBUVGAHRgzfCyffaJ0r6DQ2/NdwDvAG
         rJ9HawEvZiS88RS6NVe5MoqxqGgtfRzQLPXc+dsJkTVeShTdVFWoNH5wK2TngCjP1rxT
         e5OA==
X-Gm-Message-State: AOAM532AWj2CgsEOiGvrgweZ7D6iMBiMIFkTB4da7iFTCPLChnz1lVnX
        D4gKVcaZWOL8dto2TWp6Lw+pSdEo0stkTmNwzMLR9eYDPDHhQVsgjXy0QKcO9NL3xbatvQZ2jDg
        aQpPNzru/FjNu/2GzVpC7BFuGBoseYlLa6iHf+F0=
X-Received: by 2002:aa7:c68e:: with SMTP id n14mr4845827edq.66.1628149008733;
        Thu, 05 Aug 2021 00:36:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzNcrJVCuj4cNRpvfe7GyxnsvAMJjkp36MUOe1r9B6do8nVXIxKRiZrUJlh02P0wyiqgg+kpw==
X-Received: by 2002:aa7:c68e:: with SMTP id n14mr4845805edq.66.1628149008579;
        Thu, 05 Aug 2021 00:36:48 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id u4sm1403189eje.81.2021.08.05.00.36.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 00:36:48 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
 range on Exynos7
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Alim Akhtar <alim.akhtar@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Pankaj Dubey <pankaj.dubey@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Marc Zyngier <maz@kernel.org>
References: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <b0d6ff2a-24af-96c1-62a1-8b920c63e05a@canonical.com>
Date:   Thu, 5 Aug 2021 09:36:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2021 09:21, Krzysztof Kozlowski wrote:
> The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF (by
> ARM).
> 

I underestimated the issue - this is actually bug as there is a GICC_DIR
register at offset 0x1000. Therefore:

Fixes: b9024cbc937d ("arm64: dts: Add initial device tree support for exynos7")

> Reported-by: Sam Protsenko <semen.protsenko@linaro.org>
> Reported-by: Marc Zyngier <maz@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  arch/arm64/boot/dts/exynos/exynos7.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/exynos/exynos7.dtsi b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> index 8b06397ba6e7..c73a597ca66e 100644
> --- a/arch/arm64/boot/dts/exynos/exynos7.dtsi
> +++ b/arch/arm64/boot/dts/exynos/exynos7.dtsi
> @@ -137,7 +137,7 @@ gic: interrupt-controller@11001000 {
>  			#address-cells = <0>;
>  			interrupt-controller;
>  			reg =	<0x11001000 0x1000>,
> -				<0x11002000 0x1000>,
> +				<0x11002000 0x2000>,
>  				<0x11004000 0x2000>,
>  				<0x11006000 0x2000>;
>  		};
> 


Best regards,
Krzysztof
