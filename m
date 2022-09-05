Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F22F05ACE60
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 11:04:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236947AbiIEI6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 04:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236959AbiIEI6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 04:58:34 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB98150188
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 01:58:30 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id v26so12140618lfd.10
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 01:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=i9msuZqs3LoXT7dIhXOMujcWP3YuuePD3VZfcMcrkOg=;
        b=OerpkYVloQLfSC1hgvnEikWuCfmRCfNmUN5+m8dvDE1MIgjo3ura9kLjoK0B+kphsA
         IAmF+jCeIh91wNG2yC44JCaK8ebTwczZoXVdb18oU5Pj0meC0zTDNLuBjfWa9TlOameg
         fiprMeNkIVPWuIUMmHxobrdwaijIVEKtO5A5KIqRn0AlVvybw4MkvkfZSzoa5SsstA/l
         62QIevwlVwGRwWxDaGWIPZjXcSAKpMpi11mpUVYHo17I3ee6O6aXmtx5d7ZsP451Ao+U
         3BqldgdT0F+DH/5R/KbVDqD95Vt2tRUs84C3pZCs7sEOKwHNd4YSdL3t9CIgbZywS2RN
         osng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=i9msuZqs3LoXT7dIhXOMujcWP3YuuePD3VZfcMcrkOg=;
        b=3GW/rX4tNZSxKHIE9xKhqOZ9VCBxjcEMjZxRbchH1Mg5WjE0iizSUbMgyQ1VyUOKsS
         z7xeyh+4H9xr/6HAYiei8wF7FAWX2xoWJTuckWSY8ueF5jz5nfAplQEiQtmOTOzdiTvT
         V25BCpwGPIx48X1dlTtkOWk5Oj3tCLVPO/O+kHusBmuwsf8QRhkHP3XDxVNYnFMMuh0I
         6F9/l26JKqdoZhMSfRsd5dU+clV6PU48aJtF9257ffrof4XQwim6tIjcR26c5DInmCcJ
         QxYB2iQP6gO5UaBtZizxZ7vrT4ucbJ27ftzmPhW6jCBTzFEFJl+qi9tXavDKDSN2CMoG
         IY8g==
X-Gm-Message-State: ACgBeo0ExTR5SKoyre4xIEmRiLWNXK/esD6VAdrC57Suw0XwoXA9u9Gm
        GNxTh3ei3ak1k7I03jAYCv8lbg==
X-Google-Smtp-Source: AA6agR5cFOf6F4OqLwf6EMQNEzD7rUMxPpB9nVTZvLKy/sS71/291ArQ5Hq7KDmpOKdvIXyEIFlNTw==
X-Received: by 2002:a05:6512:39c9:b0:48b:90c2:da46 with SMTP id k9-20020a05651239c900b0048b90c2da46mr15398459lfu.571.1662368308935;
        Mon, 05 Sep 2022 01:58:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o12-20020a2e9b4c000000b00261ca006158sm1340771ljj.54.2022.09.05.01.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 01:58:28 -0700 (PDT)
Message-ID: <01aefa7d-5daa-d2f1-4344-581117cd1fb0@linaro.org>
Date:   Mon, 5 Sep 2022 10:58:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 4/5] drivers: iio: adc: LTC2499 support
Content-Language: en-US
To:     Jonathan Cameron <jic23@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Ciprian Regus <ciprian.regus@analog.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220901121700.1325733-1-ciprian.regus@analog.com>
 <20220901121700.1325733-4-ciprian.regus@analog.com>
 <4067432b-b5a6-f3eb-a707-5fa298ba846b@linaro.org>
 <20220902120611.000007a0@huawei.com>
 <CAHp75Vfn_84-xww5w_oHf0zqm4dZxycSU1cDKw7-KQzDyoCHXw@mail.gmail.com>
 <20220904155557.33c96d66@jic23-huawei>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220904155557.33c96d66@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/09/2022 16:55, Jonathan Cameron wrote:
> On Fri, 2 Sep 2022 14:37:03 +0300
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> 
>> On Fri, Sep 2, 2022 at 2:06 PM Jonathan Cameron
>> <Jonathan.Cameron@huawei.com> wrote:
>>> On Thu, 1 Sep 2022 16:23:09 +0300
>>> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:  
>>>> On 01/09/2022 15:16, Ciprian Regus wrote:  
>>
>> ...
>>
>>>>> Datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/2499fe.pdf  
>>>>
>>>> Missing blank line. Use standard Git tools for handling your patches or
>>>> be sure you produce the same result when using some custom process.  
>>>
>>> My understanding is Datasheet is a standard tag as part of the main tag block.
>>> There should not be a blank line between that and the Sign off.
>>>
>>> +CC Andy who can probably point to a reference for that...  
>>
>> Yes, the idea to have a Datasheet as a formal tag. Which is, by the
>> way, somehow established practice (since ca.2020).
> 
> We should probably add it to the docs so we have somewhere to point at
> beyond fairly common practice.
> 
> Hohum.  Anyone want to take that on with associated possible bikeshedding?

Sorry for the noise then - I grepped, nothing popped up. It's not
appearing in the checkpatch patterns, although indeed appears in the
history, so it is fine.

Thanks for clarification.


Best regards,
Krzysztof
