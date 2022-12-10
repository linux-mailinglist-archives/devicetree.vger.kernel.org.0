Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 405DE648E58
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 12:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbiLJLM2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 06:12:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbiLJLM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 06:12:27 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D31C13DDA
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:12:26 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id q6so876130lfm.10
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nUWe/lJzYpuKf3Av5zO7RUZ3TI86aWXIsye1tEfPo2I=;
        b=lRAApWHEYfBVlOkenByx10ySgUnLtkzYn9E/OZuRAGGBLu977yOpGONJe/M49M9EQW
         7u0Yoi272EPu/9rBqhtY+N9IE9qd0zDcAVmDCSjAOfhZ2sBB7egXo73DWa6YKYXZxJcp
         TxAuH2lKPKmtttQEhMovZqKjJ3KRNrMAN4MO7JYCI0THGjXpLI/sSDE/KxnszCJBeHNv
         dzPARVRC05sFmBgLafXkQ5jrMR3x8HEs9wKqAWbqdKA8M9DOsQyZ96QpNPZcGhoNLNNf
         /fbx8dS8KB4DIRuSsC2u3XaeeQ1Eb27LgGLMi2Sl/aajv1JAx0vly5DScFlRg4ve7Ys0
         ss9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nUWe/lJzYpuKf3Av5zO7RUZ3TI86aWXIsye1tEfPo2I=;
        b=o1Mgxny7rsnT46QaHT2KgR7NSVVaEnsJIP0kS5/3HI2tm2w5Yx3ghIBmXRvELSHT7+
         /maNaIUzI3R77j1P8+98nswK4v49Jf3Lq/iNDIbeB0e0CVDy/0Tedo5mxz9V1dJAG2hs
         SCgX0iKFiRqSyDaQgutE4/6Wad9wdy3jfRpUy6w28Vm07yEYbGiN/N/pZ1rmacRwNLmX
         4nNKc9gdDCAHDXCl/wYz7VRECT7OsTmkHYbV+g494jgLOSEsUrHWl/dWv3l0mjlvTvr+
         tezkCW+4uFeRzYDZ+osB3FkUd4Y+j8xiWztm3+ULqwkQJnpix6wSmu0Y/PnF+5JkG4+v
         Bp7Q==
X-Gm-Message-State: ANoB5pkwsIzPia1e6TV9TGUgIe+I1P0UgBZ5E4F4AyXV+BQ/VANr1dhp
        0teZMx/Lz9944Wi6miu3Lzi6HQ==
X-Google-Smtp-Source: AA0mqf4tosMB9oGs48hvCQtQJRrjgm7uRLf0m5dafks3wVJH8awhOCaRWT1jU2K4y5VBxFqJtvdzFA==
X-Received: by 2002:a05:6512:2215:b0:4b5:4606:7ae3 with SMTP id h21-20020a056512221500b004b546067ae3mr3403483lfu.46.1670670744618;
        Sat, 10 Dec 2022 03:12:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v21-20020ac25935000000b0049771081b10sm680500lfi.31.2022.12.10.03.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Dec 2022 03:12:24 -0800 (PST)
Message-ID: <a03675e1-3456-54a2-d362-08f06937f80f@linaro.org>
Date:   Sat, 10 Dec 2022 12:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: x-powers,axp152: Document the
 AXP1530 variant
Content-Language: en-US
To:     Martin Botka <martin.botka@somainline.org>, martin.botka1@gmail.com
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Jan Trmal <jtrmal@gmail.com>, Tom <takuya@takuya.tech>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209234654.1082522-1-martin.botka@somainline.org>
 <20221209234654.1082522-2-martin.botka@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221209234654.1082522-2-martin.botka@somainline.org>
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

On 10/12/2022 00:46, Martin Botka wrote:
> AXP1530 is a PMIC used on board BIQU CB1 SoM
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> ---

What are the changes against v1? Nothing in cover letter, nothing here.


>  Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index b7a8747d5fa0..893a1802116c 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -92,6 +92,7 @@ properties:
>            - x-powers,axp806
>            - x-powers,axp809
>            - x-powers,axp813
> +          - x-powers,axp1530

Put in alphabetical order.

>        - items:
>            - const: x-powers,axp228
>            - const: x-powers,axp221

Best regards,
Krzysztof

