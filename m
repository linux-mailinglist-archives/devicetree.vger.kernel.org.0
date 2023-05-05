Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16ED6F7D17
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 08:41:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbjEEGlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 02:41:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbjEEGlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 02:41:02 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7B2F9ED8
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 23:40:53 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so23981910a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 23:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683268852; x=1685860852;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WHCrcWBhsC6l6V28IMWcCAFElNan7OZzOP4wG3AZswY=;
        b=CItFIr6UwP4jc7PPNFfDbZVjCis9OsOAECvKnOgq7959mdo+aFaLcBBpEa9JCU8FNy
         R1Q5k+sXNddC/sQq7XxSNaCdg1+E0cPCsgtrjW5GyLmmZ6kF02FxyfS1hGo+/q31UlZV
         OBpKSXMuYe0TOg5pVQ5YSvZdw7G+RdMrhhfzShVDAM0tGEjgyzInbJNF5cw1rd9bj8wK
         CGa3ZqaISWyVtbkoefTDYzkzcjYrOxqtj0Gu8hPbutsMFeU9G356BvNj/LO5UNmR+LN4
         +lFiXN22udEQLPGFCqS76SFvezvrb0vNpqdmPMbAf1/xMevzsGF0lbu4Gr2ipOBpjA3L
         mIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683268852; x=1685860852;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WHCrcWBhsC6l6V28IMWcCAFElNan7OZzOP4wG3AZswY=;
        b=cpt2wfT0IhRN8n1NmkTpNheepuOmS3qUOzqXpZsT/ekxSmF1V8tqE5PoEnT0B3KHA2
         XTd21kPIafKGw24tSP5iH9HbbbpLBAECx77hanhKA5Fkkb6Mh2j6xUPtV3K2zO52Hcw8
         MyqoO1RdA6o2hWqs7bjEwcch0CHde/sbj5yi0kkG7D7xqCAizoLn/vhZl6p04Tajn4GR
         GEA0IscsQp8yGLIxyiTJ2y4XlDTql1bScOxtp0LKWLHPJ5baPHJQe6p8biIhFr2N8DsC
         QlsQ53PmVPtSF3f6npqNA37kn08P1UjPMJmzeyr9lo/KX0wZmRoBdwF1Ofe+VioHHZo+
         nUJw==
X-Gm-Message-State: AC+VfDwbYcUJ7ExdjBHuhFBCCBCrx14VSvRzMT+5LewhLMlNKH7pI9E+
        gmhJXZHWj1sbZRfxnj8aK88k2Q==
X-Google-Smtp-Source: ACHHUZ7x2LYq3Bm07MaKK1UErIUD2eCN+HnEZq07rw2JUt/+1iGEsI4KvQfJHrrMeR/Zkzly/pIPJA==
X-Received: by 2002:a17:907:7d8b:b0:94e:e039:98ca with SMTP id oz11-20020a1709077d8b00b0094ee03998camr650068ejc.4.1683268852097;
        Thu, 04 May 2023 23:40:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id n5-20020a1709065da500b00965e68b8df5sm255375ejv.76.2023.05.04.23.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 23:40:51 -0700 (PDT)
Message-ID: <ccc65444-d477-1f78-9c5a-042441da7cd7@linaro.org>
Date:   Fri, 5 May 2023 08:40:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20230504-renderer-alive-1c01d431b2a7@spud>
 <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 02:02, Rob Herring wrote:
> On Thu, May 4, 2023 at 4:59 PM Conor Dooley <conor@kernel.org> wrote:
>>
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Rob asked if I would be interested in helping with the dt-bindings
>> maintenance, and since I am a glutton for punishment I accepted.
>>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> ---
>>  MAINTAINERS | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 4e9370793300..687d7a3d2e85 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -15697,6 +15697,7 @@ K:      of_overlay_remove
>>  OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
>>  M:     Rob Herring <robh+dt@kernel.org>
>>  M:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> +M:     Conor Dooley <conor+dt@kernel.org>
> 
> Do you really want '+dt'? I've never really used it, and I think it
> suffers from the same issue as MAINTAINERS. It won't get used
> consistently.
>

It works mostly for me and still helps the filters.

Best regards,
Krzysztof

