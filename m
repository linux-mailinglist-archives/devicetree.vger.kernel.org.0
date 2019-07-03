Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3E25E030
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 10:49:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727008AbfGCItm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 04:49:42 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:41509 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726670AbfGCItl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 04:49:41 -0400
Received: by mail-wr1-f68.google.com with SMTP id c2so1770668wrm.8
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 01:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e9alP0im1I2wRKr908QIHV5xP+2l4mLutFvUHyMFYAk=;
        b=lmXhyQGjSdgGAdxzkKM0ong9AUeIi6a45ScAHd28c2nVnEseEKKJamYXyiTHRiP/EF
         R8Oy0VWBdFV0zlttFbYbDa3bAj6RPaOob4rjKEV5d0hAgGoNm086NIE5fX+LB//H+L6z
         YiPIGu/GwN6msUNgb6qWCu7K+Roc0xqQHyfDE15WUaF2n9RxGZ9l5MpQmAplNfwgI5Jo
         RC9k1/XXWdDIcuzOwUaOfVo3SoJlQHL1p1QGEwI20aug3gA3itCKamJ+2hif9ZCcnRBr
         nEZRObWyZu2jwq7FL9wqE2v+97WWf2nFRLdvC4NZKAUvcTqz0heW1Zfx0UQNgCAiW8Yo
         HxUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e9alP0im1I2wRKr908QIHV5xP+2l4mLutFvUHyMFYAk=;
        b=M/CTRgqIGzJ8Bg15psgM/ZDGZsKAUYI31EcjPd+nvE2qcfcVijCrEE9NyvPF4Rh6vK
         wqaGHeelABxWow2cRer7+9CeEHBeNYkY6If1eC+BHD801TdrgE+2J5jO2ZPS7V3+maff
         56ElAubpTnG0VHjx5lpD1ZLeQJAM79AoFW0mRyoOvc/c0VboDnkVVwVINS4KWHL4eu/a
         kalTOs3fyMCWFacsqC45bx8EbaqDppf2GhdZhOW+hD6x/wdD8VJ4EtRSpZzhdZE2RM6j
         awmMYaL2NyhXuMdGQFVz9Qb6dg85V2YzDa0kH6EiSxL3xjm4Wd+raUnRKSInhOfQFw63
         ncjg==
X-Gm-Message-State: APjAAAVWFIgNtELb/x95yZj1yjbSuzlGfh5XfXwvkq+iH4k1eyE9wLy1
        /5ndL/im/ngxQ2zyuC4ETIkOpg==
X-Google-Smtp-Source: APXvYqwFmgkphIkqfxWWjshP28A818A48RLlRF6DHm7ckJiyUrh0iPpp7SYoMLYwci6rTiP/epZdRA==
X-Received: by 2002:a5d:6b11:: with SMTP id v17mr14006456wrw.323.1562143779941;
        Wed, 03 Jul 2019 01:49:39 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id v67sm2068564wme.24.2019.07.03.01.49.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jul 2019 01:49:38 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 2/6] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-3-srinivas.kandagatla@linaro.org>
 <20190702144411.GP2793@sirena.org.uk>
 <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
 <20190702165753.GQ2793@sirena.org.uk>
Message-ID: <0a9a994c-5a88-539f-3af0-76754b9b58d1@linaro.org>
Date:   Wed, 3 Jul 2019 09:49:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190702165753.GQ2793@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 02/07/2019 17:57, Mark Brown wrote:
> On Tue, Jul 02, 2019 at 05:37:01PM +0100, Srinivas Kandagatla wrote:
>> On 02/07/2019 15:44, Mark Brown wrote:
>>> On Tue, Jul 02, 2019 at 09:09:16AM +0100, Srinivas Kandagatla wrote:
> 
>>>> +	for (i = 0; i < ARRAY_SIZE(cpr_defaults); i++) {
>>>> +		regmap_bulk_write(data->regmap,
>>>> +				  WCD934X_CODEC_CPR_WR_DATA_0,
>>>> +				(u8 *)&cpr_defaults[i].wr_data, 4);
>>>> +		regmap_bulk_write(data->regmap,
>>>> +				  WCD934X_CODEC_CPR_WR_ADDR_0,
>>>> +				(u8 *)&cpr_defaults[i].wr_addr, 4);
> 
>>> What is "cpr" and should you be using a regmap patch here?  Why
>>> is this not with the other default updates?  You've got loads of
>>> random undocumented sequences like this all through the driver,
>>> are they patches or are they things that should be controllable
>>> by the user?
> 
>> It makes sense to have a single default map here, I will do the in next
>> version. And regarding user controllable, I will go thru the list once
>> again in detail and remove user controllable registers.
> 
> What is a "default map"?  In terms of user controllable stuff
> it's not just a question of if things are currently user
> controllable but also if they should be user controllable.

I meant default updates here. These magic values and list came from 
downstream android code, so I will have to audit them before I can say 
that it will be useful for them to be exposed to user.
Most of things that made sense to provide a user control for the 
usecases of playback/capture/sidetone/speakers are already exposed via 
mixer controls.
> 
>>>> +	return of_platform_populate(wcd->dev->of_node, NULL, NULL, wcd->dev);
> 
>>> Why are we doing this?
> 
>> I will not be using MFD in this instance as most of the resources like
>> interrupts, pins, clks, SoundWire are modeled as proper drivers with
>> their respective subsystems.
> 
> This is a driver for a single device, you should be able to
> instantiate things without requiring binding through DT (and
> hence support non-DT systems such as those using ACPI).

My view point atleast from hw side was that Codec is Parent which is 
encompassing these different blocks and bus interface. DT representation 
clearly showed that relationship between the parent and child devices.
Binding it through DT will make sure that resources are ready before 
they are instantiated.

All the child devices also have some machine/board specific properties 
and dependency on resources from parent like regmap, clks, and bus.

In ACPI case, am not 100% sure how these will be represented inline with 
hw representation.

Are you suggesting to use MFD here?

> 
>> This gives a advantage of reusing those drivers like SoundWire, pinctrl
>> on other Qualcomm IPs as well!
>> Also I did not wanted to have a custom functions or hooks in the
>> drivers, so platform bus made much sense for me to use here, which can
>> take care of bringing up and tearing down the devices with proper parent
>> child relationship.
>> This will instantiate all the child devices like pinctrl, SoundWire
>> Controller and so on.
> 
> Just create platform devices like normal...
These are already modeled as platform devices, except the fact that 
these are children of Codec device.

thanks,
srini
> 
