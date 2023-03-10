Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 372176B3901
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231293AbjCJIlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:41:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231322AbjCJIku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:40:50 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C310FE41F2
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:38:39 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id da10so17465168edb.3
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678437518;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6tqTbN90TBZ0zefNDHJFQj8Y2oFNn+f8xqJtYKWO66M=;
        b=pRIzZ6UCXmZB2NcXkc7WBVCJ4vwl1sCOTvFMG/JG9/E2ijwpL3As5mJDTmX7etHMht
         WgTM2o0G/yHgu/7xR9eB3kGZC2f8kCyXdIQsjwN+HrGuFgrETv1P/8rPa2tNxxD6oi33
         frhXLk1Q5GFvR31T3l5/4FaRTdGwSo2HqtWQ0S/JQwyKkQ129k9Lc7NuWkgOffv1ilOc
         Y8iojBlVToX4Y1Y5KoZblpTphuQ3iuoO2WVQnRa0RqGEf4lispXd7kWN1algg0L5uuIm
         7U3mDuJzcm2kI6nqr+lRIlKgXojvbqImqJH7n8l7sa8Z3ODbpiOhFJk5Oxsc3czcombI
         7r8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678437518;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6tqTbN90TBZ0zefNDHJFQj8Y2oFNn+f8xqJtYKWO66M=;
        b=YPYB3HJ+GI3yc89ooQmZk2Wp3E1Sxnc/nOyGf0zCQNnpiCweQz5DVoKIosKYHporXJ
         n2xk38/z8tXgZ6SFe1kJxNdGuFGw0/yMTjI958LRj7ppcuIBKOoBJbOUWya9wds+8B7/
         hLYp+reUNUAQJ2F5JwakzGHICMfvcDtRFermpA2Pkjf099LQe10ORZnqtYKIYwrxWwqw
         +VHOL3kHvTRiGCVZRrY5UErMX/jQh599YTosaN4d9Q7TSr2sBJDpPdVVhLMlroYz9k+W
         6qJ7oY7sB2RiJDYqb0DJiUygXTKoMIXG+/TjCAg0/Kxsa1IGxps2ZoQbUqGPE8Tu272t
         Qp1w==
X-Gm-Message-State: AO0yUKXl0Whhwvkf4gEbpHK8caUjOFCXtMKTJraLmLpVWDIFHGbpiEVU
        eQCy36xulohxrqJAwGtXT2y5wA==
X-Google-Smtp-Source: AK7set/h5FxPvnnKJlG+TPaefKxMrangV7NrqmrrnV6erBcJRruBPLyZhbPSj9qylkGQ7tlnCFxtog==
X-Received: by 2002:a17:906:40b:b0:8b2:7150:dcff with SMTP id d11-20020a170906040b00b008b27150dcffmr23818587eja.23.1678437518421;
        Fri, 10 Mar 2023 00:38:38 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id a15-20020a170906274f00b008d0dbf15b8bsm669297ejd.212.2023.03.10.00.38.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:38:38 -0800 (PST)
Message-ID: <24ba6ba6-7554-46e8-6ccd-191a385ab2bd@linaro.org>
Date:   Fri, 10 Mar 2023 09:38:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 13/21] dt-bindings: pwm: add binding for mt8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao Shi <jitao.shi@mediatek.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Xinlei Lee <xinlei.lee@mediatek.com>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Fabien Parent <fparent@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230220-display-v1-0-45cbc68e188b@baylibre.com>
 <20230220-display-v1-13-45cbc68e188b@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220-display-v1-13-45cbc68e188b@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/03/2023 15:23, Alexandre Mergnat wrote:
> Display PWM for MT8365 is compatible with MT8183. Then, add MT8365 binding
> along with MT8183 SoC.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

