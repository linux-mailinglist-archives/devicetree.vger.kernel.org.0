Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05E5251A383
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 17:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352205AbiEDPTu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 11:19:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352153AbiEDPTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 11:19:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 884EB43AFA
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 08:15:58 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id e2so2469635wrh.7
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 08:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1ryHoF3GX29l2BbumSx4LLa3+CSQ3y1WeeuUCuu7Qa0=;
        b=Hcb/GxMIWz+LONYPEzve61zizt92isYqwX/yrmvvmtjTOdN26bELSBXrfCatavY/i9
         zO0Oqvr3zwHUj40hzHgmV8SEvusTerF2fNSIN7KHYATj3tSBtZU9Rif2P38pyjfg33cd
         guYC+H53g+0lZzxOYl2ZNspXpcMIslsrmSObD8wYTFb1O/eopStRxiyOYSwA/8OgzD+k
         V7sIdiAaHrWrvBt2P+ESUMSARxGs2dG9a4B21L0sBP4/Luc29Q7Sxew/ri0Na2lHqyal
         v6xDIUSvDBbq8ATjzHHHiiwFmojz0DUAr7kKlOmFsDxI3cr5ZK9CETnQMIPp5lWlFDTb
         Aa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1ryHoF3GX29l2BbumSx4LLa3+CSQ3y1WeeuUCuu7Qa0=;
        b=jD0qvf6y98REove0znXWLSEtNWGAx/0QDm8dlUiWopQDLu2Gt2Jj9Cv7O8oQ2lqkGv
         Pn6ml/g4FWR4oEx8CX0UQ+1WnV/cAu4M7btCI3zmmiz9fkRI/3OVHo1VJKaPltbBi89+
         6dlgh6zXeeGz8JN/DL3CTKohR7dCokuwZcv7v9dPDYheaBn8hZ0+NBeboZC7jFvlsG5K
         NRIahO5GdrQT7GgKKPSTITkii9R3HpFTYNLyN2g2qhMq1oYW4VKsF3JQ5aayZDjMlkul
         FD4k2IdDWythfEt5VPL3VD0RjJiHHFivYOKmDCJPEO8AjH/7TP7s+sCbNDTr8M4q2Are
         2z5g==
X-Gm-Message-State: AOAM531wwFrur2O237ECdth6wUtpW0DOrGniOyV0ByOjBsqDC8f/7rgD
        bvnurrGnxLgsF+0FB0tdDrSjd1ic6GD9lkpK
X-Google-Smtp-Source: ABdhPJybnL0RWDbmurfP0kvKpvO+WERTEmjRBhnccgIeENQnFqTbkIhbjnxVsk2LUs7nrd7EyXVXoQ==
X-Received: by 2002:a05:6000:1814:b0:20a:cb21:8781 with SMTP id m20-20020a056000181400b0020acb218781mr16683539wrh.488.1651677357085;
        Wed, 04 May 2022 08:15:57 -0700 (PDT)
Received: from [192.168.0.215] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j30-20020adfb31e000000b0020c5253d8bfsm11578357wrd.11.2022.05.04.08.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 08:15:56 -0700 (PDT)
Message-ID: <8aef897f-fff0-526e-62d0-6a92c301eb08@linaro.org>
Date:   Wed, 4 May 2022 17:15:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: sx9324: Add CS idle/sleep mode
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Jonathan Cameron <jic23@kernel.org>,
        linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20220503193937.3794477-1-swboyd@chromium.org>
 <20220503193937.3794477-2-swboyd@chromium.org>
 <faaa4ab4-8190-3cff-998e-3b6a6d3ce27c@linaro.org>
 <YnKVzvAITXAHqSiX@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YnKVzvAITXAHqSiX@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 17:03, Rob Herring wrote:
>>>  
>>> +  semtech,cs-idle-sleep:
>>> +    description:
>>> +      State of CS pins during sleep mode and idle time.
>>> +    enum:
>>> +      - hi-z
>>> +      - gnd
>>> +      - vdd
>>
>> You need a ref to type (string).
> 
> Actually, it can be implicit for single strings.

Is this a generic preference?


Best regards,
Krzysztof
