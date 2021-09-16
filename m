Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8623E40E567
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 19:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345560AbhIPRLM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 13:11:12 -0400
Received: from mga09.intel.com ([134.134.136.24]:30114 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1345643AbhIPRJL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 13:09:11 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222651966"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; 
   d="scan'208";a="222651966"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2021 10:03:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; 
   d="scan'208";a="554167905"
Received: from xuanguan-mobl.amr.corp.intel.com (HELO [10.213.180.84]) ([10.213.180.84])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Sep 2021 10:03:56 -0700
Subject: Re: [PATCH v6 16/22] ASoC: qdsp6: audioreach: add module
 configuration command helpers
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-17-srinivas.kandagatla@linaro.org>
 <4cd0e63f-107b-d10a-11e9-bced83f487a5@linux.intel.com>
 <00472b83-f02d-70cc-7c6e-cf414dc17754@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <dbe12aeb-3200-e7d3-7530-39e2d3aa990c@linux.intel.com>
Date:   Thu, 16 Sep 2021 10:40:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <00472b83-f02d-70cc-7c6e-cf414dc17754@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>>> +int q6apm_read(struct q6apm_graph *graph)
>>> +{
>>> +    struct data_cmd_rd_sh_mem_ep_data_buffer_v2 *read;
>>> +    struct audioreach_graph_data *port;
>>> +    struct audio_buffer *ab;
>>> +    struct gpr_pkt *pkt;
>>> +    int rc, iid;
>>> +
>>> +    iid = q6apm_graph_get_tx_shmem_module_iid(graph);
>>> +    pkt = audioreach_alloc_pkt(sizeof(*read),
>>> DATA_CMD_RD_SH_MEM_EP_DATA_BUFFER_V2,
>>> +                 graph->tx_data.dsp_buf, graph->port->id, iid);
>>> +    if (IS_ERR(pkt))
>>> +        return -ENOMEM;
>>> +
>>> +    read = (void *)pkt + GPR_HDR_SIZE;
>>
>> same nit-pick on variable naming, with the additional present/past
>> grammar issue that you don't know if it's a read buffer or a pointer to
>> data read in the past.
>>
> 
> do you think adding "_cmd" suffix like read_cmd would make more sense?

My personal preference is read_buffer or write_buffer, less ambiguous
than 'read' or 'write'.

I've started cracking down on the use of 'stream' for a similar reason,
at some point no one know what the code/variables represent.
