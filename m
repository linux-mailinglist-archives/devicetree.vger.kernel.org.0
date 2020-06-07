Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8012C1F0CF8
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2020 18:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726844AbgFGQ3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Jun 2020 12:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726571AbgFGQ3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Jun 2020 12:29:03 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DEFFC08C5C4
        for <devicetree@vger.kernel.org>; Sun,  7 Jun 2020 09:29:01 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id 9so7850752ljv.5
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2020 09:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SDnYXucB/LSHUufMk2Ofpom5Zz/vAp/Zvuags38mkj0=;
        b=LUXGwL3l/HX8TeZThQeEY+13PnXuHCDIzawEBI6FI/0zIedKDScQO+7/2cJAr9HEg8
         EvixNwHhauJGQ5uCzq5BOCa4l0cTICCsahpSdZwMVkHyGOLlpDEqO0zWM76ITextJ7ls
         f9Jsg5dCQ1m3QB0yTCZjEM82l/x3msou677n0K4af49n2LSBXVASO5JmUsTsmLiyiyRn
         m+YipNV+zGNqiw7APctRfeIxLWbmAwrax5c4B3jGtbs16wBTqb/c7RsjALLHhnsv55DI
         gjs8ms7uFZK3T6dQ1nF836z1SSKP85fZOsq9Vl8T5t3+5gVAAPkwZ5NgWYS8khYQvu3N
         AIJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SDnYXucB/LSHUufMk2Ofpom5Zz/vAp/Zvuags38mkj0=;
        b=I2yyEVEpp9z76wJWeca8PqaszvBKnPgFZV5ctuGi3HGlAQnTEBvEulFSL2r/nINMHl
         0lmhSkxLRbEajsj7L9CwZMo5o6m8JQ7DvPdG/N6ErV1gnfLYDLhofk08+udTB3qIvlLQ
         srlfBqYbiZHhdwdS5yegsy4FV2FGj3p32AphxGSaa99IONs0joGx/Byksd/+FwD/HAPW
         UTeIeR808xY3JliLnAK1BCC5QjgHmnEJGjdAamRQg53NR/njR8vH9JakO+C4g6kkCHv/
         CH2ZPvDsh+SsbeSxb4gRG6pwrosbs6jZmXLiVyEoOTWH9GrMe3+OqthQVwm+iLBQsEjO
         s+qw==
X-Gm-Message-State: AOAM530DGu9rp6b6waUIz3OzM1btSDo4zMfjC5SfLQlQBETNq1AwaBnL
        LKQy8YWMZLW7tGNq6Bqa0fZYwg==
X-Google-Smtp-Source: ABdhPJx+oJFdPJtFNfuI5ow+pcnkgNEOTaUpNnvqEtGllOQlnYFDW1G410GXbhRIGbOisaHH/5tmEA==
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr4215270ljj.166.1591547339856;
        Sun, 07 Jun 2020 09:28:59 -0700 (PDT)
Received: from [192.168.118.216] (37-144-159-139.broadband.corbina.ru. [37.144.159.139])
        by smtp.gmail.com with ESMTPSA id y16sm3046383ljm.19.2020.06.07.09.28.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 09:28:58 -0700 (PDT)
Subject: Re: [PATCH v3 08/10] media: i2c: imx290: Add support to enumerate all
 frame sizes
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     mchehab@kernel.org, manivannan.sadhasivam@linaro.org,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com, peter.griffin@linaro.org
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-9-andrey.konovalov@linaro.org>
 <20200526091716.GJ8214@valkosipuli.retiisi.org.uk>
From:   Andrey Konovalov <andrey.konovalov@linaro.org>
Message-ID: <effee6cc-680f-3234-2e56-2f6b24d107cd@linaro.org>
Date:   Sun, 7 Jun 2020 19:28:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200526091716.GJ8214@valkosipuli.retiisi.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sakari,

Thank you for the review!

On 26.05.2020 12:17, Sakari Ailus wrote:
> Hi Andrey,
> 
> On Sun, May 24, 2020 at 10:25:03PM +0300, Andrey Konovalov wrote:
>> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>>
>> Add support to enumerate all frame sizes supported by IMX290. This is
>> required for using with userspace tools such as libcamera.
>>
>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
>> ---
>>   drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
>> index 6e70ff22bc5f..88850f3b1427 100644
>> --- a/drivers/media/i2c/imx290.c
>> +++ b/drivers/media/i2c/imx290.c
>> @@ -471,6 +471,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
>>   	return 0;
>>   }
>>   
>> +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
>> +				  struct v4l2_subdev_pad_config *cfg,
>> +				  struct v4l2_subdev_frame_size_enum *fse)
>> +{
>> +	if ((fse->code != imx290_formats[0].code) &&
>> +	    (fse->code != imx290_formats[1].code))
>> +		return -EINVAL;
> 
> Please skip the modes that do not have the code specified by the user. They
> should not be enumerated here.

I've double checked this part of the code, and it doesn't seem to need changes.
The reason is that for the both codes the set of the modes and the frame sizes is
exactly the same. And the fse->code check above just guards against the codes not
supported by the driver at all.

Thanks,
Andrey

>> +
>> +	if (fse->index >= ARRAY_SIZE(imx290_modes))
>> +		return -EINVAL;
>> +
>> +	fse->min_width = imx290_modes[fse->index].width;
>> +	fse->max_width = imx290_modes[fse->index].width;
>> +	fse->min_height = imx290_modes[fse->index].height;
>> +	fse->max_height = imx290_modes[fse->index].height;
>> +
>> +	return 0;
>> +}
>> +
>>   static int imx290_get_fmt(struct v4l2_subdev *sd,
>>   			  struct v4l2_subdev_pad_config *cfg,
>>   			  struct v4l2_subdev_format *fmt)
>> @@ -850,6 +869,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
>>   static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
>>   	.init_cfg = imx290_entity_init_cfg,
>>   	.enum_mbus_code = imx290_enum_mbus_code,
>> +	.enum_frame_size = imx290_enum_frame_size,
>>   	.get_fmt = imx290_get_fmt,
>>   	.set_fmt = imx290_set_fmt,
>>   };
> 
