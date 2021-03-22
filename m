Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18B69343DCC
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:28:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbhCVK1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230247AbhCVK12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:27:28 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B36E5C061763
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:27:23 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id o16so16087481wrn.0
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qJNY91f+w4+wtOsANQ3ObZ9BenMrmXeg5jvJ0tXbOzo=;
        b=OyUtYYy/i8s3X9pE4lrpClpgXs6fa18yystLYjbRAkePOL42fADmCWMhnYH4QZ11on
         llwHAEHeHTylqpl1isPgrgxHcPF/4ohhDeZktZr8VVVS6HH8mn8eaB2OY8/RahqyVrx6
         0JbW2thLKLs+KpMxytM6z2Yop772RGRYp8uId5yL0AZLXXS3RCmyAXDxVbD/o42xrDyx
         IEQDi4nof6RNLEsHOa44zhrZrlqF2UJ1vOpKMD5lttPO/FinbOIkG2Po9uAfXoMQUcNe
         YCMysqo7De+itoIkUi68G4f4kQ48e4WmDuoe3etIbCBx9EFCjLsH01U6uksj08gSEdEF
         bPIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qJNY91f+w4+wtOsANQ3ObZ9BenMrmXeg5jvJ0tXbOzo=;
        b=Qw6RX9+iviPVpZvo33SctpjN08p4N0ItGfslyOBaiipjBaZwptxmsCI8E/P/XarLXn
         T0Of9c6ntb5AplVjiKFFDcwXeOFebfbj/eHeXOr49HF9Rb/LdJUmLzFBEKjGheX4TKqp
         Wfufva5s5DiiTvjc74YjlEzSU2FH2RW4CNCnorZpbIRw2dgJal7bu8Ti7MT5XTTvfawp
         /Wma5UYVJVSOkO8qjGA1vqEa+aJR6Ms+ncGafNN7q95ecAcH+nq35hfMelUEvLS2GDj5
         W6Hlfjavdwlwl8q7JSGviLDQuNUJmQu+yWpLITBimtGh3vlbalAGMN72LW1uJR49BOcJ
         NG+w==
X-Gm-Message-State: AOAM530BLEWglU/16GbmmXR3e8sTPd1Iw3R8FS2DuljycSKO0ETseLwX
        pWcKgvdfbpuWrtweovxfzMpVpA==
X-Google-Smtp-Source: ABdhPJwS3HmlVedtdciuMMQ5/o7qyi0fxKgS+OLkINay6rg6MttvFm91CFLY99rfJMj7SneH3S04iw==
X-Received: by 2002:adf:ea82:: with SMTP id s2mr17660006wrm.1.1616408842521;
        Mon, 22 Mar 2021 03:27:22 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id t1sm18380513wry.90.2021.03.22.03.27.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 03:27:22 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] ASoC: codecs: add wcd938x support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        broonie@kernel.org
Cc:     robh@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com
References: <20210319092919.21218-1-srinivas.kandagatla@linaro.org>
 <27e19637-b9ea-1adb-46e5-252480a9a353@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <6ab4aef5-6eff-6d0a-a10d-fa7530c718bc@linaro.org>
Date:   Mon, 22 Mar 2021 10:27:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <27e19637-b9ea-1adb-46e5-252480a9a353@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Many thanks Pierre for reviewing the patches,

On 19/03/2021 16:09, Pierre-Louis Bossart wrote:
> 
> 
> On 3/19/21 4:29 AM, Srinivas Kandagatla wrote:
>> This patchset adds support for Qualcomm WCD938X codec.
>>
>> Qualcomm WCD9380/WCD9385 Codec is a standalone Hi-Fi audio codec IC
>> connected over SoundWire. This device has two SoundWire devices, RX and
>> TX respectively supporting 4 x ADCs, ClassH, Ear, Aux PA, 2xHPH,
>> 7 x TX diff inputs, 8 DMICs and MBHC.
>>
>> Even though this device has two SoundWire devices, only tx device has
>> access to main codec Control/Status Registers!
> 
> That part is a new concept we haven't seen so far with SoundWire 
> support, and I added a number of comments in the patches.
> 
> It would really help if you could add more explanations on how 
> regmap/pm_runtime/gpios/regulators/interrupts are supposed to work with 
> such a functional split. Thanks!


codec regmap for Control and status registers are only possible via TX 
Soundwire device as per h.w wiring.
In the existing code we take care of this in common code (wcd938x.c) 
shared between TX and RX devices.

pm runtime is also handled in the common code, Ex. resume on rx dev will 
make sure that tx dev is resumed first, and suspend on rx is nop.

I have tested basic pm runtime auto-suspend cases with this.

same with reset gpios/regulators and regulators.

SDW Interrupts are also via tx device.



> 
>> This patchset along with other SoundWire patches on the list
>> have been tested on SM8250 MTP device.
>>
>> Am planning to send support for MBHC once this driver gets accepted!
>>
>> Thanks,
>> srini
>>
>> Many thanks for reviewing v2.
>>
>>
>> Changes since v2:
>>     - fixed dt_binding_check error
>>
>>
>> Srinivas Kandagatla (7):
>>    ASoC: dt-bindings: wcd938x: add bindings for wcd938x
>>    ASoC: codecs: wcd-clsh: add new version support
>>    ASoC: codecs: wcd938x: add basic driver
>>    ASoC: codecs: wcd938x: add basic controls
>>    ASoC: codecs: wcd938x: add playback dapm widgets
>>    ASoC: codecs: wcd938x: add capture dapm widgets
>>    ASoC: codecs: wcd938x: add audio routing
>>
>>   .../bindings/sound/qcom,wcd938x.yaml          |  165 +
>>   sound/soc/codecs/Kconfig                      |    9 +
>>   sound/soc/codecs/Makefile                     |    2 +
>>   sound/soc/codecs/wcd-clsh-v2.c                |  350 +-
>>   sound/soc/codecs/wcd-clsh-v2.h                |   16 +
>>   sound/soc/codecs/wcd938x-sdw.c                |  291 ++
>>   sound/soc/codecs/wcd938x.c                    | 3623 +++++++++++++++++
>>   sound/soc/codecs/wcd938x.h                    |  676 +++
>>   8 files changed, 5122 insertions(+), 10 deletions(-)
>>   create mode 100644 
>> Documentation/devicetree/bindings/sound/qcom,wcd938x.yaml
>>   create mode 100644 sound/soc/codecs/wcd938x-sdw.c
>>   create mode 100644 sound/soc/codecs/wcd938x.c
>>   create mode 100644 sound/soc/codecs/wcd938x.h
>>
