Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9FBA73734E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 19:54:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbjFTRyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 13:54:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbjFTRyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 13:54:44 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E46B1712
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 10:54:43 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-519274f7b05so6598502a12.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 10:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687283682; x=1689875682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I6iCAz1apQyRWfBaZLkkVrSrK/vFbe4h64xjKJ/tUzQ=;
        b=vRvk5t8kKnbQI3hvoe9f9njkiSCOgh86vKU4Wzpmx6hG+FGv3FXJC+ayCO8wsu8SN4
         mSJTyAiFKgmD8JN98G03dL/SLFLHgVr8cBUJyMfB3UgfL8tpUHBgyAdwwwHDpuixkDHD
         KLZq7FirYWoGxKHB4GG7Uw0QF40+V5q+Y3Gvazc8IuL31AhROmGXiGLFIfzLk+ZrwXRI
         lNJ4Ie34CX1i8DVxm1rU7SQjdyH1hVyXSfhYCEqDQ47cS81mmnwBtU7z1PhNDoqO2zNO
         UJnFjtryXFo1cW/ZWUykpi4hzS1/+kDqjXK61+OMDxOza3/JDE11gmIq5jZD7CR09d96
         ThOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687283682; x=1689875682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I6iCAz1apQyRWfBaZLkkVrSrK/vFbe4h64xjKJ/tUzQ=;
        b=fEArrJZFeX/8GfAKxKoUf5eqCV4h9scau4gLMNvf8Jls/yQ6boqMzeQEzF+k2yIRm4
         ABAsu9Z1HuuzSjLNFApQ3TjYgQ25nVhhx3duFD4e8DZgyoQ93wk5EXDitV1jufRfp+uZ
         9G2w3Djw+0FoqNpIUOsUAL9/S743TTqXQ/HnNPz5A40X2a+LRYAe2tp0X/Azm6zQ32jd
         CnFHbNYG1A1JLAtk9INrfeqfZQ1GIRZRWa+p/cevWtTJmVhMuUX4aslxT46i8yPxXeF3
         RL6EOxRDJo81yjdQ1r7boOaXuBs+BvHmcEgzZkkbFYkiRYtKImfeIAjPfohicsBrb25W
         tmKQ==
X-Gm-Message-State: AC+VfDzXEVprMEHz+FNQw8FvK5cbkg1WTxjRkuN4OFRUAYNFXu/pPbEY
        cuwUtFwEK/+l8MOypJCjy5V7oQ==
X-Google-Smtp-Source: ACHHUZ69Jzsy23q35NN+VWNG+af2YFj/nJ3rl4SQHwQ1hn8xf4EdgQNkr8qYXG/MFKKyWVYYTMVHuA==
X-Received: by 2002:a50:fb8a:0:b0:51a:5ec4:ade6 with SMTP id e10-20020a50fb8a000000b0051a5ec4ade6mr3424746edq.12.1687283681935;
        Tue, 20 Jun 2023 10:54:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id y19-20020aa7c253000000b005148e981bd3sm1506941edo.12.2023.06.20.10.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 10:54:41 -0700 (PDT)
Message-ID: <dce591cb-ee6c-15cf-e5aa-6b2dc739984a@linaro.org>
Date:   Tue, 20 Jun 2023 19:54:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv2] dt-bindings: arm: socionext: add Synquacer platforms
Content-Language: en-US
To:     Jassi Brar <jaswinder.singh@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
 <20230620170725.13794-1-jaswinder.singh@linaro.org>
 <5ae8c143-64cf-469d-b4f2-bed5bd9ee87b@linaro.org>
 <CAJe_Zhc7-LU0X6epmOoo3nE0j+e_zROsA+J0s0vSUA-sTJ6jBw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAJe_Zhc7-LU0X6epmOoo3nE0j+e_zROsA+J0s0vSUA-sTJ6jBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 19:24, Jassi Brar wrote:
>>> +properties:
>>> +  $nodename:
>>> +    const: '/'
>>> +  compatible:
>>> +    oneOf:
>>> +      - items:
>>> +          - enum:
>>> +              - socionext,developer-box
>>> +              - socionext,synquacer
>>> +          - const: socionext,sc2a11b
>>
>> That's quite different change.
>>
> So it is not carrying your ack.
> 
>> What is synquacer in this case? You claim
>> now it is a board, but based on previous discussions and U-Boot source
>> it does not look like such.
>>
> I never made that claim. I said Kojima-san will confirm. He informed
> Synquacer is a brand name.
> 
> Currently no code internally or externally differentiates between
> SC2A11B and Synquacer and we might as well keep living with Synquacer
> only. This patch is an attempt to be accurate.

Then the patch is not correct, because synquacer is not a board. We
should anyway choose only one for adding to documentation.

Best regards,
Krzysztof

