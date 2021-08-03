Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DEB03DF022
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 16:20:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236600AbhHCOUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 10:20:35 -0400
Received: from mga02.intel.com ([134.134.136.20]:42137 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236558AbhHCOUf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Aug 2021 10:20:35 -0400
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="200868677"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="200868677"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 07:20:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; 
   d="scan'208";a="521268925"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.237.180.77]) ([10.237.180.77])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Aug 2021 07:19:59 -0700
Subject: Re: [PATCH v3 13/20] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, tiwai@suse.de, plai@codeaurora.org,
        lgirdwood@gmail.com
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
From:   =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?= 
        <amadeuszx.slawinski@linux.intel.com>
Message-ID: <3c97465c-356d-9989-c855-6eae325e8da6@linux.intel.com>
Date:   Tue, 3 Aug 2021 16:19:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 8/3/2021 2:54 PM, Srinivas Kandagatla wrote:
> Add basic helper functions for AudioReach.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---

...

> +
> +#define APM_PARAM_ID_GAIN			0x08001006
> +struct param_id_gain_cfg {
> +	uint16_t gain;
> +	uint16_t reserved;
> +};
> +
> +#define PARAM_ID_PCM_OUTPUT_FORMAT_CFG		0x08001008
> +struct param_id_pcm_output_format_cfg {
> +	uint32_t data_format;
> +	uint32_t fmt_id;
> +	uint32_t payload_size;
> +} __packed;
> +
> +struct payload_pcm_output_format_cfg {
> +	uint16_t bit_width;
> +	uint16_t alignment;
> +	uint16_t bits_per_sample;
> +	uint16_t q_factor;
> +	uint16_t endianness;
> +	uint16_t interleaved;
> +	uint16_t reserved;
> +	uint16_t num_channels;
> +	uint8_t channel_mapping[0];

Current kernel convention is to use something like:
uint8_t channel_mapping[];
for flexible arrays.
I've pointed out few more later, but it would be best to run some kind 
of search to find them all in all files in patchset.

...

> +
> +struct apm_container_cfg {
> +	uint32_t container_id;
> +	uint32_t num_prop;
> +} __packed;
> +
> +struct apm_cont_capablity  {
> +	uint32_t capability_id;
> +} __packed;
> +
> +#define APM_CONTAINER_PROP_ID_CAPABILITY_LIST	0x08001011
> +#define APM_CONTAINER_PROP_ID_CAPABILITY_SIZE	8
> +
> +#define APM_PROP_ID_INVALID			0x0
> +#define APM_CONTAINER_CAP_ID_PP			0x1
> +#define APM_CONTAINER_CAP_ID_PP			0x1
> +
> +struct apm_cont_prop_id_cap_list  {
> +	uint32_t num_capablity_id;
num_capability_id

...

> +
> +#define CONFIG_I2S_WS_SRC_EXTERNAL                          0x0
> +#define CONFIG_I2S_WS_SRC_INTERNAL                          0x1
> +
> +#define PARAM_ID_I2S_INTF_CFG	0x08001019
> +struct param_id_i2s_intf_cfg {
> +	uint32_t lpaif_type;
> +	uint32_t intf_idx;
> +	uint16_t sd_line_idx;
> +	uint16_t ws_src;
> +} __packed;
> +
> +#define I2S_INTF_TYPE_PRIMARY		0
> +#define I2S_INTF_TYPE_SECOINDARY	1
SECONDARY

> +#define I2S_INTF_TYPE_TERTINARY		2
TERTIARY

> +#define I2S_INTF_TYPE_QUATERNARY	3
> +#define I2S_INTF_TYPE_QUINARY		4
> +#define I2S_SD0				1
> +#define I2S_SD1				2
> +#define I2S_SD2				3
> +#define I2S_SD3				4
> +

...

> +#define DATA_LOGGING_MAX_INPUT_PORTS		0x1
> +#define DATA_LOGGING_MAX_OUTPUT_PORTS		0x1
> +#define DATA_LOGGING_STACK_SIZE			2048
> +#define PARAM_ID_DATA_LOGGING_CONFIG		0x08001031
> +struct data_logging_config {
> +	uint32_t log_code;
> +	uint32_t log_tap_point_id;
> +	uint32_t mode;
> +} __packed;
> +
> +#define PARAM_ID_MFC_OUTPUT_MEDIA_FORMAT	0x08001024
> +struct param_id_mfc_media_format {
> +	uint32_t sample_rate;
> +	uint16_t bit_width;
> +	uint16_t num_channels;
> +	uint16_t channel_mapping[0];
uint16_t channel_mapping[];

...

> +
> +struct payload_media_fmt_pcm {
> +	uint32_t sample_rate;
> +	uint16_t bit_width;
> +	uint16_t alignment;
> +	uint16_t bits_per_sample;
> +	uint16_t q_factor;
> +	uint16_t endianness;
> +	uint16_t num_channels;
> +	uint8_t channel_mapping[0];
uint8_t channel_mapping[];


