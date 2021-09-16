Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2B2040DD76
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238384AbhIPPDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbhIPPDm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:03:42 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2DC3C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:21 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id d6so9946718wrc.11
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YIIiNZ1N2SOMMX7Uq/ij5mF3RLXqeUCzPbsrlrJuR74=;
        b=jt/5tWITWXCzx9TuxJKlc/4ci7MWX1d5XSJEosH7mEdxVHMgiJmIS+GpcgYOrjTTys
         liC5dOyHjJgXUb7WZxSKFCFHL0EdBWnw5anzuLoQGCIQD2hnaFSPayFdwVxBtMgLAo/3
         4rP8tAvjgUbtwCtV16AQDUj3I9Ui4kWa7WE34tnTI3aJtvshY1AxZOS/i6fGPfBoeBJ9
         caIwYFHgXHNpuuHhqYvInn0WTiRIU7wS42tih6bLLPfyDbBmy3dRKUDjHCl8sLhHs3HB
         KorpmD7IMAr0EuQc++UuAzXTZwBCtVN/Zfheh2LD9NG4CdLl1oSgRl6MUyPNABO2601c
         GgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YIIiNZ1N2SOMMX7Uq/ij5mF3RLXqeUCzPbsrlrJuR74=;
        b=QX2jv9bqLb5PQHb+TwlE7SAORmGx0DWu7Sv1YpMfLnKkr76evHgukMLQBgtega5UxY
         SuIMUzovTaIVyZdRSqT19ZXl5dDliXteqvYr6OmF9GXekrZw4wjauBQqn3V5Mq2YTDI+
         Dq5k2BLR0fkMRDhA6ANThtOvRkPhOoLXujNy0Vyoly/+47DBPwwN0ODA5U/vjkpOfKtR
         uOiO0hzeSfF4nVT5G6CbPhqduTzPs7UcMD8FdrFL0wF+4NqkR5nQq2v731OBLWAvuRDo
         0VXU6GAlAnN4V++X4H8C5mJxf4QrmSu3WZ4zXXlFPn+vZUPGmf0ZRhnVESS370XvusLR
         U7cg==
X-Gm-Message-State: AOAM530eHqnPy8oTXUb8CW4b8KhoFUlJk2yfrfZ00NHFmTDkk+M+lrZy
        yQKGKm2sT4j5DPJXF4FQ1JcV+vD+5doDJQ==
X-Google-Smtp-Source: ABdhPJxlcORnlxuErR9hc2YbkqoJnbdb3QRiu5wa7dRIyegpk7J0bufluMi21B4MZ11Ja6aCC376zg==
X-Received: by 2002:adf:e5c5:: with SMTP id a5mr6546246wrn.290.1631804540284;
        Thu, 16 Sep 2021 08:02:20 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id u2sm3573509wmj.29.2021.09.16.08.02.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:02:19 -0700 (PDT)
Subject: Re: [PATCH v6 15/22] ASoC: qdsp6: audioreach: add q6apm support
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-16-srinivas.kandagatla@linaro.org>
 <f4c9702d-72a4-f602-71ce-006e6588190f@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <0938083f-debd-6ab1-b5fc-fc3335e0d9dd@linaro.org>
Date:   Thu, 16 Sep 2021 16:02:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <f4c9702d-72a4-f602-71ce-006e6588190f@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre for review,

On 15/09/2021 17:02, Pierre-Louis Bossart wrote:
> 
>> +static void audioreach_populate_graph(struct apm_graph_open_params *open,
>> +				      struct list_head *sg_list,
>> +				      int num_sub_graphs)
>> +{
>> +	struct apm_mod_conn_list_params *mc_data = open->mod_conn_list_data;
>> +	struct apm_module_list_params *ml_data = open->mod_list_data;
>> +	struct apm_prop_list_params *mp_data = open->mod_prop_data;
>> +	struct apm_container_params *c_data = open->cont_data;
>> +	struct apm_sub_graph_params *sg_data = open->sg_data;
>> +	int ncontainer = 0, nmodule = 0, nconn = 0;
>> +	struct apm_mod_prop_obj *module_prop_obj;
>> +	struct audioreach_container *container;
>> +	struct apm_module_conn_obj *conn_obj;
>> +	struct audioreach_module *module;
>> +	struct audioreach_sub_graph *sg;
>> +	struct apm_container_obj *cobj;
>> +	struct apm_mod_list_obj *mlobj;
>> +	int i = 0;
>> +
>> +	mlobj = &ml_data->mod_list_obj[0];
>> +
>> +	list_for_each_entry(sg, sg_list, node) {
>> +		struct apm_sub_graph_data *sg_cfg = &sg_data->sg_cfg[i++];
>> +
>> +		apm_populate_sub_graph_config(sg_cfg, sg);
>> +
>> +		list_for_each_entry(container, &sg->container_list, node) {
>> +			cobj = &c_data->cont_obj[ncontainer];
>> +
>> +			apm_populate_container_config(cobj, container);
>> +			apm_populate_module_list_obj(mlobj, container, sg->sub_graph_id);
>> +
>> +			list_for_each_container_module(module, container) {
>> +				uint32_t src_mod_inst_id;
>> +
>> +				src_mod_inst_id = module->src_mod_inst_id;
>> +
>> +				module_prop_obj = &mp_data->mod_prop_obj[nmodule];
>> +				apm_populate_module_prop_obj(module_prop_obj, module);
>> +
>> +				if (src_mod_inst_id /*&& dst_mod_inst_id*/) {
> 
> remove left-over code or uncomment required condition?

Yes, this can be removed.

> 
>> +					conn_obj = &mc_data->conn_obj[nconn];
>> +					apm_populate_connection_obj(conn_obj, module);
>> +					nconn++;
>> +				}
>> +
>> +				nmodule++;
>> +			}
>> +			mlobj = (void *) mlobj + APM_MOD_LIST_OBJ_PSIZE(container->num_modules);
>> +
>> +			ncontainer++;
>> +		}
>> +	}
>> +}
> 
>> +static struct audioreach_graph *q6apm_get_audioreach_graph(struct q6apm *apm, uint32_t graph_id)
>> +{
>> +	struct audioreach_graph_info *info;
>> +	struct audioreach_graph *graph;
>> +
>> +	mutex_lock(&apm->lock);
>> +	graph = idr_find(&apm->graph_idr, graph_id);
>> +	mutex_unlock(&apm->lock);
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
>> +	graph->graph = audioreach_alloc_graph_pkt(apm, &info->sg_list, graph_id);
>> +	if (IS_ERR(graph->graph)) {
>> +		kfree(graph);
>> +		return ERR_PTR(-ENOMEM);
>> +	}
>> +
>> +	mutex_lock(&apm->lock);
>> +	idr_alloc(&apm->graph_idr, graph, graph_id, graph_id + 1, GFP_KERNEL);
> 
> test for idr_alloc() success? You have error checks for idr_find() but
> not for the _alloc() case.

Yes, error handing is missing in this case, fixed in next version.

> 
>> +	mutex_unlock(&apm->lock);
>> +
>> +	kref_init(&graph->refcount);
>> +
>> +	q6apm_send_cmd_sync(apm, graph->graph, 0);
>> +
>> +	return graph;
>> +}
>> +

>> +static int apm_callback(struct gpr_resp_pkt *data, void *priv, int op)
>> +{
>> +	gpr_device_t *gdev = priv;
>> +	struct q6apm *apm = dev_get_drvdata(&gdev->dev);
>> +	struct device *dev = &gdev->dev;
>> +	struct gpr_ibasic_rsp_result_t *result;
>> +	struct gpr_hdr *hdr = &data->hdr;
>> +	int ret = -EINVAL;
>> +
>> +	result = data->payload;
>> +
>> +	switch (hdr->opcode) {
>> +	case APM_CMD_RSP_GET_SPF_STATE:
>> +		apm->result.opcode = hdr->opcode;
>> +		apm->result.status = 0;
>> +		/* First word of result it state */
>> +		apm->state = result->opcode;
>> +		wake_up(&apm->wait);
>> +		break;
> 
> this would keep ret = -EINVAL and return it, that seems suspicious since
> this doesn't look as an error case?
> 
>> +	case GPR_BASIC_RSP_RESULT:
>> +		switch (result->opcode) {
>> +		case APM_CMD_GRAPH_START:
>> +		case APM_CMD_GRAPH_OPEN:
>> +		case APM_CMD_GRAPH_PREPARE:
>> +		case APM_CMD_GRAPH_CLOSE:
>> +		case APM_CMD_GRAPH_FLUSH:
>> +		case APM_CMD_GRAPH_STOP:
>> +		case APM_CMD_SET_CFG:
>> +			apm->result.opcode = result->opcode;
>> +			apm->result.status = result->status;
>> +			if (result->status) {
>> +				dev_err(dev, "Error (%d) Processing 0x%08x cmd\n",
>> +					result->status, result->opcode);
>> +				ret = -EINVAL;
>> +			} else {
>> +				ret = 0;
> 
> That's also weird, maybe initialize to zero and return an error code in
> error cases, or fix the case APM_CMD_RSP_GET_SPF_STATE above.

this is now fixed by initializing the ret to 0 and setting it in error path.

--srini

> 
>> +			}
>> +			wake_up(&apm->wait);
>> +			break;
>> +		default:
>> +			break;
>> +		}
>> +		break;
>> +	default:
>> +		break;
> 
> so all the defaults are errors?
> 
>> +	}
>> +
>> +	return ret;
>> +}
