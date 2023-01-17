Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FB5266DBE1
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 12:08:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236636AbjAQLIW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 06:08:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236545AbjAQLHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 06:07:53 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E002B32E72
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:07:38 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r9so7392686wrw.4
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 03:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/YKpwDr0UUktSDgsQPjg+oJ20FdKqwcj/JdiWGfoHTc=;
        b=Y7GVv3NebXhn+bTHG6Wy+IAWfFJ3kREvxXhRMu7K0wWx3n9n2QL8uut15TsLJ1PW8w
         OPq/tVa0lZW7Yu6g3ye5hhZt5J8lsX669PnW9v0WlFRkOnKJ/fXOdRIiL1qbyBrDK7rx
         fOQDlMSn8UfrZxZAfHPx8tgsqrHV2N0aUUjCeqPY58a+9AQ/9rld6JSGbnkcvZqZK+8w
         dLDLNr0jQMElRHbEd3Oz99zSi0z1974IEAStlPC/ioaHXNqbHfxWBOzaqS4MT6Tt1ulp
         lmIB1V1yyO+z58wpqdCCHnZLrn4s72vLIs3+QpnaUizw5nJYkw9JNyKDO62ZPba0TqLw
         Q+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/YKpwDr0UUktSDgsQPjg+oJ20FdKqwcj/JdiWGfoHTc=;
        b=FVRAehbIaWBS6ytP2ug+dVIq9AwsvYh8P8JFVMjoPZljQ6qkfL2WJe+HwyfepzJyli
         zolnKiaaSzi1xmsu38tQ/0JwoWxPCm9YvvajS/WEFAeC3VpYcBCEQEzb1Mjs2unZyrHm
         91vK48kXkV8xiukFrraiPgQcMFdVx0pL/hdQ9E2/4KueQaXb0yQcZVfwmUSVHi6sW0VW
         FaCbd0cGujOxVxvrV4UD3nJ01+T/y3iJHQyQaP/fh4JcSjsSWxkmAcBK3HTZWniBLdtw
         WePmBhz1b/pmjgKQy0+0cKmliY9aV6XqZf1KL3Rv4tpy1JEe9fmdWSlOd16BC0DvAczS
         nzHg==
X-Gm-Message-State: AFqh2kqoUwBqzT0W29sAqNseN5Gfr1WDfTsk0rlZHgzrL9gT4AyTMBHi
        VZSrHiZrLAt1gBgfwFMJhb92uw==
X-Google-Smtp-Source: AMrXdXtbOcrj5+56lXkypFDSjytXH5w1/JHUeAOyfhMXO94sWxbA0n1svGQKodEALb2FyXvyBBAt1Q==
X-Received: by 2002:adf:f0c7:0:b0:2bd:e18d:c9e5 with SMTP id x7-20020adff0c7000000b002bde18dc9e5mr2494090wro.40.1673953657463;
        Tue, 17 Jan 2023 03:07:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o15-20020a5d62cf000000b002bbedd60a9asm22862139wrv.77.2023.01.17.03.07.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 03:07:37 -0800 (PST)
Message-ID: <2dcb7b4a-9751-ec7a-f0ea-6de748ca3bf7@linaro.org>
Date:   Tue, 17 Jan 2023 12:07:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for
 Radxa CM3i
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Chukun Pan <amadeus@jmu.edu.cn>,
        FUKAUMI Naoki <naoki@radxa.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
 <20230117105504.18296-4-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117105504.18296-4-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 11:55, Jagan Teki wrote:
> Fix the model name and compatible strings for Radxa CM3i SoM
> and Carrier board based on Radxa recommendation.
> 
> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
> Cc: Chukun Pan <amadeus@jmu.edu.cn>
> Reported-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 225dbbe4955d..0c9a918b809a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -7,7 +7,7 @@
>  
>  / {
>  	model = "Radxa CM3 Industrial Board";
> -	compatible = "radxa,cm3i", "rockchip,rk3568";
> +	compatible = "radxa,radxa-cm3i", "rockchip,rk3568";

Nope, second radxa is redundant.

>  
>  	aliases {
>  		mmc0 = &sdhci;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index a4c33310ca42..8ca15b723799 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -4,8 +4,8 @@
>  #include "rk3568-radxa-cm3i.dtsi"
>  
>  / {
> -	model = "Radxa E25";
> -	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
> +	model = "Radxa E25 Carrier Board";
> +	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";

NAK. You just changed it in patch 2. Don't add broken compatibles in one
patch (cm3i) and fix them next one. It's like adding intentional bugs
and fixing them immediately...

Best regards,
Krzysztof

