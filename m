Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8B3F643F0B
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 09:50:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbiLFIu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 03:50:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234361AbiLFIun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 03:50:43 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 750E31C115
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 00:50:40 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id cf42so16815572lfb.1
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 00:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtU93Dmn9VWjVHowI5xn5zJtypeYd7fH0X7P0X0xSxg=;
        b=PU4oc5VwolhX91hXFCCMXSowzhiVfloVUy8VrbE4kbO8CewPHNIdK5KEVMRmXfdbR+
         dyJulhCkSOMnEDfykWxIjVpBNPHlyoY956Z8JRoQjBg+bCjtzJ2sk3U1yZZyL4vFx9wd
         1mSLAUNTrXT9Ep3LW1odCpWf9fGhY747W07B+h2hYuvOgCaJ42YK542tkTQD+2sHRaiR
         9vpQTY5F3MlaekcAUTwVeDB32uvQk2XWuIRi5ZgvEJ4WdqLlA0/sTVLwo/CYyWe+PIoZ
         L2NB6nZSdeBsYzu7XGdFRXJUPfgd0PvsKdgBaGt6IkzYrwG2R1+5J8FJ+uYZJ0smTCnI
         cfig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtU93Dmn9VWjVHowI5xn5zJtypeYd7fH0X7P0X0xSxg=;
        b=IqrKN9CxThNphl31NolhrqKzOGNSgtiGzzbEUF3zZKlnoNQ1zK3gJDDxliA+Qpchr6
         2BtLG/mBtQ6zOYByvUSllHzdUZHd6vSiaQoKmce6qTCSeBxduwktnJG/tDgCdfZGkXxy
         IOtO7yZNwkYJuhU+jeBnNqljrtGtMMKk36uNmULjeBWMGAwVey1X5NCq7tso36x73Zs6
         +bNOJXfq5qP8fXudDaYfVdwB3VcrpL19XO5NxRc5RihEVKVBuk4Kc2gP82AnW3elVUwc
         yJQ4KZ/q2D6WYRLnZhMmRpjzNX69O8CrQduN9s48DvR8VFxIH/63Fon2ObNZ0mGLWfxB
         JxiQ==
X-Gm-Message-State: ANoB5plThlgFwTTdQBBMi5mDpLbwWPaU1RNb/N7c9fP5D4Rhji8AdXWW
        qASAZnyU1q2/3H+XljPQwLp0d3EjgPUrLx2bn2c=
X-Google-Smtp-Source: AA0mqf560t4A5JOf9gzJ+PBu3dSp+xlCZ3fYrCJh2NQfzYD8ZDvY3Jx3fnYExcoMN40T0+qQtGxlXw==
X-Received: by 2002:a05:6512:22cf:b0:499:fa38:3da4 with SMTP id g15-20020a05651222cf00b00499fa383da4mr27513445lfu.12.1670316639958;
        Tue, 06 Dec 2022 00:50:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b0049462af8614sm2403139lfm.145.2022.12.06.00.50.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 00:50:39 -0800 (PST)
Message-ID: <5190e9be-1ac8-6ef8-83f1-e6ec0df9e0b7@linaro.org>
Date:   Tue, 6 Dec 2022 09:50:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/3] dt-bindings: nvmem: qfprom: add sdm670 compatible
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20221205230116.2204-1-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221205230116.2204-1-mailingradian@gmail.com>
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

On 06/12/2022 00:01, Richard Acayan wrote:
> There is some configuration in SDM670's QFPROM. Add the compatible for
> it.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

