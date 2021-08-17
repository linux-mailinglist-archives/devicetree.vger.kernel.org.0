Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1B143EEE20
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 16:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237755AbhHQOIk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 10:08:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237333AbhHQOIj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 10:08:39 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD374C061796
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 07:08:06 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id q10so28869494wro.2
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 07:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LwZXL5qlhNLBlzkjTOIQtyOJvZvREuNgFJcPDQDxxhc=;
        b=BbNh6zzgmFtVZlTvAx3sT6hS+1LtuzPc8kPxA07enc7iUn/9SMhJW/6PBOIysXz75r
         8WWCHNHnIkPjz2WiBvBHgKfB4X6LnoH25wzYor0E9HlkY/eOO49W75vZFM6QLGywlNxV
         3Ee6sAiCHOEHLhsONWMZjNm3LlHku3vLV6O5dRnm9kXGpKMu5gSYhMtX+Rb+HGsRpJpa
         48EydxK8gL1porhSrCpzSWAAi9UMrf5MoebQD9J8+JxrO7pHqdOO3PP4XZjzUnkyWyCa
         nHTNWoysM1p7BPKP8LFRdtHsK95bMA7P+IfLKiyCPXpM4MR7CF0gaULznaoJLPlCwmd9
         aBxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LwZXL5qlhNLBlzkjTOIQtyOJvZvREuNgFJcPDQDxxhc=;
        b=ld5mYIP8YXAyQTcsnkAuqc8MnYm7g/bEbmu48jV1cFRiYhtX5EjkPDVP7g2hBXXJkN
         T7EkGk74JPjNVWgnDSmPqPpYfdhA6biLjXDVxST17guJ2iVNq6o4eSgG26QzDG7+Feyn
         5dYKm/LjCz+M6eAYDhkP7VQvLyJGRSeYyBnKctZCD7rnin7p6pmTJaiOHkzhlSHLJPN7
         wrsDURT6qpi7Quy1aAJBi5LFQCf8krKZqaLc/KSzP5Rsff/VAE/9G2IjyuyVHcZmWK94
         Xw9Mto/63s1gKNseWZJOnFRe4sN5je2ZMPp5xL2uj0l3DPUWQUQG8r+j2/Ni+IBk2loL
         4U1w==
X-Gm-Message-State: AOAM5335xxSB8l3/YJnE7kNH1nsDYu+aQearNBkr2KAI2y6awigOoucY
        xDqMlaBdzSyfpSt2unKUFCpuJggCmLEZu3nR
X-Google-Smtp-Source: ABdhPJy32UOxbp66QLFQZeq/5TOmmoiHdvDT6kv2+DPj7P2pygUgaGfLVGv3ywBxg2Qjxt45tmUOIw==
X-Received: by 2002:adf:ebd2:: with SMTP id v18mr4572330wrn.248.1629209285212;
        Tue, 17 Aug 2021 07:08:05 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:52c4:e6e5:cc9e:e70a? ([2a01:e34:ed2f:f020:52c4:e6e5:cc9e:e70a])
        by smtp.googlemail.com with ESMTPSA id k14sm2598406wri.46.2021.08.17.07.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:08:04 -0700 (PDT)
Subject: Re: [Patch v5 1/6] firmware: qcom_scm: Introduce SCM calls to access
 LMh
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Thara Gopinath <thara.gopinath@linaro.org>, agross@kernel.org,
        rui.zhang@intel.com, viresh.kumar@linaro.org, rjw@rjwysocki.net,
        robh+dt@kernel.org, steev@kali.org, tdas@codeaurora.org,
        mka@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20210809191605.3742979-1-thara.gopinath@linaro.org>
 <20210809191605.3742979-2-thara.gopinath@linaro.org>
 <19659756-4716-4c5b-949a-58d362dcee22@linaro.org>
 <YRvChF0j2NOsDuK3@builder.lan>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <d9b52f76-735d-bd5c-3957-6c0a3d7ab0b4@linaro.org>
Date:   Tue, 17 Aug 2021 16:08:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YRvChF0j2NOsDuK3@builder.lan>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2021 16:07, Bjorn Andersson wrote:
> On Tue 17 Aug 08:17 CDT 2021, Daniel Lezcano wrote:
> 
>> On 09/08/2021 21:15, Thara Gopinath wrote:
>>> Introduce SCM calls to access/configure limits management hardware(LMH).
>>>
>>> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>>> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
>>
>> Hi Bjorn, Andy,
>>
>> do you mind if I pick this patch along with patch 2/6 ?
>>
> 
> Please do!

Thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
