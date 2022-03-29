Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63F544EB2A4
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 19:23:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238190AbiC2RYw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 13:24:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234479AbiC2RYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 13:24:52 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC02517B888
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:23:08 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id x34so21467939ede.8
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nJ8logHvUhwzuUyaPd0gnGv7WJWT9U6mqYqu6DTlmCY=;
        b=CqHheIaK1zijProvoDF6vHljodsrx2WgrnFolz2FUM9rkuSIwAHkyUiAy1eZT2/Cc8
         wvjdJ/NjcUEStl8AP+KILlCE/kjZsnaq0EL3NvWEdGtrUjK/NgEPxNKahSlcYYHah78H
         a8M1kagnsY+Gy3nghLe3aRHRrVfEZlPfKZpWp+QaXij9rtRJr8k8cUzNnMluw0N+8+vi
         71pe91y5Lbpbkb/s85pOD9UhdpSy1fiEoBOXEkM/L56r6GGOQjNwjzCIFTEvcITyRv18
         GMpBfnk95ss0Ljg78/J0n/lBx/uYQcURpbumlD3qk80t8eueqyo19Zz8RslGuRDu806M
         0nGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nJ8logHvUhwzuUyaPd0gnGv7WJWT9U6mqYqu6DTlmCY=;
        b=Sxrh5newhhwISpxJi/qSKGb5eg9b2pMl+pjMiWkWmuX0EPBRuChTYk9o8hgZAats6P
         Lf/lyQMq7/FHUuDX2gMC15xuJXWdRq/oROLaKaPoH6YQGwyr4YGD+yTcTG4sQOSDZOSL
         Nz4ld1zcjf+R3Qs8Dc8SflVVTxd3sJ5jdPdmGR59TXvR6k1JyhvT0JambdpfEOcJlWoP
         FMEUmOMTYU1thhOcHTnrG0iIcu+4/hJt5EyjaSauh1TrR88T9VdSo58vHF4OrvC3+D4T
         qjbL+UFWZ4ayvBlJkVcuRLrbM/F6KuFu+EI8kBI/19WD+1EYsN4CW9UBcd7fZom5oIrT
         lSeA==
X-Gm-Message-State: AOAM53350qK9mIovBUr/G3ZjGYC352cJ/2P/UMVZOPzbZgb/vF2g+jrL
        X0b4EtumPPt5obJxZQJ7YVCJLA==
X-Google-Smtp-Source: ABdhPJyKfZ5o8TNiFzHDrzD0PJMaC6MOkuu5P1BcM/Clp65rrRNfGctrKdbGNAm5D2f2U1fFGsclFg==
X-Received: by 2002:aa7:d311:0:b0:419:443b:6222 with SMTP id p17-20020aa7d311000000b00419443b6222mr5852391edq.161.1648574587472;
        Tue, 29 Mar 2022 10:23:07 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id r11-20020aa7cfcb000000b0041902ac4c6asm8565475edy.1.2022.03.29.10.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 10:23:06 -0700 (PDT)
Message-ID: <09fa521e-dcf9-b744-da30-86542fd8855e@linaro.org>
Date:   Tue, 29 Mar 2022 19:23:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: fix compatible string rk3328
 cru node
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220329163016.27458-1-jbx6244@gmail.com>
 <20220329163016.27458-2-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329163016.27458-2-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2022 18:30, Johan Jonker wrote:
> The rockchip,rk3328-cru.txt file was converted to YAML.
> A DT test of the rk3328 cru node gives notifications regarding
> the compatible string. Bring it in line with the binding by
> removing some unused fall back strings.

Are you sure these are unused? rockchip,cru maybe, but what about DTS
used out of tree? It's useful to mention that the compatible is not
documented (so if there are any out of tree users, it's their fault).

Removal of syscon is different case - why do you think it is unused? Did
you check it? It's not a fallback compatible.

> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index b822533dc..73418fd2f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -756,7 +756,7 @@
>  	};
>  
>  	cru: clock-controller@ff440000 {
> -		compatible = "rockchip,rk3328-cru", "rockchip,cru", "syscon";
> +		compatible = "rockchip,rk3328-cru";
>  		reg = <0x0 0xff440000 0x0 0x1000>;
>  		rockchip,grf = <&grf>;
>  		#clock-cells = <1>;


Best regards,
Krzysztof
