Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF7554D602
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239840AbiFPAVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347096AbiFPAP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:15:59 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8DDD35DF5
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:15:58 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id c196so58856pfb.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8D9FgmNCtnFvNkZSyfQkke9P9azukxsmZNnMNfiMAdM=;
        b=w9G+1de4NYInQjvbjJk0CIZpahMQ/ffE5HGK6nFeqOI/OGzPV8HYklRQsyz3TmvybF
         CSzoOmfBECVna47TvFDiLXp90Y2fxDI45MeVOf1xMQ4xGOeCtCpg0bqGAbBVniW498ve
         Oc0hH4MwpiFwC3Kr+lyoU/zP70Slj88gjyTy+k0+abDkLH6r7k1DY5TRLfhlACJgQ7BJ
         9UWYxavsT1HY4u1UEGGLCEMBD9nV5IIuACk07LcBQU7CL3KCEim0ypIWlyb6MMt/1yyY
         K1G6eaeoUhu+ifD4smwx69p4Zu5TaGyX+Zu8rSqYPzrgqE67dPjydpzNZW5mYIZUEt27
         7JQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8D9FgmNCtnFvNkZSyfQkke9P9azukxsmZNnMNfiMAdM=;
        b=E4OkwfAf5XuBAFOIryz8jRPP90yNZDQFqgu/CBt02MXegC2W8zvrcnO4bqxDJSTmHg
         1QdxD3mth1PrA70FuAhG0RgDGYHVMQ5TgIZ+dZFTnarWhpK7sDrcRiifeS3JW9RsNnry
         HoWjXH0N4JLmHQyJ4ZSjzdFIiAEs/s0oHx2wOnxgXd4K2bQ9F/Q4UlNuT41CRo5h6Rxm
         EcRVrAI1pMeS9axsEeK2zI7c8RmR2nYMISWs07jBapEcy3R0ZKGV0fpatetJFKkU1aeu
         COVWpD7qnkUcP39EtLfxUarqspIwSfHA0ECLH6/clK6+y9AwcaLj4y5ffF6YVCFY/jqu
         2R8w==
X-Gm-Message-State: AJIora+dNUXi4nrul3LDdlR0UpfAmH4+lqRJgiWqP3HFYMtwin6SJ7s8
        1t27fBvi6SbrjQjnYOcIuXAdDeQn5glglQ==
X-Google-Smtp-Source: AGRyM1taVMk9lP1uUfLG08U7BQZFgr5GaPMYYjQ8yY6ue4mNYfuse0AuUMhr1oRfRjnGsBgB+wryuQ==
X-Received: by 2002:a05:6a00:b52:b0:522:cf46:18f9 with SMTP id p18-20020a056a000b5200b00522cf4618f9mr2033361pfo.33.1655338558177;
        Wed, 15 Jun 2022 17:15:58 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id b13-20020a170902d88d00b0016196bcf743sm191767plz.275.2022.06.15.17.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 17:15:57 -0700 (PDT)
Message-ID: <900b26b6-1f83-a159-3ee5-6696863cf2b9@linaro.org>
Date:   Wed, 15 Jun 2022 17:15:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 4/6] arm64: dts: hisilicon: Add missing space around
 properties
Content-Language: en-US
To:     =?UTF-8?Q?Niklas_S=c3=b6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Wei Xu <xuwei5@hisilicon.com>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220612223201.2740248-1-niklas.soderlund+renesas@ragnatech.se>
 <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220612223201.2740248-5-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2022 15:31, Niklas Söderlund wrote:
> Add the missing space around properties before the typo spreads to other
> files.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
> ---
>  arch/arm64/boot/dts/hisilicon/hip06.dtsi | 6 +++---
>  arch/arm64/boot/dts/hisilicon/hip07.dtsi | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)

This (and other similar issues) is fixed here:
https://lore.kernel.org/all/20220526204453.832681-1-krzysztof.kozlowski@linaro.org/


Best regards,
Krzysztof
