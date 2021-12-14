Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEA9C473EF6
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 10:08:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232086AbhLNJIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 04:08:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbhLNJIP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 04:08:15 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68C4C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 01:08:14 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id y196so13710460wmc.3
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 01:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NkjRGxY+8YPPtjw7rhjBu1nKL27TZcE6eVG8yvmXjBM=;
        b=SEO8Mx841/FO9qxihDMmqDMUFhhHi02MqgTMXjchnKBse3HWbJ0KUGn5UT0DcM/p2H
         m7PfDSTlE920BxlLN97fcMy1wSenz8AwB9yYXJ9dqHo2uLI83ohuqoaubDezR31UiRHM
         jrTqNO2+iO+qnrJw1/xj9i2fhgdWWDZWBEWOU6BaZACzPB13W9tCZrPOw4iD6gKbIOXR
         So5BKxbK1ktJQVNl1Ayx8z0By9k0BoXJkUi06nXjbpzhXkuLWDNI45QTrKPzlci9I9Oj
         45YqG5bVmK53VkkFQx2oOvefs/lj04ECM8Aw9WV6jgDq4Z2+AI5UbfxRGLSk8Wizpy3K
         tUbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NkjRGxY+8YPPtjw7rhjBu1nKL27TZcE6eVG8yvmXjBM=;
        b=XgEjNhmw2Fw4M9TpyV4aItjozMIGRES2IcPmY1dnRdFZc8f7obbJt01vYaUFs0Ahax
         ZZYelZ6AEkx4NrkgT+cwOgDoCid1YxuLH9jv1Sd96THWYhiApln4KBT+d4kaHvPgGiMQ
         f3MULnkRdNXhN98O85oSpWJ6pvZIOX1+KJD0yfPowxtR0OUk5OHdZOwRkUB0NWZtLBbM
         0sTHmSe6w598MRrXV5Y8JiklWL5Bz4g4/6f01WeifSGRtmzt6KipXDUoavaF6xUUp6dT
         lX0RORcz2hruMoro79RPrtPQ0dAIClHWUTdJkrSKVhsoosWctEiYZjHGjnoOdpqd9Nd9
         Pd9g==
X-Gm-Message-State: AOAM533bBKoPTVQX7FG+3DA3/NoRHIuAX9st3J2fF3bOed5O3jipXlUC
        B7kiXVs9xewiL7T2MgOqor43xg==
X-Google-Smtp-Source: ABdhPJxJuqPGRFwNBrzNw6O5WmgD/+iebE+yjh80b69byzR3p8Vub1x8XexoQIFWlYSvAQhclOEpsQ==
X-Received: by 2002:a7b:c844:: with SMTP id c4mr5401057wml.148.1639472893270;
        Tue, 14 Dec 2021 01:08:13 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id d15sm16859322wri.50.2021.12.14.01.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Dec 2021 01:08:12 -0800 (PST)
Subject: Re: [PATCH v2 1/2] nvmem: Add driver for OCOTP in Sunplus SP7021
To:     =?UTF-8?B?5pa96YyV6bS7?= <vincent.sunplus@gmail.com>
Cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1638867233-8383-1-git-send-email-vincent.sunplus@gmail.com>
 <1638867233-8383-2-git-send-email-vincent.sunplus@gmail.com>
 <1b336b98-7546-93e3-f1ed-92d041c2df35@linaro.org>
 <CAPvp3RgqQ_M9rXfkWFTC5zOgk7OUGO1=o8wDjxiB+5wMPoS_Rg@mail.gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <36d17f8b-2480-6c1d-fe84-d4bd04e4170f@linaro.org>
Date:   Tue, 14 Dec 2021 09:08:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAPvp3RgqQ_M9rXfkWFTC5zOgk7OUGO1=o8wDjxiB+5wMPoS_Rg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/12/2021 08:50, 施錕鴻 wrote:
> 
>      > +
>      > +static const struct of_device_id sp_ocotp_dt_ids[] = {
>      > +     { .compatible = "sunplus,sp7021-ocotp", .data = &sp_otp_v0 },
>      > +     { }
>      > +};
>      > +MODULE_DEVICE_TABLE(of, sp_ocotp_dt_ids);
>      > +
>      > +static struct platform_driver sp_otp_driver = {
>      > +     .probe     = sp_ocotp_probe,
>      > +     .driver    = {
>      > +             .name           = "sunplus,sp7021-ocotp",
>      > +             .of_match_table = sp_ocotp_dt_ids,
>      > +     }
>      > +};
>      > +
>      > +static int __init sp_otp0_drv_new(void)
>      > +{
>      > +     return platform_driver_register(&sp_otp_driver);
>      > +}
>      > +subsys_initcall(sp_otp0_drv_new);
> 
>     Why this needs to be subsys_initcall() why can't it be module_init?
> 
>   The OTP driver will store the mac address for ethernet driver and usb2 
> disconnect voltage
>   for usb2 one. Therefore the order of the OTP driver should take higher 
> priority over the
> other ones.

drivers that are looking for mac address or other values from nvmem 
should get an EPROBE_DEFER if nvmem provider is not ready.

does that not work for you?


--srini
