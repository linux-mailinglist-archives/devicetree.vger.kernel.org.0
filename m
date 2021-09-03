Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 197A3400381
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 18:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350118AbhICQjQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 12:39:16 -0400
Received: from mga09.intel.com ([134.134.136.24]:17721 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1350009AbhICQjN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 3 Sep 2021 12:39:13 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="219477839"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="219477839"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:52 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; 
   d="scan'208";a="462453475"
Received: from seangorm-mobl.amr.corp.intel.com (HELO [10.251.136.111]) ([10.251.136.111])
  by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Sep 2021 09:37:49 -0700
Subject: Re: [PATCH v5 17/21] ASoC: qdsp6: audioreach: add topology support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-18-srinivas.kandagatla@linaro.org>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <db7a4ab6-7015-25d8-c590-bcb637d1df1f@linux.intel.com>
Date:   Fri, 3 Sep 2021 10:31:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903112032.25834-18-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org




> +/**
> + * %AR_TKN_U32_SUB_GRAPH_INSTANCE_ID:		Sub Graph Instance Id
> + *
> + * %AR_TKN_U32_SUB_GRAPH_PERF_MODE:		Performance mode of subgraph
> + *						APM_SUB_GRAPH_PERF_MODE_LOW_POWER = 1,
> + *						APM_SUB_GRAPH_PERF_MODE_LOW_LATENCY = 2
> + *
> + * %AR_TKN_U32_SUB_GRAPH_DIRECTION:		Direction of subgraph
> + *						APM_SUB_GRAPH_DIRECTION_TX = 1,
> + *						APM_SUB_GRAPH_DIRECTION_RX = 2

can you have full-duplex? unclear how you would define the direction in
the case of a voice call...

> + *
> + * %AR_TKN_U32_SUB_GRAPH_SCENARIO_ID:		Scenario ID for subgraph
> + *						APM_SUB_GRAPH_SID_AUDIO_PLAYBACK = 1,
> + *						APM_SUB_GRAPH_SID_AUDIO_RECORD = 2,
> + *						APM_SUB_GRAPH_SID_VOICE_CALL = 3
> + *
> + * %AR_TKN_U32_CONTAINER_INSTANCE_ID:		Container Instance ID
> + *
> + * %AR_TKN_U32_CONTAINER_CAPABILITY_ID:		Container capability ID
> + *						APM_CONTAINER_CAP_ID_PP = 1,
> + *						APM_CONTAINER_CAP_ID_CD = 2,
> + *						APM_CONTAINER_CAP_ID_EP = 3,
> + *						APM_CONTAINER_CAP_ID_OLC = 4

Acronyms? PP, CD, EP, OLC?

> + *
> + * %AR_TKN_U32_CONTAINER_STACK_SIZE:		Stack size in the container.
> + *
> + * %AR_TKN_U32_CONTAINER_GRAPH_POS:		Graph Position
> + *						APM_CONT_GRAPH_POS_STREAM = 1,
> + *						APM_CONT_GRAPH_POS_PER_STR_PER_DEV = 2,
> + *						APM_CONT_GRAPH_POS_STR_DEV = 3,
> + *						APM_CONT_GRAPH_POS_GLOBAL_DEV = 4

explain what this means?

> + *
> + * %AR_TKN_U32_CONTAINER_PROC_DOMAIN:		Processor domain of container
> + *						APM_PROC_DOMAIN_ID_MDSP = 1,
> + *						APM_PROC_DOMAIN_ID_ADSP = 2,
> + *						APM_PROC_DOMAIN_ID_SDSP = 4,
> + *						APM_PROC_DOMAIN_ID_CDSP = 5

what happened to 3, is it reserved/illegal?

> + *
> + * %AR_TKN_U32_MODULE_ID:			Module ID
> + *
> + * %AR_TKN_U32_MODULE_INSTANCE_ID:		Module Instance ID.
> + *
> + * %AR_TKN_U32_MODULE_MAX_IP_PORTS:		Module maximum input ports
> + *
> + * %AR_TKN_U32_MODULE_MAX_OP_PORTS:		Module maximum output ports.
> + *
> + * %AR_TKN_U32_MODULE_IN_PORTS:			Number of in ports
> + *
> + * %AR_TKN_U32_MODULE_OUT_PORTS:		Number of out ports.
> + *
> + * %AR_TKN_U32_MODULE_SRC_OP_PORT_ID:		Source module output port ID
> + *
> + * %AR_TKN_U32_MODULE_DST_IN_PORT_ID:		Destination module input port ID
> + *
> + * %AR_TKN_U32_MODULE_HW_IF_IDX:		Interface index types for I2S/LPAIF
> + *
> + * %AR_TKN_U32_MODULE_HW_IF_TYPE:		Interface type
> + *						LPAIF = 0,
> + *						LPAIF_RXTX = 1,
> + *						LPAIF_WSA = 2,
> + *						LPAIF_VA = 3,
> + *						LPAIF_AXI = 4
> + *
> + * %AR_TKN_U32_MODULE_FMT_INTERLEAVE:		PCM Interleaving
> + *						PCM_INTERLEAVED = 1,
> + *						PCM_DEINTERLEAVED_PACKED = 2,
> + *						PCM_DEINTERLEAVED_UNPACKED = 3
> + *
> + * %AR_TKN_U32_MODULE_FMT_DATA:			data format
> + *						FIXED POINT = 1,
> + *						IEC60958 PACKETIZED = 3,
> + *						IEC60958 PACKETIZED NON LINEAR = 8,
> + *						COMPR OVER PCM PACKETIZED = 7,
> + *						IEC61937 PACKETIZED = 2,

isn't this precisely compressed over PCM?

> + *						GENERIC COMPRESSED = 5

??

> + *
> + * %AR_TKN_U32_MODULE_FMT_FREQ:			bit rate

bit rate or frame rate (aka sampling frequency) ?

> + *
> + * %AR_TKN_U32_MODULE_FMT_BIT_DEPTH:		bit depth


> +static struct audioreach_sub_graph *audioreach_parse_sg_tokens(struct q6apm *apm,
> +					struct snd_soc_tplg_private *private)
> +{
> +	struct audioreach_graph_info *info = NULL;
> +	struct snd_soc_tplg_vendor_array *sg_array;
> +	struct snd_soc_tplg_vendor_value_elem *sg_elem;
> +	struct audioreach_sub_graph *sg;
> +	int graph_id, sub_graph_id, tkn_count = 0;
> +	bool found;
> +
> +	sg_array = audioreach_get_sg_array(private);
> +	sg_elem = sg_array->value;
> +
> +	while (tkn_count <= (le32_to_cpu(sg_array->num_elems) - 1)) {
> +		switch (le32_to_cpu(sg_elem->token)) {
> +		case AR_TKN_U32_SUB_GRAPH_INSTANCE_ID:
> +			sub_graph_id = le32_to_cpu(sg_elem->value);
> +			sg = audioreach_tplg_alloc_sub_graph(apm, sub_graph_id, &found);
> +			if (IS_ERR(sg)) {
> +				return sg;
> +			} else if (found) {
> +				/* Already parsed data for this sub-graph */
> +				return sg;
> +			}
> +			dev_err(apm->dev, "%s: New subgraph id : 0x%08x\n", __func__,
> +				sub_graph_id);
> +			break;
> +		case AR_TKN_DAI_INDEX:
> +			/* Sub graph is associated with predefined graph */
> +			graph_id = le32_to_cpu(sg_elem->value);
> +			info = audioreach_tplg_alloc_graph_info(apm, graph_id, &found);
> +			if (IS_ERR(info))
> +				return ERR_CAST(info);
> +			break;
> +		case AR_TKN_U32_SUB_GRAPH_PERF_MODE:
> +			sg->perf_mode = le32_to_cpu(sg_elem->value);
> +			break;
> +		case AR_TKN_U32_SUB_GRAPH_DIRECTION:
> +			sg->direction = le32_to_cpu(sg_elem->value);
> +			break;
> +		case AR_TKN_U32_SUB_GRAPH_SCENARIO_ID:
> +			sg->scenario_id = le32_to_cpu(sg_elem->value);
> +			break;
> +		default:
> +			dev_err(apm->dev, "Not a valid token %d for graph\n",
> +				sg_elem->token);
> +		break;

indentation is off

> +
> +		}
> +		tkn_count++;
> +		sg_elem++;
> +	}
> +
> +	/* Sub graph is associated with predefined graph */
> +	if (info) {
> +		dev_err(apm->dev, "%s: adding subgraph id : 0x%08x -> %d\n", __func__,
> +		sub_graph_id, graph_id);
> +
> +		audioreach_tplg_add_sub_graph(sg, info);
> +	}
> +
> +	return sg;
> +}
> +
> +static struct audioreach_container *audioreach_parse_cont_tokens(struct q6apm *apm,
> +						struct audioreach_sub_graph *sg,
> +						struct snd_soc_tplg_private *private)
> +{
> +	struct snd_soc_tplg_vendor_array *cont_array;
> +	struct snd_soc_tplg_vendor_value_elem *cont_elem;
> +	struct audioreach_container *cont;
> +	int container_id, tkn_count = 0;
> +	bool found = false;
> +
> +	cont_array = audioreach_get_cont_array(private);
> +	cont_elem = cont_array->value;
> +
> +	while (tkn_count <= (le32_to_cpu(cont_array->num_elems) - 1)) {
> +		switch (le32_to_cpu(cont_elem->token)) {
> +		case AR_TKN_U32_CONTAINER_INSTANCE_ID:
> +			container_id = le32_to_cpu(cont_elem->value);
> +			cont = audioreach_tplg_alloc_container(apm, sg, container_id, &found);
> +			if (IS_ERR(cont))
> +				return ERR_PTR(-ENOMEM);
> +			else if (found) /* Already parsed container data */
> +				return cont;
> +
> +			break;
> +		case AR_TKN_U32_CONTAINER_CAPABILITY_ID:
> +			cont->capability_id = le32_to_cpu(cont_elem->value);
> +			break;
> +		case AR_TKN_U32_CONTAINER_STACK_SIZE:
> +			cont->stack_size = le32_to_cpu(cont_elem->value);
> +			break;
> +		case AR_TKN_U32_CONTAINER_GRAPH_POS:
> +			cont->graph_pos = le32_to_cpu(cont_elem->value);
> +			break;
> +		case AR_TKN_U32_CONTAINER_PROC_DOMAIN:
> +			cont->proc_domain = le32_to_cpu(cont_elem->value);
> +			break;
> +		default:
> +			dev_err(apm->dev, "Not a valid token %d for graph\n",
> +				cont_elem->token);
> +		break;

indentation?

> +
> +		}
> +		tkn_count++;
> +		cont_elem++;
> +	}
> +
> +	return cont;
> +}
> +

> +static struct audioreach_module *audioreach_find_widget(struct snd_soc_component *comp,
> +							const char *name)
> +{
> +	struct q6apm *apm = dev_get_drvdata(comp->dev);
> +	struct audioreach_module *module;
> +	int id = 0;

unnecessary init?

> +
> +	idr_for_each_entry(&apm->modules_idr, module, id) {
> +		if (!strcmp(name, module->widget->name))
> +			return module;
> +	}
> +
> +	return NULL;
> +}

> +/* DAI link - used for any driver specific init */
> +static int audioreach_link_load(struct snd_soc_component *component, int index,
> +				struct snd_soc_dai_link *link,
> +				struct snd_soc_tplg_link_config *cfg)
> +{
> +	link->nonatomic = true;
> +	link->dynamic = true;
> +	link->platforms->name = NULL;
> +	link->platforms->of_node = of_get_compatible_child(component->dev->of_node,
> +				"qcom,q6apm-dais");
> +	link->trigger[0] = SND_SOC_DPCM_TRIGGER_POST;
> +	link->trigger[1] = SND_SOC_DPCM_TRIGGER_POST;

can you add a comment on why you don't use the default order for FE/BE
triggers?

> +
> +	return 0;
> +}
> +

> +static int audioreach_get_vol_ctrl_audio_mixer(struct snd_kcontrol *kcontrol,
> +				       struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_dapm_widget *dw = snd_soc_dapm_kcontrol_widget(kcontrol);
> +	struct audioreach_module *mod = dw->dobj.private;
> +
> +	/* Check if the graph is active or not */

that comment seems like a copy/paste, there's no check.

> +	ucontrol->value.integer.value[0] = mod->gain;
> +
> +	return 0;
> +}
> +
> +static int audioreach_put_vol_ctrl_audio_mixer(struct snd_kcontrol *kcontrol,
> +				      struct snd_ctl_elem_value *ucontrol)
> +{
> +	struct snd_soc_dapm_widget *dw = snd_soc_dapm_kcontrol_widget(kcontrol);
> +	struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kcontrol);
> +	struct snd_soc_component *c = snd_soc_dapm_to_component(dapm);
> +	struct audioreach_module *mod = dw->dobj.private;
> +	struct q6apm *apm = dev_get_drvdata(c->dev);
> +	int vol = ucontrol->value.integer.value[0];
> +
> +	/* Check if the graph is active or not */
> +	if (dw->power) {
> +		audioreach_gain_set_vol_ctrl(apm, mod, vol);
> +		mod->gain = vol;
> +		return 1;
> +	}

shouldn't you cache the value and apply it when the graph is powered?

Also wondering why this isn't using pm_runtime or something? Is this
re-inventing your own power management?

> +
> +	dev_err(apm->dev, "Unable to set volume as graph is not	active\n");
> +	return 0;
> +
> +}
> +
> +static int audioreach_control_load_mix(struct snd_soc_component *scomp,
> +					  struct snd_ar_control *scontrol,
> +					  struct snd_kcontrol_new *kc,
> +					  struct snd_soc_tplg_ctl_hdr *hdr)
> +{
> +	struct snd_soc_tplg_mixer_control *mc;
> +	struct snd_soc_tplg_vendor_array *c_array;
> +	struct snd_soc_tplg_vendor_value_elem *c_elem;
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

indentation?

> +
> +		}
> +		c_elem++;
> +		tkn_count++;
> +	}
> +
> +	return 0;
> +}

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
> +
> +	ret = snd_soc_tplg_component_load(component, &audioreach_tplg_ops, fw);
> +	if (ret < 0) {
> +		dev_err(dev, "tplg component load failed%d\n", ret);
> +		release_firmware(fw);
> +		return -EINVAL;
> +	}

should you not release the firmware on success as well? that's what we
do for SOF"

	ret = snd_soc_tplg_component_load(scomp, &sof_tplg_ops, fw);
	if (ret < 0) {
		dev_err(scomp->dev, "error: tplg component load failed %d\n",
			ret);
		ret = -EINVAL;
	}

	release_firmware(fw);
	return ret;

> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(audioreach_tplg_init);
> 
