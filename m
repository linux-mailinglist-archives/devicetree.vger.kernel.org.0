Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 226C4414DFB
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 18:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236478AbhIVQUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 12:20:46 -0400
Received: from mga04.intel.com ([192.55.52.120]:29169 "EHLO mga04.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236627AbhIVQUq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 12:20:46 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="221747139"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; 
   d="scan'208";a="221747139"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2021 09:18:05 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; 
   d="scan'208";a="702313896"
Received: from kjgomez-mobl1.amr.corp.intel.com (HELO [10.209.164.106]) ([10.209.164.106])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Sep 2021 09:18:03 -0700
Subject: Re: [PATCH v7 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210921133709.4973-1-srinivas.kandagatla@linaro.org>
 <20210921133709.4973-19-srinivas.kandagatla@linaro.org>
 <7021cdec-382b-faa9-cf6c-ee06edbf19a7@linux.intel.com>
 <9ea759db-f2ae-8b26-eff9-8557267803d2@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <c03cedad-971d-2eee-a1a5-7f2d6c105682@linux.intel.com>
Date:   Wed, 22 Sep 2021 10:40:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <9ea759db-f2ae-8b26-eff9-8557267803d2@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



>>> +    /* Inline with Qualcomm UCM configs and linux-firmware path */
>>> +    snprintf(tplg_fw_name, sizeof(tplg_fw_name),
>>> "qcom/%s/%s-tplg.bin", card->driver_name,
>>> +         card->name);
>>
>> use kasprintf instead of fixed 128-char array?
> I moved this to kasprintf in next version.
> 
>>
>> Also you should use a qcom/audioreach/ prefix to possible interference
>> with other parts of qcom...
>>
> 
> So Qualcomm linux-firmwares are arranged something like
> 
> qcom/sdm845/*
> qcom/sm8250/*
> qcom/sm8150/*
> 
> and UCM something like
> this:Qualcomm/sm8250/Qualcomm-RB5-WSA8815-Speakers-DMIC0.conf
> 
> Qualcomm/sm8250/Qualcomm-RB5-WSA8815-Speakers-DMIC0.conf
> 
> 
> Atleast in Qualcomm soundcard case we have driver name set to SoC name
> and we tend to reuse this driver across multiple platforms.
> 
> second part card name actually is from model device tree property, in
> this case which is "Qualcomm-RB5-WSA8815-Speakers-DMIC0"
> 
> so we will endup looking for
> /lib/firmare/qcom/sm8250/Qualcomm-RB5-WSA8815-Speakers-DMIC0-tplg.bin
> 
> AFAIU, it should not interface with any other qcom parts.
> 
> for Other qcom parts this model will change so the topology file name.

that should be fine.

>>> +
>>> +    ret = request_firmware(&fw, tplg_fw_name, dev);
>>> +    if (ret < 0) {
>>> +        dev_info(dev, "loading %s failed %d, falling back to
>>> dfw-audioreach-tplg.bin\n",
>>> +             tplg_fw_name, ret);
>>> +        /* default firmware */
>>> +        ret = request_firmware(&fw, "dfw-audioreach-tplg.bin", dev);
>>> +        if (ret < 0) {
>>> +            dev_err(dev, "tplg fw dfw-audioreach-tplg.bin load
>>> failed with %d\n", ret);
>>
>> the dfw prefix isn't very helpful...Intel's example of "dfw_sst.bin" is
>> a historical reference, not something you should reuse.
> 
> Rethinking on this once again, Am not sure if it even makes sense to
> support this default setup. It will be very hard to get a working
> defalut tplg on every platform. So am planning to remove this in next
> version.
> 
> Do you see any issues?

No, I don't think it's practical to use this default name either. We
don't have it for SOF.

Even for developers who modify a default, it's better to place a new
topology with the same name in /lib/firmware/updates/qcom and let
request_firmware() find the updated file with the existing paths [1]

[1]
https://www.kernel.org/doc/html/latest/driver-api/firmware/fw_search_path.html
