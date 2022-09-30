Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E0055F046A
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 08:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbiI3GBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 02:01:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiI3GBd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 02:01:33 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F221BF509D
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 23:01:31 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id v186so3360189pfv.11
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 23:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=VotyLnFwjNaJYHFufaBtdgoJhUGoUiMcxMCWj6dTkYU=;
        b=y38GSFwoBTZ8Ux+0Yqor1suzIl+krDDZOYbdnLthvKwg5JV8/pnEtuQOoY+EULUpEf
         2q2d5AyVv0xV1qKlzhRLIXKcYBe7gYGIqZkxAZ5Hjbg8eE9mYdl3ZWWMwj+twASd6HAI
         PCS0sKWq5/fod++UH/lGhzjzs6oWLG/+kLR18qi3TA1CWVLLZZ3UKjVxCkXgMHYxc5tw
         YHZpLRBQY2yosujelkY5pSHiNTyawuCDOuLU4Ir7Tmi/c9rwcZ/Fl2f39nRdxdWTuv3g
         Yj2aEvj4QrW6Pax8amNipYgyd3qF9aRfqAv84US08tOdf9XJYHRV1fwd5d3ASxxRZdQD
         QWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VotyLnFwjNaJYHFufaBtdgoJhUGoUiMcxMCWj6dTkYU=;
        b=yR4bCJw/TTzOJogh5cwrmySC16SEls468XVVqMXj71WPTkVtDPvy+SKGU1xhmyl4Eh
         OqsZzCpP9anXQJkxkst1GcYJRmrwzcW4K9wuIvbBxtUOIz6nTjospKRF3mkBK3FT1TMz
         kT0qnh1RvdHEBIyNx3oz87O8ug9x0Q/FiLvYDjKyiiyqznR5VV2lW7sw24HsHhQONyiz
         XSUkNC8Is7+4Yr0iSgottzC5zRo3YJMZyoY4a65cNJ4zgtYkNcUcMvTmQF0FMTTCIdwh
         yHaEzxWdd5jYklajc80oyW7vwuymUiOzqpDX9EnopyVKcC3WZIu0+7xm2m9zQdovyTKa
         B/uQ==
X-Gm-Message-State: ACrzQf0uEZvJBX9n70SocfYowyZC1W6vB4YPsAm+DfVwaF84VtcgLsfl
        LympUDkmaf02aVjPqYX19cIoSw==
X-Google-Smtp-Source: AMsMyM7YKb4NLbA/iahFREE+StksqM0gMROy3qs8OTCXMAzjzrlZPvvFe1i8DbPRvo059KVe2HWIwg==
X-Received: by 2002:a63:7e4d:0:b0:43c:8ce9:2a9f with SMTP id o13-20020a637e4d000000b0043c8ce92a9fmr6093636pgn.528.1664517691432;
        Thu, 29 Sep 2022 23:01:31 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3b:3adb:24f8:ac24:2282:1dc7? ([2401:4900:1f3b:3adb:24f8:ac24:2282:1dc7])
        by smtp.gmail.com with ESMTPSA id z29-20020a634c1d000000b0040caab35e5bsm881392pga.89.2022.09.29.23.01.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 23:01:30 -0700 (PDT)
Message-ID: <b018bd60-6238-922a-30e6-b7e698c7f5c0@linaro.org>
Date:   Fri, 30 Sep 2022 11:31:23 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 4/4] MAINTAINERS: Point to the yaml version of
 'qcom,ethqos' dt-bindings
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, netdev@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        David Miller <davem@davemloft.net>
References: <20220929060405.2445745-1-bhupesh.sharma@linaro.org>
 <20220929060405.2445745-5-bhupesh.sharma@linaro.org>
 <89a6d523-0268-3e8c-2293-68e2de7081d5@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
In-Reply-To: <89a6d523-0268-3e8c-2293-68e2de7081d5@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/29/22 12:53 PM, Krzysztof Kozlowski wrote:
> On 29/09/2022 08:04, Bhupesh Sharma wrote:
>> Update the MAINTAINERS file to point to the yaml version of
>> 'qcom,ethqos' dt-bindings.
>>
>> Cc: Bjorn Andersson <andersson@kernel.org>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: Vinod Koul <vkoul@kernel.org>
>> Cc: David Miller <davem@davemloft.net>
>> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> 
> This cannot be a separate patch - it's not bisectable.

Ok, let me merge this with [PATCH 3/4] then.

Thanks.
