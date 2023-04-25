Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6350E6EDDD8
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 10:22:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233238AbjDYIWL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 04:22:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232851AbjDYIWL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 04:22:11 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE91549EA
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 01:22:09 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-94f109b1808so1016221566b.1
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 01:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682410928; x=1685002928;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a5M63yXC89QfRSmv3dCKp93F3Y3Fbl8p/U1KJ7S4Fng=;
        b=dlPrks6xdXwghpZwvziO2uRXW4X5ATOV8+w81+Lb/aaWdOw7EJb46Wqm/eiTeLtjcD
         IUEYf3jqI/y6pMTBQ00ANWUSWyCe68RaRQQqd6t9IenFIRcbidjGTUWutpWJwqgrZAGW
         CClGulPCJPTG4jdFv3h+S0B1SE/SbdTaA7hx7IzqHM9gtmmYAD6RehXVGRorqcEGRy3Z
         n4arEpAHAI3IHNRzbQLbADcUGuLK9DfOGE7F+OnlO3pqBIpKExindkfWbW7VEhVISTMZ
         s/s8oK4C9nHmnTUfv7YsQtHX+x7ojzN+1AnBTHHPhdR/W5AEyPPNGhwa4Ezqs1gu5EAW
         bxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682410928; x=1685002928;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a5M63yXC89QfRSmv3dCKp93F3Y3Fbl8p/U1KJ7S4Fng=;
        b=VM7irZTmM/mKNQYRRKKlLX3PIdl6igeRpc/wuvJJy3kNVUXG7nzq9Ne9PV6wWVssu6
         v4Pv2NAIX25DC6/JFhQn5ZQkAPADvit8NsPraRXM0+lku0p/J06xrz4rkH8cw0N4oLQI
         sdSKuQ3quVT5cMbOh6BvRIsXCFc4AJfSvvEd3YOv8Vjrjm6JuaKhMc6GNEwPEEznjO7l
         uDIAQE90v1DyKyYdzYNn0YMV8n1eUlEO7RbiR/bhph6PI31944ttXQESImh4cTXZF1Ug
         QnG54hMqJEKaJshMgLb+/K+qYcg9MXw8gxE51ETSpiork+rvX3kOHYqPq2qTgveaHewO
         7lhw==
X-Gm-Message-State: AAQBX9ejp6iUatpd0c7/j4XaEEdzCXi7dB+Ed+JUWRWFtzCDu9TQ7E08
        4vKdGuwigC8WtyW815boapmY8Ad9FTs+XpjCvhgXlu2T
X-Google-Smtp-Source: AKy350YLaW2i01uHETH49mSc7VM59UHdglmwNh5PVhWvo5DVwnmN26hC+CweeGHmTknkrmPXpglo7A==
X-Received: by 2002:a17:907:168d:b0:92b:f118:ef32 with SMTP id hc13-20020a170907168d00b0092bf118ef32mr13623125ejc.48.1682410928292;
        Tue, 25 Apr 2023 01:22:08 -0700 (PDT)
Received: from [192.168.9.102] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7d394000000b00504803f4071sm5409238edq.44.2023.04.25.01.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 01:22:07 -0700 (PDT)
Message-ID: <fa548aa4-6d17-0981-227a-bed6aedcb34f@linaro.org>
Date:   Tue, 25 Apr 2023 10:22:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 2/4] arm64: dts: qcom: sa8155p-adp: Make -cells decimal
Content-Language: en-US
To:     Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-kernel@vger.kernel.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230421205512.339850-1-ahalaney@redhat.com>
 <20230421205512.339850-2-ahalaney@redhat.com>
 <abd106b1-6650-6a7c-1c8b-3609e47b0161@linaro.org>
 <20230424143857.373kjvi42c7acsbp@halaney-x13s>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230424143857.373kjvi42c7acsbp@halaney-x13s>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2023 16:38, Andrew Halaney wrote:
> On Mon, Apr 24, 2023 at 09:21:45AM +0200, Krzysztof Kozlowski wrote:
>> On 21/04/2023 22:55, Andrew Halaney wrote:
>>> The property logically makes sense in decimal, and is the standard used
>>> elsewhere.
>>>
>>> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>> Signed-off-by: Andrew Halaney <ahalaney@redhat.com>
>>> ---
>>>
>>> Changes since v2:
>>>     * Collect tags
>>> Changes since v1:
>>>     * New patch (Konrad)
>>
>> Doing such changes per one board will be a lot of churn...
>>
> 
> Agreed, are you suggesting I drop this patch (and if we do this sort of
> cleanup to do it in bulk)? Sorry, not entirely sure I am picking up what
> that comment is implying.

Yes, I suggest to fix all Qualcomm arm64 boards with one patch. There
are just few more occurrences of this. It's also pure cleanup, no
functional change.

> 
> Personally, I'd prefer to keeping that patch as this series is trying to
> clean up the particular ethernet node.. but if the purpose of the series
> was just to clean -cells up then I'd go with the bulk approach.
> 
> So as is, I'm going to leave it like so unless you have specific advice
> against doing so.

Best regards,
Krzysztof

