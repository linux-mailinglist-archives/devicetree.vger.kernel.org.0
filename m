Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49F10464DD5
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 13:25:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349280AbhLAM3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 07:29:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349272AbhLAM26 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 07:28:58 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D9A0C06174A
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 04:25:36 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id w1so101143885edc.6
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 04:25:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q1bXomoZK1uliSFuVlRwGoqDfgeoL9wTIcaSZKyOo3w=;
        b=P68R8RdCgIl0gxA1N+wy5SkHXfbt/D1cXaJOKR2qqp34uB1KncofMP4RRJxIUk/ZVb
         krfz5geTxre4LhueKkboAFLvUcWFVxLip4vKY2Y2qSdMTays/sl+wvdYTAdUtWKmCio4
         N578egHQt6+i3BPnPwX43gmTBDIhIbawT22MR4Hh0CSNmTBXKebsTbHn1a1+P+/fgP5Z
         v6RWw586cv9ZxWD7OThwBC2cy9WLFeOIn1MrmcG6GuVFoNFcf3yTnGXu+UTRgtgTLv53
         0OT1NTkAUEfedg8MuZWxFxuSvLCsjGaz7thiJ3Byqi/gKV/kEwf+GuiUk6ReXsyHRMCK
         w+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q1bXomoZK1uliSFuVlRwGoqDfgeoL9wTIcaSZKyOo3w=;
        b=OCYuQUrqRYuWpnwSeJH7GwhUCLgUhBSoQekPzzAyuhbeGtuMS6F2yz54Yb7/vF5b+m
         akhd9ImNccKfZOjy2oltS9tb3KiG+UBnyyr1BcAVZlMvhyHrea4aBtJbDlpLEavRhNdF
         YjYAX8j+b1/1XOzXhzLZRiw2JPDdhLGIAb322Yim8bx3hG8GwcqCNtVfHZPrf38H0cCH
         VDHN95JnNO528i94vR+Xt8ZNcb8SW7hf35Y7n/y5xRP2OykbvrVCMPHWvmRoFaxG+vgW
         +9jywoM3UoL2UG2upWj48pKmmM4ij2TEuI1+vVd+ZtVhpybcwqnjXL8968RiQwOV7Jpi
         B73g==
X-Gm-Message-State: AOAM530oGt+12iSvwHKR7pSZk0uO1IHIu4jROXrIkYo8/oGf6IKGnVh0
        1eubGUFNvNKOeOInPkaxAKt5jz2kztRE5ekVaLGlzQ==
X-Google-Smtp-Source: ABdhPJxqcgQiEY76Rd0OlztgVDvAKC2e3Q50wIGfgfNHSONNNfT26V+DNnPfuftHX99L+Bf304WeNkdbMAk6WBC5gew=
X-Received: by 2002:a17:906:ece9:: with SMTP id qt9mr6601577ejb.362.1638361535048;
 Wed, 01 Dec 2021 04:25:35 -0800 (PST)
MIME-Version: 1.0
References: <20211201013329.15875-1-aford173@gmail.com> <20211201013329.15875-2-aford173@gmail.com>
In-Reply-To: <20211201013329.15875-2-aford173@gmail.com>
From:   Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date:   Wed, 1 Dec 2021 09:25:22 -0300
Message-ID: <CAAEAJfBBFhRtW2wmoA6T+yyM-nurUbtPqYHKPHjeRdKzA34PcQ@mail.gmail.com>
Subject: Re: [RFC V2 1/2] media: hantro: Add support for i.MX8M Mini
To:     Adam Ford <aford173@gmail.com>
Cc:     linux-media <linux-media@vger.kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Tim Harvey <tharvey@gateworks.com>,
        Nicolas Dufresne <nicolas@ndufresne.ca>,
        Adam Ford-BE <aford@beaconembedded.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adam,

On Tue, 30 Nov 2021 at 22:33, Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M Mini has a similar implementation of the Hantro G1 and
> h decoders, but the Mini uses the vpu-blk-ctrl for handling the
> VPU resets through the power domain system.  As such, there are
> functions present in the 8MQ that are not applicable to the Mini
> which requires the driver to have a different compatible flags.
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
>
> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> index fb82b9297a2b..2aa1c520be50 100644
> --- a/drivers/staging/media/hantro/hantro_drv.c
> +++ b/drivers/staging/media/hantro/hantro_drv.c
> @@ -592,6 +592,8 @@ static const struct of_device_id of_hantro_match[] = {
>         { .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>  #endif
>  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> +       { .compatible = "nxp,imx8mm-vpu", .data = &imx8mm_vpu_variant, },
> +       { .compatible = "nxp,imx8mm-vpu-g2", .data = &imx8mm_vpu_g2_variant },
>         { .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
>         { .compatible = "nxp,imx8mq-vpu-g2", .data = &imx8mq_vpu_g2_variant },
>  #endif
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 267a6d33a47b..ae7c3fff760c 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -211,6 +211,8 @@ enum hantro_enc_fmt {
>         ROCKCHIP_VPU_ENC_FMT_UYVY422 = 3,
>  };
>
> +extern const struct hantro_variant imx8mm_vpu_g2_variant;
> +extern const struct hantro_variant imx8mm_vpu_variant;
>  extern const struct hantro_variant imx8mq_vpu_g2_variant;
>  extern const struct hantro_variant imx8mq_vpu_variant;
>  extern const struct hantro_variant px30_vpu_variant;
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index ea919bfb9891..c68516c00c6d 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -242,6 +242,32 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
>         },
>  };
>
> +static const struct hantro_codec_ops imx8mm_vpu_codec_ops[] = {
> +       [HANTRO_MODE_MPEG2_DEC] = {
> +               .run = hantro_g1_mpeg2_dec_run,
> +               .init = hantro_mpeg2_dec_init,
> +               .exit = hantro_mpeg2_dec_exit,
> +       },
> +       [HANTRO_MODE_VP8_DEC] = {
> +               .run = hantro_g1_vp8_dec_run,
> +               .init = hantro_vp8_dec_init,
> +               .exit = hantro_vp8_dec_exit,
> +       },
> +       [HANTRO_MODE_H264_DEC] = {
> +               .run = hantro_g1_h264_dec_run,
> +               .init = hantro_h264_dec_init,
> +               .exit = hantro_h264_dec_exit,
> +       },
> +};
> +
> +static const struct hantro_codec_ops imx8mm_vpu_g2_codec_ops[] = {
> +       [HANTRO_MODE_HEVC_DEC] = {
> +               .run = hantro_g2_hevc_dec_run,
> +               .init = hantro_hevc_dec_init,
> +               .exit = hantro_hevc_dec_exit,
> +       },
> +};
> +

I believe you are missing VP9, which explains why you get
a zero fluster score.

Thanks,
Ezequiel
