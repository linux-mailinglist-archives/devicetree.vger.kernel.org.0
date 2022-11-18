Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D657C62F27A
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 11:25:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235257AbiKRKZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 05:25:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235237AbiKRKZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 05:25:41 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DA991532
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 02:25:39 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id u6-20020a17090a5e4600b0021881a8d264so2322552pji.4
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 02:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hXadzGYPg8gH/D/ejsAudxwOh/sdzLX/WQ5IeL1dRw0=;
        b=JGk8asImdMRrc822FzFzvhcgClh/yYcuFhUtuJtf/Pzp8GzJbTMuqESibrrlaqv2Mv
         TrIpsJ2M4gzg6kfJFKtXezlWRA7u1ihsrCaK/CpqHbQy7LCfFI5cyZ2R8noGDg3p8h6Y
         HBXlcLTd9xvR8XJLF90QFCVCcmiQpRC57IUQDMWtPoCmx2wVmACfETCt9ZpxyzAb15gc
         0JKSZJ7TcvC8mD++2pRyZdwgTMbt5fvmrjuRCa04kCsSJhKtXF0pte+phFxWmUoflwEV
         2Z0SPAIKliKI41i7C8pDcD5zSJGaH8Egzk6E26mvCa1zn8YVXz+Vp1VLtqoNLz3EzrMF
         kbLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hXadzGYPg8gH/D/ejsAudxwOh/sdzLX/WQ5IeL1dRw0=;
        b=iRexAp6NWx8j/saLMzCFgFWPjcAmKTiGpZIhObIdRHljeTNbt07h8UN/6GZnjLH2Gw
         JkgKz+t/OP8ZwUdOwYXAGE75yjp3+9aIG6EVQr3vK44D9cnAqu1VS8hMhtEDy6oMXt4+
         IJO4v82QCU/KQd6csFJhiQRlEw99FDcIWbB5geVd5+Kra95umowe1XHU6gbjr5xdsVjm
         OgpQHrM9zICARVAn0O8sDdz/ejTemBgMj3M4DxCiyDpF7GR78hGHOkpRdB2ypuZZGoHz
         rZYA3KNSW+P1cq+KIf2MmHdFYENZvzr2j0WViVFKYpb4krqkaguRCSdC79oHXvcbfxKU
         autw==
X-Gm-Message-State: ANoB5pn6H/wjV19tB4IKz/uHonhNMvjMUeRFiEttvfNwtpKh6J/nH3I5
        DNWhBuFW7DEGdJZ3Tucm68ODwg==
X-Google-Smtp-Source: AA0mqf6Kna3GdFEECz4tQtAZxJtjO29EWzBbOP3NaB+37qQM7I/xTegkTunGCitNt08e7Ajd8vYduw==
X-Received: by 2002:a17:90a:bf13:b0:213:5d6:8280 with SMTP id c19-20020a17090abf1300b0021305d68280mr12801182pjs.185.1668767139196;
        Fri, 18 Nov 2022 02:25:39 -0800 (PST)
Received: from ?IPV6:2405:201:d02f:d899:2028:7962:400:43b6? ([2405:201:d02f:d899:2028:7962:400:43b6])
        by smtp.gmail.com with ESMTPSA id c5-20020a170903234500b001806445887asm3218915plh.223.2022.11.18.02.25.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 02:25:38 -0800 (PST)
Message-ID: <5d8f8ed5-f0ee-9ed1-1b9f-aed2ab18c26b@9elements.com>
Date:   Fri, 18 Nov 2022 15:55:33 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v6 3/3] hwmon: (max6639) Change from pdata to dt
 configuration
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Marcello Sylvester Bauer <sylv@sylv.io>,
        linux-pwm@vger.kernel.org
References: <20221116213615.1256297-1-Naresh.Solanki@9elements.com>
 <20221116213615.1256297-4-Naresh.Solanki@9elements.com>
 <20221117074510.qqtjc6h3bnh5rccx@pengutronix.de>
 <81cd642f-c5fb-77ec-a634-5655d5b6088c@9elements.com>
 <20221117091324.h7etwyzckzvpoa4p@pengutronix.de>
From:   Naresh Solanki <naresh.solanki@9elements.com>
In-Reply-To: <20221117091324.h7etwyzckzvpoa4p@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

On 17-11-2022 02:43 pm, Uwe Kleine-König wrote:
> On Thu, Nov 17, 2022 at 02:10:45PM +0530, Naresh Solanki wrote:
>>
>>
>> On 17-11-2022 01:15 pm, Uwe Kleine-König wrote:
>>> Hello,
>>>
>>> On Wed, Nov 16, 2022 at 10:36:15PM +0100, Naresh Solanki wrote:
>>>> max6639_platform_data is not used by any in-kernel driver and does not
>>>> address the MAX6639 fans separately.
>>>> Move to device tree configuration with explicit properties to configure
>>>> each fan.
>>>>
>>>> Non-DT platform can still use this module with its default
>>>> configuration.
>>>>
>>>> Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
>>>> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
>>>
>>> What changed here since v5? Please either add a changelog below the
>>> tripple-dash for a new revision, or make sure that all relevant people
>>> get the cover letter.
>>>
>>> It seems you didn't address my comments for v5 :-\
>> Not sure what I missed but did following changes:
>> Removed unused header max6639.h
>> Used dev_err_probe instead,
>> Removed of_pwm_n_cells,
>> if condition for freq_table
>> removed pwm_get_state & instead use pwm->state
>> division/multiplication optimizations,
>> indentation of freq_table,
> 
> In the cover letter you just wrote:
> 
> | Changes in V6:
> | - Remove unused header file
> | - minor cleanup
> 
> which is too short in my eyes. If you wrote instead:
> 
> 	Address review feedback by Uwe Kleine-König in patch #3, patches #1 and
> 	#2 unchanged.
> 
> This would be much more helpful as people that were already happy with
> v5 wouldn't need to look at the first two patches and I would know that
> you addressed my feedback and would have looked in more detail.
Sure will keep it this way next time.
> 
> What I miss is the most critical part of my feedback, i.e.:
> | My overall impression is that this patch mixes too much things. IMHO it
> | should be split in (at least)
> |
> |  - Add dt support
> |  - Drop platform support
> |  - Add PWM provider support
> |  - Make use of the PWM API
> |
> | maybe also add the 2nd PWM in a separate step.
Sure can do that.
> 
> Best regards
> Uwe
> 
Thanks,
Naresh
