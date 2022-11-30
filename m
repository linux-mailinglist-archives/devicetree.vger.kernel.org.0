Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C226163D6A5
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 14:27:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234500AbiK3N1T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 08:27:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbiK3N1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 08:27:17 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDBA750D41
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 05:27:15 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id z4so20874289ljq.6
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L9Lt8MusbIeLzXLuEmIXUX298UXRhIvm9jk18drcsFo=;
        b=l57aOrkN2uN2PqRsh1eKKWNXOZ/F9drJSVv/pZ1A2t13xU5kAuOGJCLaiPPcORDqff
         estgByqVkVRqALowSAMqFHEUmRlWBDQRonomz7olwzvJAvUT7F3WVh5KDxS39nOcHEWs
         HFGujvPus5okKsrXiWD+kCRST4b2UB/4MX4bW+fZNXzL2KEIudB/LfONblgbRiYsNLZ3
         mE9zyfZULBU67zgp1vl6q+NAx2fPaYn16dZyCGeB3VrHXdhc/AOlAXiP1Nb6tcEwCyCc
         5xtmNQrHMPQwd52qzHE/9h+O7QA5cfvKDahmuvYNCEtMczxdxPDyi88hcYdmXoKjMy9n
         p4Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L9Lt8MusbIeLzXLuEmIXUX298UXRhIvm9jk18drcsFo=;
        b=f65MN0n+vd6Aj/it9ZOiMvhSNzwF21cDF/9gEpw6J/tmVWfae7piE+RNMYootmDzto
         mUEZraUtV3dGqtrDtE2RsTYyjZF89J8lAJOXYtFWvmoapRFf5n05Q6pWUfE5+A2wcTUB
         NbycK5tLoV9XGpLLKx2fnNib4yyyN2wlou8l/tJeAa7I8/6mzJOd3/0TqH/sHBg/K/7E
         Xukg1IYLKLDRNh5tfel2EXmLu4SfN35t7rYh7js9vkdHmv4kI2BdiTz7op6ByWJGQcqZ
         dLTsNJA3Izgvk7G1iOUYuSM3S9eVo/BaxiRiGS6sxRxaKSuInUD89zAcJzNFjvJVnEEM
         37/Q==
X-Gm-Message-State: ANoB5pm9I8Z8BGjpN+pwbOykuEzsgauv4dMwc4gKdiav8C3KQzNqSUBk
        v8aGDhgvrTmX/YuPdUZqLtS6zA==
X-Google-Smtp-Source: AA0mqf6F3wfnpDtDP8Gs5j5HfzOMh180Qqp7mnxZe5Lb5rW7gaX/Ij2qnb0gmJ4akI/C/4ibmTUsLg==
X-Received: by 2002:a05:651c:1ce:b0:278:a696:2781 with SMTP id d14-20020a05651c01ce00b00278a6962781mr19189869ljn.401.1669814834196;
        Wed, 30 Nov 2022 05:27:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 19-20020ac25f53000000b00497a3e11608sm253815lfz.303.2022.11.30.05.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 05:27:13 -0800 (PST)
Message-ID: <327abc1a-b602-7aa0-b6c8-d60e96975c48@linaro.org>
Date:   Wed, 30 Nov 2022 14:27:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2] dt-bindings: display: Convert fsl,imx-fb.txt to
 dt-schema
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20221129180414.2729091-1-u.kleine-koenig@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129180414.2729091-1-u.kleine-koenig@pengutronix.de>
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

On 29/11/2022 19:04, Uwe Kleine-König wrote:
> Compared to the txt description this adds clocks and clock-names to
> match reality.

(...)

> +
> +maintainers:
> +  - Sascha Hauer <s.hauer@pengutronix.de>
> +  - Pengutronix Kernel Team <kernel@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,imx1-fb
> +          - fsl,imx21-fb
> +      - items:
> +          - enum:
> +              - fsl,imx25-fb
> +              - fsl,imx27-fb
> +          - const: fsl,imx21-fb
> +
> +  clocks:
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: ipg
> +      - const: ahb
> +      - const: per
> +
> +  display:
> +    $ref: /schemas/types.yaml#/definitions/phandle

You could mention here in "description" expected properties of display,
just like original binding. Anyway, looks good:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

