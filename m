Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F768495C85
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 10:06:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379663AbiAUJG4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 04:06:56 -0500
Received: from mga12.intel.com ([192.55.52.136]:40347 "EHLO mga12.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234887AbiAUJGz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Jan 2022 04:06:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1642756015; x=1674292015;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=WFROXGt1Io5GRagxufZfoJG97h4lFiKgwSfWhouDzI0=;
  b=Hmspj5aJ3r46EKTbzvduyyfDYzOFXeJ1wHcGpZzCt7uGq/4GpLsxW39j
   zuzo8BFnU70t7I96sk6MjVx+t2vCZ3A7kCt6mO4BvZmzUs9+BOvXLC6rR
   iwqDaCJjW04c3cUlbBkV+XmiBr9K+88pGqt88N0/UBqH9StNmeBAhUTm8
   GCrLEcQdkMIyLu62ckfsswt1wMC3VCi1dvlVB5y/XkyUpsKdXP/uVvCnb
   bXdMqOlS8BKf/Jtu5oezFQ0W0B2bP7WAJb0+U9xsoJZwgGCPw4vHes1S/
   6E/VYabwBK4ujA3RYtZ3d+7ta0mpCpdkwexUMDwrgQ+4mQSy2wmCqaX/O
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="225588411"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; 
   d="scan'208";a="225588411"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2022 01:06:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; 
   d="scan'208";a="533197205"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.237.180.112]) ([10.237.180.112])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2022 01:06:26 -0800
Message-ID: <aa839d9e-76b8-1ee2-048b-1982ff9bdb31@linux.intel.com>
Date:   Fri, 21 Jan 2022 10:06:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 2/6] ASoC: xilinx: xlnx_i2s: create drvdata structure
Content-Language: en-US
To:     Robert Hancock <robert.hancock@calian.com>,
        alsa-devel@alsa-project.org
Cc:     devicetree@vger.kernel.org, kuninori.morimoto.gx@renesas.com,
        lgirdwood@gmail.com, tiwai@suse.com, robh+dt@kernel.org,
        michal.simek@xilinx.com, broonie@kernel.org,
        maruthi.srinivas.bayyavarapu@xilinx.com
References: <20220120195832.1742271-1-robert.hancock@calian.com>
 <20220120195832.1742271-3-robert.hancock@calian.com>
From:   =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>
In-Reply-To: <20220120195832.1742271-3-robert.hancock@calian.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/20/2022 8:58 PM, Robert Hancock wrote:
> An upcoming change will require storing additional driver data other
> than the memory base address. Create a drvdata structure and use that
> rather than storing the raw base address pointer.
> 
> Signed-off-by: Robert Hancock <robert.hancock@calian.com>
> ---
>   sound/soc/xilinx/xlnx_i2s.c | 66 ++++++++++++++++++++-----------------
>   1 file changed, 35 insertions(+), 31 deletions(-)
> 
> diff --git a/sound/soc/xilinx/xlnx_i2s.c b/sound/soc/xilinx/xlnx_i2s.c
> index cc641e582c82..3bafa34b789a 100644
> --- a/sound/soc/xilinx/xlnx_i2s.c
> +++ b/sound/soc/xilinx/xlnx_i2s.c
> @@ -22,15 +22,20 @@
>   #define I2S_CH0_OFFSET			0x30
>   #define I2S_I2STIM_VALID_MASK		GENMASK(7, 0)
>   
> +struct xlnx_i2s_drv_data {
> +	struct snd_soc_dai_driver dai_drv;
> +	void __iomem *base;
> +};
> +
>   static int xlnx_i2s_set_sclkout_div(struct snd_soc_dai *cpu_dai,
>   				    int div_id, int div)
>   {
> -	void __iomem *base = snd_soc_dai_get_drvdata(cpu_dai);
> +	struct xlnx_i2s_drv_data *drv_data = snd_soc_dai_get_drvdata(cpu_dai);
>   
>   	if (!div || (div & ~I2S_I2STIM_VALID_MASK))
>   		return -EINVAL;
>   
> -	writel(div, base + I2S_I2STIM_OFFSET);
> +	writel(div, drv_data->base + I2S_I2STIM_OFFSET);
>   
>   	return 0;
>   }
> @@ -40,13 +45,13 @@ static int xlnx_i2s_hw_params(struct snd_pcm_substream *substream,
>   			      struct snd_soc_dai *i2s_dai)
>   {
>   	u32 reg_off, chan_id;
> -	void __iomem *base = snd_soc_dai_get_drvdata(i2s_dai);
> +	struct xlnx_i2s_drv_data *drv_data = snd_soc_dai_get_drvdata(i2s_dai);
>   
>   	chan_id = params_channels(params) / 2;
>   
>   	while (chan_id > 0) {
>   		reg_off = I2S_CH0_OFFSET + ((chan_id - 1) * 4);
> -		writel(chan_id, base + reg_off);
> +		writel(chan_id, drv_data->base + reg_off);
>   		chan_id--;
>   	}
>   
> @@ -56,18 +61,18 @@ static int xlnx_i2s_hw_params(struct snd_pcm_substream *substream,
>   static int xlnx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
>   			    struct snd_soc_dai *i2s_dai)
>   {
> -	void __iomem *base = snd_soc_dai_get_drvdata(i2s_dai);
> +	struct xlnx_i2s_drv_data *drv_data = snd_soc_dai_get_drvdata(i2s_dai);
>   
>   	switch (cmd) {
>   	case SNDRV_PCM_TRIGGER_START:
>   	case SNDRV_PCM_TRIGGER_RESUME:
>   	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
> -		writel(1, base + I2S_CORE_CTRL_OFFSET);
> +		writel(1, drv_data->base + I2S_CORE_CTRL_OFFSET);
>   		break;
>   	case SNDRV_PCM_TRIGGER_STOP:
>   	case SNDRV_PCM_TRIGGER_SUSPEND:
>   	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> -		writel(0, base + I2S_CORE_CTRL_OFFSET);
> +		writel(0, drv_data->base + I2S_CORE_CTRL_OFFSET);
>   		break;
>   	default:
>   		return -EINVAL;
> @@ -95,20 +100,19 @@ MODULE_DEVICE_TABLE(of, xlnx_i2s_of_match);
>   
>   static int xlnx_i2s_probe(struct platform_device *pdev)
>   {
> -	void __iomem *base;
> -	struct snd_soc_dai_driver *dai_drv;
> +	struct xlnx_i2s_drv_data *drv_data;
>   	int ret;
>   	u32 ch, format, data_width;
>   	struct device *dev = &pdev->dev;
>   	struct device_node *node = dev->of_node;
>   
> -	dai_drv = devm_kzalloc(&pdev->dev, sizeof(*dai_drv), GFP_KERNEL);
> -	if (!dai_drv)
> +	drv_data = devm_kzalloc(&pdev->dev, sizeof(*drv_data), GFP_KERNEL);
> +	if (!drv_data)
>   		return -ENOMEM;
>   
> -	base = devm_platform_ioremap_resource(pdev, 0);
> -	if (IS_ERR(base))
> -		return PTR_ERR(base);
> +	drv_data->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(drv_data->base))
> +		return PTR_ERR(drv_data->base);
>   
>   	ret = of_property_read_u32(node, "xlnx,num-channels", &ch);
>   	if (ret < 0) {
> @@ -134,35 +138,35 @@ static int xlnx_i2s_probe(struct platform_device *pdev)
>   	}
>   
>   	if (of_device_is_compatible(node, "xlnx,i2s-transmitter-1.0")) {
> -		dai_drv->name = "xlnx_i2s_playback";
> -		dai_drv->playback.stream_name = "Playback";
> -		dai_drv->playback.formats = format;
> -		dai_drv->playback.channels_min = ch;
> -		dai_drv->playback.channels_max = ch;
> -		dai_drv->playback.rates	= SNDRV_PCM_RATE_8000_192000;
> -		dai_drv->ops = &xlnx_i2s_dai_ops;
> +		drv_data->dai_drv.name = "xlnx_i2s_playback";
> +		drv_data->dai_drv.playback.stream_name = "Playback";
> +		drv_data->dai_drv.playback.formats = format;
> +		drv_data->dai_drv.playback.channels_min = ch;
> +		drv_data->dai_drv.playback.channels_max = ch;
> +		drv_data->dai_drv.playback.rates	= SNDRV_PCM_RATE_8000_192000;
> +		drv_data->dai_drv.ops = &xlnx_i2s_dai_ops;
>   	} else if (of_device_is_compatible(node, "xlnx,i2s-receiver-1.0")) {
> -		dai_drv->name = "xlnx_i2s_capture";
> -		dai_drv->capture.stream_name = "Capture";
> -		dai_drv->capture.formats = format;
> -		dai_drv->capture.channels_min = ch;
> -		dai_drv->capture.channels_max = ch;
> -		dai_drv->capture.rates = SNDRV_PCM_RATE_8000_192000;
> -		dai_drv->ops = &xlnx_i2s_dai_ops;
> +		drv_data->dai_drv.name = "xlnx_i2s_capture";
> +		drv_data->dai_drv.capture.stream_name = "Capture";
> +		drv_data->dai_drv.capture.formats = format;
> +		drv_data->dai_drv.capture.channels_min = ch;
> +		drv_data->dai_drv.capture.channels_max = ch;
> +		drv_data->dai_drv.capture.rates = SNDRV_PCM_RATE_8000_192000;
> +		drv_data->dai_drv.ops = &xlnx_i2s_dai_ops;
>   	} else {
>   		return -ENODEV;
>   	}
>   
> -	dev_set_drvdata(&pdev->dev, base);
> +	dev_set_drvdata(&pdev->dev, drv_data);
>   
>   	ret = devm_snd_soc_register_component(&pdev->dev, &xlnx_i2s_component,
> -					      dai_drv, 1);
> +					      &drv_data->dai_drv, 1);
>   	if (ret) {
>   		dev_err(&pdev->dev, "i2s component registration failed\n");
>   		return ret;
>   	}
>   
> -	dev_info(&pdev->dev, "%s DAI registered\n", dai_drv->name);
> +	dev_info(&pdev->dev, "%s DAI registered\n", drv_data->dai_drv.name);
>   
>   	return ret;
>   }

I don't think this patch is needed, snd_soc_dai, already has pointer to 
its snd_soc_dai_driver, so there is no need to keep it additionally in 
drvdata?

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/sound/soc-dai.h?h=v5.16#n431


