Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B159694145
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:33:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbjBMJdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:33:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230319AbjBMJdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:33:12 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5BBD193D8
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:31:28 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id n33so2222525wms.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V/JPD/HGFlcGY8pIBqzAr6hXkdmNjgye2Jc6JXxETJo=;
        b=bFObU7jMb43E4r2kfQbGn//VMigCYiTVobtSUGjoUzlrxyjRvcTBsDbi3EmACqqLL/
         /2pTJEm35swfMuXODC0abe7SHHOpbktZu1PBVMqXkXr4j3RwvHibyy7roVtu9nCIG2WU
         bo7eTnvAo3cNl8wwriafJtx5pbko5p4PXV3imfXfFKo+mbg8BLBc30URsyxxi9lz+FEF
         4uDCVNhpljbycR/HqVAefHEYq1cE8zWBQ1rMBC/QS3cBbY7hCxVx2dt13IYRW3EbfqYY
         dcHuqU7ziwD4e4pKeaHkGM5c7G7aRmObe/hqDKy1PHOBkayVLgzgRV9cv4nnFtDiV/iM
         tNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V/JPD/HGFlcGY8pIBqzAr6hXkdmNjgye2Jc6JXxETJo=;
        b=E3GaYUFw2izv8H6fLGpkXllBeTDD/7H/fXZ2yY2FePosul61TruXfD4aIA6nmv2ddh
         s96VYweONWXCmKuvOCCc1lcSRp8kP8aYO9g4H6hUDUFHMldpFe86qoUGTMMFdYOgvS9W
         inUusWVzQQua+VAV0vaWNxEz7S1i1xDcefPJ9rRggqzaKE0jKV3XbMX//97EBzJZ+hMT
         g4HKY/ycCRo+f0eCNR5w5xhpffTnoW+5e0ia6NM4+Kiy9V0lBr3j91FbjL4rLaco1e4Q
         VYWdcB5WFha/ieYiyLRyX30y54RphNR6Qe4CCRL5UIMGCUB9ooimmdgIHcksXWX1DrKF
         8hFA==
X-Gm-Message-State: AO0yUKXzriSjoQofhRPxoJRPXjlykSOxISpAcB5ikx3xEIc17HMypuNC
        JAFJGGiipCR3wo5yCb6zCqP5Qg==
X-Google-Smtp-Source: AK7set/3O02tVN540fg79wkPY7NmAj6IESdePQro8rPLH2jh2lj8EcwtxFSfvBKV4Q2GWJGTPLok4A==
X-Received: by 2002:a05:600c:319a:b0:3e0:6c4:6a38 with SMTP id s26-20020a05600c319a00b003e006c46a38mr17604539wmp.33.1676280685520;
        Mon, 13 Feb 2023 01:31:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s10-20020adff80a000000b002c54c7b9c78sm7205100wrp.76.2023.02.13.01.31.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 01:31:25 -0800 (PST)
Message-ID: <1ab0b28d-8935-4e4c-ba8a-635de1f5bb8d@linaro.org>
Date:   Mon, 13 Feb 2023 10:31:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/3] dts: ast2600: Add reset config for I3C
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1676267865.git.jk@codeconstruct.com.au>
 <f426c3a22d64d076b007a0fc75dc95a389a9387f.1676267865.git.jk@codeconstruct.com.au>
 <4eed8885-a149-43b1-f6f6-f9b7fbb2f3b4@linaro.org>
 <40269fdbc75a149a37e8a44f62cb3a6102f61d8a.camel@codeconstruct.com.au>
 <2a3f5c20-3bfb-c1b8-f9df-d1908022509d@linaro.org>
 <34b2ebb4781c6157496012efce392743e1821c8a.camel@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <34b2ebb4781c6157496012efce392743e1821c8a.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 10:23, Jeremy Kerr wrote:
> Hi Krzysztof,
> 
>> There was clk already, wasn't it? What do you want to change?
>> I asked why do you call it in the same patchset aspeed and as2600?
> 
> There was "clk" and "dts",

In patch 1 and 2? Please point me.

> where the latter should have probably been either
> also "clk" or "dt-bindings".

Aren't you referring to some other comment now?

> 
> I'll unify the "aspeed" to "ast2600".
> 
> Cheers,
> 
> 
> Jeremy

Best regards,
Krzysztof

