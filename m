Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99578562318
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:27:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236613AbiF3T1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:27:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236741AbiF3T13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:27:29 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FD4E42EED
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:27:28 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id fi2so40855003ejb.9
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=feCBs3SZp7swfaMlUVIaixS6lb9azkfUPXOLn8L7U8A=;
        b=aMGKhUPoRJzWDRYuTQbm/9jyUn+p8BPoZOJWBU3++bUqJqH0vW1slpEOm7yHfz9Sd4
         sxgvPMLp/Yz/VGa5y57bhZx7zt30oEwx1Jyh1wyceW1uQ6sgu6njRnyWiy4p/xbxRX5v
         heAA2d8+dzM3o7Nsj8Vfj5+08SwsUizGOCIpK89bExRclwnVZm2xBGlz5BPMzfha9Ma8
         rB3i0iP4Mq8jwYQ136rDpC1sWOEcFB7mnzOo7xXlr0xmJVD/qekuHwAAyb288UmUKcT6
         2ZMPB87DZgBWhF4Zc7NAlpv5CtxTmWxCT+xsg3/fdDcqzw11O+HMtvJRIyDVXNWs5wSG
         5ERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=feCBs3SZp7swfaMlUVIaixS6lb9azkfUPXOLn8L7U8A=;
        b=dzkLM54kvXcyez7q9ob3APzTQWs9LnL06zLMQOo5bnkPgCY637yq98e58zuXJmGxhh
         P7FvBisRDyY1LjFhTmjFXNTesZ+Wqp7x6W39aP3hMCwjC1biDETLIfOnjXsvZZ8jPcTG
         nKCF28Et/vtUuhgj2/m2QDSuokwSkZXLHx7V9pRALNtlis0P1E4AV7/PzPKUltx7jM3I
         NavhNF2z+NqPsWRWZ2j7e8PVvuaGq5MOCe3bvA54Sd70JWbnuc5pCFq3LwMrTh5F1fid
         NRqvcIPCP70BvSQp5kZu73MugymJY9jvsGKbvKhiOTUXIdbZn2iEiYPrXpvZ1tNPr6wI
         QeIg==
X-Gm-Message-State: AJIora+anTPZPQNNgDCePSiKIqPR6wx/+cEYzbaEj9DJmbd7IlXl4aYQ
        JEziBaootnF1ZRqcTU//Lz2o5g==
X-Google-Smtp-Source: AGRyM1uNlIf5G3X2BrYx8D1HZQ506BFUfDgJON3MXOC6l4sXTrpcRIRKPFWNdTESNlB1gMDmvXcXiQ==
X-Received: by 2002:a17:906:730f:b0:726:ca34:e605 with SMTP id di15-20020a170906730f00b00726ca34e605mr10704263ejc.347.1656617246777;
        Thu, 30 Jun 2022 12:27:26 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id z7-20020a1709063ac700b0072321c99b78sm9368874ejd.57.2022.06.30.12.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:27:26 -0700 (PDT)
Message-ID: <51cb7b8b-9616-35b1-cd34-e054dd98369c@linaro.org>
Date:   Thu, 30 Jun 2022 21:27:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ARM: dts: imx6qdl-ts7970: Fix ngpio typo and count
Content-Language: en-US
To:     kris@embeddedTS.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Mark Featherston <mark@embeddedTS.com>
References: <20220630182746.3813-1-kris@embeddedTS.com>
 <1654112f-839f-1de2-0f00-fbf501824d6d@linaro.org>
 <1656616263.4126.2.camel@embeddedTS.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1656616263.4126.2.camel@embeddedTS.com>
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

On 30/06/2022 21:11, Kris Bahnsen wrote:
> On Thu, 2022-06-30 at 20:56 +0200, Krzysztof Kozlowski wrote:
>> On 30/06/2022 20:27, Kris Bahnsen wrote:
>>> Device-tree incorrectly used "ngpio" which caused the driver to
>>> fallback to 32 ngpios.
>>>
>>> This platform has 62 GPIO registers.
>>>
>>> Signed-off-by: Kris Bahnsen <kris@embeddedTS.com>
>>> ---
>>
>>
>> Ah and one more - for some reason you did not send it to maintainers, so
>> patch will be most likely ignored. Please use scripts/get_maintainer.pl
>> to CC relevant people.
> 
> I reviewed that output and erred on the side of not generating
> too much noise and skipped folks/lists marked as general ARM/NXP
> maintainers. I'll be sure to send to all in the future.

For small patchsets usually entire output of get_maintainers.pl is
correct. What's worth to skip are the entries coming from history
(--no-git-fallback).

Best regards,
Krzysztof
