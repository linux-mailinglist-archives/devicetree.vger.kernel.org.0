Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E7755815A7
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 16:47:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbiGZOrs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 10:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239448AbiGZOrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 10:47:48 -0400
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC302A957
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 07:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658846866; x=1690382866;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=hCDvDyKO3+nzH3QeX4McsH3KRTlNfnBl6MmW2GBvjwc=;
  b=Qhg4qJ2+x7O8zmDpgAKZyYN2nofF2creexC8JjM0prAkpoGI4oIJnMAD
   MpO9YQJlmcaurzioyhya+YCx/2mdpaI8xmmTHoP9qdggsk31qtCIn6gCI
   0FKsz4Le1Kzwr4c8hRN1ckroYV2SR+3VGs+n/DHRPz2erRqtKX3jLl7cO
   Iy45j1pMhsa3JnUbRdt8CfKZhWNOnzrB6kRExGFFHHxRuEeGYGrukSI2t
   PexjdowNs6zidDXBNF77jWwwa1v+H10ms3hwykMG38OvtksmATJtD1Ysf
   fTGMLLy9P1t7y/a8DO4LRjQZGnDaI6eZKQ8X+deC4spHLExMwMXJUtZfn
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="286727534"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="286727534"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 07:47:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="597047545"
Received: from adamreed-mobl.amr.corp.intel.com (HELO [10.212.70.145]) ([10.212.70.145])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 07:47:45 -0700
Message-ID: <2f031e44-4d8a-a69f-697f-1bb83ba1f9f9@linux.intel.com>
Date:   Tue, 26 Jul 2022 09:06:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] ASoC: codecs: add support for ES8326
Content-Language: en-US
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     robh@kernel.org, ckeepax@opensource.cirrus.com,
        devicetree@vger.kernel.org, tiwai@suse.com, broonie@kernel.org,
        Zhu Ning <zhuning@everest-semi.com>,
        David Yang <yangxiaohua@everest-semi.com>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
From:   Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
In-Reply-To: <20220726131747.127992-1-zhuning0077@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Much improved version, thank you. See additional comments/questions below.
> +static int es8326_set_bias_level(struct snd_soc_component *codec,
> +				 enum snd_soc_bias_level level)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(codec);
> +	int ret;
> +
> +	switch (level) {
> +	case SND_SOC_BIAS_ON:
> +		if (!IS_ERR(es8326->mclk)) {

the IS_ERR case is taken care of in the probe, so should this be

if (es8326->mclk)

for symmetry with the BIAS_OFF case?

> +			ret = clk_prepare_enable(es8326->mclk);
> +			if (ret)
> +				return ret;
> +		}
> +		regmap_write(es8326->regmap, ES8326_RESET_00, ES8326_PWRUP_SEQ_EN);
> +		regmap_write(es8326->regmap, ES8326_INTOUT_IO_59, 0x45);
> +		regmap_write(es8326->regmap, ES8326_SDINOUT1_IO_5A,
> +			    (ES8326_IO_DMIC_CLK << ES8326_SDINOUT1_SHIFT));
> +		regmap_write(es8326->regmap, ES8326_SDINOUT23_IO_5B, ES8326_IO_INPUT);
> +		regmap_write(es8326->regmap, ES8326_CLK_RESAMPLE_03, 0x05);
> +		regmap_write(es8326->regmap, ES8326_VMIDSEL_18, 0x02);
> +		regmap_write(es8326->regmap, ES8326_PGA_PDN_17, 0x40);
> +		regmap_write(es8326->regmap, ES8326_DAC2HPMIX_25, 0xAA);
> +		regmap_write(es8326->regmap, ES8326_RESET_00, ES8326_CSM_ON);
> +		break;
> +	case SND_SOC_BIAS_PREPARE:
> +		break;
> +	case SND_SOC_BIAS_STANDBY:
> +		break;
> +	case SND_SOC_BIAS_OFF:
> +		if (es8326->mclk)> +			clk_disable_unprepare(es8326->mclk);
> +		regmap_write(es8326->regmap, ES8326_DAC2HPMIX_25, 0x11);
> +		regmap_write(es8326->regmap, ES8326_RESET_00, ES8326_CSM_OFF);
> +		regmap_write(es8326->regmap, ES8326_PGA_PDN_17, 0xF8);
> +		regmap_write(es8326->regmap, ES8326_VMIDSEL_18, 0x00);
> +		regmap_write(es8326->regmap, ES8326_INT_SOURCE_58, 0x08);
> +		regmap_write(es8326->regmap, ES8326_SDINOUT1_IO_5A, ES8326_IO_INPUT);
> +		regmap_write(es8326->regmap, ES8326_SDINOUT23_IO_5B, ES8326_IO_INPUT);
> +		regmap_write(es8326->regmap, ES8326_RESET_00,
> +			     ES8326_CODEC_RESET | ES8326_PWRUP_SEQ_EN);
> +		break;
> +	}
> +
> +	return 0;
> +}

> +static irqreturn_t es8326_irq(int irq, void *dev_id)
> +{
> +	struct es8326_priv *es8326 = dev_id;
> +	struct snd_soc_component *comp = es8326->component;
> +
> +	if (!es8326->jack)
> +		goto out;
> +
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
> +	regcache_cache_only(es8326->regmap, false);
> +	regcache_sync(es8326->regmap);
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
> +	es8326_disable_micbias(component);
> +	cancel_delayed_work_sync(&es8326->jack_detect_work);

I would have swapped the two lines above, first cancel the workqueue
(which means let it run if it started already).

> +
> +	regmap_write(es8326->regmap, ES8326_CLK_CTL_01, ES8326_CLK_OFF);
> +	regcache_cache_only(es8326->regmap, true);
> +	regcache_mark_dirty(es8326->regmap);
> +
> +	return 0;
> +}

One question on the interrupt handling: should there be an interrupt
disable on suspend and conversely an interrupt enable on resume?

> +
> +static int es8326_probe(struct snd_soc_component *component)
> +{
> +	struct es8326_priv *es8326 = snd_soc_component_get_drvdata(component);
> +	int ret;
> +
> +	es8326->component = component;
> +	es8326->jd_inverted = device_property_read_bool(component->dev,
> +							"everest,jack-detect-inverted");
> +
> +	ret = device_property_read_u8(component->dev, "everest,mic1-src", &es8326->mic1_src);
> +	if (ret != 0) {
> +		dev_dbg(component->dev, "mic1-src return %d", ret);
> +		es8326->mic1_src = ES8326_ADC_AMIC;
> +	}
> +	dev_dbg(component->dev, "mic1-src %x", es8326->mic1_src);
> +
> +	ret = device_property_read_u8(component->dev, "everest,mic2-src", &es8326->mic2_src);
> +	if (ret != 0) {
> +		dev_dbg(component->dev, "mic2-src return %d", ret);
> +		es8326->mic2_src = ES8326_ADC_DMIC;
> +	}
> +	dev_dbg(component->dev, "mic2-src %x", es8326->mic2_src);
> +
> +	ret = device_property_read_u8(component->dev, "everest,jack-pol", &es8326->jack_pol);
> +	if (ret != 0) {
> +		dev_dbg(component->dev, "jack-pol return %d", ret);
> +		es8326->jack_pol = ES8326_HP_DET_BUTTON_POL | ES8326_HP_TYPE_OMTP;
> +	}
> +	dev_dbg(component->dev, "jack-pol %x", es8326->jack_pol);
> +
> +	es8326_resume(component);
> +	return 0;
> +}

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
> +	INIT_DELAYED_WORK(&es8326->jack_detect_work,
> +			  es8326_jack_detect_handler);
> +	/* ES8316 is level-based while ES8326 is edge-based */
> +	ret = devm_request_threaded_irq(&i2c->dev, es8326->irq, NULL, es8326_irq,
> +					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
> +					"es8326", es8326);
> +	if (ret) {
> +		dev_warn(&i2c->dev, "Failed to reguest IRQ: %d: %d\n",

typo: request

> +		es8326->irq, ret);
> +		es8326->irq = -ENXIO;
> +	}
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

I am not really following what happens if es8326->mclk is NULL. Why
would you call clk_prepare_enable() with a NULL pointer? If you look at
the code in es8326_set_bias_level(), you do test for that case, so why
not here? Something's not right here.

Could it be that this is a scope issue? This block should be moved under
the scope of the if (!es8236->mclk) test, no?


> +	return devm_snd_soc_register_component(&i2c->dev,
> +					&soc_component_dev_es8326,
> +					&es8326_dai, 1);
> +}
