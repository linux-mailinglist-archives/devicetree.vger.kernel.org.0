Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0E5040DD77
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 17:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238402AbhIPPDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 11:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235474AbhIPPDs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 11:03:48 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CD8DC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:28 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id q26so9984748wrc.7
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 08:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZjJ0xClmqjo+gTIddy26W01R4VzloCVoaZoUYIC3Lp4=;
        b=deewXA8/pg6ilkcnc2ZuFqW+Ug3T39c9cL8co760X8Dt8n9vjqspGIvwMsOUAwnra8
         xVyTkdIPwwlOpVshd0ql6TQvjqyxAyBKgJZKJJP1AVvrgfnF+DIxlLoPHkIoAcOHpdLI
         qB00IvnZtiAC39veO4CHtxw9/9u0hfQmtbvT++4q89DOjcjewBm5wAz1RxD75McOntAc
         wtce4RDSf3Jfzv8tsm2Vv5og9/ZTayiFTpwzd1YsCGnt8q+AmjQWOpAFz8PNXfJl1kcd
         e4d9nHDP1RPAvqImxRxWrrZwwgm+3H5uLlKbNUH9jVUgE10ClacvM05hI1SzDSowZw2W
         C9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZjJ0xClmqjo+gTIddy26W01R4VzloCVoaZoUYIC3Lp4=;
        b=c3lBLWnS+O352BYNcF83+WB8KzSo3Vl3eHTQMLlBKgdGZsgIeiRwmpRP/Wwe9R5qv+
         X6z9s0Au6z+FQuITTxQKPD15uWi11icu1tk1DzvCLFQiaV/Cdc9JewwhkknjiSimISF5
         mCS7qABhEs+MW605AcvL/hVcl+cZ2rAPSNLAE1QF5eBA6pYlXvzqwWEw7qAXo2q137L0
         0KQ5lagxF4NKWB2wTLoG2Zb1PnnwkunCB9Vzt+ID5leEAwFDgz6YMh0vAQM6eeZ1gLpH
         RUcRpJBMf00EE1QrmZMBzi5JPG05K311wU4A2xSmrN38JxhEZfkegtlqbEOJkUwnWohO
         LVOA==
X-Gm-Message-State: AOAM533o5bxTmAZHVtSMd6wT+ghZEDPUOdhc6TVXDzPy2/1xS0pWWLbC
        fwuZIBD9kBFkszuh2asJr0r4fA==
X-Google-Smtp-Source: ABdhPJzVwyp2uNEXD/zDcQ//GhQNtYuBAQxM5In2OAZtb8Hm0X7q7RDIzeRdcvaP+tzu6a4H60MP+A==
X-Received: by 2002:adf:c7d1:: with SMTP id y17mr6535042wrg.214.1631804546633;
        Thu, 16 Sep 2021 08:02:26 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id o1sm3712718wru.91.2021.09.16.08.02.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 08:02:26 -0700 (PDT)
Subject: Re: [PATCH v6 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-17-srinivas.kandagatla@linaro.org>
 <4cd0e63f-107b-d10a-11e9-bced83f487a5@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <00472b83-f02d-70cc-7c6e-cf414dc17754@linaro.org>
Date:   Thu, 16 Sep 2021 16:02:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4cd0e63f-107b-d10a-11e9-bced83f487a5@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Pierre,

On 15/09/2021 17:11, Pierre-Louis Bossart wrote:
> 
>> +int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
>> +			     size_t period_sz, unsigned int periods)
>> +{
>> +	struct audioreach_graph_data *data;
>> +	struct audio_buffer *buf;
>> +	int cnt;
>> +	int rc;
>> +
>> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
>> +		data = &graph->rx_data;
>> +	else
>> +		data = &graph->tx_data;
>> +
>> +	mutex_lock(&graph->lock);
>> +
>> +	if (data->buf) {
>> +		dev_err(graph->dev, "Buffer already allocated\n");
>> +		mutex_unlock(&graph->lock);
>> +		return 0;
> 
> is this an error worth of dev_err() if you return 0?
No, its removed now.

> 
>> +	}
>> +
>> +	buf = kzalloc(((sizeof(struct audio_buffer)) * periods), GFP_KERNEL);
>> +	if (!buf) {
>> +		mutex_unlock(&graph->lock);
>> +		return -ENOMEM;
>> +	}
>> +
>> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
>> +		data = &graph->rx_data;
>> +	else
>> +		data = &graph->tx_data;
>> +
>> +	data->buf = buf;
>> +
>> +	buf[0].phys = phys;
>> +	buf[0].size = period_sz;
>> +
>> +	for (cnt = 1; cnt < periods; cnt++) {
>> +		if (period_sz > 0) {
>> +			buf[cnt].phys = buf[0].phys + (cnt * period_sz);
>> +			buf[cnt].size = period_sz;
>> +		}
>> +	}
>> +	data->num_periods = periods;
>> +
>> +	mutex_unlock(&graph->lock);
>> +
>> +	rc = audioreach_map_memory_regions(graph, dir, period_sz, periods, 1);
>> +	if (rc < 0) {
>> +		dev_err(graph->dev, "Memory_map_regions failed\n");
>> +		audioreach_graph_free_buf(graph);
>> +	}
>> +
>> +	return rc;
>> +}
>> +EXPORT_SYMBOL_GPL(q6apm_map_memory_regions);
> 
>> +int q6apm_write_async(struct q6apm_graph *graph, uint32_t len, uint32_t msw_ts,
>> +		      uint32_t lsw_ts, uint32_t wflags)
>> +{
>> +	struct apm_data_cmd_wr_sh_mem_ep_data_buffer_v2 *write;
>> +	int rc, payload_size, iid;
>> +	struct audio_buffer *ab;
>> +	struct gpr_pkt *pkt;
>> +
>> +	payload_size = sizeof(*write);
> 
> nit-pick on variable-naming: I get confused between actions and objects.

this is payload_size for the command packet.

> 
>> +
>> +	iid = q6apm_graph_get_rx_shmem_module_iid(graph);
>> +	pkt = audioreach_alloc_pkt(payload_size, DATA_CMD_WR_SH_MEM_EP_DATA_BUFFER_V2,
>> +				 graph->rx_data.dsp_buf | (len << APM_WRITE_TOKEN_LEN_SHIFT),
>> +				 graph->port->id, iid);
>> +	if (IS_ERR(pkt))
>> +		return -ENOMEM;
>> +
>> +	write = (void *)pkt + GPR_HDR_SIZE;
>> +
>> +	mutex_lock(&graph->lock);
>> +	ab = &graph->rx_data.buf[graph->rx_data.dsp_buf];
>> +
>> +	write->buf_addr_lsw = lower_32_bits(ab->phys);
>> +	write->buf_addr_msw = upper_32_bits(ab->phys);
>> +	write->buf_size = len;
>> +	write->timestamp_lsw = lsw_ts;
>> +	write->timestamp_msw = msw_ts;
>> +	write->mem_map_handle = graph->rx_data.mem_map_handle;
>> +	write->flags = wflags;
>> +
>> +	graph->rx_data.dsp_buf++;
>> +
>> +	if (graph->rx_data.dsp_buf >= graph->rx_data.num_periods)
>> +		graph->rx_data.dsp_buf = 0;
>> +
>> +	mutex_unlock(&graph->lock);
>> +
>> +	rc = gpr_send_port_pkt(graph->port, pkt);
>> +
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +EXPORT_SYMBOL_GPL(q6apm_write_async);
>> +
>> +int q6apm_read(struct q6apm_graph *graph)
>> +{
>> +	struct data_cmd_rd_sh_mem_ep_data_buffer_v2 *read;
>> +	struct audioreach_graph_data *port;
>> +	struct audio_buffer *ab;
>> +	struct gpr_pkt *pkt;
>> +	int rc, iid;
>> +
>> +	iid = q6apm_graph_get_tx_shmem_module_iid(graph);
>> +	pkt = audioreach_alloc_pkt(sizeof(*read), DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER_V2,
>> +				 graph->tx_data.dsp_buf, graph->port->id, iid);
>> +	if (IS_ERR(pkt))
>> +		return -ENOMEM;
>> +
>> +	read = (void *)pkt + GPR_HDR_SIZE;
> 
> same nit-pick on variable naming, with the additional present/past
> grammar issue that you don't know if it's a read buffer or a pointer to
> data read in the past.
> 

do you think adding "_cmd" suffix like read_cmd would make more sense?

--srini


>> +
>> +	mutex_lock(&graph->lock);
>> +	port = &graph->tx_data;
>> +	ab = &port->buf[port->dsp_buf];
>> +
>> +	read->buf_addr_lsw = lower_32_bits(ab->phys);
>> +	read->buf_addr_msw = upper_32_bits(ab->phys);
>> +	read->mem_map_handle = port->mem_map_handle;
>> +	read->buf_size = ab->size;
>> +
>> +	port->dsp_buf++;
>> +
>> +	if (port->dsp_buf >= port->num_periods)
>> +		port->dsp_buf = 0;
>> +
>> +	mutex_unlock(&graph->lock);
>> +
>> +	rc = gpr_send_port_pkt(graph->port, pkt);
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +EXPORT_SYMBOL_GPL(q6apm_read);
>> +
>>   static int graph_callback(struct gpr_resp_pkt *data, void *priv, int op)
>>   {
>>   	struct data_cmd_rsp_rd_sh_mem_ep_data_buffer_done_v2 *rd_done;
>>
