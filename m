Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BEC3700CB1
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 18:13:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbjELQNk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 12:13:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241584AbjELQNj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 12:13:39 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F40A7EF5
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:13:37 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-50bc4ba28cbso17948561a12.0
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683908016; x=1686500016;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k/KOg9mDi5XNAlSf5pzhjcREysfFVJIbg4nU4vsXlIM=;
        b=q84yNBoKJ3BoyFaiMb4vCvDWPrIwaIqgmyl2rz99PA800Y8AnrluG7FYZPfWyp/3bA
         rUNOS5KIIjk8+1UF5RWB+n7UlgE8nPQz126j8PWomqu4UZiqvVIz1g/ognDNw/YanpHm
         rl6TSDmq21vi+evC6Wnfys3jHtXq9LlPN6pvCzhKi09+qDatLwsWo7RzeV7+a8NQMiZh
         +/zaeq1cgjL5PKcb9ZbXPvBrOha8jBPaD7xQqOj6vZBfCBmUTgdncwdfeNRe+lyegL8F
         VtJEBA90Goqeuxpz26T2mo3TE1IKFnwkyheTPUVorlLtgHW8dhTYf8MQkYo7uBVGQExU
         Nipg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908016; x=1686500016;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k/KOg9mDi5XNAlSf5pzhjcREysfFVJIbg4nU4vsXlIM=;
        b=E88nFPmXs8ulTXwEaapJ42CG+JkSeYy9Ob/XrpT6GAWLCaHGDeklciGVMjJ0B0/H3M
         DdYnUMjBo9O0zs0UdWcD2cbZoi+O/SOdMLeRtKkUFXglDKKcet0lLs/UzgvkMTTcdI+U
         Vo4YegxofFPVkhFFVwUjE292z/ngb80MuGxr7BT03+t3Fxh6tt0yzOhTPzlmiobLquGD
         BQcuN8K/NIaai9AnAGw74/rAeFZyvPCV+/YhuGR4E5cK3PypSWEyRPpXCqg3kNOo2XTl
         WVErOYZ1kM7HEEsGHnpzXqVc17FeFKSRyzGdqYlbaeFbyqNwGmwxAKR/X9fGnVuMp90N
         Rlng==
X-Gm-Message-State: AC+VfDzsrVjJLBxddaSZ8+UFH4cOZzb8c6igOxsWzzlPKFAEuvoQpbYP
        +OJEpOJs4hbuqriccaSAUvhsRQ==
X-Google-Smtp-Source: ACHHUZ6jPr0w83tTdbet9xlD2Q0bYcKtT/j6CZjpE2gmcWYrau6vT3+2Ifu1B+4mSoBZqoQ3CGootw==
X-Received: by 2002:aa7:cccb:0:b0:504:a359:3fa8 with SMTP id y11-20020aa7cccb000000b00504a3593fa8mr19798629edt.20.1683908015931;
        Fri, 12 May 2023 09:13:35 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id m24-20020a056402051800b0050bc6983041sm3994559edv.96.2023.05.12.09.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 09:13:35 -0700 (PDT)
Message-ID: <6da4ade4-b07d-eb55-63e8-9398dea4961b@linaro.org>
Date:   Fri, 12 May 2023 18:13:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] arm64: dts: freescale: Add imx8mp-venice-gw7905-2x
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230511171041.4011087-1-tharvey@gateworks.com>
 <20230511171041.4011087-2-tharvey@gateworks.com>
 <1b3b58b9-b441-f04f-a3e1-8b5fb7f19f9d@linaro.org>
 <CAJ+vNU3VBnhy_u-t_161V6Rr9MEs558dg=Sa_wNBEB-Bqq6wkg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAJ+vNU3VBnhy_u-t_161V6Rr9MEs558dg=Sa_wNBEB-Bqq6wkg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 17:07, Tim Harvey wrote:
> On Thu, May 11, 2023 at 10:23 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw702x.dtsi b/arch/arm6
> 4/boot/dts/freescale/imx8mp-venice-gw702x.dtsi
> index 4fca4aae8f72..74b0fda235ed 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw702x.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw702x.dtsi
> @@ -222,8 +222,6 @@ channel@a2 {
>                 };
> 
>                 fan-controller@0 {
> -                       #address-cells = <1>;
> -                       #size-cells = <0>;
>                         compatible = "gw,gsc-fan";
>                         reg = <0x0a>;
>                 };
> 
> Would that make sense?
> 
> Is it that the fan-controller because it does not have addressable
> child nodes does not need address-cells?

I just looked a bit and requirement of address/size cells seemed odd.
There are no children, it's not a bus etc, so yes, drop it.


Best regards,
Krzysztof

