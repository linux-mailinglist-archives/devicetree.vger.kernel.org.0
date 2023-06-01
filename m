Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B999C7195AB
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 10:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232238AbjFAIdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 04:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232191AbjFAIc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 04:32:57 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A27081735
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 01:31:33 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-96fbe7fbdd4so68724566b.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 01:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685608281; x=1688200281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NLOa3Z1lJx4DoZoW7x5r7xlq/dYFtVyQB3r57zuXR+A=;
        b=GMiNc/nMKWuV2op23ARzzxBUXwvmm3l8KI2E/cvGCKKj4V4In+53ogcJTzTjk6RxdV
         LOZJkM9tycwzcNKjtNDBuU/V7kuIxiGf707wIrObgHiDt5XZ4A2+a/zr32B0xk4avMFc
         9GrSUyQntMDPRRyhnKNzfDifBD1ziqTzax8ipW6gLF7fiMvzDrBf7t8jpDYGkQWqUDlE
         76jMCrXT+/XeofTjNCnKZbnG9Z7VHzbOqO39UHTEMzpdcglME0HUfiYotYl2+payjyKi
         4Mx4lp8F2xZODbt0m/JXADKL8EoXhm4P0QaSHKuOXAWLnNwiJW6/4YZJbfPEaFiR3RVa
         mBnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685608281; x=1688200281;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NLOa3Z1lJx4DoZoW7x5r7xlq/dYFtVyQB3r57zuXR+A=;
        b=h2EiVHmGXxNn2HalxT/BJvnag7zkLfpbooh+4OHt4LpfGaE7l3CmdyWfuLSwdiToNj
         TIDBYxEBUJTBCgNK+MN/5Ly0D9T3J8tc7NxgAWVp10CStxudqBV1//1x5IUbijupyPpk
         odlUIOdf8Dg/NtK7vkmshJ60tAzwsaNdQDO1gIQBU2eMcIsdjNRjrRXPBuRQ/LyQc5Mq
         LmmNk4UH1pOe5CJiDazm6sTeAVG4zQoUrgtW396+yeWz0JoIjc39dxRtzeJS0U70EbmC
         aRArA5bur3/Qvp3SoWX0c7H1Lmn7aU5FU8Zfo6wDb1q3y7sMOPRnAOvw6dtOedTfW1RC
         x4wg==
X-Gm-Message-State: AC+VfDxiag0CDk/9q1n0/7NyCV66PC10HrYsvTtAXc6D1hY7mWE3mrMT
        9mb/1EODZhM+yjtoYgylm8DCRw==
X-Google-Smtp-Source: ACHHUZ59/EAcKQw2o8KBHuCFNY3ShVbWTnS+YNF5Vr2dtQvV3XYCZ2IOrearbPf6e7j7Ryp+dfb+Gw==
X-Received: by 2002:a17:907:8687:b0:96a:53e6:eab5 with SMTP id qa7-20020a170907868700b0096a53e6eab5mr6958440ejc.41.1685608281466;
        Thu, 01 Jun 2023 01:31:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id mj22-20020a170906af9600b00971433ed5fesm10092932ejb.184.2023.06.01.01.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 01:31:21 -0700 (PDT)
Message-ID: <9e786913-46c8-46d8-e776-54bdee24e0b7@linaro.org>
Date:   Thu, 1 Jun 2023 10:31:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 41/43] ARM: dts: ep93xx: Add I2S and AC97 nodes
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michael Peters <mpeters@embeddedTS.com>,
        Kris Bahnsen <kris@embeddedTS.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230601054549.10843-23-nikita.shubin@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230601054549.10843-23-nikita.shubin@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2023 07:45, Nikita Shubin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> 
> Add the audio interfaces present in EP93xx SoCs.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
>  arch/arm/boot/dts/ep93xx.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/ep93xx.dtsi b/arch/arm/boot/dts/ep93xx.dtsi
> index 6da556ceaf04..c8028534dda7 100644
> --- a/arch/arm/boot/dts/ep93xx.dtsi
> +++ b/arch/arm/boot/dts/ep93xx.dtsi
> @@ -301,6 +301,17 @@ ide: ide@800a0000 {
>  			pinctrl-0 = <&ide_default_pins>;
>  		};
>  
> +		ac97: ac97@80880000 {
> +			compatible = "cirrus,ep9301-ac97";
> +			#sound-dai-cells = <0>;
> +			reg = <0x80880000 0xac>;
> +			interrupt-parent = <&vic0>;
> +			interrupts = <6>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&ac97_default_pins>;
> +			status = "disabled";

Squash it. There are no i2s nodes here, so your description is not
accurate and new DTSI should be one patch. You can release early,
release often, but then these would be separate submissions.

Best regards,
Krzysztof

