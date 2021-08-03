Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0B8A3DF079
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 16:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236631AbhHCOjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 10:39:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236677AbhHCOjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 10:39:16 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C037C061757
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 07:39:04 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id k4so12633078wms.3
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 07:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M8gAj66STiwkkGW8S9E1MMInjJYv6wtJtKzCqXg7juQ=;
        b=HpvhYYi4fm+8uzvbtCtyoqymYi/p6+HblVxg9yVBLZCmGYeD9lGxD8XwPAUS5kf0Hi
         vFZbgUZzio06LrDnFD0i6P5gEu0u4rXr7C4asJ6zQSXxBoKVDTzSHI5lAiCSZdoteCv6
         p8/pXoqIwnTx8cjlOWmIcV9NeGWB0iC8UM3HR4z22UXzzY1oDZoAbxqeFz8FnHPIk4ev
         6ZPckoep2UcroHTi6iE4qEMfPVA0WOkPtqJMN9cECB+MZpFLC6D+FkI+phd7/I1Af7gu
         zhCvzL2MI8A3u8psySRXKfeP8OstQuYyyiorzbfLBlez1i2Rn3MPuwQcWaOmgzVg8mSk
         RFFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M8gAj66STiwkkGW8S9E1MMInjJYv6wtJtKzCqXg7juQ=;
        b=BndI9KCiLalmJJsnOqQP4SZVy02m5SuIUr5nk24ttRvPZHukmhcRPZsa0pMABzrO3i
         Huir4uuMgQ8XQfw+w6ihb9pRW7mkotC5/wjoN0hdgkJOr3/C2alFJHypEv43oVAXbJF4
         zVeiz7iiESZGOA/riVmqXRulagJFZQtsd7+e60jzq3Uks0a+ogvbbZ6szb7mrKMhT8E2
         fxms+pRItuoYGjgipCSOaZ1YFGxU9Zncx2ppBX1maVjoncLM5eHDM+slBQPwSLnvn2m/
         I0LQbrp5WQoDRDgV510R0ivQzrWUur3ZNN+nRZrQ+W/E5Y6QB4TyyKLVzAc5K+b+JiRD
         LK3g==
X-Gm-Message-State: AOAM533devgNrIGWBvcb4uKKVCOG+ThnzCr4EkiqoSvmWFl/wVJHFeML
        TXq5exUiI6A2YfkLDXl5a+RZVQ==
X-Google-Smtp-Source: ABdhPJwjOUvnzHBFh+pvSm4xxD8HG6cddUUCmGbo8HqyGhCTlDoYFZH+MZiXycNLDQkQTnZKmgqUzw==
X-Received: by 2002:a7b:c416:: with SMTP id k22mr4719475wmi.177.1628001542661;
        Tue, 03 Aug 2021 07:39:02 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id g5sm2692133wmh.31.2021.08.03.07.39.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 07:39:01 -0700 (PDT)
Subject: Re: [PATCH v3 13/20] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>, bjorn.andersson@linaro.org,
        broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
 <3c97465c-356d-9989-c855-6eae325e8da6@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9bdfd7f9-b167-4ec5-880b-c86126c9d1cf@linaro.org>
Date:   Tue, 3 Aug 2021 15:39:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3c97465c-356d-9989-c855-6eae325e8da6@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Amadeusz for review,

On 03/08/2021 15:19, Amadeusz Sławiński wrote:
> On 8/3/2021 2:54 PM, Srinivas Kandagatla wrote:
>> Add basic helper functions for AudioReach.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
> 
> ...
> 
>> +
>> +#define APM_PARAM_ID_GAIN            0x08001006
>> +struct param_id_gain_cfg {
>> +    uint16_t gain;
>> +    uint16_t reserved;
>> +};
>> +
>> +#define PARAM_ID_PCM_OUTPUT_FORMAT_CFG        0x08001008
>> +struct param_id_pcm_output_format_cfg {
>> +    uint32_t data_format;
>> +    uint32_t fmt_id;
>> +    uint32_t payload_size;
>> +} __packed;
>> +
>> +struct payload_pcm_output_format_cfg {
>> +    uint16_t bit_width;
>> +    uint16_t alignment;
>> +    uint16_t bits_per_sample;
>> +    uint16_t q_factor;
>> +    uint16_t endianness;
>> +    uint16_t interleaved;
>> +    uint16_t reserved;
>> +    uint16_t num_channels;
>> +    uint8_t channel_mapping[0];
> 
> Current kernel convention is to use something like:
> uint8_t channel_mapping[];
> for flexible arrays.
> I've pointed out few more later, but it would be best to run some kind 
> of search to find them all in all files in patchset.

I agree, will search and fix such instances.

--srini
