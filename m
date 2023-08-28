Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F28DD78B5E1
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 19:06:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbjH1RF4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 13:05:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232815AbjH1RFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 13:05:52 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7015C5
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:05:47 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5298e43bb67so7181336a12.1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693242346; x=1693847146;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6pwIO6R7Jqbmu9L5I/5/GRG7saX3Pv4HW6F7LDeJGUI=;
        b=CCHnzBttPlwHlsqlDIhPus+alcfuqMStm/P54UY8QrKoXV0108/d7JI+XO6qO8NyjK
         NQobWI/Jo3gLPTRKzUueOL481skRliJDd8xAgrIin5VSOwyq+KLlbDi5H2VUArkVieIB
         SXoJvEQFfRIyLHFfsFjjlYwFJ4rv/rFTrkBpGzS406sq+OHVQeu9gleOGpzgCEZRo6wX
         R8LlMD2M/J4qa4DEzjhf/1eM4BGz+2wd+ICNsWMzro7s1J9fo80r52ssC5mR9wc0Mj6J
         ljzzwi8g8sSdmwdMOypmlOSjMeHeo7e02TgewlGuFvzaDtt5bBJTSY0u7Xbv72faW1ka
         UVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693242346; x=1693847146;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6pwIO6R7Jqbmu9L5I/5/GRG7saX3Pv4HW6F7LDeJGUI=;
        b=QF5WWnFmwJgJmIkJrFAirZSZBRDAnzKqJaW43kd4bHjbx16Y/NM0JbrLL7vhaKPPYd
         7CgyyUgpHzKvAUeOSIjhkIbJndWriIxli/PC7980Bwq1yMYW22A1TWNRp3c0Hsch0N5k
         R4A7VX0p9eECF4eu/cXmpDJ3lRRoOlEUdbPwDJYDqk8uwA7jC39JDVHrfAFP1zonmhZ1
         Do9t3OAnZLf1OFXsGiISFl8TBiEDnEYnq/ptyDM1tVUYCg1uynoRofaTROdKMiHyB+ZT
         csHGsUepNi23d7pHT576reoq4O1h+4TdbZcvvsZoij6giLrrd0g5uDtA+UIW7cp2YjmT
         226w==
X-Gm-Message-State: AOJu0Yz5SiNyYWgvmb4Ha+s5cA3u8qD9XpVVaK2KFMUYY1tlL4LKgnV+
        pEFgypy+//KSGLf2nTTNhXucGg==
X-Google-Smtp-Source: AGHT+IHQp/okA1PNTfAJua7UtawTROTLsevYnJuR49B+mPdHq1+Isl83lZjfOMRBu1sVOlpzAjry1Q==
X-Received: by 2002:aa7:d316:0:b0:523:37f0:2d12 with SMTP id p22-20020aa7d316000000b0052337f02d12mr247233edq.17.1693242346189;
        Mon, 28 Aug 2023 10:05:46 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id h12-20020aa7c94c000000b00528922bb53bsm4652059edt.76.2023.08.28.10.05.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 10:05:45 -0700 (PDT)
Message-ID: <faf53a03-341c-994e-e66f-46cf88aeaa8e@linaro.org>
Date:   Mon, 28 Aug 2023 19:05:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] misc: bm92txx: Add driver for the ROHM BM92Txx
Content-Language: en-US
To:     Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Cc:     azkali <a.ffcc7@gmail.com>, Adam Jiang <chaoj@nvidia.com>,
        CTCaer <ctcaer@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Derek Kiernan <derek.kiernan@amd.com>,
        Dragan Cvetic <dragan.cvetic@amd.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230824153059.212244-1-linkmauve@linkmauve.fr>
 <20230824153059.212244-3-linkmauve@linkmauve.fr>
 <f79087c0-cc44-4fb6-fa2e-b43db5dfd6d4@linaro.org> <ZOy33RB8aj3455ZQ@desktop>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZOy33RB8aj3455ZQ@desktop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 17:06, Emmanuel Gil Peyrot wrote:
> Hi,
> 
> On Thu, Aug 24, 2023 at 06:28:07PM +0200, Krzysztof Kozlowski wrote:
>> On 24/08/2023 17:30, Emmanuel Gil Peyrot wrote:
>>> From: azkali <a.ffcc7@gmail.com>
>>>
>>> This is used as the USB-C Power Delivery controller of the Nintendo
>>> Switch.
>>>
>>> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
>>> Signed-off-by: azkali <a.ffcc7@gmail.com>
>>> Signed-off-by: Adam Jiang <chaoj@nvidia.com>
>>> Signed-off-by: CTCaer <ctcaer@gmail.com>
>>
>> These do not look like real identities. In this and previous patchset
>> your author emails bounces, so I propose to drop all stale addresses and
>> all anonymous entries.
> 
> I and the authors find that policy inacceptable, our work should be
> credited and our copyright should hold despite our choice of name.

Which authors? The ones who do not want to give real, working email? Or
the ones who do not want to provide known identity, which is required by
our submission process?


Best regards,
Krzysztof

