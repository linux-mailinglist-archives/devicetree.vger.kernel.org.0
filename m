Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55B7840CA55
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 18:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230296AbhIOQgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 12:36:02 -0400
Received: from mga07.intel.com ([134.134.136.100]:58332 "EHLO mga07.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229962AbhIOQgB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 12:36:01 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="286060921"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="286060921"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:42 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; 
   d="scan'208";a="583352209"
Received: from mvetrive-mobl3.amr.corp.intel.com (HELO [10.212.69.198]) ([10.212.69.198])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Sep 2021 09:34:40 -0700
Subject: Re: [PATCH v6 18/22] ASoC: qdsp6: audioreach: add topology support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
 <20210915131333.19047-19-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <bc93c17e-b65d-5885-f151-243d259f40ff@linux.intel.com>
Date:   Wed, 15 Sep 2021 11:22:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210915131333.19047-19-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> +static int audioreach_widget_load_buffer(struct snd_soc_component *component,
> +					 int index, struct snd_soc_dapm_widget *w,
> +					 struct snd_soc_tplg_dapm_widget *tplg_w)
> +{
> +	struct snd_soc_tplg_vendor_array *mod_array;
> +	struct audioreach_module *mod;
> +	struct snd_soc_dobj *dobj;
> +	int ret;
> +
> +	ret = audioreach_widget_load_module_common(component, index, w, tplg_w);
> +	if (ret)
> +		return ret;
> +
> +	dobj = &w->dobj;
> +	mod = dobj->private;
> +
> +	mod_array = audioreach_get_module_array(&tplg_w->priv);
> +
> +	switch (mod->module_id) {
> +	case MODULE_ID_CODEC_DMA_SINK:
> +	case MODULE_ID_CODEC_DMA_SOURCE:
> +		audioreach_widget_dma_module_load(mod, mod_array);
> +		break;
> +	case MODULE_ID_DATA_LOGGING:
> +		audioreach_widget_log_module_load(mod, mod_array);
> +		break;
> +	case MODULE_ID_I2S_SINK:
> +	case MODULE_ID_I2S_SOURCE:
> +		audioreach_widget_i2s_module_load(mod, mod_array);
> +		break;

no default case?

> +	}
> +
> +	return 0;
> +}
> +

> +int audioreach_tplg_init(struct snd_soc_component *component)
> +{
> +	struct device *dev = component->dev;
> +	const struct firmware *fw;
> +	int ret;
> +
> +	ret = request_firmware(&fw, "audioreach.bin", dev);
> +	if (ret < 0) {
> +		dev_err(dev, "tplg fw audioreach.bin load failed with %d\n", ret);
> +		return ret;
> +	}

How does this work if you want to change the topology, which will happen
rather frequently if you have a framework precisely to change the DSP
graph? You need to override a file in userspace?

Shouldn't you have a means to identify what topology file you want on a
platform-basis?

Or at the very least a means to change the file name with a kernel
parameter or something.

> +
> +	ret = snd_soc_tplg_component_load(component, &audioreach_tplg_ops, fw);
> +	if (ret < 0) {
> +		dev_err(dev, "tplg component load failed%d\n", ret);
> +		ret = -EINVAL;
> +	}
> +
> +	release_firmware(fw);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(audioreach_tplg_init);
> 
