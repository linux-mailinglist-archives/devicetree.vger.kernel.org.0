Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC8865AE40
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:38:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbjABIig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:38:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbjABIif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:38:35 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8115CDB3
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:38:34 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id e13so25916988ljn.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmmdsKMas6eR6gRD9F3JS5Tt5HUYa2bSxy5FPQrP0ww=;
        b=uMaJB6C/ykG3qn5ZS3qQKk1vcj62XdHFwZlSzsiUyDyP86KQQmLNLvHFtIyA4j6DL2
         /0O4+VhzFTjWRmAQWcgDq0+akL+XwD8Oh6wV6gAqplhPdvG5wqbJ7biJH1BDhuxwHgsk
         CsVIfM1B3Rpllz63KNq6e95iX9pf4jYz3VZ7vT2YbN45Jk1bENfSw26DY8stRNN+MTlG
         ZyW7hxLTtEOFbZyH93ZviEDoJFKASVFNBqhqojhBNaxHbexTQVlM/Poy2dwimVqnYfzb
         XDttg3+POSDqIPgQ6SWed4H48pZI/vzgF0PEe6xIx4lObDL8trHzicFBgXhd7etaK0JV
         ed7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmmdsKMas6eR6gRD9F3JS5Tt5HUYa2bSxy5FPQrP0ww=;
        b=LMcmKfMlrjjYqKjlYxW3heCpvtqq9wRxMlySRcOKKdcVdGnJRRWYkTmJMfsaShtT0+
         ikXafmkqSbvfjmuaevBfmwRunb7VChZsuw1JotWg0b0pruBR/gEj+qwrO348R1KqY7Yp
         OCs0hhAuHMbh8AV5++/uMqNTqRkYjro9l+6ZXjKSbMk7eMq1LzxhLr9eGRrtikyMMMg/
         NlFfFEelhEOoNXJ77drfX/6zTAjHnz6FhpOImyvRsYVqHXwe+miu4oer4PYIhlkj/wNI
         fBTashzGs0PjCz3BCmPk2fmxsjN2ny7q0Vjgd1S9PqRvOUPlr/4rjP8NYOn7LpvVv0a7
         lu6g==
X-Gm-Message-State: AFqh2koLDYSNTSQd49VcI8OzvN8XOWjW1IEFYITWXUVPzyKulfVxuFDC
        BaMGn8b8QHNoE8ieomWu28h4yg==
X-Google-Smtp-Source: AMrXdXsgMpBxoFSaTB0r4U82Mj3J/8cVfZjZgXXyMW0V9uddtieZ9NhCnbFBT7k5O/2fOWc5jwNi5Q==
X-Received: by 2002:a2e:868b:0:b0:27f:b265:d6c5 with SMTP id l11-20020a2e868b000000b0027fb265d6c5mr8207541lji.43.1672648712886;
        Mon, 02 Jan 2023 00:38:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t28-20020a2e8e7c000000b0027feb966523sm288861ljk.140.2023.01.02.00.38.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:38:32 -0800 (PST)
Message-ID: <e5a7a8a8-1197-f911-23aa-a2d48125d474@linaro.org>
Date:   Mon, 2 Jan 2023 09:38:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Startkit
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230101184651.807900-1-dmitry.baryshkov@linaro.org>
 <8b9bfabe-e6c7-e7c0-ee4b-95305eaed4d1@linaro.org>
In-Reply-To: <8b9bfabe-e6c7-e7c0-ee4b-95305eaed4d1@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/01/2023 09:37, Krzysztof Kozlowski wrote:
> On 01/01/2023 19:46, Dmitry Baryshkov wrote:
>> Starterkit is small vendor of development boards and SoM based on Atmel,
>> i.MX and Allwinner SoCs.
>>
>> http://starterkit.ru/html/index.php
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Although I see there Rob's report about typo...

Best regards,
Krzysztof

