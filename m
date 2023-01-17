Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2AF66E483
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232686AbjAQRKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:10:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233911AbjAQRKt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:10:49 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF45235262
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:10:48 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id l8so5685178wms.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DJZrjs9gIAePj2JWZucgl4KqkX8gBUba8+l84UFe0sk=;
        b=lxAQjJd0DQR3iHiWtUCfBch7u0vWQTPf5HM/vCjp0OQahVUf3gJe4QMUe5LmDCt+4e
         OCX3dsHgG9SEAnlp8XJJWoN9XaAc9Mdv+IDrPje2wo7p1PMSFlo4jrZf8D9fYE5wFPH/
         3q0OA8f+fxHVlRD+4aHURCViLOGSelep5PuRiGIHpR7aWCLqb8/w0WT/idMH7gdok6j9
         Q/mN3cwXiF5FWWEho968LADfveV+FSTugTmNVX6+Sk7cL8bVsCQ1BqCb8td8I4+65aKU
         bvUjhm80sb9vbRvNYnWfzoi7G05kVf6Xakiu3R9GHuciQyqs8DKXuIynFelr7RR75rGz
         6vfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJZrjs9gIAePj2JWZucgl4KqkX8gBUba8+l84UFe0sk=;
        b=vOSRZiD9phtarlcJ2WJsCIH4A6ao51GxxGnEgGOtPSPrq0i5qtj8MKfsjIjmwUFLPH
         QeiBoEeA7/btzY32b0nVuBYkfDvA2c/ndj1KyYAtOcqCdxF10ljBrQuaey8JHQOionx8
         n3tfQO4heiMxFuThJF7JEVXqfkKVw5JnVVVumnnrlJALAr3TSRTjSDenfmFLS2amgCot
         2vAQjyaQ7oWq6Y4ET8OdqZBiNG52VltOL1YN5iSR3w3BaWYAKW3Mt9UvUWY3F7nX7JJV
         OggUOowjUqDHkBOJ/dQG0NsseE89T1yoK/YbnLMeQaRZn2lipZCKiWeKqsdmDk2cOHy3
         Ac8Q==
X-Gm-Message-State: AFqh2kqTW5f2nIZRxQXTi2vlb7oFzmr8Q5HxQesVNRIG0In8PFl03Voh
        uwPgyTVOUWCRvDaSKJh/iqmB5Q==
X-Google-Smtp-Source: AMrXdXvTPTuCnoyaO9K4WPo2MoPlGBzfRoZz27kKrLtZdpI/CyGyIFOYIq6OYekJUMbMEZkOXTKspw==
X-Received: by 2002:a05:600c:4256:b0:3da:1d51:ef9e with SMTP id r22-20020a05600c425600b003da1d51ef9emr3741760wmm.17.1673975447372;
        Tue, 17 Jan 2023 09:10:47 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l6-20020a05600c4f0600b003db0b0cc2afsm2163802wmq.30.2023.01.17.09.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 09:10:45 -0800 (PST)
Message-ID: <78fcf85f-b56b-79d1-f2fe-c038f424c72d@linaro.org>
Date:   Tue, 17 Jan 2023 18:10:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] spi: dt-bindings: spi-fsl-qspi: add optional
 sampling-delay
Content-Language: en-US
To:     Mario Kicherer <dev@kicherer.org>, Rob Herring <robh@kernel.org>
Cc:     linux-spi@vger.kernel.org, han.xu@nxp.com, broonie@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20230116115050.2983406-1-dev@kicherer.org>
 <20230116115050.2983406-2-dev@kicherer.org>
 <20230117141057.GA2991740-robh@kernel.org>
 <85967a3fbce7051449f8d2b29ce5a47c@kicherer.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <85967a3fbce7051449f8d2b29ce5a47c@kicherer.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 17:33, Mario Kicherer wrote:
> Hello,
> 
> unfortunately, the rx-sample-delay-ns property does not fit here, as we 
> can only delay
> the sampling point between zero and three "half cycles" (or edges), not 
> by an arbitrary
> number of nanoseconds.

Why this is a problem for FSL but not for other platforms having exactly
the same constraints/property?
https://lore.kernel.org/all/20221208062955.2546-6-xiangsheng.hou@mediatek.com/

Best regards,
Krzysztof

