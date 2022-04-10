Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76BD74FADA9
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 13:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238473AbiDJLdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 07:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbiDJLdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 07:33:38 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6435E58E40
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 04:31:27 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id d10so15057344edj.0
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 04:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sRX1WEzD+OHwRyf2blrJgodVZwUjqhVpYgifnVk+28Y=;
        b=fSiEMLggH6nOdVHr/inNql5RIWc6hCvaVdD44xWAsr7FgswCKbgCQrsr6hhZ36Qnxb
         vpQX4Lb7KHwYN0hblJaC85Fcc6jzu7t3fft4sd/UuYM69jUC/uhtEhUtBw6DWpMAdjJP
         zl9FQkM98CZxxy00AK+IZvXbuAB5HZ5GD+rM48S6ZrIiWHrkDFNQoRdrMZvF+N/hzzU4
         k+f89HH3u/8ZrC0Dl5vzfnmO4wLBuiLDjiT8hz/w7/SMVnN5tvyBTzDIuOGssGa6jtn4
         5WIQt3R0sTdG9FE1r9/6oBG5AxXDRdajEVuI+kSQVtN7s3C4dYdaq9t3vgASLpATTHB0
         XoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sRX1WEzD+OHwRyf2blrJgodVZwUjqhVpYgifnVk+28Y=;
        b=AdeHGAfw572+VrGT9wyPb46hzInL2EGnj5ngRDngqvajtRcIj0tPVLTJ+28dpNTnTF
         ithO4lSeKlHv4LS8TE3xkkST4RlN9nH9LVk3mMlaUDqKbICpIgPPHIFX7UXDT2ICOq4P
         MCuzvKG7DXgrsU0bjqr2U0Opri9s8ZgqNxmM8DOF+w+K+wgFN0c0VKsq+CyJIvMfd2MX
         dWFg06ESjyGxW1httrIWWwpPPkS0rx3g3QpWIPZJAZrN52VmSvbxZBMlQHn224+mL2r0
         cpDvzqAABmqWd5vW4lc1WFn6vxBqzlp9MZGgraO484xoSMIjcCH8Dt7iSssizlwfltyC
         63Bg==
X-Gm-Message-State: AOAM532QXe61jdyR3e8wyOkA1+VPlW6j6LU+DgesP8Gg3FMAVaisbPb2
        kqDmFksp+2td4WFRlKZRjw==
X-Google-Smtp-Source: ABdhPJw2erxI96LZQkKnLkWjSTDPEUQ3gin+rFkfZ/8VujZteZqKt0pgxbL48uF44MjdbzP8CcImOg==
X-Received: by 2002:a50:858a:0:b0:41d:740f:55bd with SMTP id a10-20020a50858a000000b0041d740f55bdmr3769846edh.128.1649590285884;
        Sun, 10 Apr 2022 04:31:25 -0700 (PDT)
Received: from ?IPV6:2001:16b8:e981:9e00:815a:6661:46b9:139d? ([2001:16b8:e981:9e00:815a:6661:46b9:139d])
        by smtp.gmail.com with ESMTPSA id dn4-20020a17090794c400b006dbec4f4acbsm10869995ejc.6.2022.04.10.04.31.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 04:31:25 -0700 (PDT)
Message-ID: <8fac5d72-c635-521c-e7d1-a3980a4ed719@gmail.com>
Date:   Sun, 10 Apr 2022 13:31:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 12/24] drm/rockchip: dw_hdmi: drop mode_valid hook
Content-Language: en-US
To:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
References: <20220408112238.1274817-1-s.hauer@pengutronix.de>
 <20220408112238.1274817-13-s.hauer@pengutronix.de>
From:   Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20220408112238.1274817-13-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 08.04.22 um 13:22 schrieb Sascha Hauer:
> The driver checks if the pixel clock of the given mode matches an entry
> in the mpll config table. The frequencies in the mpll table are meant as
> a frequency range up to which the entry works, not as a frequency that
> must match the pixel clock. The downstream Kernel also does not have
> this check, so drop it to allow for more display resolutions.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
You're correct: That frequency is meant to be greater or equal. But I'm
not sure if it makes sense to completely drop it - what happens for
clocks rates > 600 MHz which might be supported by later generation
sinks (HDMI 2.1 or later)?
As these are not supported by the IPs/PHYs currently supported by that
driver a reason a simple

        int i;



        for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {

-               if (pclk == mpll_cfg[i].mpixelclock) {

+               if (pclk >= mpll_cfg[i].mpixelclock) {

                        valid = true;

                        break;

                }

would be the better idea, I guess.

Regards,
Alex

> Notes:
>     Changes since v3:
>     - new patch
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 25 ---------------------
>  1 file changed, 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index cb43e7b47157d..008ab20f39ee6 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -248,26 +248,6 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
>  	return 0;
>  }
>  
> -static enum drm_mode_status
> -dw_hdmi_rockchip_mode_valid(struct dw_hdmi *hdmi, void *data,
> -			    const struct drm_display_info *info,
> -			    const struct drm_display_mode *mode)
> -{
> -	const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
> -	int pclk = mode->clock * 1000;
> -	bool valid = false;
> -	int i;
> -
> -	for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
> -		if (pclk == mpll_cfg[i].mpixelclock) {
> -			valid = true;
> -			break;
> -		}
> -	}
> -
> -	return (valid) ? MODE_OK : MODE_BAD;
> -}
> -
>  static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
>  {
>  }
> @@ -433,7 +413,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg = rockchip_mpll_cfg,
>  	.cur_ctr = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -450,7 +429,6 @@ static struct rockchip_hdmi_chip_data rk3288_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3288_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -470,7 +448,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg = rockchip_mpll_cfg,
>  	.cur_ctr = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -488,7 +465,6 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,
> @@ -501,7 +477,6 @@ static struct rockchip_hdmi_chip_data rk3568_chip_data = {
>  };
>  
>  static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
> -	.mode_valid = dw_hdmi_rockchip_mode_valid,
>  	.mpll_cfg   = rockchip_mpll_cfg,
>  	.cur_ctr    = rockchip_cur_ctr,
>  	.phy_config = rockchip_phy_config,

