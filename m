Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A16377080C8
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 14:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbjERMKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 08:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231642AbjERMKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 08:10:20 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3472F194
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 05:10:19 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-95fde138693so227321766b.0
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 05:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684411817; x=1687003817;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rJ+UfRn/XfiDGa6Rr7l14GEe5z9J84ocoYC21hv3oOY=;
        b=CXsbykZcFi+PhGMofeDwBdGBUBdInwBQmZrvy9kyWlNucGUvjBvjLSHVzIj+kB/8I+
         W4cKGj5XSeOtk2wOga9a6TmfNCeMnkxPXP0qt8VLODYzl/zpzqp7/x/NUVpaxmQob3+6
         /cZEuW2+c1NWXAaZu2lUtdyDX4gSU9F36u/scOhVUmap4LGgUFvQH4z3OO1EzC5T3Q3o
         Tstt2qTeedJVidOb9IrWPfxqViPZiByS+iASnVBq20ojt3avpP44Az1QTIF5VEPQgaOu
         0sdcgmj7cf/5y2uGjMPGglLc5AWnj+crSyAUJd7uCJQy4GR/3nsOadNz9DymXV0n+PKM
         jGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684411817; x=1687003817;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rJ+UfRn/XfiDGa6Rr7l14GEe5z9J84ocoYC21hv3oOY=;
        b=AWOGo+8rpUc46W3RcU6JfTHEkHw9U0ZTrvH+G/PmvvvVgdNHgS8rifOM6ObxTH647W
         ZrM1TkjA1QeFD5DfneZdnah1IQcZDic2nsJ2wt5ZpJRVFs+r1HpZyJL/UbNcLb8V/tGx
         x6/Q8c1Jbe1gyGXEPV2eIONpZnoAkyq+W2AWZ1262TTpF8zgObdHgUjKS3FMBGmjGyG9
         c7GK7lImB118Y/n92/sPLKW1OX0xULcM58E550I14D64G7guLkgOs7YtIs0VzNtyevxP
         P4gh4zg1Rf+zaPeaHh16TEQnCVNz9mt6zy7AvDoLaSHC5/8cH2wLJbzlqrWNyI2XaUnK
         YB6Q==
X-Gm-Message-State: AC+VfDyt2x1VY2jQe1j9imv2us/XNThqa12iCX/0NyoNlot9D2FLf6Ym
        VyFVfSlWwP0GZBqc3vPBy2phS6fHUjzALY1zhCc=
X-Google-Smtp-Source: ACHHUZ5iRDAEI/Ic4POx1biXs0TD9BtHQ2aB6OVVcWVUp537ZNsq9vVn5QbZQNAYcLja2XHGy92Mtg==
X-Received: by 2002:a17:906:9747:b0:969:9c0c:4c97 with SMTP id o7-20020a170906974700b009699c0c4c97mr5765096ejy.1.1684411817721;
        Thu, 18 May 2023 05:10:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a2b:c408:5834:f48e? ([2a02:810d:15c0:828:a2b:c408:5834:f48e])
        by smtp.gmail.com with ESMTPSA id og19-20020a1709071dd300b0096f00d79d6asm897606ejc.54.2023.05.18.05.10.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 May 2023 05:10:17 -0700 (PDT)
Message-ID: <8fba7dee-e445-8658-fe2f-d14793f9a343@linaro.org>
Date:   Thu, 18 May 2023 14:10:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: imx6sll-evk: add eMMC node support
Content-Language: en-US
To:     haibo.chen@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
References: <20230518084733.344162-1-haibo.chen@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230518084733.344162-1-haibo.chen@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2023 10:47, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> On imx6sll-evk board, eMMC is connect on the usdhc2.


> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6SLL_PAD_SD2_CMD__SD2_CMD		0x17059
> +			MX6SLL_PAD_SD2_CLK__SD2_CLK		0x13059
> +			MX6SLL_PAD_SD2_DATA0__SD2_DATA0		0x17059
> +			MX6SLL_PAD_SD2_DATA1__SD2_DATA1		0x17059
> +			MX6SLL_PAD_SD2_DATA2__SD2_DATA2		0x17059
> +			MX6SLL_PAD_SD2_DATA3__SD2_DATA3		0x17059
> +			MX6SLL_PAD_SD2_DATA4__SD2_DATA4		0x17059
> +			MX6SLL_PAD_SD2_DATA5__SD2_DATA5		0x17059
> +			MX6SLL_PAD_SD2_DATA6__SD2_DATA6		0x17059
> +			MX6SLL_PAD_SD2_DATA7__SD2_DATA7		0x17059
> +			MX6SLL_PAD_GPIO4_IO21__SD2_STROBE	0x13059
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2grp_100mhz {

No underscores in node names. Schema expects certain pattern, so be sure
to test it. Please run `make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

