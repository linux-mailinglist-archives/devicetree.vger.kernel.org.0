Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 395FE4146E8
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 12:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235062AbhIVKqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 06:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234825AbhIVKqJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 06:46:09 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A64C0C061756
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:44:39 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id h17so8178053edj.6
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 03:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SRZe8k0LGBc2OCz5mUOFuCLcs/67FvV5YwUhYh6HZsY=;
        b=t34hOung2S1fBFw2y0C+HzTILfa9+D3PuKk49e8Rg1fiY7/Eo1SzEwPGGRkIcORkCo
         phwf5Rco0afwLIs+24MBEjrfmveTrKsT1lomUz1Zo688saC1wS6cKZUTV/olAW8btIdc
         tyJGMyHqAgLaVQKGjtrwrDq2mxyfFjRnIr+ecPUjyKOKsAsQbW4MiIjOiM03msZR3S4V
         RjEEaJJmX01AaWnXedAZpVAxZtZh3JEUMmdcxh0xoWyq1G9HWeJQTim/WhhNewU0igEP
         W37d9Y/DBVNGcQx0eHl5f4qBGXxOGgOBqUiSl4XO+mb9uilmQDcufZgDPQ8kwwnxu7z+
         OmlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SRZe8k0LGBc2OCz5mUOFuCLcs/67FvV5YwUhYh6HZsY=;
        b=Wa7/itAJdYQzPRUB7E5Kj/qqQkXXHhW9v6lSajGkL6UbJKnsdUfMp/rOgKmIXc8ACG
         tRlSzMshIZIQn2Fv/FEakTvsaQTZOsyTSJ21aNvtipDgnNLsJE1/Go+h2rvuyscwjaok
         4THSu3Qd50B+HOeRz3creezUXgbYN5pz9rzZP5fyXFjbDI5yYV2eCLFBjn9db5LTuDqI
         mSoljxKUqJ0R5wROofB+HOdAYAknxvTBLXXlBM9uAjrl2waZA+N0p6e6l1fCtWLGHc9E
         713JQ8cLryDGJ6Ug88R+3ha5dYgFBgj6IEEIZHsc6uNV+ryq25Rp52hYiqP+qYQDOnB8
         NwYg==
X-Gm-Message-State: AOAM531JUlVhDUEAoUe9dlOLZdtMjp2EqeTpjvOuW6eMiV1/+w1e80kw
        FDRR6A0i+YU4R4thTNO0ryo5ylJx/2Ollw==
X-Google-Smtp-Source: ABdhPJyrnf9oxDk/Jpd9Qw9wJ83DmUFtKnm6bOi+SK7z52FeNh+F8+hfmm6KHPXdqx0GZcpt12A5Dg==
X-Received: by 2002:a17:907:7755:: with SMTP id kx21mr39884947ejc.463.1632307478313;
        Wed, 22 Sep 2021 03:44:38 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id di4sm1023113edb.34.2021.09.22.03.44.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 03:44:37 -0700 (PDT)
Subject: Re: [PATCH v7 09/22] ASoC: qdsp6: q6afe-dai: move lpass audio ports
 to common file
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
 <20210921133709.4973-10-srinivas.kandagatla@linaro.org>
 <767aebb5-9aa2-8d6c-2569-eaa03f47379f@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <3c8e3a24-10e2-c9cb-01ae-498220f234b3@linaro.org>
Date:   Wed, 22 Sep 2021 11:44:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <767aebb5-9aa2-8d6c-2569-eaa03f47379f@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21/09/2021 17:51, Pierre-Louis Bossart wrote:
> 
> 
> On 9/21/21 8:36 AM, Srinivas Kandagatla wrote:
>> Various Q6DSP frameworks will use LPASS Audio IP, so move all the hardware
>> specific details to a common file so that they could be reused across
>> multiple Q6DSP frameworks.
>>
>> In this case all the audio ports definations can be moved to a common file
> 
> definitions
done.
> 
>> so that AudioReach and Elite Framework can reuse this.
> 
> What is 'Elite'? It's the only mention of this framework in this entire
> series. It was present in previous versions, I just noticed this today.

Elite is Signal Processing framework name that is used on older Qualcomm 
SoCs.

May be I should just remove that last line from commit log to make it 
consistent across all such patches.



--srini

> 
