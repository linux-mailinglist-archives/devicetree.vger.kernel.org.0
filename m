Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8EB2253FCE3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 13:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235206AbiFGLI0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 07:08:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242575AbiFGLIG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 07:08:06 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56613106354
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 04:04:12 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id o7so1134994eja.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 04:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NAmf2neLs629T/nRVHI5HTB+vyXOf7pJ9ZDi49K5nLk=;
        b=Tx+66JhhTLXXvhuPH12RU3NMi3AgYU5ZaOPXHcHcdla6Xbd5Je5c3tJ9+SeyASQMvR
         vA0GmpKS7lHvTjCEWSB4mBRxwm6TzSAZrqiAEsFfs9rwN6NS+3rpWew64daqsinSi4Yq
         yyeNVX6oztGraas+LdFFpiNKotXIVm+A/B845XuBnzM3uUXZgP0jrCjgxvZPfTg/C38q
         z4zSIM2H1x8mlYYuwSlOP8KcvnJ8wDdFvroD1YwQq2NLoBaNF92YAi8C0xn4nu1tnIb6
         rL8VuA+wp5p9fO0oaUf7eEUSWT2E+2zHxZ31BZYCteifXVmo4PP/8MIz/+CFUomC+0w9
         IAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NAmf2neLs629T/nRVHI5HTB+vyXOf7pJ9ZDi49K5nLk=;
        b=jlHT5Fy+v5KkLEnQicU4gvUurW+Vs2S5QSVz5on1dncHUzwNFhBG+IqbwMLQdt49eT
         J7w+xF0E8RUX6aQAhyNKCdq9ifDzuhio1lMrLJHm7OXK4mLkZ1vwfxkyu6Oa12KNYJu9
         05MDdV3pbvEu2DAAIiGZz5K4cBo3wY2HEnLb9GQlJ79lDN7PJOCq20mVw/rT3J987dz0
         RxJ5/L9nLrD2Xf/glbP1WFInignzrO29rWVYQ3apvoGc/6nIclpdRgAKx+XTlRGOZ8rW
         TB+RkCY0CBSzU9DZhVt10ZGJ6C3EUqhqpkJCrh2U3ndss8jZzB3kNYoAANDaslCQG6Pk
         OkZg==
X-Gm-Message-State: AOAM530C8DTwCj76Qpj6mQa1jbwsqMGQVUkAkeI+Lj4MebX8b9J2WaPL
        UXHpqFXHqO1Qzhgx4akWTV/AAg==
X-Google-Smtp-Source: ABdhPJwXWruueK1xUb0aRbK5R62kfSgKnTpTuZZ4wIbzZM6H6YLqXFtaj8w8gIQEgBddbB1H0nvXug==
X-Received: by 2002:a17:907:7b92:b0:6db:71f1:fc20 with SMTP id ne18-20020a1709077b9200b006db71f1fc20mr25416095ejc.343.1654599850725;
        Tue, 07 Jun 2022 04:04:10 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k6-20020a1709067ac600b006febce7081bsm7502059ejo.163.2022.06.07.04.04.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 04:04:10 -0700 (PDT)
Message-ID: <0b6fb309-ef83-8dbb-a31f-2397906e2042@linaro.org>
Date:   Tue, 7 Jun 2022 13:04:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: hwmon: ti,tmp401: Drop 'items' from
 'ti,n-factor' property
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Camel Guo <camel.guo@axis.com>
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220606212223.1360395-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220606212223.1360395-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2022 23:22, Rob Herring wrote:
> 'ti,n-factor' is a scalar type, so 'items' should not be used as that is
> for arrays/matrix.
> 
> A pending meta-schema change will catch future cases.
> 
> Fixes: bd90c5b93950 ("dt-bindings: hwmon: Add TMP401, TMP411 and TMP43x")
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
