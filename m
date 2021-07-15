Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC763C9CA9
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 12:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241331AbhGOKev (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 06:34:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241315AbhGOKeu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 06:34:50 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE019C061760
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 03:31:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id g16so7098990wrw.5
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 03:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OeiiPl20p9927jbWX7/PfpqS3lSPvusA08Tdqa5UmsY=;
        b=c4uipzQyvebNcq97tf/wFVVx3CSXp3afJYoykf5QKzyirFj9iWO4uusgOI0uPHrtTE
         VfgyKigHuq4KbdCSGL0eVh3ddESvxWA6SFdVHg41aU5mrPCCXDaBIZzIBzUQNPD8XU5r
         7Ql6MK5BejSEOUee+GZOdcidK+JTfrE91sLDFpFs+894+41stPfKcm3BlHozyYM10F6V
         cfokdoruOYjViQkYpjAx8XJ1rTEPxRnxbz6r2cX5yNDNX8gN57jVcyXygP8HvpHEjbCx
         EdUJ3HJ9d6DSOcYO3sjQvVhO/7yHvtuwT8UmuM0nDX2y5qHBio8MZxqD770QEiTvYk1l
         glCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OeiiPl20p9927jbWX7/PfpqS3lSPvusA08Tdqa5UmsY=;
        b=kFGvxfDRnnPLiLUDwjFuLwynOpPqc7CrsMyAfgYYBrPf/CzCMqOQl0y7hvFoHOzzk4
         3+5jQuZ+yLITnVU1GX91fuSESfktXOrzVnlj1dFot5qQvnPzFAUSqwh/rLbryWlds7Cc
         KC060t1Rc4b1s2Y1awgxMglVugmGEGuX6sB1cYzXK3wFTbjgdQ7Xmdr5qQGYX0qqIaSx
         Zi/Qw8K7Sx9aqNB9VTc7gvXwfNpcxcY+RkIuAm9nkAHNMAbVV+gLWiUiuOQvlIJbCfvJ
         cyYkmtFUERyyf1t5Tft/DX0LTa4e7Am0sJmnzDsUuFFD9Vgv53G2BqNtGiQPrSqgRZmq
         y73Q==
X-Gm-Message-State: AOAM532R3fuL1xQcQIrGc3F/ewwYQ1kF2L4bwIqI6P9SCTf+x6gJZUFI
        w+i4qj7HZ2Tr+W2IVifPNUhVQw==
X-Google-Smtp-Source: ABdhPJwgt9sLn+0DSNgKRhtlwDwl9INltt2ugA0cLn21vmM1i3UCR0E0SsLtUikbolq1R6hUyExSdg==
X-Received: by 2002:a5d:5989:: with SMTP id n9mr4535183wri.8.1626345116330;
        Thu, 15 Jul 2021 03:31:56 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id d14sm5927985wrs.49.2021.07.15.03.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 03:31:55 -0700 (PDT)
Subject: Re: [PATCH v2 06/16] ASoC: qcom: audioreach: add q6apm support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, lgirdwood@gmail.com, tiwai@suse.de,
        plai@codeaurora.org, linux-kernel@vger.kernel.org
References: <20210714153039.28373-1-srinivas.kandagatla@linaro.org>
 <20210714153039.28373-7-srinivas.kandagatla@linaro.org>
 <77b9d17d-33b6-8a7a-bb1d-e32543d9da79@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <d52fa4c9-d3c7-7501-0bcb-2c7ff997aa55@linaro.org>
Date:   Thu, 15 Jul 2021 11:31:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <77b9d17d-33b6-8a7a-bb1d-e32543d9da79@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre for review,

On 14/07/2021 17:40, Pierre-Louis Bossart wrote:
> 
>>   /* SubGraph Config */
>> @@ -32,7 +33,7 @@ struct apm_sub_graph_params  {
>>   /* container config */
>>   struct apm_container_obj  {
>>   	struct apm_container_cfg container_cfg;
>> -	/* Capablity ID list */
>> +	/* Capability ID list */
> 
> squash in wrong patch, this should have been included in the previous patch.

My bad.. will fix such instances in next spin.


> 
>>   	struct apm_prop_data cap_data;
>>   	uint32_t num_capablity_id;

...

> 
>> +static struct audioreach_graph *q6apm_get_audioreach_graph(struct q6apm *apm,
>> +						      uint32_t graph_id)
>> +{
>> +	struct audioreach_graph *graph = NULL;
> 
> useless init
> 
>> +	struct audioreach_graph_info *info;
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&apm->lock, flags);
>> +	graph = idr_find(&apm->graph_idr, graph_id);
>> +	spin_unlock_irqrestore(&apm->lock, flags);
>> +
>> +	if (graph) {
>> +		kref_get(&graph->refcount);
>> +		return graph;
>> +	}
>> +
>> +	info = idr_find(&apm->graph_info_idr, graph_id);
>> +
>> +	if (!info)
>> +		return ERR_PTR(-ENODEV);
>> +
>> +	graph = kzalloc(sizeof(*graph), GFP_KERNEL);
>> +	if (!graph)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	graph->apm = apm;
>> +	graph->info = info;
>> +	graph->id = graph_id;
>> +
>> +	/* Assuming Linear Graphs only for now! */
>> +	graph->graph = audioreach_alloc_graph_pkt(apm, &info->sg_list, graph_id);
>> +	if (IS_ERR(graph->graph))
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	spin_lock(&apm->lock);
>> +	idr_alloc(&apm->graph_idr, graph, graph_id,
>> +		  graph_id + 1, GFP_ATOMIC);
> 
> ATOMIC?
we are under spinlock here, so we need this.

> 
>> +	spin_unlock(&apm->lock);
>> +
>> +	kref_init(&graph->refcount);
>> +
>> +	q6apm_send_cmd_sync(apm, graph->graph, 0);
>> +
>> +	return graph;
>> +}
>> +
>> +static int audioreach_graph_mgmt_cmd(struct audioreach_graph *graph,
>> +				      uint32_t opcode)
>> +{
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +	int i = 0, rc, payload_size;
>> +	struct q6apm *apm = graph->apm;
>> +	struct audioreach_graph_info *info = graph->info;
>> +	int num_sub_graphs = info->num_sub_graphs;
>> +	struct apm_graph_mgmt_cmd *mgmt_cmd;
>> +	struct apm_module_param_data *param_data;
>> +	struct audioreach_sub_graph *sg;
>> +
>> +	payload_size = APM_GRAPH_MGMT_PSIZE(num_sub_graphs);
>> +
>> +	p = audioreach_alloc_apm_cmd_pkt(payload_size, opcode, 0);
>> +	if (IS_ERR(p))
>> +		return -ENOMEM;
>> +
>> +	pkt = p;
>> +	p = p + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
>> +
>> +	mgmt_cmd = p;
>> +	mgmt_cmd->num_sub_graphs = num_sub_graphs;
>> +
>> +	param_data = &mgmt_cmd->param_data;
>> +	param_data->module_instance_id = APM_MODULE_INSTANCE_ID;
>> +	param_data->param_id = APM_PARAM_ID_SUB_GRAPH_LIST;
>> +	param_data->param_size = payload_size - APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	list_for_each_entry(sg, &info->sg_list, node) {
>> +		mgmt_cmd->sub_graph_id_list[i++] = sg->sub_graph_id;
>> +	}
>> +
>> +	rc = q6apm_send_cmd_sync(apm, pkt, 0);
>> +
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +
>> +static void q6apm_put_audioreach_graph(struct kref *ref)
>> +{
>> +	struct audioreach_graph *graph;
>> +	struct q6apm *apm;
>> +	unsigned long flags;
>> +
>> +	graph = container_of(ref, struct audioreach_graph, refcount);
>> +	apm = graph->apm;
>> +
>> +	audioreach_graph_mgmt_cmd(graph, APM_CMD_GRAPH_CLOSE);
>> +
>> +	spin_lock_irqsave(&apm->lock, flags);
>> +	graph = idr_remove(&apm->graph_idr, graph->id);
>> +	spin_unlock_irqrestore(&apm->lock, flags);
>> +
>> +	kfree(graph->graph);
>> +	kfree(graph);
> 
> earlier in the _get routine, you had a kref_get(&graph->refcount)
> 
This is a release callback for kref. Probably I should rename this to 
q6apm_release_audioreach_graph().


> is it intentional that there's kref_put?

kref_put is called in q6apm_graph_close()

q6apm_graph_open() calls q6apm_get_audioreach_graph() which will do 
kref_get.

q6apm_graph_close() will call kref_put().

when refcount is zero q6apm_put_audioreach_graph() callback will be invoked.

--srini
> 
> adding a comment on the refcounts might be useful...
> 
