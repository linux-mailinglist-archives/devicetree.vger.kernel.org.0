Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 01D32A5012
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 09:39:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729787AbfIBHjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 03:39:49 -0400
Received: from mail-eopbgr720075.outbound.protection.outlook.com ([40.107.72.75]:57759
        "EHLO NAM05-CO1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1729374AbfIBHjs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Sep 2019 03:39:48 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNN86tyaiFcetTSlog0fA3LImSRjWk4zUZOwnjG2Ahxxv2g2l6hR0wFbekiqYYVBOXVCkfl2c68jv3CI8eWcCijAS+zvgIAwGjfQYOIAg+65qrQslJsFK1qz3BtaFvhdNJJFmBy/Bj7jLc+l2rllPpfpTy7guMCSbOVPVtgoOcwZGtTTjh1f2l57sqCu45HnOET6mEpXbA4trlQtdtJqGeryspbIQKVbPZP0zmSYX30uvp3MDNbaQfOToFycwAM9FJsS7BtACHRPpX8y1Chef9ewFz0WjtF2v7rH1ONvHvfMQbUZYjkohdE+//6qJUPcrpt1jLoQvhmlOwAyyCCYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G78sfyVKVBUwdsfRo/DoxfxJOtRlVJnmi89GwRRaxhY=;
 b=L1wawQ13G5cLtxyC67TX4erRkBTFrsVZBiP+nxphGg8+dLAQ/hs2S7vzOp9fGKeKOkiRDWssh2GYBG1wpEJw+Q6DjnQqoey7qVVlL7dr+I1SzySkF7ZZsaVvAt2M4Hf2+vUkwN53kGuQPN39FwO/A7xgQvJC+nsMybXKQlxNswfFIL5ndijVq1JSzPQDCjq0Ytxs525Y8LWJMYDYXz7d7nIO364lU8nAcgzxMA7yBrOLq9XHe6V5p4+7/tY3Ppxy3RPB7QBPf9vmUICG4z9NKkS5uFp5/7BDUphsqoyimJ6tj/aS5RwvZNq3hK6x8Yi5gUOqfhdSGwMsxPLZA6aDcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=bootlin.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G78sfyVKVBUwdsfRo/DoxfxJOtRlVJnmi89GwRRaxhY=;
 b=IechffW4FButdp67owHcW9mmHkAllQqHU5sAa9BWtJOvbXZ/Cq5kD31RaDOKI6GS3GNjgxtbCheOxnRYavsL6v0MQgP3hMR4sxEuOwqfow6rcMNSYw186gnTQS4CH+Tj6Qf+KKDv2LaK6fJmCBQCV0+Z+r0NT4N+lgcl2nIG8LQ=
Received: from BYAPR02CA0035.namprd02.prod.outlook.com (2603:10b6:a02:ee::48)
 by DM6PR02MB5324.namprd02.prod.outlook.com (2603:10b6:5:47::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Mon, 2 Sep
 2019 07:39:29 +0000
Received: from SN1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by BYAPR02CA0035.outlook.office365.com
 (2603:10b6:a02:ee::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19 via Frontend
 Transport; Mon, 2 Sep 2019 07:39:28 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT052.mail.protection.outlook.com (10.152.72.146) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2220.16
 via Frontend Transport; Mon, 2 Sep 2019 07:39:27 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
        by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1i4gvv-0005dc-7b; Mon, 02 Sep 2019 00:39:27 -0700
Received: from [127.0.0.1] (helo=localhost)
        by xsj-pvapsmtp01 with smtp (Exim 4.63)
        (envelope-from <michal.simek@xilinx.com>)
        id 1i4gvq-000312-4C; Mon, 02 Sep 2019 00:39:22 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
        by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x827dFY6013034;
        Mon, 2 Sep 2019 00:39:15 -0700
Received: from [172.30.17.116]
        by xsj-pvapsmtp01 with esmtp (Exim 4.63)
        (envelope-from <michals@xilinx.com>)
        id 1i4gvj-0002z6-5S; Mon, 02 Sep 2019 00:39:15 -0700
Subject: Re: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com, praveenv@xilinx.com,
        Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
From:   Michal Simek <michal.simek@xilinx.com>
Message-ID: <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
Date:   Mon, 2 Sep 2019 09:39:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830210607.22644-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83;IPV:NLI;CTRY:US;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(396003)(39850400004)(136003)(376002)(346002)(2980300002)(189003)(199004)(81156014)(8676002)(6666004)(356004)(2870700001)(426003)(229853002)(36386004)(81166006)(316002)(14444005)(31696002)(58126008)(126002)(478600001)(486006)(66574012)(23676004)(2486003)(36756003)(8936002)(9786002)(47776003)(7416002)(65806001)(65956001)(6306002)(2906002)(76176011)(4326008)(44832011)(476003)(70586007)(110136005)(70206006)(54906003)(5660300002)(186003)(2616005)(106002)(966005)(107886003)(30864003)(336012)(26005)(6246003)(305945005)(11346002)(50466002)(52146003)(31686004)(446003);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR02MB5324;H:xsj-pvapsmtpgw01;FPR:;SPF:Pass;LANG:en;PTR:unknown-60-83.xilinx.com;MX:1;A:1;
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 76fa09b0-0a12-4c0a-248d-08d72f78af72
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);SRVR:DM6PR02MB5324;
X-MS-TrafficTypeDiagnostic: DM6PR02MB5324:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <DM6PR02MB5324AEA15F26563A0F6D7630C6BE0@DM6PR02MB5324.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 01480965DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: oYGfOuZ7ODQB38yjRCWhq8PqrXCPtFx7O8GERX5dt1kEW+ANHqEWnW6Pvv5sGGcbeMKm5guEerx0vyx/XfW+MKBtRRhd8/2OKbZ+V0OgB77NnxhEd8rNbsJ70h4Dcefs3rJMnTdE06tgjjUOA3y7F7o+3wM1TguK1gOFFzERPNSOtDXPPGr/9p/DiGtJGBrNcSLU5GuYYTLDpjn2iBK3Biv0ZEMiUcZl70RirBch1HGhLhcpgjxnXrHffaNPw2BbSVR8fldJyWCzPogPo4B/6B3EbSDD+Ky3WgtHRDTWXzRKsiTUi/w4ZapTxR1OHjVdAaSngwdziJUXamWn7bc2aP2HlOa1a/XtVNLBUJybN9jqHmZoXMaDh+mBCYXcbcSA/Zmdsj3SiERLPCFBj1vMDNQ/2o/ellqW/DWECuN+1tw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2019 07:39:27.6584
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 76fa09b0-0a12-4c0a-248d-08d72f78af72
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;Ip=[149.199.60.83];Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5324
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel

On 30. 08. 19 23:06, Miquel Raynal wrote:
> This IP is very simple so this driver manage both the DAI and the PCM
> streams, hence the presence of both components in this driver.
> 
> There are plenty available interruptions when capturing or playing
> back audio that can be triggered but the only one that fits the ALSA
> sound system is the XFER_DONE which is used to bound sound
> periods. Other interrupts are masked. Please note that capture and
> playback are not possible at the same time though.
> 
> Capture seems to work (at least it creates a file with something
> inside) but I have no capture mechanism on the board to actually test
> that it works correctly.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
> 
> Hello,
> 
> This is my first contribution in the sound subsystem, I hope I've
> understood the core but I might be entirely wrong as well, so please
> do not hesitate to be critical on my choices.
> 
> Thanks,
> Miquèl
> 
>  sound/soc/xilinx/Kconfig            |   7 +
>  sound/soc/xilinx/Makefile           |   2 +
>  sound/soc/xilinx/xlnx-logicpd-i2s.c | 468 ++++++++++++++++++++++++++++

What IP is this?
https://www.xilinx.com/products/intellectual-property/audio-i2s.html

https://github.com/Xilinx/linux-xlnx/blob/master/sound/soc/xilinx/xlnx_i2s.c

Anyway I am adding Praveen and Maruthi to take a look.

Thanks,
Michal



>  3 files changed, 477 insertions(+)
>  create mode 100644 sound/soc/xilinx/xlnx-logicpd-i2s.c
> 
> diff --git a/sound/soc/xilinx/Kconfig b/sound/soc/xilinx/Kconfig
> index 47f606b924e4..b62cae6750b9 100644
> --- a/sound/soc/xilinx/Kconfig
> +++ b/sound/soc/xilinx/Kconfig
> @@ -7,6 +7,13 @@ config SND_SOC_XILINX_I2S
>  	  PCM data. In receiver mode, IP receives PCM audio and
>  	  encapsulates PCM in AES format and sends AES data.
>  
> +config SND_SOC_XILINX_LOGICPD_I2S
> +	tristate "Audio support for the Xilinx logicPD I2S"
> +	help
> +	  Select this option to enable Xilinx logicPD I2S slave
> +	  transceiver. This enables I2S playback and capture using
> +	  Xilinx/logicPD IP.
> +
>  config SND_SOC_XILINX_AUDIO_FORMATTER
>          tristate "Audio support for the the Xilinx audio formatter"
>          help
> diff --git a/sound/soc/xilinx/Makefile b/sound/soc/xilinx/Makefile
> index d79fd38b094b..d127c30f8fe2 100644
> --- a/sound/soc/xilinx/Makefile
> +++ b/sound/soc/xilinx/Makefile
> @@ -1,5 +1,7 @@
>  snd-soc-xlnx-i2s-objs      := xlnx_i2s.o
>  obj-$(CONFIG_SND_SOC_XILINX_I2S) += snd-soc-xlnx-i2s.o
> +snd-soc-xlnx-logicpd-i2s-objs := xlnx-logicpd-i2s.o
> +obj-$(CONFIG_SND_SOC_XILINX_LOGICPD_I2S) += snd-soc-xlnx-logicpd-i2s.o
>  snd-soc-xlnx-formatter-pcm-objs := xlnx_formatter_pcm.o
>  obj-$(CONFIG_SND_SOC_XILINX_AUDIO_FORMATTER) += snd-soc-xlnx-formatter-pcm.o
>  snd-soc-xlnx-spdif-objs := xlnx_spdif.o
> diff --git a/sound/soc/xilinx/xlnx-logicpd-i2s.c b/sound/soc/xilinx/xlnx-logicpd-i2s.c
> new file mode 100644
> index 000000000000..325a5bb6978a
> --- /dev/null
> +++ b/sound/soc/xilinx/xlnx-logicpd-i2s.c
> @@ -0,0 +1,468 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Xilinx logicPD logiI2S - I2S slave transceiver v2 support
> + *
> + * Copyright (C) 2019 Bootlin
> + *
> + * Author: Miquel Raynal <miquel.raynal@bootlin.com>
> + */
> +
> +#include <linux/dma-mapping.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <sound/dmaengine_pcm.h>
> +#include <sound/pcm_params.h>
> +#include <sound/soc.h>
> +
> +#define DRV_NAME "xlnx_logicpd_i2s"
> +
> +#define IP_VERSION 0x0
> +#define   PATCH_LEVEL(reg) (((reg) & GENMASK(4, 0)) + 'a')
> +#define   MINOR_REV(reg) (((reg) & GENMASK(10, 5)) >> 5)
> +#define   MAJOR_REV(reg) (((reg) & GENMASK(16, 11)) >> 11)
> +#define   LICENSE_TYPE(reg) (((reg) & GENMASK(18, 17)) >> 17)
> +#define CONTROL_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0x4 : 0x24)
> +#define   ENGINE_EN BIT(0)
> +#define   XFER_DONE BIT(1)
> +#define BUFF_BASE_ADDR_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0x8 : 0x28)
> +#define BUFF_LEN_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0xC : 0x2C)
> +#define FIFO_STAT_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0x10 : 0x30)
> +#define INTR_MASK_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0x14 : 0x34)
> +#define   XFER_DONE_INTR BIT(31)
> +#define INTR_STAT_REG(s) ((s) == SNDRV_PCM_STREAM_PLAYBACK ? 0x18 : 0x38)
> +#define   FIFO_COUNT(reg) ((reg) >> 20)
> +
> +#define BYTES_TO_WORDS(n) ((n) / 4)
> +
> +/* Arbitrarily chosen period size */
> +#define PCM_PERIOD_WORDS SZ_8K
> +#define PCM_PERIOD_BYTES (PCM_PERIOD_WORDS * 4)
> +/* This is the actual maximum size that can actually be moved in one chunk */
> +#define PCM_BUF_WORDS (SZ_64K - 1)
> +#define PCM_BUF_BYTES (PCM_BUF_WORDS * 4)
> +
> +struct xlnx_logicpd_i2s;
> +
> +/**
> + * struct xlnx_logicpd_stream - Internal stream representation
> + *
> + * @i2s: Chip data
> + * @substream: Core substream structure
> + * @period_idx: Index of the period within the circular buffer
> + */
> +struct xlnx_logicpd_stream {
> +	struct xlnx_logicpd_i2s *i2s;
> +	struct snd_pcm_substream *substream;
> +	unsigned int period_idx;
> +};
> +
> +/**
> + * struct xlnx_logicpd_i2s - Chip structure
> + *
> + * @base: Registers base address
> + * @streams: Playback and capture streams in an array
> + */
> +struct xlnx_logicpd_i2s {
> +	void __iomem *base;
> +	struct xlnx_logicpd_stream streams[2];
> +};
> +
> +static struct xlnx_logicpd_i2s *substream_to_cpu_dai_chip(struct snd_pcm_substream *substream)
> +{
> +	struct snd_soc_pcm_runtime *rtd = snd_pcm_substream_chip(substream);
> +
> +	return snd_soc_dai_get_drvdata(rtd->cpu_dai);
> +}
> +
> +/* PCM methods */
> +
> +static const struct snd_pcm_hardware xlnx_logicpd_pcm_hardware = {
> +	.info = SNDRV_PCM_INFO_MMAP |
> +		SNDRV_PCM_INFO_MMAP_VALID |
> +		SNDRV_PCM_INFO_INTERLEAVED |
> +		SNDRV_PCM_INFO_HALF_DUPLEX,
> +	.formats = SNDRV_PCM_FMTBIT_S16_LE,
> +	.rates = SNDRV_PCM_RATE_8000_192000,
> +	.rate_min = 8000,
> +	.rate_max = 192000,
> +	.channels_min = 2,
> +	.channels_max = 2,
> +	.period_bytes_min = 0,
> +	.period_bytes_max = PCM_PERIOD_BYTES,
> +	.periods_min = 0,
> +	.periods_max = -1,
> +	.buffer_bytes_max = PCM_BUF_BYTES,
> +};
> +
> +static int xlnx_logicpd_pcm_open(struct snd_pcm_substream *substream)
> +{
> +	struct xlnx_logicpd_i2s *i2s = substream_to_cpu_dai_chip(substream);
> +	unsigned int dir = substream->stream;
> +
> +	snd_soc_set_runtime_hwparams(substream, &xlnx_logicpd_pcm_hardware);
> +
> +	i2s->streams[dir].substream = substream;
> +
> +	return 0;
> +}
> +
> +static int xlnx_logicpd_pcm_close(struct snd_pcm_substream *substream)
> +{
> +	struct xlnx_logicpd_i2s *i2s = substream_to_cpu_dai_chip(substream);
> +	unsigned int dir = substream->stream;
> +
> +	i2s->streams[dir].substream = NULL;
> +
> +	return 0;
> +}
> +
> +static int xlnx_logicpd_pcm_hw_params(struct snd_pcm_substream *substream,
> +				      struct snd_pcm_hw_params *params)
> +{
> +	struct snd_pcm_runtime *runtime = substream->runtime;
> +
> +	snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
> +	runtime->dma_bytes = params_buffer_bytes(params);
> +
> +	return 0;
> +}
> +
> +static snd_pcm_uframes_t xlnx_logicpd_pcm_pointer(struct snd_pcm_substream *substream)
> +{
> +	struct xlnx_logicpd_i2s *i2s = substream_to_cpu_dai_chip(substream);
> +	struct snd_pcm_runtime *runtime = substream->runtime;
> +	unsigned int period_sz = snd_pcm_lib_period_bytes(substream);
> +	unsigned int dir = substream->stream;
> +
> +	return bytes_to_frames(runtime,
> +			       i2s->streams[dir].period_idx * period_sz);
> +}
> +
> +static int xlnx_logicpd_pcm_mmap(struct snd_pcm_substream *substream,
> +				 struct vm_area_struct *vma)
> +{
> +	return remap_pfn_range(vma, vma->vm_start,
> +			       substream->dma_buffer.addr >> PAGE_SHIFT,
> +			       vma->vm_end - vma->vm_start, vma->vm_page_prot);
> +}
> +
> +static const struct snd_pcm_ops xlnx_logicpd_pcm_ops = {
> +	.open = xlnx_logicpd_pcm_open,
> +	.close = xlnx_logicpd_pcm_close,
> +	.ioctl = snd_pcm_lib_ioctl,
> +	.hw_params = xlnx_logicpd_pcm_hw_params,
> +	.pointer = xlnx_logicpd_pcm_pointer,
> +	.mmap = xlnx_logicpd_pcm_mmap,
> +};
> +
> +static int xlnx_logicpd_pcm_new(struct snd_soc_pcm_runtime *rtd)
> +{
> +	struct snd_pcm *pcm = rtd->pcm;
> +	struct snd_pcm_substream *substream;
> +	struct snd_dma_buffer *buf;
> +	int dir;
> +
> +	for (dir = SNDRV_PCM_STREAM_PLAYBACK;
> +	     dir <= SNDRV_PCM_STREAM_CAPTURE; dir++) {
> +		substream = pcm->streams[dir].substream;
> +		if (!substream)
> +			continue;
> +
> +		buf = &substream->dma_buffer;
> +		buf->area = dma_alloc_coherent(pcm->card->dev, PCM_BUF_BYTES,
> +					       &buf->addr, GFP_KERNEL);
> +		buf->bytes = PCM_BUF_BYTES;
> +		if (!buf->area)
> +			return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static void xlnx_logicpd_pcm_free(struct snd_pcm *pcm)
> +{
> +	struct snd_pcm_substream *substream;
> +	struct snd_dma_buffer *buf;
> +	int dir;
> +
> +	for (dir = SNDRV_PCM_STREAM_PLAYBACK;
> +	     dir <= SNDRV_PCM_STREAM_CAPTURE; dir++) {
> +		substream = pcm->streams[dir].substream;
> +		if (!substream)
> +			continue;
> +
> +		buf = &substream->dma_buffer;
> +		if (!buf->area)
> +			continue;
> +
> +		dma_free_coherent(pcm->card->dev, buf->bytes,
> +				  buf->area, buf->addr);
> +		buf->area = NULL;
> +	}
> +}
> +
> +static const struct snd_soc_component_driver xlnx_logicpd_pcm_component = {
> +	.name = "xlnx-logicp-pcm",
> +	.ops = &xlnx_logicpd_pcm_ops,
> +	.pcm_new = xlnx_logicpd_pcm_new,
> +	.pcm_free = xlnx_logicpd_pcm_free,
> +};
> +
> +/* DAI methods */
> +
> +static void xlnx_logicpd_dai_int_en(struct xlnx_logicpd_i2s *i2s, int dir)
> +{
> +	u32 reg;
> +
> +	reg = readl_relaxed(i2s->base + INTR_MASK_REG(dir));
> +	reg &= ~XFER_DONE_INTR;
> +	writel(reg, i2s->base + INTR_MASK_REG(dir));
> +}
> +
> +static void xlnx_logicpd_dai_int_dis(struct xlnx_logicpd_i2s *i2s, int dir)
> +{
> +	u32 reg;
> +
> +	reg = readl_relaxed(i2s->base + INTR_MASK_REG(dir));
> +	reg |= XFER_DONE_INTR;
> +	writel_relaxed(reg, i2s->base + INTR_MASK_REG(dir));
> +}
> +
> +static irqreturn_t xlnx_logicpd_dai_isr(int irq, void *dev_id)
> +{
> +	struct xlnx_logicpd_stream *stream = dev_id;
> +	struct xlnx_logicpd_i2s *i2s = stream->i2s;
> +	struct snd_pcm_substream *substream = stream->substream;
> +	unsigned int period_sz = snd_pcm_lib_period_bytes(substream);
> +	unsigned int buf_sz = snd_pcm_lib_buffer_bytes(substream);
> +	dma_addr_t buf_addr = substream->dma_buffer.addr;
> +	unsigned int dir = substream->stream;
> +	u32 reg;
> +
> +	/* Reading INTR_STAT deasserts the host interrupt */
> +	reg = readl_relaxed(i2s->base + INTR_STAT_REG(dir));
> +
> +	/*
> +	 * When the XFER_DONE interrupt is triggered, it means the period has
> +	 * been entirely shifted into the FIFO. At this point, we can move the
> +	 * buffer pointer to the next period and ask to transfer another chunk
> +	 * of data. Whenever the FIFO will be at its "almost full" state (4096
> +	 * words minus the threshold of 100 words) the internal DMA engine will
> +	 * automatically restart shifting data to the FIFO until its full state.
> +	 * Hence, the host has up to 3996 words (in our case, 3996 frames) to
> +	 * serve the interrupt before an underrun that would happen, at eg.
> +	 * 44100Hz, after 90ms.
> +	 */
> +	if (reg & XFER_DONE_INTR) {
> +		unsigned int offset_in_buf = ++stream->period_idx * period_sz;
> +
> +		if (offset_in_buf >= buf_sz) {
> +			stream->period_idx = 0;
> +			offset_in_buf = stream->period_idx * period_sz;
> +		}
> +
> +		/* Move on to the next period in the overall buffer */
> +		writel_relaxed(buf_addr + offset_in_buf,
> +			       i2s->base + BUFF_BASE_ADDR_REG(dir));
> +		/* The last period might be smaller, update length if needed */
> +		period_sz = min(period_sz, buf_sz - offset_in_buf);
> +		writel_relaxed(BYTES_TO_WORDS(period_sz),
> +			       i2s->base + BUFF_LEN_REG(dir));
> +
> +		/* Inform the PCM middle-layer */
> +		snd_pcm_period_elapsed(substream);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int xlnx_logicpd_dai_trigger(struct snd_pcm_substream *substream,
> +				    int cmd, struct snd_soc_dai *dai)
> +{
> +	struct xlnx_logicpd_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> +	unsigned int period_sz = snd_pcm_lib_period_bytes(substream);
> +	dma_addr_t buf_addr = substream->dma_buffer.addr;
> +	unsigned int dir = substream->stream;
> +
> +	switch (cmd) {
> +	case SNDRV_PCM_TRIGGER_START:
> +		i2s->streams[dir].period_idx = 0;
> +		/* Disable the other engine if enabled */
> +		if (readl(i2s->base + CONTROL_REG(!dir)) & ENGINE_EN)
> +			writel(0, i2s->base + CONTROL_REG(!dir));
> +		/* Enable the desired engine */
> +		writel_relaxed(ENGINE_EN, i2s->base + CONTROL_REG(dir));
> +		/* Set the buffer start address */
> +		writel_relaxed(buf_addr, i2s->base + BUFF_BASE_ADDR_REG(dir));
> +		/* Enable the XFER_DONE IRQ, signaling the end of the period */
> +		xlnx_logicpd_dai_int_en(i2s, dir);
> +		/* Actually start the internal DMA engine */
> +		writel(BYTES_TO_WORDS(period_sz),
> +		       i2s->base + BUFF_LEN_REG(dir));
> +		break;
> +	case SNDRV_PCM_TRIGGER_STOP:
> +		/* Disable the interrupts */
> +		xlnx_logicpd_dai_int_dis(i2s, dir);
> +		/* Ensure the host IRQ is deasserted */
> +		readl_relaxed(i2s->base + INTR_STAT_REG(dir));
> +		break;
> +	case SNDRV_PCM_TRIGGER_RESUME:
> +	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
> +	case SNDRV_PCM_TRIGGER_SUSPEND:
> +	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct snd_soc_dai_ops xlnx_logicpd_dai_ops = {
> +	.trigger = xlnx_logicpd_dai_trigger,
> +};
> +
> +static int xlnx_logicpd_dai_probe(struct snd_soc_dai *dai)
> +{
> +	struct xlnx_logicpd_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> +	unsigned int dir;
> +
> +	for (dir = SNDRV_PCM_STREAM_PLAYBACK;
> +	     dir <= SNDRV_PCM_STREAM_CAPTURE; dir++) {
> +		i2s->streams[dir].i2s = i2s;
> +
> +		/* Reset the transmitter/receiver engine */
> +		writel_relaxed(0, i2s->base + CONTROL_REG(dir));
> +		/* Mask all interrupts */
> +		writel_relaxed(GENMASK(31, 0), i2s->base + INTR_MASK_REG(dir));
> +	}
> +
> +	return 0;
> +}
> +
> +struct snd_soc_dai_driver xlnx_logicpd_dai = {
> +	.name = "xylinx-logicpd-dai",
> +	.probe = xlnx_logicpd_dai_probe,
> +	.capture = {
> +		.stream_name = "Capture",
> +		.channels_min = 2,
> +		.channels_max = 2,
> +		.rates = SNDRV_PCM_RATE_8000_192000,
> +		.rate_min = 8000,
> +		.rate_max = 192000,
> +		.formats = SNDRV_PCM_FMTBIT_S16_LE,
> +	},
> +	.playback = {
> +		.stream_name = "Playback",
> +		.channels_min = 2,
> +		.channels_max = 2,
> +		.rates = SNDRV_PCM_RATE_8000_192000,
> +		.rate_min = 8000,
> +		.rate_max = 192000,
> +		.formats = SNDRV_PCM_FMTBIT_S16_LE,
> +	},
> +	.symmetric_rates = 1,
> +	.ops = &xlnx_logicpd_dai_ops,
> +};
> +
> +static const struct snd_soc_component_driver xlnx_logicpd_i2s_component = {
> +	.name = DRV_NAME,
> +	.ops = &xlnx_logicpd_pcm_ops,
> +};
> +
> +static const struct of_device_id xlnx_logicpd_i2s_of_match[] = {
> +	{
> +		.compatible = "xlnx,logicpd-i2s-dai",
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, xlnx_logicpd_i2s_of_match);
> +
> +static int xlnx_logicpd_i2s_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct xlnx_logicpd_i2s *i2s;
> +	struct xlnx_logicpd_stream *stream;
> +	int tx_irq, rx_irq, ret;
> +	u32 reg;
> +
> +	i2s = devm_kzalloc(dev, sizeof(*i2s), GFP_KERNEL);
> +	if (!i2s)
> +		return -ENOMEM;
> +
> +	dev_set_drvdata(dev, i2s);
> +
> +	i2s->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(i2s->base))
> +		return PTR_ERR(i2s->base);
> +
> +	stream = &i2s->streams[SNDRV_PCM_STREAM_PLAYBACK];
> +	tx_irq = platform_get_irq_byname(pdev, "tx");
> +	if (tx_irq > 0) {
> +		ret = devm_request_irq(dev, tx_irq, xlnx_logicpd_dai_isr,
> +				       0, "logicpd-i2s-tx", stream);
> +		if (ret)
> +			return ret;
> +	} else {
> +		dev_err(dev, "TX IRQ not available (%d), disabling playback\n",
> +			tx_irq);
> +		tx_irq = 0;
> +	}
> +
> +	stream = &i2s->streams[SNDRV_PCM_STREAM_CAPTURE];
> +	rx_irq = platform_get_irq_byname(pdev, "rx");
> +	if (rx_irq > 0) {
> +		ret = devm_request_irq(dev, rx_irq, xlnx_logicpd_dai_isr,
> +				       0, "logicpd-i2s-rx", stream);
> +		if (ret)
> +			return ret;
> +	} else {
> +		dev_err(dev, "RX IRQ not available (%d), disabling capture\n",
> +			rx_irq);
> +		rx_irq = 0;
> +	}
> +
> +	if (!tx_irq && !rx_irq)
> +		return -EINVAL;
> +
> +	ret = devm_snd_soc_register_component(dev, &xlnx_logicpd_pcm_component,
> +					      NULL, 0);
> +	if (ret) {
> +		dev_err(dev, "cannot register PCM component (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	ret = devm_snd_soc_register_component(dev, &xlnx_logicpd_i2s_component,
> +					      &xlnx_logicpd_dai, 1);
> +	if (ret) {
> +		dev_err(dev, "cannot register I2S component (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	reg = readl_relaxed(i2s->base + IP_VERSION);
> +	dev_info(dev, "%s DAI version %u.%u.%c (license: %s) registered\n",
> +		 xlnx_logicpd_dai.name,
> +		 (unsigned int)MAJOR_REV(reg),
> +		 (unsigned int)MINOR_REV(reg),
> +		 (char)PATCH_LEVEL(reg),
> +		 LICENSE_TYPE(reg) == 0 ? "source" :
> +		 (LICENSE_TYPE(reg) == 1 ? "eval" : "release"));
> +
> +	return ret;
> +}
> +
> +static struct platform_driver xlnx_logicpd_i2s_driver = {
> +	.driver = {
> +		.name = DRV_NAME,
> +		.of_match_table = xlnx_logicpd_i2s_of_match,
> +	},
> +	.probe = xlnx_logicpd_i2s_probe,
> +};
> +
> +module_platform_driver(xlnx_logicpd_i2s_driver);
> +
> +MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
> +MODULE_DESCRIPTION("Xilinx logicPD I2S module");
> +MODULE_LICENSE("GPL v2");
> 

