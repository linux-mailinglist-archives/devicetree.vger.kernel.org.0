Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1126963BD76
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 11:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbiK2KDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 05:03:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbiK2KDx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 05:03:53 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B905B5AA
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 02:03:53 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id p8so21663229lfu.11
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 02:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w8n8D5c9i03T8w2DDSgaYVMzXubZeJqpt2MAW25kmIg=;
        b=HRtWiQKUFFTdbrqkcKHRYxOB1I0UGjnOG4GbWcj/qhFiH7Vc5lkfZTJszmpGs/IQP8
         4AMLtOOTNFyWyfjhHtkJ6/VQSodkY23rkZptjWBsTn86HxfgjjMDwgs++hgcZf5KY+CS
         iP5OJMm7RB1iFp3zBbFxGLSHWqiiuwhjRE7uHgQTgBzf3tfMBKS0gbbdfvtkGDOreFEX
         fecpJXsQZ4wWnqyRUDQHyLeYgF9aIVHzkUI/CH/NFGAmixBnJ+HNmNQ0bRGeZHImU/S0
         9VoSCxkY1WAQNxZdhfKAMc9sRDmJvjlOeWTx6gsgITxvBYd7uVEwDqHyyljAMlB30si6
         aCqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w8n8D5c9i03T8w2DDSgaYVMzXubZeJqpt2MAW25kmIg=;
        b=K7A76Z8A4N+1bJVXY2I5wIwcMcRPWeTmM7pKZU3V+sOQ5TC+w8hEBAikMY9fLJqiVc
         Pm0U3MJ9JwUsIqb3xc9ueTS65VkXjjiFDG+Is0beTycy7FYOqEbJbicK1bHKdcDhyasZ
         ayYiXsCOq26jKaqKWSsl8huzlum863p9vWr0n1vE1zOMzk3qSgTBr9IE/Gnjm2SlZxWL
         F8w71cWL4XcPIBbODFtBo0oAh4Xk9CpahnUuDdL7hGi+RxtqPWuVibF6TVHXL4PEgCfp
         0TzMvl+FTurqmXkiKPkXlVzQGxJSS0+bmS+3+TnEvVEZgvXAlI20DqIe1xP6pQ/Ulgfn
         F0hA==
X-Gm-Message-State: ANoB5pkFg8mc7j81bGjtRaq2mk49hvB9WM8owIUqSyhPS99zJBwmrChW
        OBrqZ1sI603b9wxC8mqBVtuVEA==
X-Google-Smtp-Source: AA0mqf4NtG+py5H+BteIqF8gMqKK2u157ejZXaq8Zx9QLVlyLtKmJyZV9BFwIQn3S4lYJrdyVVTSGg==
X-Received: by 2002:a19:9113:0:b0:4b1:e3ec:d99d with SMTP id t19-20020a199113000000b004b1e3ecd99dmr12765707lfd.95.1669716231318;
        Tue, 29 Nov 2022 02:03:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o17-20020ac25e31000000b0049465afdd38sm2150135lfg.108.2022.11.29.02.03.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 02:03:50 -0800 (PST)
Message-ID: <9975ae10-8477-b72a-9d55-bb31e73f6b2c@linaro.org>
Date:   Tue, 29 Nov 2022 11:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v1] dt-bindings: display: Convert fsl,imx-fb.txt to
 dt-schema
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20221110094945.191100-1-u.kleine-koenig@pengutronix.de>
 <20221116174921.GA25509@pengutronix.de>
 <2b0463c1-7fee-b7f0-5cf7-0448a6aab4a7@linaro.org>
 <20221128174232.irad6caswhz2y2jk@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221128174232.irad6caswhz2y2jk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 18:42, Uwe Kleine-König wrote:
> So I'd go for putting into the legacy binding what is currently done in
> arch/arm/boot/dts and the driver allowing exactly:
> 
> 	compatible = "fsl,imx27-fb", "fsl,imx21-fb";
> 	compatible = "fsl,imx25-fb", "fsl,imx21-fb";
> 	compatible = "fsl,imx21-fb";
> 	compatible = "fsl,imx1-fb";
> 
> I thinks this is accomplished using:
> 
>   compatible:
>     oneOf:
>       - enum:
>           - fsl,imx1-fb
> 	  - fsl,imx21-fb
>       - items
>           - enum:
> 	      - fsl,imx25-fb
> 	      - fsl,imx27-fb
> 	  - const: fsl,imx21-fb
> 
> right?

Yes, looks correct.

Best regards,
Krzysztof

