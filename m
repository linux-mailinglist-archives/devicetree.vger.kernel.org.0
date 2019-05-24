Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8329F29787
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 13:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391007AbfEXLtF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 07:49:05 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:40855 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390772AbfEXLtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 07:49:05 -0400
Received: by mail-ed1-f65.google.com with SMTP id j12so13976140eds.7
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 04:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=essensium-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=5xRIHp5jL5V0yyP4s5LDPrfrK52o1vTGl1qXor/uitw=;
        b=QTiyWeLuxKJIZlpkAOqSroMVX1WO5Et9DNImnMebp0usMW2avs4yQHDZu6sXMEOett
         bLlQzPwpNv2a5wTejGJdkRk5BuS9DF3bZop85YkUzcEQkQwPvPN8PhOM83zq6xnnNvel
         VJpSUUiBzhfZzTmKytybPtwWobI53YPbs2i4dk0fbX6M3ojW7TWW/Z+yNXD1/xI30tAS
         QjoXBXdoA/WL3Tkeq52+cgDcOHIvvKnBkOEu0Vl2lSQgN8sc/PKITRpxjH0vHZDjb50N
         eux0gdDudwskhfe1ONW17RQmAzC5Wd9+GmP+V9J3vzWf9NVLJTBRI1G5Xxc4t6qi7Ili
         VW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=5xRIHp5jL5V0yyP4s5LDPrfrK52o1vTGl1qXor/uitw=;
        b=dI7Gcs0oVzrVpdb141Ca2mb/AtzuNjsrVAh0lgpIk6oeOg3mmC7WMDBOqYtwQ7477x
         Zrj7ZKyHEIC9SkLRelGvKiQXKfASxi+5om0N4voagauQIO23ptXkeEX1u3Z5RtI4sUWs
         fy/MOdLTELRu17FasOI1mHkhMO12cVWEVosVSoeaf/+GOHis8C45J+FkEhzrF7AT3saT
         +7r/bNvvcQzZrnYq719Stc8vM+WryHt1z5XDZ1g9xEyEynEWn9dQ1r6URG7RIssRso66
         2ZuEv2wA5jhTXhgM0OfujOMXkvM0fSIhzDuIE/mPkAIezyt+9b2fK6FdcdSSCJHq4YW7
         EnAw==
X-Gm-Message-State: APjAAAXqMDQC+z5zcwa8HcKS9KOL43tY1IYHvslhnbALS+MBjIKI2fMA
        Gz8cmSSRa7bJxKAyoBahUdiy7Q==
X-Google-Smtp-Source: APXvYqw2w4lLj3qJowBjwTW2YUqwEPpKQncla8W+c7T5YUVF6mvytulKFVTifdIPriYayabyo/yxNA==
X-Received: by 2002:a50:ef02:: with SMTP id m2mr3836848eds.213.1558698543117;
        Fri, 24 May 2019 04:49:03 -0700 (PDT)
Received: from [10.3.4.107] (ip-188-118-3-185.reverse.destiny.be. [188.118.3.185])
        by smtp.gmail.com with ESMTPSA id e9sm657903edq.39.2019.05.24.04.49.01
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 04:49:02 -0700 (PDT)
Subject: Re: [PATCH v3 1/5] iio: ad7949: Fix dummy read cycle placement
To:     Alexandru Ardelean <ardeleanalex@gmail.com>,
        Adam Michaelis <adam.michaelis@rockwellcollins.com>
Cc:     linux-iio@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>,
        "Hennerich, Michael" <michael.hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, brandon.maier@rockwellcollins.com,
        clayton.shotwell@rockwellcollins.com,
        Alexandru Ardelean <alexandru.ardelean@analog.com>,
        Stefan Popa <stefan.popa@analog.com>
References: <1557759185-167857-1-git-send-email-adam.michaelis@rockwellcollins.com>
 <CA+U=DsoHuzt27CnwFK-2tdLhNMea1JttncdhZaBjRpfticgfEg@mail.gmail.com>
From:   Couret Charles-Antoine <charles-antoine.couret@essensium.com>
Message-ID: <8a3b7dca-8653-ba51-7302-bc5bcb3bc497@essensium.com>
Date:   Fri, 24 May 2019 13:49:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+U=DsoHuzt27CnwFK-2tdLhNMea1JttncdhZaBjRpfticgfEg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Le 23/05/2019 à 13:47, Alexandru Ardelean a écrit :
> diff --git a/drivers/iio/adc/ad7949.c b/drivers/iio/adc/ad7949.c
>> index ac0ffff6c5ae..c7fe27aa2519 100644
>> --- a/drivers/iio/adc/ad7949.c
>> +++ b/drivers/iio/adc/ad7949.c
>> @@ -100,6 +100,23 @@ static int ad7949_spi_write_cfg(struct ad7949_adc_chip *ad7949_adc, u16 val,
>>           * send a new command to the device
>>           */
>>          udelay(2);
>> +
>> +       /*
>> +        * Perform extra read cycle to allow configuration, acquisition,
>> +        * and conversion sequences to complete for new configuration.
>> +        */
>> +       ad7949_adc->buffer = 0;
>> +
>> +       spi_message_init_with_transfers(&msg, tx, 1);
>> +
>> +       ret = spi_sync(ad7949_adc->spi, &msg);
>> +
>> +       /*
>> +        * This delay is to avoid a new request before the required time
>> +        * to send a new command to the device.
>> +        */
>> +       udelay(2);
>> +
> Is this needed if the channel doesn't change ?
> If it isn't, maybe add a check in ad7949_spi_read_channel() to skip
> the call to ad7949_spi_write_cfg().
>
> We should also take performance into account when doing SPI
> transactions to the device, and if we can skip some of them, all the
> better.
> This change, introduces a performance penalty by doing this extra read + udelay.

I wrote the initial driver and you're right. It is not required in the 
situation where the channel is not changed.

In our product the channel changed every time so we didn't think about 
this kind of optimisations. It is relevant to implement them.

>>          return ret;
>>   }
>>
>> @@ -229,11 +246,10 @@ static int ad7949_spi_init(struct ad7949_adc_chip *ad7949_adc)
>>          ret = ad7949_spi_write_cfg(ad7949_adc, 0x3C79, AD7949_MASK_TOTAL);
>>
>>          /*
>> -        * Do two dummy conversions to apply the first configuration setting.
>> +        * Do a dummy conversion to apply the first configuration setting.
>>           * Required only after the start up of the device.
>>           */
>>          ad7949_spi_read_channel(ad7949_adc, &val, ad7949_adc->current_channel);
>> -       ad7949_spi_read_channel(ad7949_adc, &val, ad7949_adc->current_channel);
> The datasheet mentions that 2 dummy conversions are needed on power-up / init.
>
> The way, this was done here was a bit easier to follow (or
> straightforward) with the datasheet.
>
> This isn't to say that this is bad, but if we need to do an extra SPI
> read (and skip the SPI write part), then I would just add an SPI read
> function, instead of moving it completely into ad7949_spi_write_cfg(),
> which would then compact things in ad7949_spi_read_channel().

+1. It is more readable from my point of view to have two explicit 
commands for this step.

I agree with your solution.


Regards,

Charles-Antoine Couret

