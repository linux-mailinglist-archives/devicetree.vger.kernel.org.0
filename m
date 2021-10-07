Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 652CB424F3A
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 10:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240722AbhJGIZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 04:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240721AbhJGIZm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 04:25:42 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF2CDC061746
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 01:23:48 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k7so16357516wrd.13
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 01:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xe+XRJeApLVn7A/vQhil5r3wZhwLCdq+ejWt2cjD2gA=;
        b=XWcAScmr6njF3YDdwtBuWNoW21XyoTU9jU89jfK0LpmzTFcU+O4TeqlEU4RhdIwjDz
         QBb7bdwJFX1tdJnNXSE8eoxIONmFpqfMdVo/jEOkWjQyoCGzVy/znhTluRcphckXNXWU
         4Ve8h0nZwQiNFTcJakBELhVFtPHosT75Ivbd3PfLUw7opjyC1f2lvUS70hkgd+Szw7z4
         dthOY9QyJyCtKve/dS3LEPYU1l1y4NyZThhSNQ66lnXfccJRMinALTx1lB4FFzAHQ77T
         djlPS4CYVesYL1D4Cc1PMQlXFqOcdk+zUi9q4t3FKuF4LzUAjqcXX6oK2ervT8R5BBCu
         kijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xe+XRJeApLVn7A/vQhil5r3wZhwLCdq+ejWt2cjD2gA=;
        b=7H9IUfp8KU59uCHkM39MCtlqh5Ll1hPWn+EGgjEfym3EwQaIq9hDPomKgdUsOhO1LY
         VdgjrUDAHPUUm3RdL9E6g7fAPHbv9d1ovt+xc9vrEDoW7ev8y1NWrdVW4dZdIr5TjGDs
         9sIMZzgRUKF7DGai/xLIzdhg3h64nZgv0xFVdwUJPOOUPYhOXREazPiwZpGF8Mw2+dNZ
         lhLeH3HVPPxIgHuZcx3SXFSQ8HPQ+gLId7kmpXKt7tp/Q1LisYQCbt4Tkqi31wS1sRT8
         vKFFgnQHc6J+spRh412hyKCSTi8SA631X9uNo3AtEQiGkRmsWGLmVquX7DJPPyinhsX6
         4VFg==
X-Gm-Message-State: AOAM5323ltEt4SqJtSpnY3WFA6AdOvCwdmsGcT/ep406PWAqfHx9YY+5
        SH6gK5zH8vTfPjtluLBmopODBA==
X-Google-Smtp-Source: ABdhPJz2laknS3HcVubqmystTFIi96a9XD2RFlG+VlYikPz8L6hf/dtomFr4mAZE0x1m+d/b3BjgqQ==
X-Received: by 2002:a5d:6d01:: with SMTP id e1mr3560205wrq.410.1633595027311;
        Thu, 07 Oct 2021 01:23:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id u17sm9211793wrw.85.2021.10.07.01.23.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 01:23:46 -0700 (PDT)
Subject: Re: [PATCH v9 08/17] ASoC: dt-bindings: add q6apm digital audio
 stream bindings
To:     Rob Herring <robh@kernel.org>
Cc:     lgirdwood@gmail.com, tiwai@suse.de, devicetree@vger.kernel.org,
        broonie@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, alsa-devel@alsa-project.org,
        perex@perex.cz, bjorn.andersson@linaro.org, bgoswami@codeaurora.org
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-9-srinivas.kandagatla@linaro.org>
 <1633547293.527218.2218062.nullmailer@robh.at.kernel.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <4e70e1e3-162e-13c0-5cbd-0135d2585e96@linaro.org>
Date:   Thu, 7 Oct 2021 09:23:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <1633547293.527218.2218062.nullmailer@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 06/10/2021 20:08, Rob Herring wrote:
> On Wed, 06 Oct 2021 12:39:41 +0100, Srinivas Kandagatla wrote:
>> On AudioReach audio Framework, Audio Streams (PCM/Compressed) are managed by
>> Q6APM(Audio Process Manager) service. This patch adds bindings for this DAIs
>> exposed by the DSP.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>   .../bindings/sound/qcom,q6apm-dai.yaml        | 53 +++++++++++++++++++
>>   1 file changed, 53 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6apm-dai.yaml
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/sound/qcom,q6apm-dai.example.dts:19:18: fatal error: dt-bindings/soc/qcom,gpr.h: No such file or directory
>     19 |         #include <dt-bindings/soc/qcom,gpr.h>

This is because QCOM SoC relevant non-audio patches in this series have 
been merged into the Qualcomm drivers-for-5.16 tree, as this series 
depends those patches an immutable tag is available at:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git 
tags/20210927135559.738-6-srinivas.kandagatla@linaro.org

which is mentioned in cover-letter.

--srni

>        |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/sound/qcom,q6apm-dai.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1441: dt_binding_check] Error 2
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/1537089
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit.
> 
