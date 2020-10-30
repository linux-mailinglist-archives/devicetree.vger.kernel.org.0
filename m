Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D67FC2A01E7
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 10:56:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725355AbgJ3J41 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 05:56:27 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:30755 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726195AbgJ3J41 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Oct 2020 05:56:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1604051785;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=RinIyWxJBbmsSNFfcXQ/y1B1X9TvLTOrZQPxs5n5iMY=;
        b=YTvFcygVnjdgFfJief7gBgNp7MlmIYDOHkQzb3rFKqjug/vpzkCbHiFowyvax/Okfv4GVd
        eyndwXdwuFP2C3t39nZjVWyBw6GryIFXvULnSVmMsGpfmw8cixEptlpmE/79TEmDn8tUeu
        bOMvdkAJU0m6NUWgjtAGFOabpLCil8g=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-qnvtfIcKNUaN4gli3sKzrg-1; Fri, 30 Oct 2020 05:56:23 -0400
X-MC-Unique: qnvtfIcKNUaN4gli3sKzrg-1
Received: by mail-ed1-f70.google.com with SMTP id b68so368963edf.9
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 02:56:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RinIyWxJBbmsSNFfcXQ/y1B1X9TvLTOrZQPxs5n5iMY=;
        b=bPFJ9xp9LSTZL7QeZ7xKo9iY0u9/yvRTSF0AY9SR0NoJL1HqXMMyC2vjEEDLUUyss/
         OhUalSFPulWUQY0S+xyPGY7jNUEe/0zNKwgMu8IkhCjS3rNRLcC6LAIFLyTbmznMWtnx
         oUpzQre6FfjRFqHvgkzPGE7Muj/YuA8iT7DxFEj4rzWv3HdN8Ctui5+2FdgnXKNDPOFf
         wROOQju/helmlg6QnykfIf1P2L7R1ujlPXrT8YdKhKxuX06Z5vRVlqauYso0yIZxBMQ9
         VdDhZBgA/RHrj9Sz3tqiMjPEPkjVFUswBnaRbgWUNRZda+faife6tG4VRtMg5ZpPHyf8
         grCw==
X-Gm-Message-State: AOAM530eKuDpqKV9CsuGKoRDpXsiQtgi+Xa2BSXgQQuqMjHurfhzYeAx
        8tnJ3sB2VASo1xtWtx1zMHHABu6o6Gq+n9Bf0ZH7lceX/mM4wDkXnT2AvKcspmI0sNU8gv+1mNb
        HTITLRBTTX6/yfEsjeLkiPg==
X-Received: by 2002:a17:906:3689:: with SMTP id a9mr1546509ejc.403.1604051781881;
        Fri, 30 Oct 2020 02:56:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwk85LqSiQSvbeJC5mGEyPbxaBlbSfctyRwNx4tsW6atojGhk3NEbe4WQ2HDSLwJT9DVpW2Bw==
X-Received: by 2002:a17:906:3689:: with SMTP id a9mr1546492ejc.403.1604051781718;
        Fri, 30 Oct 2020 02:56:21 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl. [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
        by smtp.gmail.com with ESMTPSA id p16sm2822778edu.74.2020.10.30.02.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 02:56:21 -0700 (PDT)
Subject: Re: [PATCH 1/3] Input: goodix - add option to disable firmware
 loading
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Andrej Valek <andrej.valek@siemens.com>
Cc:     nick@shmanahar.org, hadess@hadess.net, linux-input@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20201029170313.25529-1-andrej.valek@siemens.com>
 <20201029170313.25529-2-andrej.valek@siemens.com>
 <20201029203608.GE2547185@dtor-ws>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <a5964429-a472-6b78-e53c-69b4cb115b94@redhat.com>
Date:   Fri, 30 Oct 2020 10:56:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201029203608.GE2547185@dtor-ws>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/29/20 9:36 PM, Dmitry Torokhov wrote:
> Hi Andrej,
> 
> On Thu, Oct 29, 2020 at 06:03:11PM +0100, Andrej Valek wrote:
>> Firmware file loadind for GT911 controller takes too much time (~60s).
>> There is no check that configuration is the same which is already present.
>> This happens always during boot, which makes touchscreen unusable.
>>
>> Add there an option to prevent firmware file loading, but keep it enabled
>> by default.
> 
> I thought that Goodix was losing firmware loading at poweroff. Is this
> not the case with this model?

So first of all there are 2 sorts of firmware involved with the
Goodix touchscreen controllers, the actual firmware and a block
of config data for that firmware which I presume adjusts it for
the specific (model of) the digitizer which is attached.

ATM the mainline Linux driver does not support models where
the actual firmware itself needs to be loaded (because they
only have RAM, so they come up without firmware).

I do have one model tablet with a ROM-less goodix touchpad
controller, so if I ever find the time I might add support
for loading the actual firmware.

So what we are talking about here is just loading the config
data and I'm a bit surprised that this take so long.

> Adding Hans as he was working with this driver/code.

With all that said I have no objection to this change.

Regards,

Hans



> 
>>
>> Signed-off-by: Andrej Valek <andrej.valek@siemens.com>
>> ---
>>  drivers/input/touchscreen/goodix.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/input/touchscreen/goodix.c b/drivers/input/touchscreen/goodix.c
>> index 02c75ea385e08..44336ecd2acdf 100644
>> --- a/drivers/input/touchscreen/goodix.c
>> +++ b/drivers/input/touchscreen/goodix.c
>> @@ -941,7 +941,9 @@ static int goodix_get_gpio_config(struct goodix_ts_data *ts)
>>  	default:
>>  		if (ts->gpiod_int && ts->gpiod_rst) {
>>  			ts->reset_controller_at_probe = true;
>> -			ts->load_cfg_from_disk = true;
>> +			/* Prevent cfg loading for each start */
>> +			ts->load_cfg_from_disk = !device_property_read_bool(dev,
>> +						 "touchscreen-do-not-load-fw");
>>  			ts->irq_pin_access_method = IRQ_PIN_ACCESS_GPIO;
>>  		}
>>  	}
>> -- 
>> 2.20.1
>>
> 
> Thanks.
> 

