Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B5D41ACA5
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 12:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240117AbhI1KMP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 06:12:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240056AbhI1KMP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 06:12:15 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D770C061575
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 03:10:36 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id u18so57089740wrg.5
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 03:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VRYyjAJqzt+oGd/XIZ5uVDcZC/sKLm2kGO/Eia5PR48=;
        b=CY+3n/OoUgJ33VHpMXzl38AWXNiKoEOa6EbAeHPbPKGTdKHJ6sz9MajJRffs3mAHV+
         jFJv79HSJrF1BR4M78ECqWsT/h98n9SxGGQbdxSts7ENFy1MUVXa84jPbYW4ju6hcgfg
         IkCJHNH+Iz3TXVzIxlobhrNy16mRxiYgiKDtex1rPkWZyNd1SF0pyV2sBa33auOsgLfk
         DuAP+Ie0DR7qthOh1WmdNU/DSQl0f3/zd1CBhpupRPYj5cYfy1XqUOFwPLjBHXe0qzrR
         36NgS/xo3vGI5bnx3xIxnsxqUrZ50PeS3JVnSf+koXbu61JWFeLEtqgYOsnD9iYgjr+0
         ms0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VRYyjAJqzt+oGd/XIZ5uVDcZC/sKLm2kGO/Eia5PR48=;
        b=L8p2BqJcnZ3qdiIbcHI0nNfIT0i3gfjyEqOOEJXipyFZXVRufXBvw6xRgsYxJWx5nd
         24uZhdSff2byfD0BlHj3gDSfg3+xxHOSuqR7HNT932Q3zmsVJl1l/VclKi9KSwOBwHX4
         lbAcMRydmzH4oFYquQD5yAAjgFzadtEL+rc6WfMBJcGlmF378R8U17BPyKbeT6JYtYL6
         zPAn+epRwQdhiwaQif5bGT5Q6X3vqWOYBvn0k8cgvPVFyCrS1EBGdlAkZJ8IJcZdxNLc
         zPgeuucUMwcvXrdHk/enkckxsJMqy5iZSgBAJ9tW57rjeXoTZgBXe84p3jUdgXCiK4yM
         6Dww==
X-Gm-Message-State: AOAM531oIsfddAYIhu2a7tVsx/vGv5RSE61c4puR6iQu+rTbDXPx/0jK
        Fo/PGyGNvdTMoheLD8NeHk1pwFBnZOTy2A==
X-Google-Smtp-Source: ABdhPJz/u8z6imIBMwGvamngpy6HMxJyniXUvL/1f3PWBZNUlRmeNIQhJH5pU11SAugxMcVvjzTpxA==
X-Received: by 2002:adf:ee4d:: with SMTP id w13mr5088754wro.223.1632823834677;
        Tue, 28 Sep 2021 03:10:34 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o5sm7932803wrf.85.2021.09.28.03.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 03:10:34 -0700 (PDT)
Subject: Re: [PATCH v8 14/22] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-15-srinivas.kandagatla@linaro.org>
 <ebfe1e31-778d-852a-20bf-ac8fe860dcc2@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <d96a7337-c594-c64a-46f9-73d7d6ad77b7@linaro.org>
Date:   Tue, 28 Sep 2021 11:10:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ebfe1e31-778d-852a-20bf-ac8fe860dcc2@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 17:08, Pierre-Louis Bossart wrote:
> 
> 
>> +struct apm_sub_graph_params  {
>> +	struct apm_module_param_data param_data;
>> +	uint32_t num_sub_graphs;
>> +	struct apm_sub_graph_data sg_cfg[];
>> +} __packed;
> 
> The style you use is num_foobar and later foobar[]
> 
>> +/* container config */
>> +struct apm_container_obj  {
>> +	struct apm_container_cfg container_cfg;
>> +	/* Capability ID list */
>> +	struct apm_prop_data cap_data;
>> +	uint32_t num_capability_id;
>> +	uint32_t capability_id;
> 
> but here you have both a num_capability_id and capability_id
> 
> It's not very clear what they mean, or if there is a dependency?

DSP supports multiple capabilities for a container, however for now this 
version of patches only support 1 capability for a container.

I will add multiple capabilities once am in a position to test it.

> 
>> +	/* Container graph Position */
>> +	struct apm_prop_data pos_data;
>> +	struct apm_cont_prop_id_graph_pos pos;
>> +
>> +	/* Container Stack size */
>> +	struct apm_prop_data stack_data;
>> +	struct apm_cont_prop_id_stack_size stack;
>> +
>> +	/* Container proc domain id */
>> +	struct apm_prop_data domain_data;
>> +	struct apm_cont_prop_id_domain domain;
>> +} __packed;
> 
>> +/* Module IDs */
>> +#define MODULE_ID_WR_SHARED_MEM_EP	0x07001000
>> +#define MODULE_ID_RD_SHARED_MEM_EP	0x07001001
>> +#define MODULE_ID_GAIN			0x07001002
>> +#define MODULE_ID_PCM_CNV		0x07001003
>> +#define MODULE_ID_PCM_ENC		0x07001004
>> +#define MODULE_ID_PCM_DEC		0x07001005
>> +#define MODULE_ID_CODEC_DMA_SINK	0x07001023
>> +#define MODULE_ID_CODEC_DMA_SOURCE	0x07001024
>> +#define MODULE_ID_I2S_SINK		0x0700100A
>> +#define MODULE_ID_I2S_SOURCE		0x0700100b
>> +#define MODULE_ID_DATA_LOGGING		0x0700101A
>> +
>> +#define APM_CMD_GET_SPF_STATE		0x01001021
>> +#define APM_CMD_RSP_GET_SPF_STATE	0x02001007
>> +
>> +#define APM_MODULE_INSTANCE_ID		0x00000001
>> +#define PRM_MODULE_INSTANCE_ID		0x00000002
>> +#define AMDB_MODULE_INSTANCE_ID		0x00000003
>> +#define VCPM_MODULE_INSTANCE_ID		0x00000004
>> +#define AR_MODULE_INSTANCE_ID_START	0x00006000
>> +#define AR_MODULE_INSTANCE_ID_END	0x00007000
>> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_START	0x00007000
>> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_END	0x00008000
>> +#define AR_CONT_INSTANCE_ID_START	0x00005000
>> +#define AR_CONT_INSTANCE_ID_END		0x00006000
>> +#define AR_SG_INSTANCE_ID_START		0x00004000
>> +
>> +#define APM_CMD_GRAPH_OPEN			0x01001000
>> +#define APM_CMD_GRAPH_PREPARE			0x01001001
>> +#define APM_CMD_GRAPH_START			0x01001002
>> +#define APM_CMD_GRAPH_STOP			0x01001003
>> +#define APM_CMD_GRAPH_CLOSE			0x01001004
>> +#define APM_CMD_GRAPH_FLUSH			0x01001005
>> +#define APM_CMD_SET_CFG				0x01001006
>> +#define APM_CMD_GET_CFG				0x01001007
>> +#define APM_CMD_SHARED_MEM_MAP_REGIONS		0x0100100c
>> +#define APM_CMD_SHARED_MEM_UNMAP_REGIONS	0x0100100d
>> +#define APM_CMD_RSP_SHARED_MEM_MAP_REGIONS	0x02001001
>> +#define APM_CMD_RSP_GET_CFG			0x02001000
>> +#define APM_CMD_CLOSE_ALL			0x01001013
>> +#define APM_CMD_REGISTER_SHARED_CFG		0x0100100A
> 
>> +/* APM module */
>> +#define APM_PARAM_ID_SUB_GRAPH_LIST		0x08001005
>> +
>> +#define APM_PARAM_ID_MODULE_LIST		0x08001002
> 
>> +#define APM_PARAM_ID_MODULE_PROP		0x08001003
> 
> It seems like those definition follow a pattern, e.g. bits 28..32 a type
> and bits 0..15 a token?
Yes, it does have a pattern, each Opcode is divided in to 3 fields.

GUID OWNER 31:28
GUID Type 27:24
MAIN GUID 23:0

--srini


> 
> 
>>
