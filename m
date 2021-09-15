Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADBB340CA54
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 18:34:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbhIOQgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 12:36:01 -0400
Received: from mga07.intel.com ([134.134.136.100]:58317 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229747AbhIOQf6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 12:35:58 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286060912"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="286060912"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="583352205"
Received: from mvetrive-mobl3.amr.corp.intel.com (HELO [10.212.69.198]) ([10.212.69.198])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:38 -0700
Subject: Re: [PATCH v6 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-17-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <4cd0e63f-107b-d10a-11e9-bced83f487a5@linux.intel.com>
Date:   Wed, 15 Sep 2021 11:11:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210915131333.19047-17-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +int q6apm_map_memory_regions(struct q6apm_graph *graph, unsigned int dir, phys_addr_t phys,
> +			     size_t period_sz, unsigned int periods)
> +{
> +	struct audioreach_graph_data *data;
> +	struct audio_buffer *buf;
> +	int cnt;
> +	int rc;
> +
> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
> +		data = &graph->rx_data;
> +	else
> +		data = &graph->tx_data;
> +
> +	mutex_lock(&graph->lock);
> +
> +	if (data->buf) {
> +		dev_err(graph->dev, "Buffer already allocated\n");
> +		mutex_unlock(&graph->lock);
> +		return 0;

is this an error worth of dev_err() if you return 0?

> +	}
> +
> +	buf = kzalloc(((sizeof(struct audio_buffer)) * periods), GFP_KERNEL);
> +	if (!buf) {
> +		mutex_unlock(&graph->lock);
> +		return -ENOMEM;
> +	}
> +
> +	if (dir == SNDRV_PCM_STREAM_PLAYBACK)
> +		data = &graph->rx_data;
> +	else
> +		data = &graph->tx_data;
> +
> +	data->buf = buf;
> +
> +	buf[0].phys = phys;
> +	buf[0].size = period_sz;
> +
> +	for (cnt = 1; cnt < periods; cnt++) {
> +		if (period_sz > 0) {
> +			buf[cnt].phys = buf[0].phys + (cnt * period_sz);
> +			buf[cnt].size = period_sz;
> +		}
> +	}
> +	data->num_periods = periods;
> +
> +	mutex_unlock(&graph->lock);
> +
> +	rc = audioreach_map_memory_regions(graph, dir, period_sz, periods, 1);
> +	if (rc < 0) {
> +		dev_err(graph->dev, "Memory_map_regions failed\n");
> +		audioreach_graph_free_buf(graph);
> +	}
> +
> +	return rc;
> +}
> +EXPORT_SYMBOL_GPL(q6apm_map_memory_regions);

> +int q6apm_write_async(struct q6apm_graph *graph, uint32_t len, uint32_t msw_ts,
> +		      uint32_t lsw_ts, uint32_t wflags)
> +{
> +	struct apm_data_cmd_wr_sh_mem_ep_data_buffer_v2 *write;
> +	int rc, payload_size, iid;
> +	struct audio_buffer *ab;
> +	struct gpr_pkt *pkt;
> +
> +	payload_size = sizeof(*write);

nit-pick on variable-naming: I get confused between actions and objects.

> +
> +	iid = q6apm_graph_get_rx_shmem_module_iid(graph);
> +	pkt = audioreach_alloc_pkt(payload_size, DATA_CMD_WR_SH_MEM_EP_DATA_BUFFER_V2,
> +				 graph->rx_data.dsp_buf | (len << APM_WRITE_TOKEN_LEN_SHIFT),
> +				 graph->port->id, iid);
> +	if (IS_ERR(pkt))
> +		return -ENOMEM;
> +
> +	write = (void *)pkt + GPR_HDR_SIZE;
> +
> +	mutex_lock(&graph->lock);
> +	ab = &graph->rx_data.buf[graph->rx_data.dsp_buf];
> +
> +	write->buf_addr_lsw = lower_32_bits(ab->phys);
> +	write->buf_addr_msw = upper_32_bits(ab->phys);
> +	write->buf_size = len;
> +	write->timestamp_lsw = lsw_ts;
> +	write->timestamp_msw = msw_ts;
> +	write->mem_map_handle = graph->rx_data.mem_map_handle;
> +	write->flags = wflags;
> +
> +	graph->rx_data.dsp_buf++;
> +
> +	if (graph->rx_data.dsp_buf >= graph->rx_data.num_periods)
> +		graph->rx_data.dsp_buf = 0;
> +
> +	mutex_unlock(&graph->lock);
> +
> +	rc = gpr_send_port_pkt(graph->port, pkt);
> +
> +	kfree(pkt);
> +
> +	return rc;
> +}
> +EXPORT_SYMBOL_GPL(q6apm_write_async);
> +
> +int q6apm_read(struct q6apm_graph *graph)
> +{
> +	struct data_cmd_rd_sh_mem_ep_data_buffer_v2 *read;
> +	struct audioreach_graph_data *port;
> +	struct audio_buffer *ab;
> +	struct gpr_pkt *pkt;
> +	int rc, iid;
> +
> +	iid = q6apm_graph_get_tx_shmem_module_iid(graph);
> +	pkt = audioreach_alloc_pkt(sizeof(*read), DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER_V2,
> +				 graph->tx_data.dsp_buf, graph->port->id, iid);
> +	if (IS_ERR(pkt))
> +		return -ENOMEM;
> +
> +	read = (void *)pkt + GPR_HDR_SIZE;

same nit-pick on variable naming, with the additional present/past
grammar issue that you don't know if it's a read buffer or a pointer to
data read in the past.

> +
> +	mutex_lock(&graph->lock);
> +	port = &graph->tx_data;
> +	ab = &port->buf[port->dsp_buf];
> +
> +	read->buf_addr_lsw = lower_32_bits(ab->phys);
> +	read->buf_addr_msw = upper_32_bits(ab->phys);
> +	read->mem_map_handle = port->mem_map_handle;
> +	read->buf_size = ab->size;
> +
> +	port->dsp_buf++;
> +
> +	if (port->dsp_buf >= port->num_periods)
> +		port->dsp_buf = 0;
> +
> +	mutex_unlock(&graph->lock);
> +
> +	rc = gpr_send_port_pkt(graph->port, pkt);
> +	kfree(pkt);
> +
> +	return rc;
> +}
> +EXPORT_SYMBOL_GPL(q6apm_read);
> +
>  static int graph_callback(struct gpr_resp_pkt *data, void *priv, int op)
>  {
>  	struct data_cmd_rsp_rd_sh_mem_ep_data_buffer_done_v2 *rd_done;
> 
