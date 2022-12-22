Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BED9E653CEA
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 09:22:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235028AbiLVIWM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 03:22:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235055AbiLVIWJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 03:22:09 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A22D719003
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:22:06 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id 1so1647727lfz.4
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 00:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V8xj4W4AfLyt0Plm2fpuiknvRZurcRgUzKucmRtuk+I=;
        b=sK3G9nnolMDTk4qMTclOH921wTQ5gAutCdbF4FNSLnzmYz3BOPPYk1qF62y1YgRXqp
         DgDYSEhUQGAfq9xuXmoRw1EY+q5YeBKtnyhjiXnXXLIZVZi6q9m61iizO1dOiNzaIR25
         /SZvoRb8uILX7XjNjXc8iUVZEwgzNBCkR7LVxa1AzgHVqp7eKqMK0t1HOb1uoivtL/EL
         9TKvauhST1uD0Jz1SmtTSqNG0czEfkM+4vPPPCNntJRLEwFo8syP1kAfxhEAFzEeAwZT
         SJQws0LCbCUUAKzvq5KgTYqXaxXAx5CrvwUEpnwW6MXe0sWJGiFEARCBpxC1vCOX1iBV
         TBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8xj4W4AfLyt0Plm2fpuiknvRZurcRgUzKucmRtuk+I=;
        b=rpx2zXIiVXxmb9gBIK0LeWmCZN+1PiOgIvMcI8SWWJf5vHPEjEALH4zAJ62MMdnXom
         LjZqaM8zXJyF9xty9lL4CBMbvSTf1PnuhShVoF8oiWkjTwjdiavw021IfEN0y9+HfYGA
         q040LBQgdTz2lOXhkdHXXmUKIQJ6hm9WiaOtSn/O2o2XpVPub/9oEcRrjctbaxVSIFJS
         UTHro3dn6VDlt3buN6lWUlZBrbK8txcX/sayH0OITmuMuvKJC6rIzIcG8iT6CWQTXNat
         CIDC4Y1ICFVdLN1AqA6pXYrrtZkccLelY7U1Wq/M06ghF3dshIabhSU/HgK62VOavtqk
         T3iA==
X-Gm-Message-State: AFqh2kr6z6Dg/00OKpgdX4N0aAaYUoMuzQIanWWyJZDCVXujXu0x23D9
        vxJEfLgtFYardVgDcjCLeKyGXw==
X-Google-Smtp-Source: AMrXdXv46dtJ8/0bd1GMpDX1GPrhizUp/3EDEr9v0cJkZ+OpGvvEINzxSQp2wiNGwdRJ7KtZgXjUxg==
X-Received: by 2002:a05:6512:23a5:b0:4b6:f027:2af8 with SMTP id c37-20020a05651223a500b004b6f0272af8mr1895663lfv.66.1671697326244;
        Thu, 22 Dec 2022 00:22:06 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j25-20020ac253b9000000b004b567e1f8e5sm2111296lfh.125.2022.12.22.00.22.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 00:22:05 -0800 (PST)
Message-ID: <7ee6e126-d4c1-bbe8-1dc3-8d33019166e0@linaro.org>
Date:   Thu, 22 Dec 2022 09:22:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Content-Language: en-US
To:     Jai Luthra <j-luthra@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221221145216.11400-1-j-luthra@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221221145216.11400-1-j-luthra@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 15:52, Jai Luthra wrote:
> Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.
> 
> The following properties are still found in some old dts files, but will
> be ignored by the driver:
> - adc-settle-ms
> - assigned-clock-parents, assigned-clock-rates, assigned-clocks
> - port
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

