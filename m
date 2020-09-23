Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF3C4275645
	for <lists+devicetree@lfdr.de>; Wed, 23 Sep 2020 12:25:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726524AbgIWKZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Sep 2020 06:25:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726332AbgIWKZT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Sep 2020 06:25:19 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AB20C0613D1
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 03:25:19 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id w2so6575132wmi.1
        for <devicetree@vger.kernel.org>; Wed, 23 Sep 2020 03:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YH104ZB8OeVJHtVUQ2VvvA2q3T8sqPmsWx/W6gm8gTc=;
        b=eWmZU1Fq8Tc1IaKlqHtAEy9dUcRmePGKEvJS8oT6zKqB/wZLSXJa0DL/HcI8GyR0nP
         5Gt+7VFN7tp14qi1VGnjEnph2NXooLwr98Hf7DlvY93RIr1O54xNlICuFOHOVnU3T8Mr
         gTwiKcxmCZSJxl9N1q7BvnM5G3FKLByva6z1bhnFPqJsXVfLxVWhtfDiEulWrVB97DgG
         FPWbFzvdKa7hvr7zggy8luR90enD5G/zjcxCBEPcsDy+3DkngiIWD3PDi46wASBExqbD
         IaAlYagyuQXVtHZ50bsFohRl/ljMIOL63uKv7/2s7dS8REpXX1MGnwGmSyD+FLrqWNzM
         f/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YH104ZB8OeVJHtVUQ2VvvA2q3T8sqPmsWx/W6gm8gTc=;
        b=rOv/qohbvk/oiy+GjlavfehFKtA0B5+NBQciztWl2ZMg3hKY1AHhHgvBzL1XrT+H1V
         5oa+FUtgRZ2efp69tfQDR6XHZ8zfbQ+ppzZmKK6tOw+BNZXelM0JEmmPMnM62TtFkFs/
         iwg1eUmaWa3jq1Ioii8QvWpvel1q/VIAc+bg2VNHmJJiENGsNAGoDo+UYbA2YeaQ2MVF
         w8oDdJpIEqAYYl/d/Ygfa2m5fr6/fHR8BfRYX/6NfXhVth+Uj2bwDEW1RG8bh8XnbjFZ
         ix42fCMs15OyvAPzKQ8utcVEPbb8Jcr7sE/0q//HLMER/RGg6TBAX1AtE14P24CVclSU
         cXbA==
X-Gm-Message-State: AOAM531uSNjjgmbi5fGn0Eof0H8KYBzAGCQKYYiNb8Q7nmUZlmB8KcBI
        mTLPNAtB9DZsll3ACNZVqDwtZQ==
X-Google-Smtp-Source: ABdhPJyXK3Q6uDr6Rs3llAbf0QVsQzm36rlyPthGucBv/hXUeqfLWTOVYfszVqKmAZv7vOaIpQRz4g==
X-Received: by 2002:a05:600c:28d:: with SMTP id 13mr5602925wmk.69.1600856718141;
        Wed, 23 Sep 2020 03:25:18 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id r14sm29447423wrn.56.2020.09.23.03.25.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Sep 2020 03:25:17 -0700 (PDT)
Subject: Re: [PATCH 1/4] dt-bindings: clock: Add support for LPASS Audio Clock
 Controller
To:     Rob Herring <robh@kernel.org>
Cc:     sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, mturquette@baylibre.com,
        bjorn.andersson@linaro.org, linux-clk@vger.kernel.org
References: <20200917132850.7730-1-srinivas.kandagatla@linaro.org>
 <20200917132850.7730-2-srinivas.kandagatla@linaro.org>
 <20200918172917.GA3827183@bogus>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <7454ad51-edd7-4080-72b6-1d37858ba3ff@linaro.org>
Date:   Wed, 23 Sep 2020 11:25:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200918172917.GA3827183@bogus>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 18/09/2020 18:29, Rob Herring wrote:
> On Thu, 17 Sep 2020 14:28:47 +0100, Srinivas Kandagatla wrote:
>> Audio Clock controller is a block inside LPASS which controls
>> 2 Glitch free muxes to LPASS codec Macros.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../bindings/clock/qcom,audiocc-sm8250.yaml   | 58 +++++++++++++++++++
>>   .../clock/qcom,sm8250-lpass-audiocc.h         | 13 +++++
>>   2 files changed, 71 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
>>   create mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h
>>
> 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> Error: Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.example.dts:25.30-31 syntax error
> FATAL ERROR: Unable to parse input tree
> make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1366: dt_binding_check] Error 2
> 

Is this check done against linux-next?

or linux master?

I have rechecked this once again on next and I see no check failures.
Next has a patch [1] which adds defines in header file that are used in 
example! Possibly that is what is making the check fail!


thanks,
srini

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20200922&id=4e398353a7e51410c34fd19f8b7dfc56fff5901b


> 
> See https://patchwork.ozlabs.org/patch/1366127
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure dt-schema is up to date:
> 
> pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade
> 
> Please check and re-submit.
> 
