Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EF3A632458
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 14:52:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbiKUNwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 08:52:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbiKUNwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 08:52:41 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D69131D
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:52:40 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id g7so18945506lfv.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 05:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MFXoD9b7Lpf7iFRxgolfzLQRzqbJDNckDUwVKI2IQXM=;
        b=py3JyfJ1y9UjV35WDIRt8kHnmLrcdM7/OR26OFZNfEmNn71j1583xSj8cWXsSjlg3N
         3ldhZav+Pe9gd0Z/iUKOOkkAwooHjoxM4VyFeZYgK4r6cXHQzdEUGMA/1DsvBZho8rWK
         4yIeFFqU3bwfJNcguUPhOF0gllHNRDF9x+FBkk5/nSJ5IubfaJhXzsrEiaktbpfDa7vs
         5dBWzGpnaYMRCR7/5XYhXBuRn2frJuxIQxNd8RZ/Vt5a8HZj7zGXvkA5099cjFAhS7fb
         /Hp1lvDry7GHoxKdArHZFh5r5OEWNNH8vpKSEfuSSbkkbEU/+WRba0E+eo7Z5R+VEfC6
         x7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MFXoD9b7Lpf7iFRxgolfzLQRzqbJDNckDUwVKI2IQXM=;
        b=uHQ0Aa2gmVBIyq6qIID0v5mgfS7F7Wk3r35z41MpFtqkYjd6TN6lqZ7r7R5xvcJnz4
         CS4e3XegL4PAu2GjOopfBAE09bHhOGwG82vwaEn2cIvUvKqSx9O6VGx3f70ziDPzdFgt
         pJuSqzYE47jK+5ySEY2Lc+G64a6/OERZEEfXDLMCyD4pDBLbpRHyEG3JXaDgcT8gYWvz
         tjML50feoDZCglkMiozW/Uy4wcsALhrpl4X6mapSozVNjq3A+BMLMwSorY9CWCPo+3DD
         VHFqHs+3pnHz4eZpiWqyIupW4hf1vqcVcyTvTOtUhcyrNntYL+NwNTND8718KyFm419W
         IVhg==
X-Gm-Message-State: ANoB5plfPoI4OV2d9h41mXeKvK/mCPIgA8TThVkf3ZGqnUOWGTOi/NyZ
        5imA5ydzve0zTsTK7gbYKm13VSdExe6HX0v4
X-Google-Smtp-Source: AA0mqf6heDDugK0rluT8kIaUsHz3ASeN9ynsC9c9zw33Yi6qAb9PC4nu/sUOv1Ivy4dmxqoJL5fUPQ==
X-Received: by 2002:a05:6512:749:b0:4ae:d0fc:1bce with SMTP id c9-20020a056512074900b004aed0fc1bcemr5626608lfs.107.1669038758606;
        Mon, 21 Nov 2022 05:52:38 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h22-20020a05651c125600b00267232d0652sm1499545ljh.46.2022.11.21.05.52.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 05:52:37 -0800 (PST)
Message-ID: <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
Date:   Mon, 21 Nov 2022 14:52:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: Mixed types of values inside a single property
Content-Language: en-US
To:     Andy Shevchenko <andriy.shevchenko@intel.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 13:59, Andy Shevchenko wrote:
> 
> Hi, Rob and Krzysztof!
> 
> Today on SO one question [1] was popped up, and I, remembering a bit of
> the code of device properties in the Linux kernel, was a bit surprised of it
> in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
> that either.
> 
> Can the specification be a bit more clear about that? Or is it me and the OP of
> that question who missed something in the DT spec?
> 
> [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree

I saw question on Stackoverflow and I saw there answers, but what is the
question to us?

Best regards,
Krzysztof

