Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20A3F401E4A
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 18:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244063AbhIFQam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 12:30:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243932AbhIFQam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 12:30:42 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C15EC061575
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 09:29:37 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x6so10564453wrv.13
        for <devicetree@vger.kernel.org>; Mon, 06 Sep 2021 09:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gGrZbeqFGNBt8ZPBneFqO2OiXIfzPCwvOb9BG95NIjU=;
        b=p+Fto3aaiXrc3gQS9m39z9ysjiDP9UNI1h/DQAj8mSIeNWWxeMIc7WfqT7Unx4FmWw
         SrSQfKvpPYOGX5KO20xIW6v+0m0qmxO3y/btZEbs/jq97ld4gzdgjGOf8mZWz2lVb+3T
         vrFST3SOJfuCBkyDfM/ogvqTFg1tDzE6y0aquFqzAVCXzGBRYHbTUdDEOYFNdAAh8/v9
         VDMs53JOm7it2QGCbnAECuIY8d/2Ak1uq0IFxuaKZRUNa6/R1MLnjD5dlRaLwFhfNCR8
         ADNotCOEpy450Kf+dmtYeE6LLUDrBXiuD+kwgUhZqQSHp/x6sCajQKRTFh2q9EhZdhUU
         pWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gGrZbeqFGNBt8ZPBneFqO2OiXIfzPCwvOb9BG95NIjU=;
        b=PNUBwtDvqP4xkAcBhvAjGAdDRKXgrSVS7TH+1aBdbLvzrApRz1ovHQmc163rAfX5c7
         OEvgMhwfyyGXkYupiOviDpyz+OQ/ikuCRyr4QtsMTDy2k/SStq8OC8JrJI/Gld4D0/Tr
         b7nLr+vKtbfqk2YMMuXuqMu5EXnb3eskfNXvqgnZ5o+GUq01ZBDsGQ454cB/5me3PTBb
         bSSW8CdH+bQcsUwJQnYwgr13nBIoR7O2qSEFRIVwEya8/VynAzm1/KUTAUOUk2qZwN5O
         I0nt9jnAIcJ2lrFxqIEUAL3axPiTpGKZ0qxYu2xHGW8v3ZkXqe6t/8AfD/FsYQT2jLrP
         F2Rw==
X-Gm-Message-State: AOAM532townsFPlGiH2hb4gR8/Sm/9W04yZUKSaG9SpTIy/LnsEHc8/D
        F8hGpJ+5/ZFbXIgmHNM01CVn5A==
X-Google-Smtp-Source: ABdhPJx5yemM0g5we02R+9EO/LmrgzYVe+WvdeC2fiEewRyumQdsIPOHl9kEDDnWOEQ5piZwutNRiA==
X-Received: by 2002:adf:e606:: with SMTP id p6mr14286693wrm.231.1630945775748;
        Mon, 06 Sep 2021 09:29:35 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id d24sm7614176wmb.35.2021.09.06.09.29.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Sep 2021 09:29:35 -0700 (PDT)
Subject: Re: [PATCH v5 16/21] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-17-srinivas.kandagatla@linaro.org>
 <5042813e-6182-ff8c-e602-fa16d08ca6da@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <3b6bea6c-8d62-2f7a-6cfb-ca850f9f4089@linaro.org>
Date:   Mon, 6 Sep 2021 17:29:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <5042813e-6182-ff8c-e602-fa16d08ca6da@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

thanks Pierre for taking time to review the patches.

On 03/09/2021 16:13, Pierre-Louis Bossart wrote:
> 
> 
> On 9/3/21 6:20 AM, Srinivas Kandagatla wrote:
>> Audioreach module configuration helpers, which will be used by
>> the q6apm-dai driver.
>>
>> Also add Kconfig and Makefile changes as now all the code for audioreach
>> and q6apm are in at this point.
> 
> separate patches?
> 
> 
Sure I will do that in next spin.

>> +int audioreach_graph_send_cmd_sync(struct q6apm_graph *graph,
>> +				   struct gpr_pkt *pkt, uint32_t rsp_opcode)
>> +{
>> +
>> +	struct device *dev = graph->dev;
>> +	struct gpr_hdr *hdr = &pkt->hdr;
>> +	int rc;
>> +
>> +	mutex_lock(&graph->cmd_lock);
>> +	graph->result.opcode = 0;
>> +	graph->result.status = 0;
>> +
>> +	rc = gpr_send_port_pkt(graph->port, pkt);
>> +	if (rc < 0)
>> +		goto err;
>> +
>> +	if (rsp_opcode)
>> +		rc = wait_event_timeout(graph->cmd_wait,
>> +					(graph->result.opcode == hdr->opcode) ||
>> +					(graph->result.opcode == rsp_opcode),
>> +					5 * HZ);
>> +	else
>> +		rc = wait_event_timeout(graph->cmd_wait,
>> +					(graph->result.opcode == hdr->opcode),
>> +					5 * HZ);
>> +
>> +	if (!rc) {
>> +		dev_err(dev, "CMD timeout for [%x] opcode\n", hdr->opcode);
>> +		rc = -ETIMEDOUT;
>> +	} else if (graph->result.status > 0) {
>> +		dev_err(dev, "DSP returned error[%x] %x\n", hdr->opcode,
>> +			graph->result.status);
>> +		rc = -EINVAL;
>> +	} else {
>> +		dev_err(dev, "DSP returned [%x]\n", graph->result.status);
>> +		rc = 0;
>> +	}
>> +
>> +err:
>> +	mutex_unlock(&graph->cmd_lock);
>> +	return rc;
>> +}
>> +EXPORT_SYMBOL_GPL(audioreach_graph_send_cmd_sync);
> 
> I'm pretty sure I've seen this code before...
> 
> This looks almost identical to
> 
> int q6apm_send_cmd_sync(struct q6apm *apm, struct gpr_pkt *pkt,
> 			uint32_t rsp_opcode)
> 
> Can this be refactored?
I did this in next version.


> 
> If not, at the very least make sure the errors messages are unique...
> 
>> +static int audioreach_codec_dma_set_media_format(struct q6apm_graph *graph,
>> +					  struct audioreach_module *module,
>> +					  struct audioreach_module_config *cfg)
> 
> maybe explain what a 'codec dma' is?

Qualcomm LPASS (Low Power Audio Subsystem) has digital part of codec 
integrated into it, and connected to Analog part of codec using SoundWire.

> 
>> +{
>> +	struct apm_module_param_data *param_data;
>> +	struct apm_codec_dma_module_intf_cfg *intf_cfg;
>> +	struct apm_module_hw_ep_mf_cfg *hw_cfg;
>> +	struct apm_module_frame_size_factor_cfg *fs_cfg;
>> +	struct apm_module_hw_ep_power_mode_cfg *pm_cfg;
>> +	int ic_sz, ep_sz, fs_sz, pm_sz, dl_sz;
>> +	int rc, payload_size;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +
>> +	
...

>> +
>> +static int audioreach_i2s_set_media_format(struct q6apm_graph *graph,
>> +				    struct audioreach_module *module,
>> +				    struct audioreach_module_config *cfg)
>> +{
>> +	struct apm_module_frame_size_factor_cfg *fs_cfg;
>> +	struct apm_module_param_data *param_data;
>> +	struct apm_i2s_module_intf_cfg *intf_cfg;
>> +	struct apm_module_hw_ep_mf_cfg *hw_cfg;
>> +	int ic_sz, ep_sz, fs_sz;
>> +	int rc, payload_size;
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +
>> +	ic_sz = APM_I2S_INTF_CFG_PSIZE;
>> +	ep_sz = APM_HW_EP_CFG_PSIZE;
>> +	fs_sz = APM_FS_CFG_PSIZE;
>> +
>> +	payload_size = ic_sz + ep_sz + fs_sz;
>> +
>> +	p = audioreach_alloc_apm_cmd_pkt(payload_size, APM_CMD_SET_CFG, 0);
>> +	if (IS_ERR(p))
>> +		return -ENOMEM;
>> +
>> +	pkt = p;
>> +	p = p + GPR_HDR_SIZE + APM_CMD_HDR_SIZE;
>> +	intf_cfg = p;
>> +
>> +	param_data = &intf_cfg->param_data;
>> +	param_data->module_instance_id = module->instance_id;
>> +	param_data->error_code = 0;
>> +	param_data->param_id = PARAM_ID_I2S_INTF_CFG;
>> +	param_data->param_size = ic_sz - APM_MODULE_PARAM_DATA_SIZE;
>> +
>> +	intf_cfg->cfg.intf_idx = module->hw_interface_idx;
>> +	intf_cfg->cfg.sd_line_idx = module->sd_line_idx;
>> +
>> +	switch (cfg->fmt & SND_SOC_DAIFMT_MASTER_MASK) {
>> +	case SND_SOC_DAIFMT_CBS_CFS:
> 
> CBC_CFC
> 
>> +		intf_cfg->cfg.ws_src = CONFIG_I2S_WS_SRC_INTERNAL;
>> +		break;
>> +	case SND_SOC_DAIFMT_CBM_CFM:
> 
> CBP_CFP

Sure I was not aware of these new formats, will use them.

> 
>> +		/* CPU is slave */
>> +		intf_cfg->cfg.ws_src = CONFIG_I2S_WS_SRC_EXTERNAL;
>> +		break;
>> +	default:
>> +		break;
>> +	}
>> +

>> +int q6apm_map_memory_regions(struct q6apm_graph *graph,
>> +			     unsigned int dir, phys_addr_t phys,
>> +			     size_t period_sz, unsigned int periods)
>> +{
>> +	struct audioreach_graph_data *data;
>> +	struct audio_buffer *buf;
>> +	unsigned long flags;
>> +	int cnt;
>> +	int rc;
>> +
>> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
>> +		data = &graph->rx_data;
>> +	else
>> +		data = &graph->tx_data;
>> +
>> +	spin_lock_irqsave(&graph->lock, flags);
>> +
>> +	if (data->buf) {
>> +		dev_err(graph->dev, "Buffer already allocated\n");
>> +		spin_unlock_irqrestore(&graph->lock, flags);
>> +		return 0;
>> +	}
>> +
>> +	buf = kzalloc(((sizeof(struct audio_buffer)) * periods), GFP_ATOMIC);
> 
> Why GFP_ATOMIC?

Its under spinlock.

> 
>> +	if (!buf) {
>> +		spin_unlock_irqrestore(&graph->lock, flags);
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
>> +	spin_unlock_irqrestore(&graph->lock, flags);
>> +
>> +	rc = audioreach_map_memory_regions(graph, dir, period_sz,
>> +					      periods, 1);
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
>> +	struct gpr_pkt *pkt;
>> +	void *p;
>> +	int rc, payload_size, iid;
>> +	struct apm_data_cmd_wr_sh_mem_ep_data_buffer_v2 *write;
>> +	struct audio_buffer *ab;
>> +	unsigned long flags;
>> +
>> +	payload_size = sizeof(*write);
>> +
>> +	iid = q6apm_graph_get_rx_shmem_module_iid(graph);
>> +	p = audioreach_alloc_pkt(payload_size,
>> +				      DATA_CMD_WR_SH_MEM_EP_DATA_BUFFER_V2,
>> +				      graph->rx_data.dsp_buf | (len << APM_WRITE_TOKEN_LEN_SHIFT),
>> +				      graph->port->id, iid);
>> +	if (IS_ERR(p))
>> +		return -ENOMEM;
>> +
>> +	pkt = p;
>> +	p = p + GPR_HDR_SIZE;
>> +	write = p;
>> +
>> +	spin_lock_irqsave(&graph->lock, flags);
>> +	ab = &graph->rx_data.buf[graph->rx_data.dsp_buf];
>> +
>> +	write->buf_addr_lsw = lower_32_bits(ab->phys);
>> +	write->buf_addr_msw = upper_32_bits(ab->phys);
>> +	write->buf_size = len;
>> +	write->timestamp_lsw = lsw_ts;
>> +	write->timestamp_msw = msw_ts;
>> +	write->mem_map_handle = graph->rx_data.mem_map_handle;
>> +
>> +	if (wflags == NO_TIMESTAMP)
>> +		write->flags = 0;
>> +	else
>> +		write->flags = 0x80000000;
> 
> BIT(31) ?

This should be
#define WR_SH_MEM_EP_BIT_MASK_TIMESTAMP_VALID_FLAG    0x80000000



> 
> it's also odd to define NO_TIMESTAMP, it's usually when you want a
> timestamp that you ask for it...

Thats right, I can try to cleanup some logic around this, It might be 
that I have inherited some of this logic from old dsp drivers :-)


> 
>> +
>> +	graph->rx_data.dsp_buf++;
>> +
>> +	if (graph->rx_data.dsp_buf >= graph->rx_data.num_periods)
>> +		graph->rx_data.dsp_buf = 0;
>> +
>> +	spin_unlock_irqrestore(&graph->lock, flags);
>> +
>> +	rc = gpr_send_port_pkt(graph->port, pkt);
>> +
>> +	kfree(pkt);
>> +
>> +	return rc;
>> +}
>> +EXPORT_SYMBOL_GPL(q6apm_write_async);
> 
