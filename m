Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 29E188657C
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 17:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732344AbfHHPRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 11:17:35 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:52851 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730678AbfHHPRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 11:17:35 -0400
Received: by mail-wm1-f67.google.com with SMTP id s3so2800015wms.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 08:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JH79KLt/cUnUFrKqTtYF5L+pOS2C3hiTwjXkizwU6G0=;
        b=RPKemEq/ngZ4XjkAzy5p6s0pFtRFtPfOVsD/+Z5n0ckPkUjKaDVfcUKCJ6xU31lahb
         dXbkMwZ95S1PMkjcpZ2UobVQneuuBSFUepU8Rp973z7umkq9ItwCOxA/6VIZBos0hZTE
         JKSG7rIvsM+ceVU4YtEcfqSC9mIrKLhhLhQC6cBP6CLrjbcSC6MaXTJD3An8duBbRPgz
         PUv0ohwddDt3Yp7z5E8VjLbPZTzMzycd/B/lhdU7/smHV3qswv6W7LjBXIZMQzJ1pmiu
         aeOV4/Fx6DvkZTOqR+stPYzRw4YvqArNDGJZInzd6i6fAYf1Ntp2h06vXV9XtBcF2iQl
         BviQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JH79KLt/cUnUFrKqTtYF5L+pOS2C3hiTwjXkizwU6G0=;
        b=HMURzf3F/Fm+TPM11Ow1JVMP8C8o4aNyA656ShCJAG24h5hbfe93KTDiQQLw5uWycO
         lr7cq0OPZOn+OneP2LtrdL47Qlxz6vNmx5E3JLWDBp/Rt3IcR9WmMfugBgfC2t0W2ZDw
         F/FL/Yov/kGoLFg40xw1ZYL2KJLCPR+kqgP2/rE8TTsXFg5PFOV4KMUBZHE6IDLm4Vdj
         L5PckiYjOYBlADdT7vmISQqhF06S0YGzDaPkNQGIQF+zAEoBgzszZFuV03/eNSyqbt5Z
         NF4g63CQtnxVEVBQZ6G4Ga3Uwuatz+9G62tuqYnjPxYm1oDVU0Os8uJpspa1ZKR62RbX
         98dg==
X-Gm-Message-State: APjAAAX3KL6ReWECE2ZBrPnsdtNeIXa1RIZ9dG/GopeBKxuNgwLTk4NH
        4b/QBN5JTam2/uOQ5UAxzbIzmg==
X-Google-Smtp-Source: APXvYqyrp7wFg8Mu3fozGa9Vv2k13JVkluOFUNFjwI6aSKz9AEJVqZgF8MJw6L5ZWJ419QegEd1mNQ==
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr5268987wmm.81.1565277453643;
        Thu, 08 Aug 2019 08:17:33 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id t19sm2992693wmi.29.2019.08.08.08.17.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 08:17:32 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] soundwire: core: add device tree support for slave
 devices
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
 <20190808144504.24823-3-srinivas.kandagatla@linaro.org>
 <42ca4170-0fa0-6951-f568-89a05c095d5a@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <564f5fa4-59ec-b4e5-a7a5-29dee99039b3@linaro.org>
Date:   Thu, 8 Aug 2019 16:17:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <42ca4170-0fa0-6951-f568-89a05c095d5a@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for taking time to review.

On 08/08/2019 16:00, Pierre-Louis Bossart wrote:
> 
>> @@ -35,6 +36,7 @@ static int sdw_slave_add(struct sdw_bus *bus,
>>       slave->dev.release = sdw_slave_release;
>>       slave->dev.bus = &sdw_bus_type;
>> +    slave->dev.of_node = of_node_get(to_of_node(fwnode));
> 
> shouldn't this protected by
> #if IS_ENABLED(CONFIG_OF) ?
> 
These macros and functions have dummy entries, so it should not be an issue.
I did build soundwire with i386_defconfig with no issues.

>>       slave->bus = bus;
>>       slave->status = SDW_SLAVE_UNATTACHED;
>>       slave->dev_num = 0;
>> @@ -112,3 +114,48 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
>>   }
>>   #endif
>> +
>> +/*
>> + * sdw_of_find_slaves() - Find Slave devices in master device tree node
>> + * @bus: SDW bus instance
>> + *
>> + * Scans Master DT node for SDW child Slave devices and registers it.
>> + */
>> +int sdw_of_find_slaves(struct sdw_bus *bus)
>> +{
>> +    struct device *dev = bus->dev;
>> +    struct device_node *node;
>> +
>> +    for_each_child_of_node(bus->dev->of_node, node) {
>> +        struct sdw_slave_id id;
>> +        const char *compat = NULL;
>> +        int unique_id, ret;
>> +        int ver, mfg_id, part_id, class_id;
>> +
>> +        compat = of_get_property(node, "compatible", NULL);
>> +        if (!compat)
>> +            continue;
>> +
>> +        ret = sscanf(compat, "sdw%x,%x,%x,%x",
>> +                 &ver, &mfg_id, &part_id, &class_id);
>> +        if (ret != 4) {
>> +            dev_err(dev, "Manf ID & Product code not found %s\n",
>> +                compat);
>> +            continue;
>> +        }
>> +
>> +        ret = of_property_read_u32(node, "sdw-instance-id", &unique_id);
>> +        if (ret) {
>> +            dev_err(dev, "Instance id not found:%d\n", ret);
>> +            continue;
> 
> I am confused here.
> If you have two identical devices on the same link, isn't this property 
> required and that should be a real error instead of a continue?

Yes, I agree it will be mandatory in such cases.

Am okay either way, I dont mind changing it to returning EINVAL in all 
the cases.

> 
>> +        }
>> +
>> +        id.sdw_version = ver - 0xF;
> 
> maybe a comment in the code would help to make the encoding 
> self-explanatory, as you did in the DT bindings
> 
>    Version number '0x10' represents SoundWire 1.0
>    Version number '0x11' represents SoundWire 1.1

Makes sense, will fix this in next version.
This info is also available in bindings.


--srini
> 
>> +        id.unique_id = unique_id;
>> +        id.mfg_id = mfg_id;
>> +        id.part_id = part_id;
>> +        id.class_id = class_id;
>> +        sdw_slave_add(bus, &id, of_fwnode_handle(node));
>> +    }
>> +    return 0;
>> +}
>>
