Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDAFF41AAEF
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 10:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239681AbhI1ItS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 04:49:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239679AbhI1ItS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 04:49:18 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC35C061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:47:39 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id k7so4742710wrd.13
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 01:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Q8rK5Dzb/jMqPaX3ORZJ7Av9oZsLsOp10vNNKPPKavE=;
        b=XD4/CFuELn/pGviHeMZrg8f6WwcT+vcqpMlExj9sWsdhMMldH3+DpuN/9v0/nf3cvM
         graq3mXm/LtQrdwKccXXRN5yXRT1b8c2XwiAapUS9pe8FzZGgBX/ng9uxpn/FMcew6yD
         5sBMcmQuLCZN+01awN06tuPC7j/g73j/UlD7YhnjcZcwxAXDXbXMno60iPm4sNlJik8J
         +upVS/lMTguZn5QQ/vxloORLXflgJHQ9rkMN9UxnN5F59PPx+LxADbKHHo18GB+0fQ+V
         LiL1yQZPn84JPqRHn9k9AFNxReq1uWtyM7bQJjv171oIiGKNBTUkOPNPre3jUeo7SqJN
         6xLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Q8rK5Dzb/jMqPaX3ORZJ7Av9oZsLsOp10vNNKPPKavE=;
        b=lDohaTJ1rBJ5yCNvU1GjUOt4hArvonAl9ZN3O9vOusQzkx+k0JPxCgXzgYiCcy5ppY
         NBgRWxFutbKTro+1op9X1zwIeCbEnLjPd4Zi1pcxsPvcHIgmdGo3ySCn0VCrjBB5qUKa
         UTi4K5V18C+IoMr7eCWSnmH8KrtfYxFI9DffuFkkjM/2GXqg1D3zNm2TYItmB5SrL2iU
         tlvzu2xnm+FP65mzJQA/2R9HJ3wuIU7rJlsmVWPtXS/NjijQzKSeuulrtGg/Hio2+9Gc
         uPkSgXde9cxjzE6vGUadHK5W7umx2ohtfkbFU7YFK+ENcurX3lS5VeRSJPGevhMoJjOu
         Mykw==
X-Gm-Message-State: AOAM532GCgy3XijjMAGVG/tvIFqlBb++Q7B8lAmXiF2iYDhDi1AQLFVj
        MPc7df4uKmWLZTh4xOJJkOkwfg==
X-Google-Smtp-Source: ABdhPJxKnmR/HAxZsSb7dX5Tvj9qxkte5BVwAOsfFoeXcWJLtn7wmSjh9ilmVUjnW/uWoa0Y3zkqHQ==
X-Received: by 2002:a05:6000:1562:: with SMTP id 2mr5029099wrz.36.1632818857757;
        Tue, 28 Sep 2021 01:47:37 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id e5sm18973300wrd.1.2021.09.28.01.47.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 01:47:37 -0700 (PDT)
Subject: Re: (subset) [PATCH v8 00/22] ASoC: qcom: Add AudioReach support
To:     Bjorn Andersson <bjorn.andersson@linaro.org>, robh@kernel.org,
        broonie@kernel.org
Cc:     tiwai@suse.de, perex@perex.cz, lgirdwood@gmail.com,
        bgoswami@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        devicetree@vger.kernel.org, plai@codeaurora.org,
        alsa-devel@alsa-project.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <163279918313.1542640.4435970499489136227.b4-ty@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <56734892-26f8-dd29-ac87-5f270332c399@linaro.org>
Date:   Tue, 28 Sep 2021 09:47:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <163279918313.1542640.4435970499489136227.b4-ty@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bjorn,

On 28/09/2021 04:20, Bjorn Andersson wrote:
> On Mon, 27 Sep 2021 14:55:37 +0100, Srinivas Kandagatla wrote:
>> Many thanks for reviewing v7 This version addresses all the comments
>> raised as part of v8 review.
>>
>> This patchset adds ASoC driver support to configure signal processing
>> framework ("AudioReach") which is integral part of Qualcomm next
>> generation audio SDK and will be deployed on upcoming Qualcomm chipsets.
>> It makes use of ASoC Topology to load graphs on to the DSP which is then
>> managed by APM (Audio Processing Manager) service to prepare/start/stop.
>>
>> [...]
> 
> Applied, thanks!
> 
> [01/22] soc: dt-bindings: qcom: apr: convert to yaml
>          commit: 985f62a9a13175217978a797cd8f1f26216b2c87
> [02/22] soc: dt-bindings: qcom: apr: deprecate qcom,apr-domain property
>          commit: 1ff63d5465d0b0bf4e69562096b2d3ec9ff1a116
> [03/22] soc: qcom: apr: make code more reuseable
>          commit: 99139b80c1b3d73026ed8be2de42c52e2976ab64
> [04/22] soc: dt-bindings: qcom: add gpr bindings
>          commit: 974c6faf7667e551d202712470ca210c14ca249d
> [05/22] soc: qcom: apr: Add GPR support
>          commit: ec1471a898cca38af6b8956a83ebc1297214546f
> 
Just in case you missed, rest of the series depend on some of the GRP 
apis in these patches.

Am not sure how Mark would prefer to take the rest of series.

--srini

> Best regards,
> 
