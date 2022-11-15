Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC92629D3B
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 16:21:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbiKOPVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 10:21:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231258AbiKOPVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 10:21:18 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F1692D769
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:21:16 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id p8so24918406lfu.11
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 07:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S4Kyix6VzkFvRyIQCFUwtQHCaGHyEVeO8PCpC08GuJA=;
        b=AvNzkC6pcowZYTqPeIFqzSyaBCfPTLfgOa9RVXUL9cRwKaATrLI5puoSaPedPvXAxU
         nvJv8GTNtLix5522lh14uBbWcOSg1HfGMvYLs2tGpe5ixhbrsbPM3EtR0p8Vx24bdoxt
         gGA3au0mVQTsqxa5Yif5M57CJ+XaN92MnCW9spqQ0sZQ6P6fdofnZYgEH0+frMO3RG5W
         4Z4t7tTjuDyy/uTBIjKFyWwZYc/C4nDxbKcky0M1cPUcjqw6/pICIdKqZ+lJfRkoBNIu
         9/Hdi7I5C7/0iRkZRMOMvwVemlXThJgqeAK4U2E0Y1SjZJFIxyacljKMIj3gK4igJJbN
         8kLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S4Kyix6VzkFvRyIQCFUwtQHCaGHyEVeO8PCpC08GuJA=;
        b=SMyssPq80qpxr8e+pL+e4ZBvoq1t4SyJhjrkkIPrXV68E2dk1sTTr/qhPKniF6u5vk
         nc47pwpA6mZwEFXgqPsotQNKv5+Z+KfK1Xg/L/8Z3vjndOqvY0QGspNsMxT9uxfUcdmB
         WJsQFxBy7aPBVREQXn8fxjqn7+7mbjxWJXThzyFMKtVZLSZLJ0IqSdjsbFXFzRPcQLYc
         3bmd2sncCNo3BHWer5GyD5OEFNNvFxTkvjSMSaqLySFXwU1bmcAz8BY8eGKgK/DMIhFv
         jXcawbzEhkMElWWd4lbJrbveAR4HSMGNvieUiA8Cvt5fvDmhKlIy0MyiJnaQLQlM23o8
         dhmQ==
X-Gm-Message-State: ANoB5plVzcX4IrTnd3CmcY9ncQrKeaKc+SKNphqLH5/EKhIkLJWIUXCp
        GQI73kf1/RuthgK46XUn+LzRdw==
X-Google-Smtp-Source: AA0mqf42oblNogUnnigwUBoyTotPMjLxWgkATJpyJ9QCvMBQTWRtQytsXmOLJFeAljZYuggyOKYv/w==
X-Received: by 2002:ac2:5314:0:b0:4b1:8fbb:d3f4 with SMTP id c20-20020ac25314000000b004b18fbbd3f4mr6151298lfh.70.1668525674880;
        Tue, 15 Nov 2022 07:21:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l16-20020ac24310000000b004947f8b6266sm2239867lfh.203.2022.11.15.07.21.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 07:21:14 -0800 (PST)
Message-ID: <20aab566-081f-962f-2966-1011b337edf6@linaro.org>
Date:   Tue, 15 Nov 2022 16:21:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: iio: temperature: ltc2983: drop $ref for
 -nanoamp properties
Content-Language: en-US
To:     Cosmin Tanislav <demonsingur@gmail.com>
Cc:     =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Cosmin Tanislav <cosmin.tanislav@analog.com>
References: <20221115151653.393559-1-cosmin.tanislav@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115151653.393559-1-cosmin.tanislav@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 16:16, Cosmin Tanislav wrote:
> Currently there are -nanoamp properties both with and without a $ref.
> dt-schema has been modified to handle it as a standard unit, but the
> change has been reverted since there were still occurrences of
> -nanoamp properties with a $ref.
> Remove this since it's the only occurrence left.
> 
> Signed-off-by: Cosmin Tanislav <cosmin.tanislav@analog.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

