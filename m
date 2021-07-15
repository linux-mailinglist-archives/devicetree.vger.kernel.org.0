Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 602F13C9CAB
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 12:32:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241344AbhGOKfC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 06:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241315AbhGOKfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 06:35:01 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD3F3C06175F
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 03:32:08 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id r11so7075609wro.9
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 03:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QQ9uYw60QT52Mb6pwDvwipu2yY8+bwDR1+TUxrl1UKg=;
        b=wUmdJPHcrUBQXsFk6OQVqkBVLEvFwKaynwMe9+94Zwnofrjs/vvigT28RgKWKS0x1X
         QqVta5d9JGRFbDeD5vMTECO30aIn30e0g4P+MuWtskgg3+Bd8mJKgpLNDvq9I1XDxfz8
         mccDpBwfxXBbl5B70SvH0ZSfYV+/ytfK/ko2040mq6/RgSfRPviHZzcNwgCV7qrUvcE6
         q1TkX7/aV2DivCPlcuf6Liu93osMxNISUMzTAEecaiBdF8NiVC6nVVQ//L6Ly4vakmwM
         UqvEYDmiyOGZtdotfW/Th8oKZBlvjzQWSRjtDxmnC4LeuHpQzWGB5+wzBNBukmeqBzCf
         yHiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QQ9uYw60QT52Mb6pwDvwipu2yY8+bwDR1+TUxrl1UKg=;
        b=qk0EN0HUU85YhWzgGaGp4EAakfDwI9hh7+SvksgeZZ+If22zWfSjk3nne2OQfUaDtY
         0EJrzVa0vaigFFBIiJyTaXjx9rJPCQ9Pgq5xMVFkkHkL9Fea3SOSL8siprm28dg+AneR
         3JTqEiDa/u61SreZE95LKsOEKoRQU3StL3nwC4hvg6LFfQKUisYdQAUCHvI/tVA7P7Yw
         A9zGOHJ+BYn2iwyPZ7JU/d1mphcua21Nq38IqVBQ/vbdc7e5BsQ2kUbjPOE2yIhICdoe
         FUsfpc92MU1OVI+0byolP5JFEZrHdOA2z4Dh/j4C77yXxwysGxPycIdlHsh42s0bE3AJ
         AqKQ==
X-Gm-Message-State: AOAM530l/1cL3llH0keUYLUX4ojPp6n19SqBex/j2sqocKabPBHPreXx
        /LOLzZGGoWidopjLM9opsxHtRg==
X-Google-Smtp-Source: ABdhPJzbmzr56TMMDysLHgbDl/J9edrHkbunhopnL4Ep1n/ouXkSOU2eeiUZe+h/zHlAE2GwjOyh+Q==
X-Received: by 2002:a5d:6992:: with SMTP id g18mr4738344wru.118.1626345127586;
        Thu, 15 Jul 2021 03:32:07 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o22sm4593073wmc.18.2021.07.15.03.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 03:32:07 -0700 (PDT)
Subject: Re: [PATCH v2 07/16] ASoC: qcom: audioreach: add module configuration
 command helpers
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org, linux-kernel@vger.kernel.org
References: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
 <20210714153039.28373-8-srinivas.kandagatla@linaro.org>
 <d3e9bf09-cc72-c527-89b2-5f23a15163e4@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <5d8eadba-dc58-5f84-93ad-0430de049958@linaro.org>
Date:   Thu, 15 Jul 2021 11:32:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d3e9bf09-cc72-c527-89b2-5f23a15163e4@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre,

On 14/07/2021 17:48, Pierre-Louis Bossart wrote:
> 
>> +static int audioreach_shmem_set_media_format(struct q6apm_graph *graph,
>> +				       struct audioreach_module *module,
>> +				       int direction, uint32_t rate,
>> +				       uint32_t num_channels,
>> +				       u8 channel_map[PCM_MAX_NUM_CHANNEL],
>> +				       uint16_t bits_per_sample)
>> +{
>> +	struct apm_module_param_data *param_data;
>> +	struct payload_media_fmt_pcm *cfg;
>> +	struct media_format *header;
>> +	int rc, payload_size;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +
>> +	if (num_channels < 0 || num_channels > 2)
>> +		dev_err(graph->dev, "Error: Invalid channels (%d)!\n", num_channels);
> 
> that doesn't sound good, you flag num_channels as an invalid value but still continue using it.

I forgot to run cppcheck after doing make W=1 C=1.

It did catch these, will fix all such instances before I send out next 
version.



--srini
