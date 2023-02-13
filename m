Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A8E469412C
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:31:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbjBMJbM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:31:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230125AbjBMJax (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:30:53 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2DF2193D2
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:28:59 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id j23so11454846wra.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o773LmcUBl8OymGcQoiP93QpX2J1hD5pNWOtAJSPtj4=;
        b=khCke+fR/UAjzlxCyCMdKltVJkHHEleXyYwvMF0+50/DPzCg5A6RieKJpEDSHeeXVO
         VkrhsVzfSxq7JLXS6OeAwE0wF5Z6t3DF1Tuwu6PGXKqc/l0Nv/H+GQZNvSPOO0SaL5mF
         WMrOa5QytgsoUx5JuJTF5QqVyevgRPG4MCea2HNpua0jEtHr57tH0UrMqzzr9IqgckNR
         +VGANmvNa+9sdApt2H7h3H5K+gMrNEIxtIVCM0fKG8gT0sk8TCsM4mcyA+sikxR2XIXq
         QhZDRw2PKkffml82ifLT3eeGnBGrou/VkMORLtLun8UGmQX6N9ddd3vEc3Qwvf5ricI3
         g05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o773LmcUBl8OymGcQoiP93QpX2J1hD5pNWOtAJSPtj4=;
        b=H0+4exR3w4Am7r6JfV53E67YIbp7LbJnuOGM/TlwLMGsLWY5CaSdVI6gGaOkqE377m
         ZF8TbML6TKXBkT8tz0JbBv+hDz7NGXb26m7CtO+etBNBe5jVI8kheLGcfwtiSpnafuoZ
         INHCFZ1eDRQBElyeKNHAmsuwAuRdltjxbItZoVQoUjbbD4dTFjFs2q9+sdVdxrCaAvkC
         uDay/7z8WtXpdZ6v0XWQAFmfJacdGTR9uLj49K8DmNp5zJcMcXibJW/k6mODcwvE2VkR
         ov7jj0el1binJw6Kt6z6G6RxNVhvLIzs6HYIxXDcXlWjMCIYPU5sw/Zk0tzmT0/9yy6w
         7R8A==
X-Gm-Message-State: AO0yUKXiM/hEJetdz5HI4H3t11BXuMVaxV1wi/n9wNGkHyno+Uoq3Pr8
        I5G4c5/e3aq2JLw/VfBa5tR0LA==
X-Google-Smtp-Source: AK7set9L87Lxu1KcxNg989VNiYJ7rY8aakXspZUnydQWYpAr5BVDZuwpmUPtR5Has1SVeEAQTwUUXQ==
X-Received: by 2002:a5d:4c8a:0:b0:2c5:588c:84a8 with SMTP id z10-20020a5d4c8a000000b002c5588c84a8mr2608664wrs.19.1676280492081;
        Mon, 13 Feb 2023 01:28:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g4-20020a5d6984000000b002c552c6c8c2sm4363765wru.87.2023.02.13.01.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:28:11 -0800 (PST)
Message-ID: <e94c3d2c-10ab-01a6-ff41-cbca34b88fcf@linaro.org>
Date:   Mon, 13 Feb 2023 10:28:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v1 1/4] riscv: dts: starfive: jh7110: Add aon syscon node
Content-Language: en-US
To:     Changhuang Liang <changhuang.liang@starfivetech.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jack Zhu <jack.zhu@starfivetech.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20230210061713.6449-1-changhuang.liang@starfivetech.com>
 <20230210061713.6449-2-changhuang.liang@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210061713.6449-2-changhuang.liang@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 07:17, Changhuang Liang wrote:
> Add aon syscon node for the Starfive JH7110 SoC. It can be used by
> other modules such as DPHY.
> 
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> index cfbaff4ea64b..bce3e407ab60 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -251,6 +251,11 @@ soc {
>  		#size-cells = <2>;
>  		ranges;
>  
> +		aon_syscon: aon_syscon@17010000 {

No underscores in node names, generic node names.

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "syscon";

Nope. syscon cannot be alone. Run dtbs_check before sending DTS.


Best regards,
Krzysztof

