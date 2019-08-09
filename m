Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD0C2873F4
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 10:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405641AbfHIIYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 04:24:50 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39502 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726014AbfHIIYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 04:24:49 -0400
Received: by mail-wm1-f66.google.com with SMTP id u25so4802305wmc.4
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 01:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8CRcuLlZBVUoudDmKIo2V95xe+m342E7hqInXMzRQt8=;
        b=hpCkRRnRSXdDdd+u+TyuDO6eNse5HxqOgqPvragd7b+RDtJkx9YLO2C4uiJbN14bJA
         9tayvMQ3/TW7TeIbSLVrxmffwymAR0mpib3vKHYh8/xACPg4fAo6aVaM/0Zn2y1D5/Jp
         PFXcwCIjwCZ3/+rKuCpZZ2TOHmEKA72vKoL9OurIyQUNlVK6CUspyygJ933U03FmP85A
         vKEDVcozT0bJsYUS1CRjuaC9wA3a+7kU0KWYpTMKFqS1cbJtI5kANEty4VAXgcXh4uBu
         RgaIGgV7T9I0drXfpAntSNjFN+nVodqv+AZE6KjtF+bBCPCOdDx3vQileD9dmA2NR0XL
         MidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8CRcuLlZBVUoudDmKIo2V95xe+m342E7hqInXMzRQt8=;
        b=c9sIuTpp+Kq5Q5yhvqoaujKfREVBI094jXrPGNaIyUXVIaq71DT4PxcSD4l/KRR5FV
         MZA77XdHbUVFiKc6ujRmR483eaOGBelFtPxWmQXnkM+QgLfg0VlDS9WsZgl/BcKqv/gB
         A8MRGcie1fqL/QPJGp96iM5E9vqf0kRqYa64dYtNm6Xom/55AFpsU9QoDk0sc6i/Jsch
         VgAXvxWFfrhkYrzkl/on3xTDuzC2+YX3L8PoAATGFIvbwPD0tzBO1sRGR5WWuoLFs59V
         cORzFNrZPFNB7CYsc8yF3YsDThvQos9zLVMI6G7ra9Yhe4oRAY3PKJXjWZg5oWH8dwtb
         rzpg==
X-Gm-Message-State: APjAAAVL8vh8sKRdILQp69QJD/UtIiEvuV2ry2brQwl8iD74MN3xBO/L
        M/EFIJa8uqwyDN3CckVbyGN3Ow==
X-Google-Smtp-Source: APXvYqyVzJUw2M7RRl4NadS2ltOeMpoO+u8ylbDe75BC7y7RRzAQad3Qs+baCXwnoNQwkk2wXSyA3g==
X-Received: by 2002:a1c:c742:: with SMTP id x63mr9871453wmf.0.1565339087435;
        Fri, 09 Aug 2019 01:24:47 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id w23sm4730828wmi.45.2019.08.09.01.24.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 01:24:46 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] soundwire: core: add device tree support for slave
 devices
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        broonie@kernel.org, bgoswami@codeaurora.org, plai@codeaurora.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        lgirdwood@gmail.com, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
 <20190808144504.24823-3-srinivas.kandagatla@linaro.org>
 <42ca4170-0fa0-6951-f568-89a05c095d5a@linux.intel.com>
 <564f5fa4-59ec-b4e5-a7a5-29dee99039b3@linaro.org>
 <20190809054602.GK12733@vkoul-mobl.Dlink>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ff9144ce-a4d1-a3fd-ab49-256367413b11@linaro.org>
Date:   Fri, 9 Aug 2019 09:24:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190809054602.GK12733@vkoul-mobl.Dlink>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 09/08/2019 06:46, Vinod Koul wrote:
>>>> +int sdw_of_find_slaves(struct sdw_bus *bus)
>>>> +{
>>>> +    struct device *dev = bus->dev;
>>>> +    struct device_node *node;
>>>> +
>>>> +    for_each_child_of_node(bus->dev->of_node, node) {
>>>> +        struct sdw_slave_id id;
>>>> +        const char *compat = NULL;
>>>> +        int unique_id, ret;
>>>> +        int ver, mfg_id, part_id, class_id;
>>>> +
>>>> +        compat = of_get_property(node, "compatible", NULL);
>>>> +        if (!compat)
>>>> +            continue;
>>>> +
>>>> +        ret = sscanf(compat, "sdw%x,%x,%x,%x",
>>>> +                 &ver, &mfg_id, &part_id, &class_id);
>>>> +        if (ret != 4) {
>>>> +            dev_err(dev, "Manf ID & Product code not found %s\n",
>>>> +                compat);
>>>> +            continue;
>>>> +        }
>>>> +
>>>> +        ret = of_property_read_u32(node, "sdw-instance-id", &unique_id);
>>>> +        if (ret) {
>>>> +            dev_err(dev, "Instance id not found:%d\n", ret);
>>>> +            continue;
>>> I am confused here.
>>> If you have two identical devices on the same link, isn't this property
>>> required and that should be a real error instead of a continue?
>> Yes, I agree it will be mandatory in such cases.
>>
>> Am okay either way, I dont mind changing it to returning EINVAL in all the
>> cases.
> Do we want to abort? We are in loop scanning for devices so makes sense
> if we do not do that and continue to check next one..

That was my inital plan.
Pierre suggested a better compatible to include instance ID and LinkID 
so this check would be part of the check one before this line.

--srini
