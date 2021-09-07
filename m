Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2ACD402C9F
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 18:09:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234524AbhIGQKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 12:10:09 -0400
Received: from mga09.intel.com ([134.134.136.24]:41027 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S242395AbhIGQKJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Sep 2021 12:10:09 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="220264710"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; 
   d="scan'208";a="220264710"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2021 09:06:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; 
   d="scan'208";a="512893409"
Received: from mrburno-mobl.amr.corp.intel.com (HELO [10.212.10.81]) ([10.212.10.81])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2021 09:06:07 -0700
Subject: Re: [PATCH v5 15/21] ASoC: qdsp6: audioreach: add q6apm support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-16-srinivas.kandagatla@linaro.org>
 <081e6734-a258-6d21-cf66-f00bfeb38b04@linux.intel.com>
 <b1cfacb4-70b9-7146-00d5-9d680297d900@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <f8bd8b94-528d-bf6f-9e84-0e41e4c56382@linux.intel.com>
Date:   Tue, 7 Sep 2021 10:04:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <b1cfacb4-70b9-7146-00d5-9d680297d900@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>>> +    graph->graph = audioreach_alloc_graph_pkt(apm, &info->sg_list,
>>> graph_id);
>>> +    if (IS_ERR(graph->graph)) {
>>> +        kfree(graph);
>>> +        return ERR_PTR(-ENOMEM);
>>> +    }
>>> +
>>> +    spin_lock(&apm->lock);
>>> +    idr_alloc(&apm->graph_idr, graph, graph_id,
>>> +          graph_id + 1, GFP_ATOMIC);
>>
>> does this need to be ATOMIC?
> 
> We are inside spinlock.

but this is not used in an interrupt handler or anything that isn't in a
process context, is it?
