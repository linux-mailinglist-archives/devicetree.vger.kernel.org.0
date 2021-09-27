Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4427A419F89
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 21:52:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236243AbhI0Tyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 15:54:35 -0400
Received: from mga05.intel.com ([192.55.52.43]:39457 "EHLO mga05.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236711AbhI0Tye (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 15:54:34 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="310102843"
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="310102843"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:56 -0700
X-IronPort-AV: E=Sophos;i="5.85,327,1624345200"; 
   d="scan'208";a="486268016"
Received: from asen4-mobl2.amr.corp.intel.com (HELO [10.212.27.2]) ([10.212.27.2])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Sep 2021 12:52:51 -0700
Subject: Re: [PATCH v8 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210927135559.738-1-srinivas.kandagatla@linaro.org>
 <20210927135559.738-19-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <f2009225-22b5-97ed-9cb5-87a43b2c3039@linux.intel.com>
Date:   Mon, 27 Sep 2021 11:21:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210927135559.738-19-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +static int audioreach_control_load_mix(struct snd_soc_component *scomp,
> +				       struct snd_ar_control *scontrol,
> +				       struct snd_kcontrol_new *kc,
> +				       struct snd_soc_tplg_ctl_hdr *hdr)
> +{
> +	struct snd_soc_tplg_vendor_value_elem *c_elem;
> +	struct snd_soc_tplg_vendor_array *c_array;
> +	struct snd_soc_tplg_mixer_control *mc;
> +	int tkn_count = 0;
> +
> +	mc = container_of(hdr, struct snd_soc_tplg_mixer_control, hdr);
> +	c_array = (struct snd_soc_tplg_vendor_array *)mc->priv.data;
> +
> +	c_elem = c_array->value;
> +
> +	while (tkn_count <= (le32_to_cpu(c_array->num_elems) - 1)) {
> +		switch (le32_to_cpu(c_elem->token)) {
> +		case AR_TKN_U32_SUB_GRAPH_INSTANCE_ID:
> +			scontrol->sgid = le32_to_cpu(c_elem->value);
> +			break;
> +		default:
> +			/* Ignore other tokens */
> +		break;

indentation still off

> +
> +		}
> +		c_elem++;
> +		tkn_count++;
> +	}
> +
> +	return 0;
> +}
