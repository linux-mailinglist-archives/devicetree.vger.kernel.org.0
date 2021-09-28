Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68C9441ABF0
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:31:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239873AbhI1JdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240076AbhI1JdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:33:10 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E0D7C06176F
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:31:30 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d21so56726576wra.12
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=i1b5GK3S6Cy17pdW184aJcDhxHw/MUMkcwtoLp4djwQ=;
        b=ifesNPLCfq7E8NnEnIqeFYMymnvqeQsChFDK69uTlU+yC1JmHHl32Q29WWzHxD6KFD
         FR5p4JuO0/1RwaE1GU8qBJ9RwVqeySUYRYWPtIQhsz9eA9IarPyRo54wifXBTCHdjyk4
         Z1zBLA0Aj0rIt9N8TRIl75TJpygq3Ab0msl/f5I6ASbKaptmieRsG+Y/Va65Zh1Y86hn
         QLIIublU5vii3SKOXt+gQK5445Fvil/U10v6Y0DTmwsEvnPlS9z5U0qOuktUluS9qUe5
         FWfaNvgQJVdSMXqA/FbeOyFVDeURcIuCcUDYMjCtmmSfA3IZgySbCfDtgTu/wnf7T98G
         hjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=i1b5GK3S6Cy17pdW184aJcDhxHw/MUMkcwtoLp4djwQ=;
        b=BYhZmKTsbv9cf7X9Q5QdroZMhPWiQbBLXbL2wTKw7DFUAUUm2HaVLSesZHlUx8fToJ
         AyvHDqXIah1UVdot2/ZXno9B3sOFSsNxQFlgTEWveqj41faPzgbjBxn32dkctulIBV04
         1NXjgt40Y+tyJSaoR8O5GvSLSnzQzYNQTAJMFMJhbdS8jc+F77O+czQ016dZK202rwrG
         ArVSvddi+v4AkhASSp2R2a/6pyDWupQNne4oMVpPKTWEkhIgVFmhYrhOQElsZPynIKsc
         L3s4llrfE9Dd/cCQmHclXJl5M16SHRXGGQc1+JFnYl8auWiC2/LXIN58nBLu+A2yoqNy
         hxiQ==
X-Gm-Message-State: AOAM530tHuyK9EJ6bSYAyVBSYf1Blx/Y9zs66eUYy1LvZ7hzm6Gf69DN
        aws+da5eVz2//2+5fJHqfFYihg==
X-Google-Smtp-Source: ABdhPJznh+LcevV0YqWd+oDdKpGGNtycFlgDF0bk1nRZltqjseJAws7467lDcmyMYeMz+RhlH+89HA==
X-Received: by 2002:adf:e94d:: with SMTP id m13mr5384716wrn.28.1632821489011;
        Tue, 28 Sep 2021 02:31:29 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id y7sm16635351wrs.95.2021.09.28.02.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Sep 2021 02:31:28 -0700 (PDT)
Subject: Re: [PATCH v8 14/22] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>, bjorn.andersson@linaro.org,
        broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org, pierre-louis.bossart@linux.intel.com
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-15-srinivas.kandagatla@linaro.org>
 <d1f69cbc-37f6-dc47-258c-f53450dd558c@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <452d176b-98dc-43ca-7d1a-c233b6a683da@linaro.org>
Date:   Tue, 28 Sep 2021 10:31:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d1f69cbc-37f6-dc47-258c-f53450dd558c@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Amadeusz for reviewing,

On 28/09/2021 09:00, Amadeusz Sławiński wrote:
> On 9/27/2021 3:55 PM, Srinivas Kandagatla wrote:
>> Add basic helper functions for AudioReach.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   sound/soc/qcom/qdsp6/audioreach.c | 265 ++++++++++++
>>   sound/soc/qcom/qdsp6/audioreach.h | 668 ++++++++++++++++++++++++++++++
>>   2 files changed, 933 insertions(+)
>>   create mode 100644 sound/soc/qcom/qdsp6/audioreach.c
>>   create mode 100644 sound/soc/qcom/qdsp6/audioreach.h
>>
>> diff --git a/sound/soc/qcom/qdsp6/audioreach.c 
>> b/sound/soc/qcom/qdsp6/audioreach.c
>> new file mode 100644
>> index 000000000000..34ec4c0d0175
>> --- /dev/null
>> +++ b/sound/soc/qcom/qdsp6/audioreach.c
>> @@ -0,0 +1,265 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +// Copyright (c) 2020, Linaro Limited
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/slab.h>
>> +#include <linux/soc/qcom/apr.h>
>> +#include <dt-bindings/soc/qcom,gpr.h>
>> +#include "audioreach.h"
>> +
>> +/* SubGraph Config */
>> +struct apm_sub_graph_data {
>> +    struct apm_sub_graph_cfg sub_graph_cfg;
>> +    struct apm_prop_data perf_data;
>> +    struct apm_sg_prop_id_perf_mode perf;
>> +    struct apm_prop_data dir_data;
>> +    struct apm_sg_prop_id_direction dir;
>> +    struct apm_prop_data sid_data;
>> +    struct apm_sg_prop_id_scenario_id sid;
>> +
>> +} __packed;
>> +
>> +#define APM_SUB_GRAPH_CFG_NPROP    3
>> +
>> +struct apm_sub_graph_params  {
>> +    struct apm_module_param_data param_data;
>> +    uint32_t num_sub_graphs;
>> +    struct apm_sub_graph_data sg_cfg[];
>> +} __packed;
>> +
>> +#define APM_SUB_GRAPH_PSIZE(n) ALIGN(sizeof(struct 
>> apm_sub_graph_params) + \
>> +                n * sizeof(struct apm_sub_graph_data), 8)
> 
> This looks, like you could use struct_size helper, something like:
> #define APM_SUB_GRAPH_PSIZE(n) ALIGN(struct_size(apm_sub_graph_params, 
> apm_sub_graph_data, n), 8)
> 

struct_size() macro first argument is structure pointer, so above will 
not work as it is.

I agree that we could use struct_size() in some cases, but in this 
particular case we will endup with more local pointer variables that are 
just declared to keep struct_size() macro happy.

IMO, Which will not make code any better than what it is now.

I will revist these and see if it makes sense to use it in other places.

>> +/* container config */
>> +struct apm_container_obj  {
>> +    struct apm_container_cfg container_cfg;
>> +    /* Capability ID list */
>> +    struct apm_prop_data cap_data;
>> +    uint32_t num_capability_id;
>> +    uint32_t capability_id;
>> +
>> +    /* Container graph Position */
>> +    struct apm_prop_data pos_data;
>> +    struct apm_cont_prop_id_graph_pos pos;
>> +
>> +    /* Container Stack size */
>> +    struct apm_prop_data stack_data;
>> +    struct apm_cont_prop_id_stack_size stack;
>> +
>> +    /* Container proc domain id */
>> +    struct apm_prop_data domain_data;
>> +    struct apm_cont_prop_id_domain domain;
>> +} __packed;
>> +
>> +struct apm_container_params  {
>> +    struct apm_module_param_data param_data;
>> +    uint32_t num_containers;
>> +    struct apm_container_obj cont_obj[];
>> +} __packed;
>> +
>> +#define APM_CONTAINER_PSIZE(n) ALIGN(sizeof(struct 
>> apm_container_params) + \
>> +                n * sizeof(struct apm_container_obj), 8)
>> +
> 
> Same here, use struct_size, and same applies for other defines in this 
> file, I won't add comment to all of them ;)
> 
>> +/* Module List config */
>> +struct apm_mod_list_obj {
>> +    /* Modules list cfg */
>> +    uint32_t sub_graph_id;
>> +    uint32_t container_id;
>> +    uint32_t num_modules;
>> +    struct apm_module_obj mod_cfg[];
>> +} __packed;
>> +
>> +struct apm_module_list_params {
>> +    struct apm_module_param_data param_data;
>> +    uint32_t num_modules_list;
>> +    /* Module list config array */
>> +    struct apm_mod_list_obj mod_list_obj[];
>> +} __packed;
>> +
> 
> (...)
> 
>> diff --git a/sound/soc/qcom/qdsp6/audioreach.h 
>> b/sound/soc/qcom/qdsp6/audioreach.h
>> new file mode 100644
>> index 000000000000..556443155416
>> --- /dev/null
>> +++ b/sound/soc/qcom/qdsp6/audioreach.h
>> @@ -0,0 +1,668 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +#ifndef __AUDIOREACH_H__
>> +#define __AUDIOREACH_H__
>> +#include <linux/types.h>
>> +#include <linux/soc/qcom/apr.h>
>> +#include <sound/soc.h>
>> +
>> +/* Module IDs */
>> +#define MODULE_ID_WR_SHARED_MEM_EP    0x07001000
>> +#define MODULE_ID_RD_SHARED_MEM_EP    0x07001001
>> +#define MODULE_ID_GAIN            0x07001002
>> +#define MODULE_ID_PCM_CNV        0x07001003
>> +#define MODULE_ID_PCM_ENC        0x07001004
>> +#define MODULE_ID_PCM_DEC        0x07001005
>> +#define MODULE_ID_CODEC_DMA_SINK    0x07001023
>> +#define MODULE_ID_CODEC_DMA_SOURCE    0x07001024
>> +#define MODULE_ID_I2S_SINK        0x0700100A
>> +#define MODULE_ID_I2S_SOURCE        0x0700100b
> 
> Small 'b' in hex value, use 'B' for consistency

I agree, will try find such instances and fix them before I send out 
next version.

> 
>> +#define MODULE_ID_DATA_LOGGING        0x0700101A
>> +
>> +#define APM_CMD_GET_SPF_STATE        0x01001021
>> +#define APM_CMD_RSP_GET_SPF_STATE    0x02001007
>> +
>> +#define APM_MODULE_INSTANCE_ID        0x00000001
>> +#define PRM_MODULE_INSTANCE_ID        0x00000002
>> +#define AMDB_MODULE_INSTANCE_ID        0x00000003
>> +#define VCPM_MODULE_INSTANCE_ID        0x00000004
>> +#define AR_MODULE_INSTANCE_ID_START    0x00006000
>> +#define AR_MODULE_INSTANCE_ID_END    0x00007000
>> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_START    0x00007000
>> +#define AR_MODULE_DYNAMIC_INSTANCE_ID_END    0x00008000
>> +#define AR_CONT_INSTANCE_ID_START    0x00005000
>> +#define AR_CONT_INSTANCE_ID_END        0x00006000
>> +#define AR_SG_INSTANCE_ID_START        0x00004000
>> +
>> +#define APM_CMD_GRAPH_OPEN            0x01001000
>> +#define APM_CMD_GRAPH_PREPARE            0x01001001
>> +#define APM_CMD_GRAPH_START            0x01001002
>> +#define APM_CMD_GRAPH_STOP            0x01001003
>> +#define APM_CMD_GRAPH_CLOSE            0x01001004
>> +#define APM_CMD_GRAPH_FLUSH            0x01001005
>> +#define APM_CMD_SET_CFG                0x01001006
>> +#define APM_CMD_GET_CFG                0x01001007
>> +#define APM_CMD_SHARED_MEM_MAP_REGIONS        0x0100100c
> 
> Small 'c' here, use 'C'
> 
>> +#define APM_CMD_SHARED_MEM_UNMAP_REGIONS    0x0100100d
> 
> and 'D' insted of 'd' here.
> 
>> +#define APM_CMD_RSP_SHARED_MEM_MAP_REGIONS    0x02001001
>> +#define APM_CMD_RSP_GET_CFG            0x02001000
>> +#define APM_CMD_CLOSE_ALL            0x01001013
>> +#define APM_CMD_REGISTER_SHARED_CFG        0x0100100A
>> +
>> +#define APM_MEMORY_MAP_SHMEM8_4K_POOL        3
>> +
>> +struct apm_cmd_shared_mem_map_regions {
>> +    uint16_t mem_pool_id;
>> +    uint16_t num_regions;
>> +    uint32_t property_flag;
>> +} __packed;
>> +
>> +struct apm_shared_map_region_payload {
>> +    uint32_t shm_addr_lsw;
>> +    uint32_t shm_addr_msw;
>> +    uint32_t mem_size_bytes;
>> +} __packed;
>> +
>> +struct apm_cmd_shared_mem_unmap_regions {
>> +    uint32_t mem_map_handle;
>> +} __packed;
>> +
>> +struct apm_cmd_rsp_shared_mem_map_regions {
>> +    uint32_t mem_map_handle;
>> +} __packed;
>> +
> 
> (...)
> 
> 
>> +#define DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER        0x04001003
>> +
>> +struct data_cmd_rd_sh_mem_ep_data_buffer {
>> +    uint32_t buf_addr_lsw;
>> +    uint32_t buf_addr_msw;
>> +    uint32_t mem_map_handle;
>> +    uint32_t buf_size;
>> +};
>> +
>> +#define DATA_CMD_RSP_RD_SH_MEM_EP_DATA_BUFFER        0x05001002
>> +
>> +struct data_cmd_rsp_rd_sh_mem_ep_data_buffer_done {
>> +    uint32_t status;
>> +    uint32_t buf_addr_lsw;
>> +    uint32_t buf_addr_msw;
>> +    uint32_t mem_map_handle;
>> +    uint32_t data_size;
>> +    uint32_t offset;
>> +    uint32_t timestamp_lsw;
>> +    uint32_t timestamp_msw;
>> +    uint32_t flags;
>> +    uint32_t num_frames;
>> +};
> 
> Rest of structs is marked with __packed and it seems like it describes 
> communication protocol, so it seems like you missed it here.
> 
These are mostly u32 it did work without packed, but I agree with you on 
missing __packed. Will fix such instances.

--srini

>> +
>> +#define DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER_V2        0x0400100B
>> +
>> +struct data_cmd_rd_sh_mem_ep_data_buffer_v2 {
>> +    uint32_t buf_addr_lsw;
>> +    uint32_t buf_addr_msw;
>> +    uint32_t mem_map_handle;
>> +    uint32_t buf_size;
>> +    uint32_t md_buf_addr_lsw;
>> +    uint32_t md_buf_addr_msw;
>> +    uint32_t md_mem_map_handle;
>> +    uint32_t md_buf_size;
>> +};
> 
> Same comment as above.
> 
>> +
>> +#define DATA_CMD_RSP_RD_SH_MEM_EP_DATA_BUFFER_V2    0x05001005
>> +
>> +struct data_cmd_rsp_rd_sh_mem_ep_data_buffer_done_v2 {
>> +    uint32_t status;
>> +    uint32_t buf_addr_lsw;
>> +    uint32_t buf_addr_msw;
>> +    uint32_t mem_map_handle;
>> +    uint32_t data_size;
>> +    uint32_t offset;
>> +    uint32_t timestamp_lsw;
>> +    uint32_t timestamp_msw;
>> +    uint32_t flags;
>> +    uint32_t num_frames;
>> +    uint32_t md_status;
>> +    uint32_t md_buf_addr_lsw;
>> +    uint32_t md_buf_addr_msw;
>> +    uint32_t md_mem_map_handle;
>> +    uint32_t md_size;
>> +} __packed;
>> +
>> +#define PARAM_ID_RD_SH_MEM_CFG                0x08001007
>> +
>> +struct param_id_rd_sh_mem_cfg {
>> +    uint32_t num_frames_per_buffer;
>> +    uint32_t metadata_control_flags;
>> +
>> +} __packed;
>> +
> 
> (...)
