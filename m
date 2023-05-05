Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2643C6F8115
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 12:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231225AbjEEK5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 06:57:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbjEEK5I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 06:57:08 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E43D11618
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 03:57:07 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-965f7bdab6bso9983666b.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 03:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683284225; x=1685876225;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AnZPpLie5CzucGcSNPxNjPMx0zW580CQVHxVWW0KEUo=;
        b=JMetDSeacCdvYSPdFEpHhP07EbBEWPimo9W8IGwWaapNeJD2fkht76I8z3b/Cmq6q2
         9BVHXZGwEYx/fN1PfiGx/vkS88znaw5t31Z+1EuH5ThEyk+ezMEt4ZX5zQHrDEKn13/t
         1xhwiyFSY2FO7ewY2FESDcHX2EFR1rCgBMIQgNauyJSPd+OUeedbhMzCB34lPqVUyt8K
         ulLJ3g6wPVYCLGWMEu+ENstqHOXiw9/i6GS+/PVa8TAFvX+TXdcanhrus7jy4NCIFFMS
         X5tXaZd+tnG9AqL3Gjl20p9KLFo3ARvrQ2Haz51GBD6peFEELJD0LzD2OqG3H/f3W8RJ
         ckzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683284225; x=1685876225;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AnZPpLie5CzucGcSNPxNjPMx0zW580CQVHxVWW0KEUo=;
        b=K7IIyD3s4BOUG84utyrxLy2GBLv2+koE/tU7es9XXJgMK7SUeAcGftVJEFJUFw4fOx
         uLJLg6JlS31+78Vgo7udqb+kPPxGyopcWCzuKv5myd1/C27sAC1aFmTBMU+06RxVo1vJ
         bjbFhPlMZqQw5iI6Na1g1orbNO5ET2uXfUTbOd/T4DhJ3Oj7bL72R+uhC+ODamQrDiJs
         QAHTGPDdqFq2/RFFARV3zxI5Y6WRV5w1jZcXhv7tfKSrm78uIlLdsxX2cXTGu0yORbTU
         YG4qqFz3/hJh+tB1Hqx0k4cLxg+XAOlUnXjTKH8jRL2fDL/BaZ367xn8PfRySvgRCj62
         5yFA==
X-Gm-Message-State: AC+VfDye3mJOQEiBPUoiWxa8WSjgzUI9kud6PRVQiC1f/pgjXzmynRaK
        NPwDh4UTiAURRegu88T8n2omFJAfnniL79DYecaBsw==
X-Google-Smtp-Source: ACHHUZ5/1pjQ4o/aOspj7d0DqkUEpej928zWpwpuq0qNrYJnpZlw4FtrHFa7pxgIMIn+mrZ09Me0Mg==
X-Received: by 2002:a17:907:7f1d:b0:94a:6a7a:52d8 with SMTP id qf29-20020a1709077f1d00b0094a6a7a52d8mr826425ejc.71.1683284225461;
        Fri, 05 May 2023 03:57:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id u3-20020aa7d883000000b00504ecc4fa96sm2798916edq.95.2023.05.05.03.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 03:57:05 -0700 (PDT)
Message-ID: <731e99e6-9e48-8f80-7f95-ec8d23a85252@linaro.org>
Date:   Fri, 5 May 2023 12:57:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [EXT] Re: [PATCH 1/2 v5] dt-bindings: watchdog: marvell GTI
 system watchdog driver
Content-Language: en-US
To:     Bharat Bhushan <bbhushan2@marvell.com>,
        "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <linux-kernel@vger.kernel.org, sgoutham@marvell.com>
 <20230503121016.6093-1-bbhushan2@marvell.com>
 <9911bb17-e8f7-b552-7056-a26b3194c416@linaro.org>
 <DM5PR1801MB1883A469C355797CE4A6E83CE36D9@DM5PR1801MB1883.namprd18.prod.outlook.com>
 <bb52dbb7-7225-552c-2daa-688aa304a9a0@linaro.org>
 <DM5PR1801MB18835D6D376910DA60B36D5FE36D9@DM5PR1801MB1883.namprd18.prod.outlook.com>
 <e1760ba6-4200-4fa0-5298-f76575522764@linaro.org>
 <DM5PR1801MB1883EE6116A2D63660871F8DE3729@DM5PR1801MB1883.namprd18.prod.outlook.com>
 <d9c0bef4-de7a-2a0d-17b1-822978d27177@linaro.org>
 <DM5PR1801MB1883479AE3CE111B5FC3E5C8E3729@DM5PR1801MB1883.namprd18.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM5PR1801MB1883479AE3CE111B5FC3E5C8E3729@DM5PR1801MB1883.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 12:41, Bharat Bhushan wrote:
>>>>
>>>> You need anyway SoC specific compatibles. Once you add proper
>>>> compatibles, you will see that property is not needed.
>>>
>>> Also on a given soc, firmware can configure one of 64 timer to be used as
>> system watchdog time then compatible will not work.
>>
>> Can't you query the firmware for that? Or can't you just choose first unused
>> timer? DT is for non-discoverable properties.
> 
> Query to firmware required arm SMC call, to me that does not look correct approach. Thought of using first one but that is already used and moving that is as same as this.
> 
> Hardcoding to 63 will make it work on some SoCs but not all.

But you know which one is started or is not. GTI_CWD_WDOG tells you this.

Best regards,
Krzysztof

