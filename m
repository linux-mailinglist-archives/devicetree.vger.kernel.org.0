Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EAF00351CC5
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236202AbhDASVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 14:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239239AbhDASPu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 14:15:50 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 103F5C031158
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 09:49:49 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id b7so3887857ejv.1
        for <devicetree@vger.kernel.org>; Thu, 01 Apr 2021 09:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZITJn9OwOFdWnyw6/5K8hXI6be2iHs737Z1KKpoKKTI=;
        b=RBWZRmBRgVRFL5dFTOkdMQ1amg4cZOhsWLoORTkHUV3924VD5q/OAsOJes34QFkgXc
         pCW2Ckhu1f+1u5WYI86oBJSnZBu6qxA64D4gQ19nMWvjafrJQvgWHB4D5rtdaLoWbRSE
         2A6aiCrnSc69/8pwpVGjCRS7YPjkNP65/5VyD88Qh+Jwj1EX4Cp1730m43LughZTty46
         1yzzGN0462AQTyj3rxtDzM4/6ZKKdBS2UQUhoPCEHDLwbYNC0q4Eo0JZw+FsqxgHwtNp
         KFbRo7rRXfHjmRxOYWmj1ybPOPWfRTBrfKjoDOLktq2Tba3yeiQRlFSxvFk/GGsm4ilq
         0h3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZITJn9OwOFdWnyw6/5K8hXI6be2iHs737Z1KKpoKKTI=;
        b=FrHGbH3jFV749n932dGNfkE/i0fvkzqTIFqaZUYiTLSa9IBjeYFzXqgP+oGs57ShmZ
         QbePmlZ4GZycU6gpx+arnIn+4FmoEL5JwAkRUpTy/nH1zg4YN5OewhuA5EvInf9TI4W2
         S9OB35JMRUbpU80yHDUbgCkNGFNtUes13GB2V7n6hdh4mdDKqiX1d6VkDSp/gaLSNwa9
         GTdxRGXPStW5dLWB+6LoxsFKgkVOkDokHRjGm+6cteDT2VjzSzcUJ1QAJcjpajhqNZ7a
         ysX+aHxVGOJsI/AWdVXWli3KZFDfVjQQZUyPLC09lcphVrMLTfpwcnsTEhXEaHFfOBvz
         Sotg==
X-Gm-Message-State: AOAM533gT6wnK614NLColO+dE7hi565INvELndwhxVin15oBTTX6rKBb
        sArbMQ9pFEaQACpfzpJqDlZVvA==
X-Google-Smtp-Source: ABdhPJwX4MhXvSaIufRpbKrM41cxH8YiLeSdEhYocoua6E1USCwXSegShln1t3assMXdbLazajeadQ==
X-Received: by 2002:a17:906:5383:: with SMTP id g3mr10148080ejo.185.1617295787833;
        Thu, 01 Apr 2021 09:49:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id j25sm3800692edy.9.2021.04.01.09.49.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:49:47 -0700 (PDT)
Subject: Re: [PATCH v2] soundwire: qcom: wait for fifo space to be available
 before read/write
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        vkoul@kernel.org
Cc:     robh@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sanyog.r.kale@intel.com, yung-chuan.liao@linux.intel.com
References: <20210401090058.24041-1-srinivas.kandagatla@linaro.org>
 <e1bcc85d-b583-2c9a-18e5-634994cc2916@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <41911806-e4ce-44e2-d187-a1a27406ed34@linaro.org>
Date:   Thu, 1 Apr 2021 17:49:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e1bcc85d-b583-2c9a-18e5-634994cc2916@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 01/04/2021 15:36, Pierre-Louis Bossart wrote:
> 
> 
> On 4/1/21 4:00 AM, Srinivas Kandagatla wrote:
>> If we write registers very fast we can endup in a situation where some
>> of the writes will be dropped without any notice.
>>
>> So wait for the fifo space to be available before reading/writing the
>> soundwire registers.
> 
> Out of curiosity, do you actually need to do a check in the read case as 
> well?

Yes, This is just to make sure the read command is finished and fifo is 
ready with data.

If not we will be reading quickly an empty fifo!

> 
> The commit message talks about writes getting dropped, is the opposite 
> also a problem?

Its highly likely, for safety I have added support for both write and 
read waits in this patch.


--srini
> 
