Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 067CF6294A7
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237631AbiKOJpC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:45:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiKOJpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:45:01 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FC720181
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:44:59 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id j4so23633028lfk.0
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cj85LDuE7YSOIfXOLn4vE45URVWTJovLVTbN/ZWfzTs=;
        b=Wh3pTegPUo68mk/OqKJq6c1d4SGExhAXu4I4KNjU+iDU+D1lJGtgh8Vk+ceBylVCFe
         FRtK0u7IArav08eTDJMIktKsUhih6KxEF2m61BkEyvJZLtN8AWut9o65514pZraKtvLA
         VX6XVpSSEibim90aRBEP0KjMPkoUTM3h9x0iExxPtCayYkrrBnVDSwKLuAuSFfpFF4IX
         usWTYvd0flbb8MQ4cUPL7Q3pyshePLC7ydKWSU7/d25P1XlmfHWePiVx0QChbsn8hSZq
         epHSy7tT3fGWPlPJfZx38j3hQWQ7qbeGsJAvmV54et6BJYLlX0Iq7wuJZ5MX2ErGVoBE
         Uthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Cj85LDuE7YSOIfXOLn4vE45URVWTJovLVTbN/ZWfzTs=;
        b=TqwNCJcaGJGWHPs00S6UZJLsy7dPFwBQ0r4WpVrffIrpMbKZM0sW7Tq96YWYYwAHHe
         /snJttw7f5yyhYrQa8U6L0lVJ/0HiZ+TgXOC0nkcJCf21Q9mFHlyRI2E4AU9r68d++8v
         iaa8Yax5HY/XgjsaH69kjk+8ts6jRrkDzfEL7H18+qKNRAKeU0KNrZI4t6f52YNVV80B
         mkrMVcXsNGtSVcas9+Vu8oebtrY2IymzG/tfdvQ5Sr5Aa5KZFblEKXipbw+E1EYhCrum
         tOlt+eF+v+tZAlenO7oxw9gZiPBjPAteSsDnedEhds7hwrE9UjPdL/Gb3hbYWi18ov7r
         1IkA==
X-Gm-Message-State: ANoB5pm+s0yOWcp4HLnLHFwHJ2V/jPxO/u33K35ZoApPjeCN/IFyP6hk
        QLpOP1bM6rNkkONXyoK0uW8Ovg==
X-Google-Smtp-Source: AA0mqf5Ou8AMwDJhWoIzU5Yl7Ly2rHt3VCJxLSXocSLvp/kMNI7tlSNFBzh/4RoT4ibDlBT0K1TTCg==
X-Received: by 2002:a05:6512:2626:b0:4b1:8279:a579 with SMTP id bt38-20020a056512262600b004b18279a579mr5084779lfb.418.1668505498315;
        Tue, 15 Nov 2022 01:44:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 24-20020ac24838000000b004a2550db9ddsm2129725lft.245.2022.11.15.01.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:44:57 -0800 (PST)
Message-ID: <9c883417-5a26-cc5d-a6c4-c00cba53f638@linaro.org>
Date:   Tue, 15 Nov 2022 10:44:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/15] dt-bindings: mmc: mtk-sd: add bindings for
 MT8365 SoC
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-8-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-8-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> Add MMC bindings for MT8365 bindings.


Drop second, redundant "bindings" from subject.

> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 6f8ecb4788eb8..36f9fce8f4795 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -35,6 +35,9 @@ properties:
>                - mediatek,mt8192-mmc
>                - mediatek,mt8195-mmc
>            - const: mediatek,mt8183-mmc
> +      - items:
> +          - const: mediatek,mt8365-mmc
> +          - const: mediatek,mt8183-mmc

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

