Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1B92403AA3
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 15:29:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349441AbhIHNbE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 09:31:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351778AbhIHNa6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 09:30:58 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDD5C061575
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 06:29:50 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id e26so1755799wmk.2
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 06:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dHfCdAU1MQvCrPLrk7KscWpwI3q8kBZ1zPpWHECDhYs=;
        b=nFRTs74Digh80FHfz8Qr8OkgCHKOu4FyizjPByn5YqNv/6/m9gPqpVBZa4tGESCFmP
         P6SDfF88xg0cGDiaMSzzDyuEU9jQZ3wdrczSR3OWu9Ak3FXZqu+KipUp65hsUXE63Ue+
         qAQxyd43p3jWxqYwMgQS5xVYYFBIUIfuOAHm4lkTNTrXQMErTc551Xl26NYu+D6FDFXJ
         Y1j0PLHWgeHsW3LZoioqJWrC6q5AzMAQuyO73RMrvuUeVSzfmyA3DAM00ouCjMRKH6zd
         ifIGVORMNYbE0WoVa3KkszHwz4a/BPe+vsQAHzCiwGSp9d1LOtzaTbe+XeZUKueZdpVf
         gP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dHfCdAU1MQvCrPLrk7KscWpwI3q8kBZ1zPpWHECDhYs=;
        b=qictA5dIyCLdk0m3gDt4mKOLmdFnn2axCIZ+vN9+OaAeqMDaod1zw5TWUaPhJsr2o2
         euQwlNZ5jz2NpbStQdLWMti6mrZajNRCy37R6LO5QXiSugucOvLCTloNjemiZAj6Wg8W
         vIyMCpIYZesU9a8bFcoh1aMAtpJuYsksTWMdd2qoRhru19nuboQawMM9+Cfdx7iREtbU
         Qdrmbs0euBpJIFUG2GBMiCiNjvihNbf9cc622FY9AFnKPK8D+Wzb9c9VRwbg8HrmdGnL
         Tn6o3CZEWDcWpGAikByoJCECKDzWIVNknCrXEt9H3xx0MVfEkFDeZ+3+RAx7w5ycAvTv
         nrKg==
X-Gm-Message-State: AOAM530QWVh6+XJ/MsFWaaaHNiK9+kMaPEixQPWYri9G0izL2CeocBwV
        qylI1GPBp7f+6RZJIjbYYIK4Lg==
X-Google-Smtp-Source: ABdhPJzGQbzQmhgvNAvccfKL0aUV19j9kOScHFcI7d/gDyLZINqfTFnRtFLo4tuzbQ53AV6XBIMV9Q==
X-Received: by 2002:a1c:7f84:: with SMTP id a126mr3624627wmd.33.1631107788964;
        Wed, 08 Sep 2021 06:29:48 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id z5sm2179670wmf.33.2021.09.08.06.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Sep 2021 06:29:48 -0700 (PDT)
Subject: Re: [PATCH v5 15/21] ASoC: qdsp6: audioreach: add q6apm support
To:     Mark Brown <broonie@kernel.org>
Cc:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, robh@kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-16-srinivas.kandagatla@linaro.org>
 <081e6734-a258-6d21-cf66-f00bfeb38b04@linux.intel.com>
 <b1cfacb4-70b9-7146-00d5-9d680297d900@linaro.org>
 <f8bd8b94-528d-bf6f-9e84-0e41e4c56382@linux.intel.com>
 <0840d2e3-c261-8d85-35ff-8388448ab7fc@linaro.org>
 <20210908122600.GD4112@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e2d534dd-56d5-5a66-e9aa-1d3049023aa6@linaro.org>
Date:   Wed, 8 Sep 2021 14:29:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210908122600.GD4112@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 08/09/2021 13:26, Mark Brown wrote:
> On Wed, Sep 08, 2021 at 12:28:05PM +0100, Srinivas Kandagatla wrote:
>> On 07/09/2021 16:04, Pierre-Louis Bossart wrote:
> 
>>>>>> +    spin_lock(&apm->lock);
>>>>>> +    idr_alloc(&apm->graph_idr, graph, graph_id,
>>>>>> +          graph_id + 1, GFP_ATOMIC);
>>>>>
>>>>> does this need to be ATOMIC?
>>>>
>>>> We are inside spinlock.
>>>
>>> but this is not used in an interrupt handler or anything that isn't in a
>>> process context, is it?
>>>
>> No, it is in process context only.
> 
> So why is it a spinlock then?
Only reason I ended-up with spin locks is because am guessing that busy 
loops in this case are not going to be for very long as its mostly 
dealing with idr resource.

On the other hand, I don't have any issues in moving this to mutex.

--srini
> 
