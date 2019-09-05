Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B5C6DAA0A5
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 12:57:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732085AbfIEK5j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 06:57:39 -0400
Received: from mx1.redhat.com ([209.132.183.28]:45534 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731974AbfIEK5j (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Sep 2019 06:57:39 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 9E8607BDAB
        for <devicetree@vger.kernel.org>; Thu,  5 Sep 2019 10:57:38 +0000 (UTC)
Received: by mail-wr1-f70.google.com with SMTP id l6so828260wrn.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 03:57:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=u65TSO+Rvf1axEqmi3wSZZGF+sDF08PzfGTCX34no0w=;
        b=UVYibLca4ORYVTdKu62T4WgW24nJE7gC1E9PYk0GKH/JHIZtuNLOCAm9k8qBQi9Oyl
         TMZy8dLUvWock+AfgjW+Qx2kUPLgb4GZnDS8mSqKpt5SwGfOCm2h9wEgbXaJlWUx+7Dy
         eDcvdwxkX7qAxxBoQ2YvQTK1I02n1Padsm9bM7q5yzA4377+Jr76oUU8NdTbl9uNpKT2
         rXJ+lBqjfKKR+xuYj8nxitBEuNVRtO8Ceqi3LdbN2Lt08c/9FfP9jAyJfY03spymKGXg
         EhIsMpouEEWxIzHt2T2fxn8NOa5gm4eBN2MtQpfdaEu8/ud1CY3PIBEEeouPJdxB6f3y
         1SeQ==
X-Gm-Message-State: APjAAAV7v2JcLxu2ysPayrqRAKeC7qWpoYre8Wi4nwEjF7+5vIJTvLD7
        era+4yeLpRZVsr2YGUZRyk6jm7afwcF26cXc1Qgl7CijqrvgqM6oY9jh76pb0EJGt+A6RAYMvJ0
        28Tg6g3Ngs23I3RzQXB8/fA==
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295978wmh.23.1567681057404;
        Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqytSMTFwKy6lxd+Xl2q9JD1L6j9P/OzvtGIshQY0oEp+mKnHzNdpLaXEnuh8y3DBKzT/FTaXA==
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr2295960wmh.23.1567681057221;
        Thu, 05 Sep 2019 03:57:37 -0700 (PDT)
Received: from [192.168.1.13] ([90.168.169.92])
        by smtp.gmail.com with ESMTPSA id p19sm1745164wmg.31.2019.09.05.03.57.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 03:57:36 -0700 (PDT)
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     dongchun.zhu@mediatek.com, mchehab@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, drinkcat@chromium.org, tfiga@chromium.org,
        matthias.bgg@gmail.com, bingbu.cao@intel.com,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, sj.huang@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        sam.hung@mediatek.com, shengnan.wang@mediatek.com
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905082134.GY5475@paasikivi.fi.intel.com>
 <20190905101908.GB2680@smile.fi.intel.com>
 <20190905104001.GZ5475@paasikivi.fi.intel.com>
From:   Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ad357e27-3e51-6922-1924-5d2c2daf1934@redhat.com>
Date:   Thu, 5 Sep 2019 12:57:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905104001.GZ5475@paasikivi.fi.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/5/19 12:40 PM, Sakari Ailus wrote:
> On Thu, Sep 05, 2019 at 01:19:08PM +0300, Andy Shevchenko wrote:
>> On Thu, Sep 05, 2019 at 11:21:34AM +0300, Sakari Ailus wrote:
>>> On Thu, Sep 05, 2019 at 03:21:42PM +0800, dongchun.zhu@mediatek.com wrote:
>>>> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>>
>>>> +static const struct i2c_device_id dw9768_id_table[] = {
>>>> +	{ DW9768_NAME, 0 },
>>>> +	{ },
>>>
>>> Could you drop the I²C ID table?
>>
>> But why?
>> It will allow you to instanciate the device from user space.

Yes, the I2C device table is still needed if the device can be instantiated
from user-space using the sysfs interface, or otherwise the module won't be
automatically loaded.

Kieran posted a "[PATCH RFC] modpost: Support I2C Aliases from OF tables"
patch that adds a MODULE_DEVICE_TABLE(i2c_of, ..) macro so modpost could
add legacy I2C modalias using the information in the OF device ID tables:

https://patchwork.kernel.org/patch/11038861/

If that lands, then we could get rid of the I2C device tables altogether
for non-legacy I2C drivers.

> 
> The device is supposed to be present in DT (or ACPI tables) already.
>

Agreed. Also by looking at the driver's probe function I see that the
device lookups a 'vin' and 'vdd' regulators supplies and it fails if
aren't defined, so it can't be instantiated from user-space anyways.

BTW, these two regulators supplies should be listed as 'vin-supply'
and 'vdd-supply' as required properties in the DT binding document.

Best regards,
-- 
Javier Martinez Canillas
Software Engineer - Desktop Hardware Enablement
Red Hat
