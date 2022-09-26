Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 363D25E9C98
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 10:56:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233151AbiIZI4E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 04:56:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231241AbiIZI4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 04:56:04 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6ABB36DC6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:56:02 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id x29so6662107ljq.2
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LygWxMPYiiK3qZH2BOr8vVIkBAjDPXCSKFsPmYOYNp4=;
        b=YZg/aIRbC0PHB9nhtnEszdhN+jwLatJdmHoRaxhB+SGlCd5dmDboTAF2GVP9SBWIYb
         QybMQpCFM5x9sLv2YKOHXNZvF21YLysRqGGEwQItaJsbYWve+5nrFkmBNqUOHQ9tBGk2
         ZyreflIF4/lnqqflZJEbN2MGmmWy9kdmGdk1tBbjGpuDEQBQxcdb61FK76YE41F2Fpyz
         B0yR2mymcIYpofTmEpEHZB8xw9fLf8y9ytQUlCzaXuaqeGpmQkcuPOlL3ZwNOURTdD/w
         IWWs+BSSNjyahkZvoRtWs/xkXXSGEUILF09RkJQIyp6bx9LNOayLBIsgwYscOD6KBxSL
         WlTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LygWxMPYiiK3qZH2BOr8vVIkBAjDPXCSKFsPmYOYNp4=;
        b=t3JWx3GrryCZAVp5CT2aHQmtGwPQlnfP0RgJTHaiWtzZKiiFtslffne6SvqHvBr3p/
         pYkrzzNJ3d9PkT7Z6O0oJMsve1X2POQvQcLQKO2V1x4Ip3q9mROAdTfGdd3f6jBvK6F9
         mP5dT1krUzubbZZk0SDLm023KYcXwtzPBeDBtW6BUShq5sdeDHdBOJuXJh7tD77v2OgB
         Ni7osCjui5O2ouIblOu9o0lenRqoVRKJJuykxW6rtczDGe4YdSwpcYXz+3uhUPNzrRlh
         IirqFdH5GdrGHW71i2rQHa9a88HHgN2GDWbQLD6+V+psxVAmV6iRBIPswnUMvA6XEA5x
         Oj5w==
X-Gm-Message-State: ACrzQf3+PuL1UWen+9HsT2miGVpy/MlOeV+rCJJmrn7iUWWjo/vrD0s1
        phkoMqYGXOJ8UFrPYNfc5EoJRQ==
X-Google-Smtp-Source: AMsMyM5A6TYCbX/hg5uRQ698K2J10sgO4nLPjMSO7EHPQ1s5wRt/HXI9m7i2VCM+76dMMIPYm9tfig==
X-Received: by 2002:a2e:bba2:0:b0:26b:e2d6:fe44 with SMTP id y34-20020a2ebba2000000b0026be2d6fe44mr7080053lje.286.1664182561232;
        Mon, 26 Sep 2022 01:56:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u15-20020a2e9f0f000000b0026c4c1a0b4dsm2308051ljk.126.2022.09.26.01.55.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 01:56:00 -0700 (PDT)
Message-ID: <6e43fd39-3452-c36d-d9ff-fd508ac337c9@linaro.org>
Date:   Mon, 26 Sep 2022 10:55:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH net-next v3 1/6] dt-bindings: net: tsnep: Allow
 dma-coherent
Content-Language: en-US
To:     Gerhard Engleder <gerhard@engleder-embedded.com>,
        netdev@vger.kernel.org
Cc:     davem@davemloft.net, kuba@kernel.org, edumazet@google.com,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20220923202911.119729-1-gerhard@engleder-embedded.com>
 <20220923202911.119729-2-gerhard@engleder-embedded.com>
 <6e814bf8-7033-2f5d-9124-feaa6593a129@linaro.org>
 <773e8425-58ff-1f17-f0eb-2041f3114105@engleder-embedded.com>
 <7c7f67d3-d42e-a053-256d-706cc9dfb947@linaro.org>
 <7782924b-9664-6946-f8f6-c70cec618df9@engleder-embedded.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7782924b-9664-6946-f8f6-c70cec618df9@engleder-embedded.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2022 10:14, Gerhard Engleder wrote:
> On 25.09.22 09:41, Krzysztof Kozlowski wrote:
>> On 24/09/2022 20:11, Gerhard Engleder wrote:
>>> On 24.09.22 11:15, Krzysztof Kozlowski wrote:
>>>> On 23/09/2022 22:29, Gerhard Engleder wrote:
>>>>> Fix the following dtbs_check error if dma-coherent is used:
>>>>>
>>>>> ...: 'dma-coherent' does not match any of the regexes: 'pinctrl-[0-9]+'
>>>>>   From schema: .../Documentation/devicetree/bindings/net/engleder,tsnep.yaml
>>>>
>>>> Skip last line - it's obvious. What instead you miss here - the
>>>> DTS/target which has this warning. I assume that some existing DTS uses
>>>> this property?
>>>
>>> I will skip that line.
>>>
>>> The binding is for an FPGA based Ethernet MAC. I'm working with
>>> an evaluation platform currently. The DTS for the evaluation platform
>>> is mainline, but my derived DTS was not accepted mainline. So there is
>>> no DTS. This is similar for other FPGA based devices.
>>
>> If this is not coming from mainline, then there is no warning...  we are
>> not interested in warnings in out-of-tree code, because we are not
>> fixing them.
> 
> Ok. So I would rewrite the description that it just allows dma-coherent
> and remove the fix/warning stuff. Is that ok?

That would be okay, but please add answer to why you are making this change.

Best regards,
Krzysztof

