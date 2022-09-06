Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A01B85AF31B
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbiIFRuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:50:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbiIFRuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:50:13 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D7CD8A1D3
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:50:07 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id q7so18540133lfu.5
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=PlneHbhh81xts+BhwSSO/bVYfamT6d9aGmPbAoBs+Vc=;
        b=oU8zne1PuAsGYTK92vBce5Sl3SAp4gnqtlqz7Dnz5qyx2mq6rB1Acs2o9mrdyalbyo
         jdFajEVxePigd0oL58M2dpQ1B5CQvLRnDTOgjhXY4GNLRBSNuKDVaR20EluRS2JVviNt
         WgHpCuo6EMnyZb3UzD2wCPkw9xngn5Ena7wTzvWr/pkScoO2VdASwDZqc5OiSeJ9t7kQ
         yehgAdUkhNUNcT1/rhE5RL6xv4WCtfPs/oHdegVKj2sdbTLqnOqiiX9/kZ1EXA2UhrA4
         J9QW3ud3vgKmcGnqqjgzxBQpHYE66ejwuoI3s5+KWnWsHnwoxUZ5AUCLKc0uFtiavzqs
         wK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=PlneHbhh81xts+BhwSSO/bVYfamT6d9aGmPbAoBs+Vc=;
        b=37RtHep/MuMQJMyvuP317CZRZ57884mH/7b5ShU9M9OkACHTYpsGlRgVM8c9CseltJ
         lp+3tYyYYaf+RFG73rNPY8PS27exujEzmx2u5HOgZIoVYRxA88jbMjxejvgKc0u4v7HQ
         rYgq9FCvLs3bzVLFJaJwre5ECqsVkL0/C7wouaKCyq/hhlxaAR15emxU7ER0u0U7LKyA
         YD3FCuxwivlhIxq7vvhAWLopEwKf5byrtJVz58IG2tlEBPqCJM0YIjbVpdZMmok+7fGQ
         mWnNvYvx7S4owdN3a4bUiekiF4AM4SCtJYfRiDpE/ImY7ktpXhS9O0ZxDFGnKFpaaG0T
         Df/Q==
X-Gm-Message-State: ACgBeo3m88cNUqBGBolbIrwrrZmTwbc/+1rKoIklwGxzYEMurm03QOCH
        j5gLDXivxUsVs3S3ULO/42Ko5Q==
X-Google-Smtp-Source: AA6agR4eNuH4iEsDzOrIOC2WXOhHLUljsfP8KbsWI1cXvuZNk0fYC7d8Jv8zbKtdt4PMuM4bIeaD5g==
X-Received: by 2002:a05:6512:1507:b0:492:b9ae:5d51 with SMTP id bq7-20020a056512150700b00492b9ae5d51mr17554595lfb.14.1662486605258;
        Tue, 06 Sep 2022 10:50:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p1-20020a05651238c100b00492cfecf1c0sm1873604lft.245.2022.09.06.10.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 10:50:04 -0700 (PDT)
Message-ID: <68ff1b7e-51e1-f1e5-dac7-5419472e396a@linaro.org>
Date:   Tue, 6 Sep 2022 19:50:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 0/8] Support for NVDEC on Tegra234
Content-Language: en-US
To:     Mikko Perttunen <cyndis@kapsi.fi>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc:     Mikko Perttunen <mperttunen@nvidia.com>,
        Ashish Mhetre <amhetre@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220906132823.2390953-1-cyndis@kapsi.fi>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906132823.2390953-1-cyndis@kapsi.fi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 15:28, Mikko Perttunen wrote:
> From: Mikko Perttunen <mperttunen@nvidia.com>
> 
> Hi all,
> 
> this series adds support for the HW video decoder, NVDEC,
> on Tegra234 (Orin). The main change is a switch from Falcon
> to RISC-V for the internal microcontroller, which brings along
> a change in how the engine is booted. Otherwise it is backwards
> compatible with earlier versions.

You need to describe the dependencies, otherwise I would be free to go
with applying memory controllers part.

Best regards,
Krzysztof
