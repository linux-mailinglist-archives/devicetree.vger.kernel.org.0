Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1F3333F52
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 14:38:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234001AbhCJNdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 08:33:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234300AbhCJNcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 08:32:54 -0500
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7FF5C061760
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 05:32:53 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id m186so97204qke.12
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 05:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e5fjltDnBfAqnsxFSrinxxrmQWKIftTB/3C3cSfdklM=;
        b=sf1/cdgdKge7QLGVyzepeIFJl3wnkBfHoW5xh8d44j9SgupeyeQmGpzwPEAMzIyZ3p
         9ctZKh+XfNw6DbaK+Zd/vifYJKBCGZ69QNByu7UoLm3cO0fcnpXUuCaknGkdVQlXBEVQ
         p7HZQIJ4ui1vuaB1BxCseZN0Xo9C8kmPmqhwNyPaUej08DKet4WfhtCgynv1twIA5ax0
         853XsjbtmnNYIlQPSKYWJAxlYl789/0RY8jry3LiOx+ewpKOIkcr0bgn5f220d8cinaU
         ZL08lFu3hfkWQ+kW40a0yPlBOTn5qLulqyKBKh2llN2hGi2Vw96cEBG+8IDDLCqTPjLZ
         jDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e5fjltDnBfAqnsxFSrinxxrmQWKIftTB/3C3cSfdklM=;
        b=Djy3QpF+jNsujSfBXapWvS7QCPurvTkdVXWod5s+dgO8LAR0W8KQuzX/O+AuL0mzPU
         9ce+YrHiCmWh8D6TucSYI0E4V/NIXgTGbOnVeuIIkEKfrdUb244UmJZMlYiDAn9YcyH6
         kQM3OPGojJfbD/NMneIQXguAEaOBNP2bT7YRDgX7rvVIqLh1Uj4Q20KU3OkrXx/dcCIk
         f+2nlezYwYVkt6YpN0a7g0hVGgzQOwcuqy9LdMNIPMfu41OMhNEJonztPYVqLcfsGo+E
         tijsYQN8q/eqK/MBq5Tk8sIM2HxSnXKXNRd/0PSN4Ps2Jm+BGR8KD/8dtKnc5y2pE1Wi
         +vBw==
X-Gm-Message-State: AOAM530FkCxCRHaWAH+aaejU03aJDAZwnqSVEO7uIT3ybJXKrAo4fHMU
        s8LzIM8wWthZpnr7a1+OuvZViw==
X-Google-Smtp-Source: ABdhPJz+7l9MQT7QhmhNYxev+DuVXZBqIAdp1veJ+jJRJJP3mD7NFQQT0uC4SCiV3DjHn6OYKm8CIg==
X-Received: by 2002:a37:51c1:: with SMTP id f184mr2597720qkb.185.1615383173207;
        Wed, 10 Mar 2021 05:32:53 -0800 (PST)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id w13sm12170394qtv.37.2021.03.10.05.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 05:32:52 -0800 (PST)
Subject: Re: [PATCH v10 0/8] Add support for ipq8064 tsens
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Ansuel Smith <ansuelsmth@gmail.com>,
        Amit Kucheria <amitk@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210217194011.22649-1-ansuelsmth@gmail.com>
 <f0ab094e-440d-993c-6618-bf80fd05d484@linaro.org>
From:   Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <44c7919c-0ed4-abba-21e0-226bb553aad3@linaro.org>
Date:   Wed, 10 Mar 2021 08:32:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f0ab094e-440d-993c-6618-bf80fd05d484@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/10/21 7:19 AM, Daniel Lezcano wrote:
> 
> Hi Ansuel,
> 
> On 17/02/2021 20:40, Ansuel Smith wrote:
>> This patchset convert msm8960 to reg_filed, use int_common instead
>> of a custom function and fix wrong tsens get_temp function for msm8960.
>> Ipq8064 SoCs tsens driver is based on 8960 tsens driver. Ipq8064 needs
>> to be registered as a gcc child as the tsens regs on this platform are
>> shared with the controller.
>> This is based on work and code here
>> https://git.linaro.org/people/amit.kucheria/kernel.git/log/?h=wrk3/tsens-8960-breakage
> 
> I don't have major concerns with the series except there is no comment
> from the maintainer / reviewer of the sensor.
> 
> Given it is based on Amit's work, I can assume they are correct.
> 
> I added Thara in Cc hoping she has time to review the changes. If nobody
> complains with the series, I'll merge them in the next days

Hi Ansuel/Daniel,

Just wanted to let you know that I have started looking into this and 
review this within next week or two.

> 
> Thanks
> 
>    -- Daniel
> 
> 

-- 
Warm Regards
Thara
