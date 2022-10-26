Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F019060E2E7
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234174AbiJZOLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234168AbiJZOLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:11:09 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA9E19E2C8
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:11:08 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id 8so10589592qka.1
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AnikLP9CxsidrNYByIYyBeIR660BZ1mm9vJzuxUDqVY=;
        b=tzu9o8Bv7mxSHm8pB+awDParhQou9K7+Afc3OncO5s21b36ker0IzX/Jl/3WfAyWeW
         0CdSu1PDxpCvbcYr1OoVihyLQkzGomqM2LNR2XrYhf9VjoFjMhvBQEDM88CS44euvuYG
         F1grLhSxUdGs3wuEkyVEZFk0dB0Vfz9vd0XvsWAt6ATmo0K094VFDp6JBA50DrNDoJX8
         i86LVv7rPgKh73TZnoS6dgJdFOGyfDlc0YlaU8RSCAe6tWR5rntTAJdNSq4lN287feX+
         ZuDN+6ykrJSUyNI7cBTaHSiiGmgc2Av9pD76aLx/5YlMLumzoOPxmsW2yafuP+yfjsxN
         1C8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AnikLP9CxsidrNYByIYyBeIR660BZ1mm9vJzuxUDqVY=;
        b=xzaeyojWsIFzBMJbTutLvlo9q8B5U9MNtsVwtRwbPy9D4mjNL4Ahn52IabiOWKr//5
         hhCMSNbwV42RZqFfYYnsYCZuUls0+AONe8PsmkcvTyqMUAPDeVaSRtTuipKk3rpM21EN
         d06vZ5xUFtXlh8vPx6/THkmTTmYk4RY4FYMTEQMv0VGp3mrtaRUpFo7zoSqw18hCxF/3
         W03zJtzf+VGCDE93B7PKK2fMp3504BZFoFniTdIL6L4nBCJ174yPfS06bonwi8pFTEx1
         EAfQdzUDX8Q1mkIDreJYjlWG+1ksgUgRaaj0fjAhoghFQ8x3AGtYhV8OmM0HOXqDt6fb
         EOrA==
X-Gm-Message-State: ACrzQf3ruLk9MLAWyAUqUiZiCSdtoSb/fvIk//gqBEacmfD1PIpsDHro
        qG6LQ22NM67malCEkKm6mMcqFQ==
X-Google-Smtp-Source: AMsMyM49yodUJZ2agdQCJgWKfYkeRfgSYjFQvy0WV7KaZmzWg9EkI3np5T51zvWFA8RM03sW1BUckg==
X-Received: by 2002:a05:620a:4594:b0:6ed:ee1f:3974 with SMTP id bp20-20020a05620a459400b006edee1f3974mr29580443qkb.688.1666793467808;
        Wed, 26 Oct 2022 07:11:07 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id w14-20020ac87e8e000000b003a4b88b886esm1991908qtj.96.2022.10.26.07.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:11:06 -0700 (PDT)
Message-ID: <9dfb7434-dd62-64e8-7831-b797687827e7@linaro.org>
Date:   Wed, 26 Oct 2022 10:11:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/2] pinctrl: pinctrl-loongson2: add pinctrl driver
 support
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        zhanghongchen <zhanghongchen@loongson.cn>
References: <20221024014209.5327-1-zhuyinbo@loongson.cn>
 <a5a5c18f-476c-2f45-8cd0-3c88b3aa509d@linaro.org>
 <841bad76-e19c-e400-e46a-2a83986c29eb@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <841bad76-e19c-e400-e46a-2a83986c29eb@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/10/2022 02:40, Yinbo Zhu wrote:
> 
> 
> 在 2022/10/26 上午12:07, Krzysztof Kozlowski 写道:
>> On 23/10/2022 21:42, Yinbo Zhu wrote:
>>> The loongson2 SoC has a few pins that can be used as GPIOs or take
>>> multiple other functions. Add a driver for the pinmuxing.
>>>
>>> There is currently no support for GPIO pin pull-up and pull-down.
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> +static const struct pinmux_ops loongson2_pmx_ops = {
>>> +	.set_mux = loongson2_pmx_set_mux,
>>> +	.get_functions_count = loongson2_pmx_get_funcs_count,
>>> +	.get_function_name = loongson2_pmx_get_func_name,
>>> +	.get_function_groups = loongson2_pmx_get_groups,
>>> +};
>>> +
>>> +static int loongson2_pinctrl_probe(struct platform_device *pdev)
>>> +{
>>> +	struct device *dev = &pdev->dev;
>>> +	struct loongson2_pinctrl *pctrl;
>>> +	struct resource *res;
>>> +
>>> +	pctrl = devm_kzalloc(dev, sizeof(*pctrl), GFP_KERNEL);
>>> +	if (!pctrl)
>>> +		return -ENOMEM;
>>> +
>>> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>>> +	pctrl->reg_base = devm_ioremap_resource(dev, res);
>>
>> This is still not fixed.
> sorry, I don't get your meaning about "Use combined helper for this."
> please you tell me more specific.

So you ignored the feedback? That's not how review process works. You
either implement the feeedback or ask questions. Ignoring it is not
acceptable.

There is a helper combining two calls into one. Grep for it in headers
and use it.

Best regards,
Krzysztof

