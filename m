Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8CCCFDA3BB
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 04:30:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387816AbfJQCaL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 22:30:11 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:45155 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727328AbfJQCaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 22:30:11 -0400
Received: by mail-pf1-f196.google.com with SMTP id y72so582698pfb.12
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 19:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9ySQKt3WmPgWp756IQaDVlpLWfbHfoyQnqWZ/05BpXE=;
        b=wQ50WFjrRPE16/MidAgQsL8EV0DfhPweuI18WJtDeQ0NLQ3eAi8FsSOoD87vE1J5i5
         u342TzyBdJeQu4p9jIMetcoyus9vbo7whWNU9QNjdKuYQV/yCRpZoZgyzgWmPLisfC9h
         c/pqrsHOftwma6lZFSjhM4u1peYigui2PF9EVsmBrlRswvMbJ+DDWgzP/eIjxa23Czmt
         H8h26IzJ4E3H/IOeAkgay8nZRJf7g9RMgra7aSnKJvMt6MLdFujnA3f/q6O8Aea/ZDGG
         RgsdRNghC6VKkBeuKc2eeHyGJ/PMuQcp4ZE+7Ahe87LONGkhphIgLixWk3+TTcbREf+l
         /cow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=9ySQKt3WmPgWp756IQaDVlpLWfbHfoyQnqWZ/05BpXE=;
        b=MSbV6WDRsdKYixa1Dt8T8vTfBC/QPPT61SM3ZmoIfOW/l3LWO9AOhWgdwhIgMd4+Fx
         RfkBo4thPQ1D+cAfgRRzsTOBx0jAOGB04cNEruvw8F21vnP6hruqgcv1ZtSXEFkcfeFK
         N3u1BhZR5IZeP+/b0SxBe2rB09TXVQfVDV1AqxXB8K6Nhc2u1nbN4DB0sLoO26b1PqiF
         0bYzgrNltKRcc13NjUPHvDUn9Y9X9RJPKVIbipLLcyMRUydTPgmZPyAe3zN6nicWrBha
         FnjssdaiaO5O6liF5p3AR9Zgu1CdHIgB651XOXk6zBHs1ynp/nY+pubjyXHyakVvFdN7
         AAjQ==
X-Gm-Message-State: APjAAAXlG25spodsnqAcgtEFFmxUvjt1cBVV0v5cxoakwuLJSSF8PDjs
        jkiULWm9gptIseMIPwBaZICyow==
X-Google-Smtp-Source: APXvYqwdoWK5FvOfP72QCotruO5x9c33iWJva9lx26lTRQQpUe/XNSSVcxHpRJKC4LCNb0uwTYxGJA==
X-Received: by 2002:a63:cd08:: with SMTP id i8mr1433209pgg.45.1571279408913;
        Wed, 16 Oct 2019 19:30:08 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:bc61:d85d:eb16:9036])
        by smtp.gmail.com with ESMTPSA id q15sm380404pgl.12.2019.10.16.19.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 19:30:07 -0700 (PDT)
Date:   Wed, 16 Oct 2019 19:30:03 -0700
From:   Benson Leung <bleung@google.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     broonie@kernel.org, alsa-devel@alsa-project.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        enric.balletbo@collabora.com, gwendal@google.com,
        drinkcat@google.com, cychiang@google.com, dgreid@google.com
Subject: Re: [PATCH v3 02/10] ASoC: cros_ec_codec: refactor I2S RX
Message-ID: <20191017023003.GB60797@google.com>
References: <20191014102022.236013-1-tzungbi@google.com>
 <20191014180059.02.I43373b9a66dbb70196b3f216b3aa86111c410836@changeid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="b5gNqxB1S1yM7hjW"
Content-Disposition: inline
In-Reply-To: <20191014180059.02.I43373b9a66dbb70196b3f216b3aa86111c410836@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--b5gNqxB1S1yM7hjW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Tzung-Bi,

On Mon, Oct 14, 2019 at 06:20:14PM +0800, Tzung-Bi Shih wrote:
> Refactor by the following items:
> - reformat copyright declaration
> - use more specific name "i2s rx"
> - use verbose symbol names to separate namespaces
> - make some short functions inline
> - remove unused TDM-related code
>=20
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>

Acked-By: Benson Leung <bleung@chromium.org>

Thanks,
Benson

> ---
>  drivers/platform/chrome/cros_ec_trace.c       |   2 +-
>  .../linux/platform_data/cros_ec_commands.h    | 120 ++---
>  sound/soc/codecs/cros_ec_codec.c              | 502 +++++++-----------
>  3 files changed, 251 insertions(+), 373 deletions(-)
>=20
> diff --git a/drivers/platform/chrome/cros_ec_trace.c b/drivers/platform/c=
hrome/cros_ec_trace.c
> index 6f80ff4532ae..901850004b2b 100644
> --- a/drivers/platform/chrome/cros_ec_trace.c
> +++ b/drivers/platform/chrome/cros_ec_trace.c
> @@ -98,7 +98,7 @@
>  	TRACE_SYMBOL(EC_CMD_SB_READ_BLOCK), \
>  	TRACE_SYMBOL(EC_CMD_SB_WRITE_BLOCK), \
>  	TRACE_SYMBOL(EC_CMD_BATTERY_VENDOR_PARAM), \
> -	TRACE_SYMBOL(EC_CMD_CODEC_I2S), \
> +	TRACE_SYMBOL(EC_CMD_EC_CODEC_I2S_RX), \
>  	TRACE_SYMBOL(EC_CMD_REBOOT_EC), \
>  	TRACE_SYMBOL(EC_CMD_GET_PANIC_INFO), \
>  	TRACE_SYMBOL(EC_CMD_ACPI_READ), \
> diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/lin=
ux/platform_data/cros_ec_commands.h
> index 43b8f7dae4cc..261ac83bd007 100644
> --- a/include/linux/platform_data/cros_ec_commands.h
> +++ b/include/linux/platform_data/cros_ec_commands.h
> @@ -4466,92 +4466,74 @@ enum mkbp_cec_event {
> =20
>  /***********************************************************************=
******/
> =20
> -/* Commands for I2S recording on audio codec. */
> -
> -#define EC_CMD_CODEC_I2S 0x00BC
> -#define EC_WOV_I2S_SAMPLE_RATE 48000
> -
> -enum ec_codec_i2s_subcmd {
> -	EC_CODEC_SET_SAMPLE_DEPTH =3D 0x0,
> -	EC_CODEC_SET_GAIN =3D 0x1,
> -	EC_CODEC_GET_GAIN =3D 0x2,
> -	EC_CODEC_I2S_ENABLE =3D 0x3,
> -	EC_CODEC_I2S_SET_CONFIG =3D 0x4,
> -	EC_CODEC_I2S_SET_TDM_CONFIG =3D 0x5,
> -	EC_CODEC_I2S_SET_BCLK =3D 0x6,
> -	EC_CODEC_I2S_SUBCMD_COUNT =3D 0x7,
> +/* Commands for I2S RX on audio codec. */
> +
> +#define EC_CMD_EC_CODEC_I2S_RX 0x00BC
> +
> +enum ec_codec_i2s_rx_subcmd {
> +	EC_CODEC_I2S_RX_ENABLE =3D 0x0,
> +	EC_CODEC_I2S_RX_DISABLE =3D 0x1,
> +	EC_CODEC_I2S_RX_SET_GAIN =3D 0x2,
> +	EC_CODEC_I2S_RX_GET_GAIN =3D 0x3,
> +	EC_CODEC_I2S_RX_SET_SAMPLE_DEPTH =3D 0x4,
> +	EC_CODEC_I2S_RX_SET_DAIFMT =3D 0x5,
> +	EC_CODEC_I2S_RX_SET_BCLK =3D 0x6,
> +	EC_CODEC_I2S_RX_SUBCMD_COUNT,
>  };
> =20
> -enum ec_sample_depth_value {
> -	EC_CODEC_SAMPLE_DEPTH_16 =3D 0,
> -	EC_CODEC_SAMPLE_DEPTH_24 =3D 1,
> +enum ec_codec_i2s_rx_sample_depth {
> +	EC_CODEC_I2S_RX_SAMPLE_DEPTH_16 =3D 0x0,
> +	EC_CODEC_I2S_RX_SAMPLE_DEPTH_24 =3D 0x1,
> +	EC_CODEC_I2S_RX_SAMPLE_DEPTH_COUNT,
>  };
> =20
> -enum ec_i2s_config {
> -	EC_DAI_FMT_I2S =3D 0,
> -	EC_DAI_FMT_RIGHT_J =3D 1,
> -	EC_DAI_FMT_LEFT_J =3D 2,
> -	EC_DAI_FMT_PCM_A =3D 3,
> -	EC_DAI_FMT_PCM_B =3D 4,
> -	EC_DAI_FMT_PCM_TDM =3D 5,
> +enum ec_codec_i2s_rx_daifmt {
> +	EC_CODEC_I2S_RX_DAIFMT_I2S =3D 0x0,
> +	EC_CODEC_I2S_RX_DAIFMT_RIGHT_J =3D 0x1,
> +	EC_CODEC_I2S_RX_DAIFMT_LEFT_J =3D 0x2,
> +	EC_CODEC_I2S_RX_DAIFMT_COUNT,
>  };
> =20
> -/*
> - * For subcommand EC_CODEC_GET_GAIN.
> - */
> -struct __ec_align1 ec_codec_i2s_gain {
> +struct __ec_align1 ec_param_ec_codec_i2s_rx_set_sample_depth {
> +	uint8_t depth;
> +	uint8_t reserved[3];
> +};
> +
> +struct __ec_align1 ec_param_ec_codec_i2s_rx_set_gain {
>  	uint8_t left;
>  	uint8_t right;
> +	uint8_t reserved[2];
>  };
> =20
> -struct __ec_todo_unpacked ec_param_codec_i2s_tdm {
> -	int16_t ch0_delay; /* 0 to 496 */
> -	int16_t ch1_delay; /* -1 to 496 */
> -	uint8_t adjacent_to_ch0;
> -	uint8_t adjacent_to_ch1;
> +struct __ec_align1 ec_param_ec_codec_i2s_rx_set_daifmt {
> +	uint8_t daifmt;
> +	uint8_t reserved[3];
>  };
> =20
> -struct __ec_todo_packed ec_param_codec_i2s {
> -	/* enum ec_codec_i2s_subcmd */
> -	uint8_t cmd;
> -	union {
> -		/*
> -		 * EC_CODEC_SET_SAMPLE_DEPTH
> -		 * Value should be one of ec_sample_depth_value.
> -		 */
> -		uint8_t depth;
> -
> -		/*
> -		 * EC_CODEC_SET_GAIN
> -		 * Value should be 0~43 for both channels.
> -		 */
> -		struct ec_codec_i2s_gain gain;
> -
> -		/*
> -		 * EC_CODEC_I2S_ENABLE
> -		 * 1 to enable, 0 to disable.
> -		 */
> -		uint8_t i2s_enable;
> -
> -		/*
> -		 * EC_CODEC_I2S_SET_CONFIG
> -		 * Value should be one of ec_i2s_config.
> -		 */
> -		uint8_t i2s_config;
> +struct __ec_align4 ec_param_ec_codec_i2s_rx_set_bclk {
> +	uint32_t bclk;
> +};
> =20
> -		/*
> -		 * EC_CODEC_I2S_SET_TDM_CONFIG
> -		 * Value should be one of ec_i2s_config.
> -		 */
> -		struct ec_param_codec_i2s_tdm tdm_param;
> +struct __ec_align4 ec_param_ec_codec_i2s_rx {
> +	uint8_t cmd; /* enum ec_codec_i2s_rx_subcmd */
> +	uint8_t reserved[3];
> =20
> -		/*
> -		 * EC_CODEC_I2S_SET_BCLK
> -		 */
> -		uint32_t bclk;
> +	union {
> +		struct ec_param_ec_codec_i2s_rx_set_sample_depth
> +				set_sample_depth_param;
> +		struct ec_param_ec_codec_i2s_rx_set_gain
> +				set_gain_param;
> +		struct ec_param_ec_codec_i2s_rx_set_daifmt
> +				set_daifmt_param;
> +		struct ec_param_ec_codec_i2s_rx_set_bclk
> +				set_bclk_param;
>  	};
>  };
> =20
> +struct __ec_align1 ec_response_ec_codec_i2s_rx_get_gain {
> +	uint8_t left;
> +	uint8_t right;
> +};
> =20
>  /***********************************************************************=
******/
>  /* System commands */
> diff --git a/sound/soc/codecs/cros_ec_codec.c b/sound/soc/codecs/cros_ec_=
codec.c
> index 3c1bd24a1057..179fa77291cd 100644
> --- a/sound/soc/codecs/cros_ec_codec.c
> +++ b/sound/soc/codecs/cros_ec_codec.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0
>  /*
> - * Driver for ChromeOS Embedded Controller codec.
> + * Copyright 2019 Google, Inc.
> + *
> + * ChromeOS Embedded Controller codec driver.
>   *
>   * This driver uses the cros-ec interface to communicate with the Chrome=
OS
>   * EC for audio function.
> @@ -18,403 +20,297 @@
>  #include <sound/soc.h>
>  #include <sound/tlv.h>
> =20
> -#define DRV_NAME "cros-ec-codec"
> -
> -/**
> - * struct cros_ec_codec_data - ChromeOS EC codec driver data.
> - * @dev:		Device structure used in sysfs.
> - * @ec_device:		cros_ec_device structure to talk to the physical device.
> - * @component:		Pointer to the component.
> - * @max_dmic_gain:	Maximum gain in dB supported by EC codec.
> - */
> -struct cros_ec_codec_data {
> +struct cros_ec_codec_priv {
>  	struct device *dev;
>  	struct cros_ec_device *ec_device;
> -	struct snd_soc_component *component;
> -	unsigned int max_dmic_gain;
>  };
> =20
> -static const DECLARE_TLV_DB_SCALE(ec_mic_gain_tlv, 0, 100, 0);
> -
> -static int ec_command_get_gain(struct snd_soc_component *component,
> -			       struct ec_param_codec_i2s *param,
> -			       struct ec_codec_i2s_gain *resp)
> +static int send_ec_host_command(struct cros_ec_device *ec_dev, uint32_t =
cmd,
> +				uint8_t *out, size_t outsize,
> +				uint8_t *in, size_t insize)
>  {
> -	struct cros_ec_codec_data *codec_data =3D
> -		snd_soc_component_get_drvdata(component);
> -	struct cros_ec_device *ec_device =3D codec_data->ec_device;
> -	u8 buffer[sizeof(struct cros_ec_command) +
> -		  max(sizeof(struct ec_param_codec_i2s),
> -		      sizeof(struct ec_codec_i2s_gain))];
> -	struct cros_ec_command *msg =3D (struct cros_ec_command *)&buffer;
>  	int ret;
> +	struct cros_ec_command *msg;
> +
> +	msg =3D kmalloc(sizeof(*msg) + max(outsize, insize), GFP_KERNEL);
> +	if (!msg)
> +		return -ENOMEM;
> =20
>  	msg->version =3D 0;
> -	msg->command =3D EC_CMD_CODEC_I2S;
> -	msg->outsize =3D sizeof(struct ec_param_codec_i2s);
> -	msg->insize =3D sizeof(struct ec_codec_i2s_gain);
> +	msg->command =3D cmd;
> +	msg->outsize =3D outsize;
> +	msg->insize =3D insize;
> +
> +	if (outsize)
> +		memcpy(msg->data, out, outsize);
> =20
> -	memcpy(msg->data, param, msg->outsize);
> +	ret =3D cros_ec_cmd_xfer_status(ec_dev, msg);
> +	if (ret < 0)
> +		goto error;
> =20
> -	ret =3D cros_ec_cmd_xfer_status(ec_device, msg);
> -	if (ret > 0)
> -		memcpy(resp, msg->data, msg->insize);
> +	if (insize)
> +		memcpy(in, msg->data, insize);
> =20
> +	ret =3D 0;
> +error:
> +	kfree(msg);
>  	return ret;
>  }
> =20
> -/*
> - * Wrapper for EC command without response.
> - */
> -static int ec_command_no_resp(struct snd_soc_component *component,
> -			      struct ec_param_codec_i2s *param)
> +static int dmic_get_gain(struct snd_kcontrol *kcontrol,
> +			 struct snd_ctl_elem_value *ucontrol)
>  {
> -	struct cros_ec_codec_data *codec_data =3D
> +	struct snd_soc_component *component =3D
> +		snd_soc_kcontrol_component(kcontrol);
> +	struct cros_ec_codec_priv *priv =3D
>  		snd_soc_component_get_drvdata(component);
> -	struct cros_ec_device *ec_device =3D codec_data->ec_device;
> -	u8 buffer[sizeof(struct cros_ec_command) +
> -		  sizeof(struct ec_param_codec_i2s)];
> -	struct cros_ec_command *msg =3D (struct cros_ec_command *)&buffer;
> -
> -	msg->version =3D 0;
> -	msg->command =3D EC_CMD_CODEC_I2S;
> -	msg->outsize =3D sizeof(struct ec_param_codec_i2s);
> -	msg->insize =3D 0;
> -
> -	memcpy(msg->data, param, msg->outsize);
> -
> -	return cros_ec_cmd_xfer_status(ec_device, msg);
> -}
> -
> -static int set_i2s_config(struct snd_soc_component *component,
> -			  enum ec_i2s_config i2s_config)
> -{
> -	struct ec_param_codec_i2s param;
> +	struct ec_param_ec_codec_i2s_rx p;
> +	struct ec_response_ec_codec_i2s_rx_get_gain r;
> +	int ret;
> =20
> -	dev_dbg(component->dev, "%s set I2S format to %u\n", __func__,
> -		i2s_config);
> +	p.cmd =3D EC_CODEC_I2S_RX_GET_GAIN;
> +	ret =3D send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				   (uint8_t *)&p, sizeof(p),
> +				   (uint8_t *)&r, sizeof(r));
> +	if (ret < 0)
> +		return ret;
> =20
> -	param.cmd =3D EC_CODEC_I2S_SET_CONFIG;
> -	param.i2s_config =3D i2s_config;
> +	ucontrol->value.integer.value[0] =3D r.left;
> +	ucontrol->value.integer.value[1] =3D r.right;
> =20
> -	return ec_command_no_resp(component, &param);
> +	return 0;
>  }
> =20
> -static int cros_ec_i2s_set_dai_fmt(struct snd_soc_dai *dai, unsigned int=
 fmt)
> +static int dmic_put_gain(struct snd_kcontrol *kcontrol,
> +			 struct snd_ctl_elem_value *ucontrol)
>  {
> -	struct snd_soc_component *component =3D dai->component;
> -	enum ec_i2s_config i2s_config;
> -
> -	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> -	case SND_SOC_DAIFMT_CBS_CFS:
> -		break;
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
> -	case SND_SOC_DAIFMT_NB_NF:
> -		break;
> -	default:
> -		return -EINVAL;
> -	}
> -
> -	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> -	case SND_SOC_DAIFMT_I2S:
> -		i2s_config =3D EC_DAI_FMT_I2S;
> -		break;
> -
> -	case SND_SOC_DAIFMT_RIGHT_J:
> -		i2s_config =3D EC_DAI_FMT_RIGHT_J;
> -		break;
> -
> -	case SND_SOC_DAIFMT_LEFT_J:
> -		i2s_config =3D EC_DAI_FMT_LEFT_J;
> -		break;
> -
> -	case SND_SOC_DAIFMT_DSP_A:
> -		i2s_config =3D EC_DAI_FMT_PCM_A;
> -		break;
> -
> -	case SND_SOC_DAIFMT_DSP_B:
> -		i2s_config =3D EC_DAI_FMT_PCM_B;
> -		break;
> +	struct snd_soc_component *component =3D
> +		snd_soc_kcontrol_component(kcontrol);
> +	struct cros_ec_codec_priv *priv =3D
> +		snd_soc_component_get_drvdata(component);
> +	struct soc_mixer_control *control =3D
> +		(struct soc_mixer_control *)kcontrol->private_value;
> +	int max_dmic_gain =3D control->max;
> +	int left =3D ucontrol->value.integer.value[0];
> +	int right =3D ucontrol->value.integer.value[1];
> +	struct ec_param_ec_codec_i2s_rx p;
> =20
> -	default:
> +	if (left > max_dmic_gain || right > max_dmic_gain)
>  		return -EINVAL;
> -	}
> =20
> -	return set_i2s_config(component, i2s_config);
> -}
> -
> -static int set_i2s_sample_depth(struct snd_soc_component *component,
> -				enum ec_sample_depth_value depth)
> -{
> -	struct ec_param_codec_i2s param;
> -
> -	dev_dbg(component->dev, "%s set depth to %u\n", __func__, depth);
> -
> -	param.cmd =3D EC_CODEC_SET_SAMPLE_DEPTH;
> -	param.depth =3D depth;
> +	dev_dbg(component->dev, "set mic gain to %u, %u\n", left, right);
> =20
> -	return ec_command_no_resp(component, &param);
> +	p.cmd =3D EC_CODEC_I2S_RX_SET_GAIN;
> +	p.set_gain_param.left =3D left;
> +	p.set_gain_param.right =3D right;
> +	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				    (uint8_t *)&p, sizeof(p), NULL, 0);
>  }
> =20
> -static int set_i2s_bclk(struct snd_soc_component *component, uint32_t bc=
lk)
> -{
> -	struct ec_param_codec_i2s param;
> -
> -	dev_dbg(component->dev, "%s set i2s bclk to %u\n", __func__, bclk);
> +static const DECLARE_TLV_DB_SCALE(dmic_gain_tlv, 0, 100, 0);
> =20
> -	param.cmd =3D EC_CODEC_I2S_SET_BCLK;
> -	param.bclk =3D bclk;
> +enum {
> +	DMIC_CTL_GAIN =3D 0,
> +};
> =20
> -	return ec_command_no_resp(component, &param);
> -}
> +static struct snd_kcontrol_new dmic_controls[] =3D {
> +	[DMIC_CTL_GAIN] =3D
> +		SOC_DOUBLE_EXT_TLV("EC Mic Gain", SND_SOC_NOPM, SND_SOC_NOPM,
> +				   0, 0, 0, dmic_get_gain, dmic_put_gain,
> +				   dmic_gain_tlv),
> +};
> =20
> -static int cros_ec_i2s_hw_params(struct snd_pcm_substream *substream,
> -				 struct snd_pcm_hw_params *params,
> -				 struct snd_soc_dai *dai)
> +static int i2s_rx_hw_params(struct snd_pcm_substream *substream,
> +			    struct snd_pcm_hw_params *params,
> +			    struct snd_soc_dai *dai)
>  {
>  	struct snd_soc_component *component =3D dai->component;
> -	unsigned int rate, bclk;
> +	struct cros_ec_codec_priv *priv =3D
> +		snd_soc_component_get_drvdata(component);
> +	struct ec_param_ec_codec_i2s_rx p;
> +	enum ec_codec_i2s_rx_sample_depth depth;
>  	int ret;
> =20
> -	rate =3D params_rate(params);
> -	if (rate !=3D 48000)
> +	if (params_rate(params) !=3D 48000)
>  		return -EINVAL;
> =20
>  	switch (params_format(params)) {
>  	case SNDRV_PCM_FORMAT_S16_LE:
> -		ret =3D set_i2s_sample_depth(component, EC_CODEC_SAMPLE_DEPTH_16);
> +		depth =3D EC_CODEC_I2S_RX_SAMPLE_DEPTH_16;
>  		break;
>  	case SNDRV_PCM_FORMAT_S24_LE:
> -		ret =3D set_i2s_sample_depth(component, EC_CODEC_SAMPLE_DEPTH_24);
> +		depth =3D EC_CODEC_I2S_RX_SAMPLE_DEPTH_24;
>  		break;
>  	default:
>  		return -EINVAL;
>  	}
> -	if (ret < 0)
> -		return ret;
> -
> -	bclk =3D snd_soc_params_to_bclk(params);
> -	return set_i2s_bclk(component, bclk);
> -}
> =20
> -static const struct snd_soc_dai_ops cros_ec_i2s_dai_ops =3D {
> -	.hw_params =3D cros_ec_i2s_hw_params,
> -	.set_fmt =3D cros_ec_i2s_set_dai_fmt,
> -};
> +	dev_dbg(component->dev, "set depth to %u\n", depth);
> =20
> -static struct snd_soc_dai_driver cros_ec_dai[] =3D {
> -	{
> -		.name =3D "cros_ec_codec I2S",
> -		.id =3D 0,
> -		.capture =3D {
> -			.stream_name =3D "I2S Capture",
> -			.channels_min =3D 2,
> -			.channels_max =3D 2,
> -			.rates =3D SNDRV_PCM_RATE_48000,
> -			.formats =3D SNDRV_PCM_FMTBIT_S16_LE |
> -				   SNDRV_PCM_FMTBIT_S24_LE,
> -		},
> -		.ops =3D &cros_ec_i2s_dai_ops,
> -	}
> -};
> -
> -static int get_ec_mic_gain(struct snd_soc_component *component,
> -			   u8 *left, u8 *right)
> -{
> -	struct ec_param_codec_i2s param;
> -	struct ec_codec_i2s_gain resp;
> -	int ret;
> -
> -	param.cmd =3D EC_CODEC_GET_GAIN;
> -
> -	ret =3D ec_command_get_gain(component, &param, &resp);
> +	p.cmd =3D EC_CODEC_I2S_RX_SET_SAMPLE_DEPTH;
> +	p.set_sample_depth_param.depth =3D depth;
> +	ret =3D send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				   (uint8_t *)&p, sizeof(p), NULL, 0);
>  	if (ret < 0)
>  		return ret;
> =20
> -	*left =3D resp.left;
> -	*right =3D resp.right;
> -
> -	return 0;
> -}
> -
> -static int mic_gain_get(struct snd_kcontrol *kcontrol,
> -			struct snd_ctl_elem_value *ucontrol)
> -{
> -	struct snd_soc_component *component =3D
> -		snd_soc_kcontrol_component(kcontrol);
> -	u8 left, right;
> -	int ret;
> -
> -	ret =3D get_ec_mic_gain(component, &left, &right);
> -	if (ret)
> -		return ret;
> -
> -	ucontrol->value.integer.value[0] =3D left;
> -	ucontrol->value.integer.value[1] =3D right;
> -
> -	return 0;
> -}
> -
> -static int set_ec_mic_gain(struct snd_soc_component *component,
> -			   u8 left, u8 right)
> -{
> -	struct ec_param_codec_i2s param;
> -
> -	dev_dbg(component->dev, "%s set mic gain to %u, %u\n",
> -		__func__, left, right);
> +	dev_dbg(component->dev, "set bclk to %u\n",
> +		snd_soc_params_to_bclk(params));
> =20
> -	param.cmd =3D EC_CODEC_SET_GAIN;
> -	param.gain.left =3D left;
> -	param.gain.right =3D right;
> -
> -	return ec_command_no_resp(component, &param);
> +	p.cmd =3D EC_CODEC_I2S_RX_SET_BCLK;
> +	p.set_bclk_param.bclk =3D snd_soc_params_to_bclk(params);
> +	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				    (uint8_t *)&p, sizeof(p), NULL, 0);
>  }
> =20
> -static int mic_gain_put(struct snd_kcontrol *kcontrol,
> -			struct snd_ctl_elem_value *ucontrol)
> +static int i2s_rx_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
>  {
> -	struct snd_soc_component *component =3D
> -		snd_soc_kcontrol_component(kcontrol);
> -	struct cros_ec_codec_data *codec_data =3D
> +	struct snd_soc_component *component =3D dai->component;
> +	struct cros_ec_codec_priv *priv =3D
>  		snd_soc_component_get_drvdata(component);
> -	int left =3D ucontrol->value.integer.value[0];
> -	int right =3D ucontrol->value.integer.value[1];
> -	unsigned int max_dmic_gain =3D codec_data->max_dmic_gain;
> +	struct ec_param_ec_codec_i2s_rx p;
> +	enum ec_codec_i2s_rx_daifmt daifmt;
> =20
> -	if (left > max_dmic_gain || right > max_dmic_gain)
> +	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> +	case SND_SOC_DAIFMT_CBS_CFS:
> +		break;
> +	default:
>  		return -EINVAL;
> +	}
> =20
> -	return set_ec_mic_gain(component, (u8)left, (u8)right);
> -}
> -
> -static struct snd_kcontrol_new mic_gain_control =3D
> -	SOC_DOUBLE_EXT_TLV("EC Mic Gain", SND_SOC_NOPM, SND_SOC_NOPM, 0, 0, 0,
> -			   mic_gain_get, mic_gain_put, ec_mic_gain_tlv);
> -
> -static int enable_i2s(struct snd_soc_component *component, int enable)
> -{
> -	struct ec_param_codec_i2s param;
> +	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
> +	case SND_SOC_DAIFMT_NB_NF:
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> =20
> -	dev_dbg(component->dev, "%s set i2s to %u\n", __func__, enable);
> +	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> +	case SND_SOC_DAIFMT_I2S:
> +		daifmt =3D EC_CODEC_I2S_RX_DAIFMT_I2S;
> +		break;
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		daifmt =3D EC_CODEC_I2S_RX_DAIFMT_RIGHT_J;
> +		break;
> +	case SND_SOC_DAIFMT_LEFT_J:
> +		daifmt =3D EC_CODEC_I2S_RX_DAIFMT_LEFT_J;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> =20
> -	param.cmd =3D EC_CODEC_I2S_ENABLE;
> -	param.i2s_enable =3D enable;
> +	dev_dbg(component->dev, "set format to %u\n", daifmt);
> =20
> -	return ec_command_no_resp(component, &param);
> +	p.cmd =3D EC_CODEC_I2S_RX_SET_DAIFMT;
> +	p.set_daifmt_param.daifmt =3D daifmt;
> +	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				    (uint8_t *)&p, sizeof(p), NULL, 0);
>  }
> =20
> -static int cros_ec_i2s_enable_event(struct snd_soc_dapm_widget *w,
> -				    struct snd_kcontrol *kcontrol, int event)
> +static const struct snd_soc_dai_ops i2s_rx_dai_ops =3D {
> +	.hw_params =3D i2s_rx_hw_params,
> +	.set_fmt =3D i2s_rx_set_fmt,
> +};
> +
> +static int i2s_rx_event(struct snd_soc_dapm_widget *w,
> +			struct snd_kcontrol *kcontrol, int event)
>  {
>  	struct snd_soc_component *component =3D
>  		snd_soc_dapm_to_component(w->dapm);
> +	struct cros_ec_codec_priv *priv =3D
> +		snd_soc_component_get_drvdata(component);
> +	struct ec_param_ec_codec_i2s_rx p;
> =20
>  	switch (event) {
>  	case SND_SOC_DAPM_PRE_PMU:
> -		dev_dbg(component->dev,
> -			"%s got SND_SOC_DAPM_PRE_PMU event\n", __func__);
> -		return enable_i2s(component, 1);
> -
> +		dev_dbg(component->dev, "enable I2S RX\n");
> +		p.cmd =3D EC_CODEC_I2S_RX_ENABLE;
> +		break;
>  	case SND_SOC_DAPM_PRE_PMD:
> -		dev_dbg(component->dev,
> -			"%s got SND_SOC_DAPM_PRE_PMD event\n", __func__);
> -		return enable_i2s(component, 0);
> +		dev_dbg(component->dev, "disable I2S RX\n");
> +		p.cmd =3D EC_CODEC_I2S_RX_DISABLE;
> +		break;
> +	default:
> +		return 0;
>  	}
> =20
> -	return 0;
> +	return send_ec_host_command(priv->ec_device, EC_CMD_EC_CODEC_I2S_RX,
> +				    (uint8_t *)&p, sizeof(p), NULL, 0);
>  }
> =20
> -/*
> - * The goal of this DAPM route is to turn on/off I2S using EC
> - * host command when capture stream is started/stopped.
> - */
> -static const struct snd_soc_dapm_widget cros_ec_codec_dapm_widgets[] =3D=
 {
> +static struct snd_soc_dapm_widget i2s_rx_dapm_widgets[] =3D {
>  	SND_SOC_DAPM_INPUT("DMIC"),
> -
> -	/*
> -	 * Control EC to enable/disable I2S.
> -	 */
> -	SND_SOC_DAPM_SUPPLY("I2S Enable", SND_SOC_NOPM,
> -			    0, 0, cros_ec_i2s_enable_event,
> +	SND_SOC_DAPM_SUPPLY("I2S RX Enable", SND_SOC_NOPM, 0, 0, i2s_rx_event,
>  			    SND_SOC_DAPM_PRE_PMU | SND_SOC_DAPM_PRE_PMD),
> +	SND_SOC_DAPM_AIF_OUT("I2S RX", "I2S Capture", 0, SND_SOC_NOPM, 0, 0),
> +};
> =20
> -	SND_SOC_DAPM_AIF_OUT("I2STX", "I2S Capture", 0, SND_SOC_NOPM, 0, 0),
> +static struct snd_soc_dapm_route i2s_rx_dapm_routes[] =3D {
> +	{"I2S RX", NULL, "DMIC"},
> +	{"I2S RX", NULL, "I2S RX Enable"},
>  };
> =20
> -static const struct snd_soc_dapm_route cros_ec_codec_dapm_routes[] =3D {
> -	{ "I2STX", NULL, "DMIC" },
> -	{ "I2STX", NULL, "I2S Enable" },
> +static struct snd_soc_dai_driver i2s_rx_dai_driver =3D {
> +	.name =3D "EC Codec I2S RX",
> +	.capture =3D {
> +		.stream_name =3D "I2S Capture",
> +		.channels_min =3D 2,
> +		.channels_max =3D 2,
> +		.rates =3D SNDRV_PCM_RATE_48000,
> +		.formats =3D SNDRV_PCM_FMTBIT_S16_LE |
> +			SNDRV_PCM_FMTBIT_S24_LE,
> +	},
> +	.ops =3D &i2s_rx_dai_ops,
>  };
> =20
> -/*
> - * Read maximum gain from device property and set it to mixer control.
> - */
> -static int cros_ec_set_gain_range(struct device *dev)
> +static int i2s_rx_probe(struct snd_soc_component *component)
>  {
> +	struct cros_ec_codec_priv *priv =3D
> +		snd_soc_component_get_drvdata(component);
> +	struct device *dev =3D priv->dev;
> +	int ret, val;
>  	struct soc_mixer_control *control;
> -	struct cros_ec_codec_data *codec_data =3D dev_get_drvdata(dev);
> -	int rc;
> =20
> -	rc =3D device_property_read_u32(dev, "max-dmic-gain",
> -				      &codec_data->max_dmic_gain);
> -	if (rc)
> -		return rc;
> +	ret =3D device_property_read_u32(dev, "max-dmic-gain", &val);
> +	if (ret) {
> +		dev_err(dev, "Failed to read 'max-dmic-gain'\n");
> +		return ret;
> +	}
> =20
>  	control =3D (struct soc_mixer_control *)
> -				mic_gain_control.private_value;
> -	control->max =3D codec_data->max_dmic_gain;
> -	control->platform_max =3D codec_data->max_dmic_gain;
> +			dmic_controls[DMIC_CTL_GAIN].private_value;
> +	control->max =3D val;
> +	control->platform_max =3D val;
> =20
> -	return 0;
> -}
> -
> -static int cros_ec_codec_probe(struct snd_soc_component *component)
> -{
> -	int rc;
> -
> -	struct cros_ec_codec_data *codec_data =3D
> -		snd_soc_component_get_drvdata(component);
> -
> -	rc =3D cros_ec_set_gain_range(codec_data->dev);
> -	if (rc)
> -		return rc;
> -
> -	return snd_soc_add_component_controls(component, &mic_gain_control, 1);
> +	return snd_soc_add_component_controls(component,
> +			&dmic_controls[DMIC_CTL_GAIN], 1);
>  }
> =20
> -static const struct snd_soc_component_driver cros_ec_component_driver =
=3D {
> -	.probe			=3D cros_ec_codec_probe,
> -	.dapm_widgets		=3D cros_ec_codec_dapm_widgets,
> -	.num_dapm_widgets	=3D ARRAY_SIZE(cros_ec_codec_dapm_widgets),
> -	.dapm_routes		=3D cros_ec_codec_dapm_routes,
> -	.num_dapm_routes	=3D ARRAY_SIZE(cros_ec_codec_dapm_routes),
> +static const struct snd_soc_component_driver i2s_rx_component_driver =3D=
 {
> +	.probe			=3D i2s_rx_probe,
> +	.dapm_widgets		=3D i2s_rx_dapm_widgets,
> +	.num_dapm_widgets	=3D ARRAY_SIZE(i2s_rx_dapm_widgets),
> +	.dapm_routes		=3D i2s_rx_dapm_routes,
> +	.num_dapm_routes	=3D ARRAY_SIZE(i2s_rx_dapm_routes),
>  };
> =20
> -/*
> - * Platform device and platform driver fro cros-ec-codec.
> - */
> -static int cros_ec_codec_platform_probe(struct platform_device *pd)
> +static int cros_ec_codec_platform_probe(struct platform_device *pdev)
>  {
> -	struct device *dev =3D &pd->dev;
> -	struct cros_ec_device *ec_device =3D dev_get_drvdata(pd->dev.parent);
> -	struct cros_ec_codec_data *codec_data;
> +	struct device *dev =3D &pdev->dev;
> +	struct cros_ec_device *ec_device =3D dev_get_drvdata(pdev->dev.parent);
> +	struct cros_ec_codec_priv *priv;
> =20
> -	codec_data =3D devm_kzalloc(dev, sizeof(struct cros_ec_codec_data),
> -				  GFP_KERNEL);
> -	if (!codec_data)
> +	priv =3D devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
>  		return -ENOMEM;
> =20
> -	codec_data->dev =3D dev;
> -	codec_data->ec_device =3D ec_device;
> +	priv->dev =3D dev;
> +	priv->ec_device =3D ec_device;
> =20
> -	platform_set_drvdata(pd, codec_data);
> +	platform_set_drvdata(pdev, priv);
> =20
> -	return devm_snd_soc_register_component(dev, &cros_ec_component_driver,
> -					  cros_ec_dai, ARRAY_SIZE(cros_ec_dai));
> +	return devm_snd_soc_register_component(dev, &i2s_rx_component_driver,
> +					       &i2s_rx_dai_driver, 1);
>  }
> =20
>  #ifdef CONFIG_OF
> @@ -427,7 +323,7 @@ MODULE_DEVICE_TABLE(of, cros_ec_codec_of_match);
> =20
>  static struct platform_driver cros_ec_codec_platform_driver =3D {
>  	.driver =3D {
> -		.name =3D DRV_NAME,
> +		.name =3D "cros-ec-codec",
>  		.of_match_table =3D of_match_ptr(cros_ec_codec_of_match),
>  	},
>  	.probe =3D cros_ec_codec_platform_probe,
> @@ -438,4 +334,4 @@ module_platform_driver(cros_ec_codec_platform_driver);
>  MODULE_LICENSE("GPL v2");
>  MODULE_DESCRIPTION("ChromeOS EC codec driver");
>  MODULE_AUTHOR("Cheng-Yi Chiang <cychiang@chromium.org>");
> -MODULE_ALIAS("platform:" DRV_NAME);
> +MODULE_ALIAS("platform:cros-ec-codec");
> --=20
> 2.23.0.700.g56cf767bdb-goog
>=20

--=20
Benson Leung
Staff Software Engineer
Chrome OS Kernel
Google Inc.
bleung@google.com
Chromium OS Project
bleung@chromium.org

--b5gNqxB1S1yM7hjW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCXafSKwAKCRBzbaomhzOw
woSbAQC3doz18ZnGsIwR8Jr15WZTITlyxozPWnRFDe5kUf9A/wEAuPacPqK9H2Zs
hhJfeQqYqnE6IlohlooNGtnkzTfIig0=
=68Ou
-----END PGP SIGNATURE-----

--b5gNqxB1S1yM7hjW--
