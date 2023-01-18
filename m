Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DFB5671F57
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 15:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231329AbjAROUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 09:20:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231207AbjAROUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 09:20:04 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FEE74CE7A
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:02:16 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id k8so19541151wrc.9
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 06:02:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KPNHdE6dCQ0u+vOjgzlU+mCeL0WOa6M5H4bxTnTVTpE=;
        b=PUwqwesV/IZiMOBxo0ciDMw4He3GuHS3q7ncK0KV1jGsa2IOjtoyqvCRebjFhCWYh1
         RPh6waXM5i3pbV/Z4g5Z9rPl74yBgTLlsyy8ZogCTWkIf6Dn4U91O6A6USuZIfKJ967R
         j1WnkfCANxF4k4OLkmuSq6I++1VVanqEJibHev7Yc3kRGx9WgnK3CABFA5qOiXs0yIy/
         qXBaH3YWgaO19fPQcRceLnQG5VK46pARBNE4LFq82myXoU6jf7HIRGv4KUP8jtVS7Lp/
         iDanNK0k/OD9uui4ggBUGItxdOPv1NrqfWQdEAYjlyWoNjzvTaGuLHkC2XpvoucEWFST
         ahWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KPNHdE6dCQ0u+vOjgzlU+mCeL0WOa6M5H4bxTnTVTpE=;
        b=27zDjkUg3rSb57k5KZthXknqF22/979cXEb2hYyqb0PJgZKZMWIFnD3lS9o13S24hj
         6eEyUvZcq5TdABPnGWvIZ+/oToyirh9XcrJ8wXdIhf+Kg7Ei0m8cJyaqig5i01CYj7S+
         0CUp1IhTFr2BFlipt3+uv19wuOpOXXRQkzyk9ndTHRu1gojYO/8uoqO9+qyLS9ypQXTs
         DkXXmmdFimP4NUh5x250F90PoszXRKPm+qoEY+BYiUKmpYE2upD3EZtTZ86DKzBRCX6S
         AUYd2iNnMZlEKUelTX08FhtVFJ6/yrvvqEfST/kByNsTm/LOjWef23F/tKNHyQx6E381
         bkCQ==
X-Gm-Message-State: AFqh2kpVHAZckpvoZFEZ3jb9aecshw7/EpTGLf8rArJZKhqAF3KAwxaI
        U9WxLXShTNsiCyKdTVMZ8is2kA==
X-Google-Smtp-Source: AMrXdXsMT3JB4whYqqW4yxRL5v2upwn0jQSsyJl9yhLl62e6Ram/pCQErHyOh4gkyrtVFokwT+8FFw==
X-Received: by 2002:a5d:43cf:0:b0:2bb:dca3:b29 with SMTP id v15-20020a5d43cf000000b002bbdca30b29mr5849763wrr.36.1674050534636;
        Wed, 18 Jan 2023 06:02:14 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d5182000000b00236545edc91sm31951183wrv.76.2023.01.18.06.02.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 06:02:13 -0800 (PST)
Message-ID: <b5a60852-f8f5-f3c4-fb75-bb5f00823c82@linaro.org>
Date:   Wed, 18 Jan 2023 15:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 16/17] arm64: dts: freescale: apalis-imx8: fix
 reserved-memory node names
Content-Language: en-US
To:     Marcel Ziswiler <marcel@ziswiler.com>, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
References: <20230118072656.18845-1-marcel@ziswiler.com>
 <20230118072656.18845-17-marcel@ziswiler.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118072656.18845-17-marcel@ziswiler.com>
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

On 18/01/2023 08:26, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Fix reserved-memory node names using dashes rather than underscores.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
> Changes in v4:
> - New patch fixing reserved-memory node names.
> 
>  arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
> index 70c00b92cb05..6217e0a48f96 100644
> --- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
> @@ -133,17 +133,17 @@ reserved-memory {
>  		#size-cells = <2>;
>  		ranges;
>  
> -		decoder_boot: decoder_boot@84000000 {
> +		decoder_boot: decoder-boot@84000000 {

This is ridiculous. You just added it! If we consider original code as
wrong, then you intentionally added wrong code just to fix it.

No, that's not the way how it should be developed.


Best regards,
Krzysztof

