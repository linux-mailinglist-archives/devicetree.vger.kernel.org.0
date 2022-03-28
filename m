Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B6A84E9D3C
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 19:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244531AbiC1RS1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 13:18:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244523AbiC1RS1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 13:18:27 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAF0F6210F
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 10:16:45 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id bi12so30141296ejb.3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 10:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=T/+x5VpPJ7QLm43SsL5WVchw6Hk5lFlDqtEMZZRXdAw=;
        b=tnv2I3sJnt9P4shxPZks6Awb7xKTNAaVVzkvtSPNn11Eo9q8xy1EH3zPgu9aSofBYh
         YfSc3jSne+KcczprZmny5dXFpuvWnqLmijCQ1xDhimjrzcD9+BKJ6QFsTdzbPHksO8DJ
         nphyUv7MkP0pqSLKCkxa9vCkjDs5m5hlcxtImQLmK107A0RMUA+Zr6ShNR7NQT404FuL
         v4Co5wmO1bpG67+Rqh3kq24HXyowT5hd5VAeSY5OY7NhqUvIGGJ4QxdWJokgHnSK1a59
         8DzWnySwNjd7+joK5pobvPaQ/iXjzA/u4HBfMgjZv7r2IMwm1nIAnOZzUIKZML1ufYzi
         JuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T/+x5VpPJ7QLm43SsL5WVchw6Hk5lFlDqtEMZZRXdAw=;
        b=aWK2Krp2pooqCeVLUZREe+vwr4VMwD3qePQ2FTJGJBCli2uoett6AUAWcjWD26QldW
         B8JfTILVM1tB1gRFg0HNi4fxDso0ZM19FuncXtCzuyIVuWUDknnAusbid8Ny8viRs6p8
         M/Rkhx0m8a6b8BHLqRPC59gMQIp+C6JVlPasvZEd/Ulr/SWH7g42hn+b7Nc/G5+nALix
         NzR/j5NyNz3l/+SEKBnboaWfDYFRbVFwEsT49mZrAstrBnNuB7ZqMA4LqyETC7XrCVnY
         0sa2Xp6NiOR6L2hfVMDShHBhuqEOv7DJg5SFNxSdP5XcX662TKMz/J4R9PNv929I6dBl
         1vAw==
X-Gm-Message-State: AOAM531EyFVHcf0fjLFMF7VpSewxplnUDgbjxWjnJWI2zSuLBI/BtlfR
        dk0MF7Q/l9j4Q1See+ZSH6T2Og==
X-Google-Smtp-Source: ABdhPJxq3kmLfp2xsm583j+YyKQFEVnIjTN7dkIeVm3QtFs5iM0ClGpb2KO/nkDh5XzG8ycIh7mmLg==
X-Received: by 2002:a17:907:72c4:b0:6df:917c:df6f with SMTP id du4-20020a17090772c400b006df917cdf6fmr29151235ejc.120.1648487804489;
        Mon, 28 Mar 2022 10:16:44 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id a102-20020a509eef000000b0041614c8f79asm7133642edf.88.2022.03.28.10.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 10:16:44 -0700 (PDT)
Message-ID: <3f5c5ff5-8ae6-6c05-15fb-35b13259be4d@linaro.org>
Date:   Mon, 28 Mar 2022 19:16:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sm8250: move sound node out of soc
Content-Language: en-US
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220328143035.519909-1-vkoul@kernel.org>
 <20220328143035.519909-5-vkoul@kernel.org>
 <3cc9c1a0-45f3-cb1b-1991-f51da4789afd@linaro.org> <YkHs5TuYBKmOLrHO@matsya>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YkHs5TuYBKmOLrHO@matsya>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2022 19:14, Vinod Koul wrote:
> On 28-03-22, 17:14, Krzysztof Kozlowski wrote:
>> On 28/03/2022 16:30, Vinod Koul wrote:
>>> The soc node expects all the nodes to have unit addresses. The sound
>>> node does not have that which causes warnings:
>>>
>>> arch/arm64/boot/dts/qcom/sm8250.dtsi:2806.16-2807.5:
>>> Warning (simple_bus_reg): /soc@0/sound: missing or empty reg/ranges property
>>>
>>> Move sound node out of soc to fix this
>>>
>>> Signed-off-by: Vinod Koul <vkoul@kernel.org>
>>> ---
>>>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 +++---
>>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>>
>>
>> I don't know the SM8250, but usually the sound node (e.g. containing
>> audio-codec) is not part of SoC. I propose to remove it entirely from
>> DTSI and define in same place in each DTS. It makes more sense logically
>> in such case - one clearly see which board defines the sounds, which
>> does not.
> 
> Most of our boards have sound, should we duplicate it in all the
> boards..? Bjorn..?

It's anyway empty here, so not much of saving lines f code...


Best regards,
Krzysztof
