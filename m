Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61EB464B5C6
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:10:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235065AbiLMNKz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:10:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233881AbiLMNKy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:10:54 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A749B39
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:10:53 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id f16so3218928ljc.8
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4UheDoG63XFDbi1U/N3zeS19wuphEP9wt6FyJdcAfiM=;
        b=RBCErALnlz8liZ/5YG9LXCfueH7GaywI1N7UaKUzk7ZQL3NLrjrAOO2YpVUW81ONqL
         +Upj8b8PZQdzw2odgcvOMkzB+41j0T9m04IZqlz0yoytTvnVgqdPGGfosrh78VMx+y5n
         69qyRIavpdbc2Wq00wKL3+e85ZiGya14V5OUigobDI43ZBFtqUah2F0fzYVaayd1JZ83
         u8Fc9YD9qaB4aPs1h2ycTUZn8GdXvuaPrGGMkCRj+A8Xf53K6HfvbQiGHC0+IbxdOFsp
         buDZ1a3amPUHLksB3JGi3gkhNjhcfv5NhSOuG4jXw1FisV0ve2wo+zKtxeNlKz/fYcnx
         O/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4UheDoG63XFDbi1U/N3zeS19wuphEP9wt6FyJdcAfiM=;
        b=gvOpAZLyPgv3TE5AzI6UjMnhkBJIBE1jB+FJ/gt5H7OwzbhkMZwIKOrszuBEtRSZfm
         RqLuhoxziuk0XSvbu7fuEerCUFQ6YtH35VzqotF6dSWNSxa0f8qJFl2hy2Xp8dBciubm
         S55/wHGhzBn5aNclO4TXUnd4tgMAXhL/zzNLztC2L4e8/aBtw0LhKPXoVx9XPwBPMdbi
         03KyxtHI7rwen4YgwouDJ6anueMaDqGwNwu1Qm2sHrCWK7/3d7rT6AzwEvD9/NGHKpwu
         fqfTeDFRI57YBnggR5AK0QDUV7sJNE6BabtbxCEL/6LHARt5boKYUU1hsoS/aetyVvg0
         8AMw==
X-Gm-Message-State: ANoB5pnK6+7tUJavUHtzIsPgO2ZWSnzSvYzu7CAnaJXQ9RvWjUESXXw+
        PzZ41AAKH2EZX84UixRZ/jz1GOyjpAxSI2i/
X-Google-Smtp-Source: AA0mqf4pu4/eB3GYEUrZb9uMUIrUTGRdifufNOp2EhHnxPiYmd4us/Ij6IZpvDPfP9iT0WjpInSlgA==
X-Received: by 2002:a05:651c:2105:b0:277:b7b:d415 with SMTP id a5-20020a05651c210500b002770b7bd415mr7235357ljq.39.1670937051467;
        Tue, 13 Dec 2022 05:10:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id g13-20020a2ea4ad000000b002790e941539sm256334ljm.119.2022.12.13.05.10.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 05:10:51 -0800 (PST)
Message-ID: <92b97beb-966a-f9f7-eee1-f46e6a773d06@linaro.org>
Date:   Tue, 13 Dec 2022 14:10:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v4] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20221213130718.5899-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213130718.5899-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/12/2022 14:07, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Krzysztof
>     - Add mx6sx power domain into the list
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> V4: - Drop ack from Krzysztof
>     - Rebase on next 20221213 instead of previous 20221208, which now
>       contains power-domains: part of this patch
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml     | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index f449cfc767899..fd5aab93dd103 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -114,6 +114,19 @@ allOf:
>            maxItems: 1
>          clock-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6sl-lcdif
> +              - fsl,imx6sx-lcdif
> +              - fsl,imx8mm-lcdif
> +              - fsl,imx8mn-lcdif
> +              - fsl,imx8mp-lcdif
> +    then:
> +      required:
> +        - power-domains

Looks ok, but in such case please drop reguired:power-domains from the
existing entry for fsl,imx8mp-lcdif.

Best regards,
Krzysztof

