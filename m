Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7599B117372
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 19:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726665AbfLISFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 13:05:15 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42566 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726265AbfLISFP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Dec 2019 13:05:15 -0500
Received: by mail-wr1-f65.google.com with SMTP id a15so17218719wrf.9
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2019 10:05:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PsHv5fymJvkU+szxE1Dk347Ie2ZopJzFsAKK0iwXJSU=;
        b=X/+NOlSVargVBjv5iiZhzf+X/QXFb+2dH6dwXxg7mOancVIVlLEGwkvRq8FPxUWbAv
         qIMRSX3vFkeiQTx5hvwf7Y2FbBipX9DJONwiJeY5SgwCt9wvOuOkOYU0sn3lZwAU3g4C
         /6nCJ/Kdl8r+Nkt7ULCqJWkxIX+dJjpfzakPs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PsHv5fymJvkU+szxE1Dk347Ie2ZopJzFsAKK0iwXJSU=;
        b=ZxKE05hFaZJOOZOZkr4fRNtHXPaaR/HQsEl8U/UyTirkYwKwOK3SWkIiZQQaYUHT7H
         tZMSULqNdOwSigUhW7IMMsz6S32i3yFru0mINcaoIncMDXlMdEXDo9D5OgL6DKQiOPFh
         vn95T3bkpSfC4KpEGSaYvgnmHgx5ZLAq0hNMXb1+SWHZ3ImBiNFNjhb/RvpRdKxzFxOD
         LfDRCykFnd6kVxHl9T/kJMJdNvAsN1MqFl0vWEUS6I8hFXk+FzHAJluIZLlIXilcjqe/
         6Pv1oEKDdEnoaDZpadc/lDQkbwyYZj6KTbORTikRiWkeRnkchH1mr3UFR72c7jsogTyC
         3s5Q==
X-Gm-Message-State: APjAAAXWWI5l9aMXJlbtVY9+hv+/q3IRZsKzd1VDsmfKNj+JYDpfQP/T
        SSak/CODvmRbTsW6AlJPMX1UNA==
X-Google-Smtp-Source: APXvYqxD5gfoyqhQNHRgLQJ8wGomGYCrgHzVGc6oHdP95D6tB035C/zGfyJdVaSPc5CyShT9JbvBnw==
X-Received: by 2002:adf:e5cb:: with SMTP id a11mr3448595wrn.28.1575914712900;
        Mon, 09 Dec 2019 10:05:12 -0800 (PST)
Received: from rj-aorus.ric.broadcom.com ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id c2sm268787wrp.46.2019.12.09.10.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 10:05:11 -0800 (PST)
Subject: Re: [PATCH 2/2] soc: bcm: iproc: Add Broadcom iProc IDM driver
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
References: <20191202233127.31160-1-ray.jui@broadcom.com>
 <20191202233127.31160-3-ray.jui@broadcom.com>
 <955f1d22-a1df-377a-1ed9-7fdaa4309b33@gmail.com>
 <d4740de9-52b2-a4f8-7a4b-4f523c61cb9c@broadcom.com>
 <2fed95d6-72a0-328e-806c-ba214b52ff11@gmail.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <f6723ca4-8c2f-9af5-7e18-bf7fbc75dda1@broadcom.com>
Date:   Mon, 9 Dec 2019 10:05:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <2fed95d6-72a0-328e-806c-ba214b52ff11@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/7/19 9:52 AM, Florian Fainelli wrote:
> 
> 
> On 12/6/2019 5:15 PM, Ray Jui wrote:
>>>
>>> Did not you intend to drop the reference count on elog_np here?
>>>
>>
>> Sorry, I'm not following this comment. Could you please help to clarify
>> for me a bit more? Thanks!
> 
> I meant that you drop the reference count on 'np' but you called
> functions that incremented the reference count on 'elog_np', so maybe
> you are not doing the of_node_put() on the appropriate device_node
> reference?
> 

Okay thanks. I'll look into this in more details and make corrections if 
needed.

>>
>>> [snip]
>>>
>>>> +static struct platform_driver iproc_idm_driver = {
>>>> +    .probe = iproc_idm_probe,
>>>
>>> Do not you need a remove function in order to unregister the sysfs file
>>> that you created in iproc_idm_dev_probe() to avoid bind/unbind (or
>>> rmmod/modprobe) to spit out an existing sysfs entry warning?
>>>
>>
>> This driver should never be compiled as a module. It's meant to be
>> always there to capture IDM bus timeouts.
>>
>> But you are right that I cannot prevent user from trying to unbind it
>> for whatever reason. I'll add a remove routine to take care of this.
> 
> You can also set suppress_bind_attrs to your platform_driver structure
> to prevent unbind/bind from happening.
> 

Great. This is what I'll do then. I meant to have this driver stays 
loaded/binded all the time once probed.

Thanks,

Ray
