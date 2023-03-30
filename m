Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D055C6D12B7
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 01:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231371AbjC3XBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 19:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231336AbjC3XBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 19:01:00 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7885DDBE3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 16:00:59 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id br6so26563929lfb.11
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 16:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680217258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A6kuT6yMRhPANOcy+yitv1kvMjGcvYyKQpeqJZ7sFYY=;
        b=irqWVOstEEB8FLwfQsyPkDPxarLwczbE0LqOIgKwbTZDiQYOB4RChmvGieN9dfY3Hn
         SrTm9RhO5ryPBJpdOPnc7yrK5uecP6W3RUerUHAxZ/5Ta3ES63mDfBtu0BrWLILYxnoq
         mhGgqjTekbMcI7mctuzjJD/6qEaG1CemnIqqlcQjVHyMfiFpymD5xXsk/OZjjMUCMZaC
         T5gvpZbtSIiaQsTuSmVgum2ko7jurNNnsXr6rmIreiy54ergrh1q10hL9VQIWVhvFWh0
         LWpjKSZFOKJXy/p1YnbBXzGsnd+0oCAgmak/K18/rdhRYvE/IoHffbGEV17rs5G6LO8C
         4xHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680217258;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A6kuT6yMRhPANOcy+yitv1kvMjGcvYyKQpeqJZ7sFYY=;
        b=xh+O9a8TnH9D1Kt0hesOE4Td6DoZnFXUv6250orencAG7zAueZnvnEogYYCcLWH+pB
         Y4XIu14tJE8AM5df31MW9QR6XUqYQ6rsoL4AVwzv0BhbdNhWG6XrTY44iVFqDWd3ExAR
         /qegOtSl7QIfwk0oAIrd5cCZe4Rv8ok1DNnRFaieelNZqlltFzrzbHsU/Bu1EKJFWy6q
         VbNt/exSFC1GTEVIApG8WJH8hoZ1g+bTxJ0O8uS2aqJVmSOI2pzBTvMZ+PpZXoNCBeKN
         VTs7Ps1duAb792GUuw7cr9TbdM4iyK1DX5awVfaH5mxJRTmTQdd2MNH5/EYJ13mwXBXV
         17vA==
X-Gm-Message-State: AAQBX9ejLpK47GFVgI7w4Y9bpOuXrtnTtLjFOKbehANvwxlDcqHwuHvW
        X0xM4NCVQz4NDWJlYHnWsa9Yyg==
X-Google-Smtp-Source: AKy350Z5ZuTNud6AGEQZ9lRSS0iZaokhTOF68/eLPut58alI5pZKqX5nYSacIeg2lYmztgwZ62id6Q==
X-Received: by 2002:ac2:48a1:0:b0:4ea:9a49:99e4 with SMTP id u1-20020ac248a1000000b004ea9a4999e4mr6652314lfg.56.1680217257675;
        Thu, 30 Mar 2023 16:00:57 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id m14-20020a19520e000000b004cb1de3f487sm121752lfb.104.2023.03.30.16.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 16:00:57 -0700 (PDT)
Message-ID: <6f2c8609-0733-c1f6-210f-3d6f3d987c23@linaro.org>
Date:   Fri, 31 Mar 2023 01:00:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/4] dt-bindings: usb: gpio-sbu-mux: Add OnSemi NB7VPQ904M
 mux
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20230321-topic-sagami_dp-v1-0-340c8bce4276@linaro.org>
 <20230321-topic-sagami_dp-v1-1-340c8bce4276@linaro.org>
 <20230330153116.GA2181381-robh@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230330153116.GA2181381-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30.03.2023 17:31, Rob Herring wrote:
> On Tue, Mar 21, 2023 at 11:12:28PM +0100, Konrad Dybcio wrote:
>> The OnSemi NB7VPQ904M Type-C DP altmode redriver provides SBU signals
>> that can be used in with the gpio-sbu-mux driver. Document it.
>>
>> Note that the -mux suffix is there to indicate that the gpio-sbu-mux
>> driver interacts with the mux part of this otherwise quite sophisticated
>> chip, leaving the "onnn,nb7vpq904m" compatible free for when a proper
>> driver taking care of all of the chip's capabilities is introduced.
> 
> You should define a proper and complete binding. If you want to bind the 
> gpio-sbu-mux driver to it now until you have a proper driver then that's 
> fine. When you have such a driver, then you drop the compatible from the 
> gpio-sbu-mux driver.
Okay, that makes perfect sense and is good to know. Perhaps even worth
documenting somewhere.

I think I'll delay resending this and get an "actual" driver going.

Konrad
> 
> Note that having the fallback "gpio-sbu-mux" is somewhat problematic 
> because the kernel has no mechanism to ensure you bind the most specific 
> driver. For that to happen, it would have to support (automatically) 
> unbinding one driver and binding to the more specific driver since one 
> driver could be built-in and the other a module.
> 
> Rob
