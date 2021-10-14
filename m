Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A84E542E0FF
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 20:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233468AbhJNSTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 14:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232933AbhJNSTi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Oct 2021 14:19:38 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B79C061570
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 11:17:32 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id r17so6572202qtx.10
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 11:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=OEEd2cZz+5NtWxzZjnRv5kBD8Q+8n+rDsDbFQ5ZVdRI=;
        b=MwqrP67vQCP/2gZMbjBQtK6ZWzIAuuX6sI8w42Gs6Wvv9YjdEyriCGLvXKULSOjB4j
         wo0sJ68zV9BOn1EM2DO5mRXZFKNpbwGpqKDZGa71elfQp0nsDeyBrNwmDR/3AJk/hP+x
         Iy+tNHpgJA8vMcXEH5IpqnkymS/feWQNPkKXs/vVNmJScgYlTl9Ia8DnJJBK+Vjbn1pJ
         YecyR+1OV4Na9aKiK2qL8NzzwIv08CFtFmIWmjWI00q1a3BDpjYpw+G63RqNjs53seo0
         kS1avpOANu/S2DrhMQ52mEBi/VBWMEQViMsW+HIQ69f+6URK54VJE0YNFx0tNnQspugM
         J5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OEEd2cZz+5NtWxzZjnRv5kBD8Q+8n+rDsDbFQ5ZVdRI=;
        b=HhvE30QE7kIBUJmTEcvSNRSnR0Y916bm0WgyymnlWhCWnCPTwLH0KtGXZ668NlApWR
         IemIhj7oHe45aShDpow0s+qqwF1k5qMDD6tfPlqv95hISUmwqqZ2pZXtbvHH/aZp9oPa
         s6r6wYxpuNzowUtCVXqDpvWq0SW/kSuHh1CCqP/qktroc0kFLLcn6eW96udPJ3BV1N/v
         d+JAdN4iUeYMwIO06ZtTuLdgrzgSYWILkVTCj1g3ZHM4XsZ/d9dJx64nfy9kYu9S/L5F
         tfsjSbXBlLAQTxW9myO1X4UIhJlUrjEpbTaWP0o7OMYcSNf4M2Bk38rc/QE/4/rv5rIr
         CbnQ==
X-Gm-Message-State: AOAM530EtD+OphS//osWa7S2oVj4atVjL0AQa2PIDRph6pkaZT/FpABu
        3nSBvSsZzm1kgMmKRjpDOKgSZQ==
X-Google-Smtp-Source: ABdhPJxnyYhk/kPVe3wuRXfD7Pz1FhiCeveW6GVfEn0nMQSPEaHV0wi93Rq1om7zyTgxkR8sAYfTXA==
X-Received: by 2002:ac8:5e51:: with SMTP id i17mr8207997qtx.339.1634235452046;
        Thu, 14 Oct 2021 11:17:32 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net. [173.246.12.168])
        by smtp.gmail.com with ESMTPSA id d11sm1932855qtb.39.2021.10.14.11.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 11:17:31 -0700 (PDT)
Message-ID: <2fe158874e627d2aab97901916a63d884826b6ec.camel@ndufresne.ca>
Subject: [BUG] Re: [PATCH v3 07/10] media: hantro: Enable H.264 on Rockchip
 VDPU2
From:   Nicolas Dufresne <nicolas@ndufresne.ca>
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Verkuil <hverkuil@xs4all.nl>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        Alex Bee <knaerzche@gmail.com>, maccraft123mc@gmail.com,
        Chris Healy <cphealy@gmail.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com
Date:   Thu, 14 Oct 2021 14:17:29 -0400
In-Reply-To: <20210719205242.18807-8-ezequiel@collabora.com>
References: <20210719205242.18807-1-ezequiel@collabora.com>
         <20210719205242.18807-8-ezequiel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le lundi 19 juillet 2021 à 17:52 -0300, Ezequiel Garcia a écrit :
> Given H.264 support for VDPU2 was just added, let's enable it.
> For now, this is only enabled on platform that don't have
> an RKVDEC core, such as RK3328.

There is a small oops, the decoder is now visible on RK3399. At least for
GStreamer, it got tricked in picking it by default, which regress decoding
performance. I still think we should wait before enabling it until we know that
userspace have infrastructure to rank them properly.

> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Tested-by: Alex Bee <knaerzche@gmail.com>
> ---
>  .../staging/media/hantro/rockchip_vpu_hw.c    | 26 ++++++++++++++++++-
>  1 file changed, 25 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
> index 3ccc16413f42..e4e3b5e7689b 100644
> --- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
> +++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
> @@ -162,6 +162,19 @@ static const struct hantro_fmt rk3399_vpu_dec_fmts[] = {
>  		.fourcc = V4L2_PIX_FMT_NV12,
>  		.codec_mode = HANTRO_MODE_NONE,
>  	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_H264_SLICE,
> +		.codec_mode = HANTRO_MODE_H264_DEC,
> +		.max_depth = 2,
> +		.frmsize = {
> +			.min_width = 48,
> +			.max_width = 1920,
> +			.step_width = MB_DIM,
> +			.min_height = 48,
> +			.max_height = 1088,
> +			.step_height = MB_DIM,
> +		},
> +	},
>  	{
>  		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
>  		.codec_mode = HANTRO_MODE_MPEG2_DEC,
> @@ -388,6 +401,12 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
>  		.init = hantro_jpeg_enc_init,
>  		.exit = hantro_jpeg_enc_exit,
>  	},
> +	[HANTRO_MODE_H264_DEC] = {
> +		.run = rockchip_vpu2_h264_dec_run,
> +		.reset = rockchip_vpu2_dec_reset,
> +		.init = hantro_h264_dec_init,
> +		.exit = hantro_h264_dec_exit,
> +	},
>  	[HANTRO_MODE_MPEG2_DEC] = {
>  		.run = rockchip_vpu2_mpeg2_dec_run,
>  		.reset = rockchip_vpu2_dec_reset,
> @@ -433,6 +452,8 @@ static const char * const rockchip_vpu_clk_names[] = {
>  	"aclk", "hclk"
>  };
>  
> +/* VDPU1/VEPU1 */
> +
>  const struct hantro_variant rk3036_vpu_variant = {
>  	.dec_offset = 0x400,
>  	.dec_fmts = rk3066_vpu_dec_fmts,
> @@ -495,11 +516,14 @@ const struct hantro_variant rk3288_vpu_variant = {
>  	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
>  };
>  
> +/* VDPU2/VEPU2 */
> +
>  const struct hantro_variant rk3328_vpu_variant = {
>  	.dec_offset = 0x400,
>  	.dec_fmts = rk3399_vpu_dec_fmts,
>  	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
> -	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
> +	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
> +		 HANTRO_H264_DECODER,
>  	.codec_ops = rk3399_vpu_codec_ops,
>  	.irqs = rockchip_vdpu2_irqs,
>  	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),


