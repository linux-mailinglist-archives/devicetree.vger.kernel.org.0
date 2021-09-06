Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE7F2401E43
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 18:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243963AbhIFQ36 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 12:29:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243784AbhIFQ36 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 12:29:58 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04B74C061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 09:28:53 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o39-20020a05600c512700b002e74638b567so310205wms.2
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 09:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=S5ouu0sCwAAb7QGWEvTGp15oiRUoB6xbxVGPJ+dRjKo=;
        b=Uqu3Z2vilSG56DjF9a/lgrx6Scc/x0nG9WaT3A8qWMGaikGhfd8LpeAcMwZy7KcK8H
         GUMw5LSLyDqz70Yt1oz6ICXqjjPOHgEhchmoOKLZ9JnOSE+Bs5v2icfTb5qvhMmZ8dCu
         ELnJUfk6onODISF05iMm3Swd6F9OZZUjh2W5f73QiOCblCwFHsKviZNJfhxq5QIzsxm1
         znH5eqCMiqjJaVWHmMSkpK8vDTe682U+PRu26/EB4ph74sA9DDZSxrQTkeE6cKt6xofc
         b50GTn5NCBsg0REurmr6wKRssrn0kBz3mZXStZTpogGFyZQwnnJRMzzjWkMETrftYej+
         xmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=S5ouu0sCwAAb7QGWEvTGp15oiRUoB6xbxVGPJ+dRjKo=;
        b=TrQDnxrHZkndPpBsr2ctX8MQlBbhJdCxKM4NQj+J2LUMiQEPNjEDxwnBhcwSU5kJn6
         UcHejKQWSOjqeWvfqLBkDolJVM8z+zkPi4A9cThbeejGwqeRGpPbPptlHiXV1NYUV+MB
         ch8lThZqCon9eIAcrWI5foa2g6Orwe23RBkUmsjbiovhV8C51np73MzSaTXavE+MpRVC
         hEfM/DGpIey9ANxseqrz+QvIwBksgurUeTDjPd3RWE0z9Y5BRMSCotAGwWbLnGpvGKXm
         J/Ce8iSWDjb9fQOPDtq+ESPusX4RI/vMQbR2HP1ifTfxg06MrKSzbEasRg/ENF3T5PhM
         pKIg==
X-Gm-Message-State: AOAM533YOFnPCmbEPwDea4x9RAm0rCjGBCQkqhIit8N+EEUL+CR1ja5s
        hRQltz8eO/pDFR1UrJsFQnLA5Q==
X-Google-Smtp-Source: ABdhPJxZSxxGxoOQyouG73qLYaGMeiQxaddUTktzM1YhoSHnKghMaez+80wb+6lKzEGZ5ytcSMXHnw==
X-Received: by 2002:a05:600c:1d05:: with SMTP id l5mr12173070wms.139.1630945731569;
        Mon, 06 Sep 2021 09:28:51 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id l17sm8636503wrz.35.2021.09.06.09.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:28:51 -0700 (PDT)
Subject: Re: [PATCH v5 14/21] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-15-srinivas.kandagatla@linaro.org>
 <ddb4f36b-8a43-d1e9-0429-78d8eefc9474@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <8de8d53d-87f7-f35d-d7d2-76b3aa4d396a@linaro.org>
Date:   Mon, 6 Sep 2021 17:28:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ddb4f36b-8a43-d1e9-0429-78d8eefc9474@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre for taking time to review the patches.

On 03/09/2021 15:23, Pierre-Louis Bossart wrote:
> 
> 
> 
>> +struct apm_sub_graph_params  {
>> +	struct apm_module_param_data param_data;
>> +	uint32_t num_sub_graphs;
>> +	struct apm_sub_graph_data sg_cfg[0];
> 
> I thought the use of zero-length arrays [0] was deprecated in favor of
> flexible arrays []?
Thanks for the hints, I will fix such instances, typos and along with 
missing new lines before sending out next version.

> 
>> +} __packed;
>> +
...
>> +struct audioreach_module {
>> +	uint32_t module_id;
>> +	uint32_t instance_id;
>> +
>> +	uint32_t max_ip_port;
>> +	uint32_t max_op_port;
>> +
>> +	uint32_t in_port;
>> +	uint32_t out_port;
>> +
>> +	/* Connections */
>> +	uint32_t src_mod_inst_id;
>> +	uint32_t src_mod_op_port_id;
>> +	uint32_t dst_mod_inst_id;
>> +	uint32_t dst_mod_ip_port_id;
>> +
>> +	/* Format specifics */
>> +	uint32_t ch_fmt;
>> +	uint32_t rate;
>> +	uint32_t bit_depth;
>> +
>> +	/* I2S module */
>> +	uint32_t hw_interface_idx;
>> +	uint32_t sd_line_idx;
>> +	uint32_t ws_src;
>> +	uint32_t frame_size_factor;
>> +	uint32_t data_format;
>> +	uint32_t hw_interface_type;
>> +
>> +	/* PCM module specific */
>> +	uint32_t interleave_type;
>> +
>> +	/* GAIN/Vol Control Module */
>> +	uint16_t gain;
> 
> newline for consistency?
>> +	/* Logging */
>> +	uint32_t log_code;
>> +	uint32_t log_tap_point_id;
>> +	uint32_t mode;
> 
> probably not related to logging, comment missing?


This is actually a log mode to to indicate whether to log immediately 
(1) or wait until log buffer is completely filled (0)

I will rename this to log_mode in next version and also add an extra new 
line to split some member used for book keeping.

> 
>> +	struct list_head node;
>> +	struct audioreach_container *container;
>> +	struct snd_soc_dapm_widget *widget;
>> +};
>> +

--srini
