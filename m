Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E335762DE
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 15:35:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbiGONfI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 09:35:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiGONfH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 09:35:07 -0400
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96F537CB6F
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 06:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1657892106; x=1689428106;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=r08EIwO55OHoEudV34JOehN8n2LAoGGwPVFuAdHyXXw=;
  b=hx23QlPKmj19hv3VNCDeEu2rk7ZIaraRytM8drntzB0u+gynEfKeNIib
   ozNErPxL+Pdh+WYMQARpqsJlGM4rLBruJkGR4SUBfM6ZekDpvZclJBBqc
   iseXtn3qyr18zAIkmgHSTnvvZPsQ81SK/UeywPqA81UwvISX+pF/6LM35
   BWsmnX4bSvMrlxtVuYFegogY8BTjCZH8yaqHuYqUpFikZOohve1Ym6OBB
   skvOT5RlmMcaGZ5ha1nvAzIXwqxHtRbTOKc8pNnrZ0yCudu1Paae9mHGV
   0v8VBx2r3IA4Eu1auSEs7ZvMCli/EmVROrnV5UaEFS9koiuKAgxJozkTJ
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="285819427"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; 
   d="scan'208";a="285819427"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2022 06:35:06 -0700
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; 
   d="scan'208";a="723084879"
Received: from lingjuch-mobl.amr.corp.intel.com (HELO [10.209.147.93]) ([10.209.147.93])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jul 2022 06:35:05 -0700
Message-ID: <7e892b40-7a67-342e-40a9-35f846a11c28@linux.intel.com>
Date:   Fri, 15 Jul 2022 08:05:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Subject: Re: [PATCH] ASoC: codecs: add support for ES8326
Content-Language: en-US
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     devicetree@vger.kernel.org, tiwai@suse.com, broonie@kernel.org,
        Zhu Ning <zhuning@everest-semi.com>,
        David Yang <yangxiaohua@everest-semi.com>
References: <20220715054100.9240-1-zhuning0077@gmail.com>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <20220715054100.9240-1-zhuning0077@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/15/22 00:41, Zhu Ning wrote:
> The ES8326 codec is not compatible with ES8316 and requires a dedicated driver.
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> ---

It's helpful for reviewers when you use the -v option in git
format-patch, and a change history below the --- mark also helps
understand what has been modified between versions. Thanks!

>  sound/soc/codecs/Kconfig  |   5 +
>  sound/soc/codecs/Makefile |   2 +
>  sound/soc/codecs/es8326.c | 794 ++++++++++++++++++++++++++++++++++++++
>  sound/soc/codecs/es8326.h | 187 +++++++++
>  4 files changed, 988 insertions(+)
>  mode change 100644 => 100755 sound/soc/codecs/Kconfig
>  mode change 100644 => 100755 sound/soc/codecs/Makefile
>  create mode 100755 sound/soc/codecs/es8326.c
>  create mode 100755 sound/soc/codecs/es8326.h

> +#define es8326_RATES SNDRV_PCM_RATE_8000_96000

this definition omits 24 kHz, you may want to add it explicitly.

> +
> +#define es8326_FORMATS (SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S20_3LE |\
> +	SNDRV_PCM_FMTBIT_S24_LE)
> +
> +static const struct snd_soc_dai_ops es8326_ops = {
> +	.hw_params = es8326_pcm_hw_params,
> +	.set_fmt = es8326_set_dai_fmt,
> +	.set_sysclk = es8326_set_dai_sysclk,
> +};
> +
> +static struct snd_soc_dai_driver es8326_dai = {
> +	.name = "ES8326 HiFi",
> +	.playback = {
> +		.stream_name = "Playback",
> +		.channels_min = 1,
> +		.channels_max = 2,
> +		.rates = es8326_RATES,
> +		.formats = es8326_FORMATS,
> +		},
> +	.capture = {
> +		.stream_name = "Capture",
> +		.channels_min = 1,
> +		.channels_max = 2,
> +		.rates = es8326_RATES,
> +		.formats = es8326_FORMATS,
> +		},
> +	.ops = &es8326_ops,
> +	.symmetric_rate = 1,
> +};
> +
> +static void es8326_enable_micbias(struct snd_soc_component *component)
> +{
> +	struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
> +
> +	snd_soc_dapm_mutex_lock(dapm);
> +	snd_soc_dapm_force_enable_pin_unlocked(dapm, "MICBIAS1");
> +	snd_soc_dapm_force_enable_pin_unlocked(dapm, "MICBIAS2");
> +	snd_soc_dapm_sync_unlocked(dapm);
> +	snd_soc_dapm_mutex_unlock(dapm);
> +}
> +
> +static void es8326_disable_micbias(struct snd_soc_component *component)
> +{
> +	struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
> +
> +	snd_soc_dapm_mutex_lock(dapm);
> +	snd_soc_dapm_disable_pin_unlocked(dapm, "MICBIAS1");
> +	snd_soc_dapm_disable_pin_unlocked(dapm, "MICBIAS2");
> +	snd_soc_dapm_sync_unlocked(dapm);
> +	snd_soc_dapm_mutex_unlock(dapm);
> +}
> +static void es8326_jack_detect_handler(struct work_struct *work)
> +{
> +	struct es8326_priv *es8326 =
> +		container_of(work, struct es8326_priv, jack_detect_work.work);
> +	struct snd_soc_component *comp = es8326->component;
> +	unsigned int iface;
> +
> +	iface = snd_soc_component_read(comp, ES8326_HP_DETECT_FB);
> +	dev_dbg(comp->dev, "gpio flag %#04x", iface);
> +	if ((iface & ES8326_HPINSERT_FLAG) == 0) {
> +		dev_dbg(comp->dev, "No headset detected");
> +		snd_soc_jack_report(es8326->jack, 0, SND_JACK_HEADSET);
> +		snd_soc_component_write(comp, ES8326_ADC1_SRC_2A, es8326->mic2_src);
> +		es8326_disable_micbias(comp);
> +	} else if ((iface & ES8326_HPINSERT_FLAG) == ES8326_HPINSERT_FLAG) {
> +		if ((iface & ES8326_HPBUTTON_FLAG) == 0x00) {
> +			dev_dbg(comp->dev, "Headset detected");
> +			snd_soc_jack_report(es8326->jack, SND_JACK_HEADSET, SND_JACK_HEADSET);
> +			snd_soc_component_write(comp, ES8326_ADC1_SRC_2A, es8326->mic1_src);
> +		} else {
> +			dev_dbg(comp->dev, "Headphone detected");
> +			snd_soc_jack_report(es8326->jack, SND_JACK_HEADPHONE, SND_JACK_HEADSET);
> +		}
> +	}
> +}
> +
> +static irqreturn_t es8326_irq(int irq, void *dev_id)
> +{
> +	struct es8326_priv *es8326 = dev_id;
> +	struct snd_soc_component *comp = es8326->component;
> +
> +	if(!es8326->jack)
> +		goto out;
> +	es8326_enable_micbias(comp);
> +
> +	queue_delayed_work(system_wq, &es8326->jack_detect_work,
> +			   msecs_to_jiffies(300));
> +
> +out:
> +	return IRQ_HANDLED;
> +}
> +
> +static int es8326_resume(struct snd_soc_component *component)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(component);
> +
> +	regmap_write(es8326->regmap, ES8326_CLK_CTL_01, ES8326_CLK_ON);
> +	/* Two channel ADC */
> +	regmap_write(es8326->regmap, ES8326_PULLUP_CTL_F9, 0x02);
> +	regmap_write(es8326->regmap, ES8326_CLK_INV_02, 0x00);
> +	regmap_write(es8326->regmap, ES8326_CLK_DIV_CPC_0C, 0x1F);
> +	regmap_write(es8326->regmap, ES8326_CLK_VMIDS1_10, 0xC8);
> +	regmap_write(es8326->regmap, ES8326_CLK_VMIDS2_11, 0x88);
> +	regmap_write(es8326->regmap, ES8326_CLK_CAL_TIME_12, 0x20);
> +	regmap_write(es8326->regmap, ES8326_SYS_BIAS_1D, 0x08);
> +	regmap_write(es8326->regmap, ES8326_DAC2HPMIX_25, 0x22);
> +	regmap_write(es8326->regmap, ES8326_ADC1_SRC_2A, es8326->mic1_src);
> +	regmap_write(es8326->regmap, ES8326_ADC2_SRC_2B, es8326->mic2_src);
> +	regmap_write(es8326->regmap, ES8326_HPJACK_TIMER_56, 0x88);
> +	regmap_write(es8326->regmap, ES8326_HP_DET_57,
> +		     ES8326_HP_DET_SRC_PIN9 | es8326->jack_pol);
> +	regmap_write(es8326->regmap, ES8326_INT_SOURCE_58, 0x08);
> +	regmap_write(es8326->regmap, ES8326_INTOUT_IO_59, 0x45);
> +	regmap_write(es8326->regmap, ES8326_RESET_00, ES8326_CSM_ON);
> +	snd_soc_component_update_bits(component, ES8326_PGAGAIN_23,
> +				      ES8326_MIC_SEL_MASK, ES8326_MIC1_SEL);
> +
> +	es8326_irq(es8326->irq, es8326);
> +	return 0;
> +}
> +
> +static int es8326_suspend(struct snd_soc_component *component)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(component);
> +
> +	regmap_write(es8326->regmap, ES8326_CLK_CTL_01, ES8326_CLK_OFF);


For symmetry with the resume case, aren't you missing

es8326_disable_micbias(comp);

cancel_delayed_work_sync(&es8326->jack_detect_work);

> +	return 0;
> +}
> +

> +static void es8326_enable_jack_detect(struct snd_soc_component *component,
> +				struct snd_soc_jack *jack)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(component);
> +
> +	mutex_lock(&es8326->lock);
> +	if (es8326->jd_inverted)
> +		snd_soc_component_update_bits(component, ES8326_HP_DET_57,
> +					      ES8326_HP_DET_JACK_POL, ~es8326->jack_pol);
> +	es8326->jack = jack;
> +
> +	mutex_unlock(&es8326->lock);
> +	es8326_irq(es8326->irq, es8326);
> +}
> +
> +static void es8326_disable_jack_detect(struct snd_soc_component *component)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(component);
> +
> +	dev_dbg(component->dev, "Enter into %s\n", __func__);
> +	if (!es8326->jack)
> +		return; /* Already disabled (or never enabled) */
> +
> +	cancel_delayed_work_sync(&es8326->jack_detect_work);
> +
> +	mutex_lock(&es8326->lock);
> +	if (es8326->jack->status & SND_JACK_MICROPHONE)
> +		snd_soc_jack_report(es8326->jack, 0, SND_JACK_BTN_0);

This one is odd, you don't handle buttons anywhere in this patch but here?

> +
> +	es8326->jack = NULL;
> +	mutex_unlock(&es8326->lock);
> +}
> +

> +static int es8326_i2c_probe(struct i2c_client *i2c,
> +			    const struct i2c_device_id *id)
> +{
> +	struct es8326_priv *es8326;
> +	int ret;
> +
> +	es8326 = devm_kzalloc(&i2c->dev, sizeof(struct es8326_priv), GFP_KERNEL);
> +	if (!es8326)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(i2c, es8326);
> +	es8326->i2c = i2c;
> +	mutex_init(&es8326->lock);
> +	es8326->regmap = devm_regmap_init_i2c(i2c, &es8326_regmap_config);
> +	if (IS_ERR(es8326->regmap)) {
> +		ret = PTR_ERR(es8326->regmap);
> +		dev_err(&i2c->dev, "Failed to init regmap: %d\n", ret);
> +		return ret;
> +	}
> +
> +	es8326->irq = i2c->irq;
> +	/* ES8316 is level-based while ES8326 is edge-based */
> +	ret = devm_request_threaded_irq(&i2c->dev, es8326->irq, NULL, es8326_irq,
> +					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
> +					"es8326", es8326);
> +	if (ret)
> +		dev_err(&i2c->dev, "Failed to reguest IRQ: %d\n", ret);
> +	INIT_DELAYED_WORK(&es8326->jack_detect_work,
> +			  es8326_jack_detect_handler);

Something's weird here, either you are missing a return ret;, a newline
or both. This doesn't seem right.

> +
> +	es8326->mclk = devm_clk_get_optional(&i2c->dev, "mclk");
> +	if (IS_ERR(es8326->mclk)) {
> +		dev_err(&i2c->dev, "unable to get mclk\n");
> +		return PTR_ERR(es8326->mclk);
> +	}
> +	if (!es8326->mclk)
> +		dev_warn(&i2c->dev, "assuming static mclk\n");
> +
> +	ret = clk_prepare_enable(es8326->mclk);
> +	if (ret) {
> +		dev_err(&i2c->dev, "unable to enable mclk\n");
> +		return ret;
> +	}
> +	return devm_snd_soc_register_component(&i2c->dev,
> +					&soc_component_dev_es8326,
> +					&es8326_dai, 1);
> +}

I am also wondering if on remove you'd need to do the same thing as on
suspend (disable the mic bias and cancel the workqueue)?
