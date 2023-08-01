Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BEB676AF54
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 11:46:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231754AbjHAJqx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 05:46:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233479AbjHAJo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 05:44:58 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B04F43C1D
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 02:42:47 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fe1d9a8ec6so13852885e9.1
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690882966; x=1691487766;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=spF4IU+DOCl88bX1rso/uViMAiAyL5X5n+sxPi2GuFg=;
        b=TkX9otIECX+hw5hx1UB7tmWPS4t5tB805GlBzJfIqyJ/LIU22c+5ATQtjStUO5jZf1
         J30TLHhMn0K18ttRbJd/MhiaQSnKKiv3eYHv4eJqDhUTa6yGA5t5PCrW6ElchexL1BZO
         8IRkZJhclDYTeA+9aJ1aC09xnAuRAbC3aREIUEUoSipnjZRwX5oFKH2uNr3pfrKhRvtj
         BclQ7Ia1O4uB2AR/rgqn1H7pJCCBW8BDTE27CmKsu99qza5c+Arxt3MAyBSu7H8Rgu0P
         8oC5RlhpQzk0RiOiKlKw2iZrltoCgoEQ3Py6W1aaCkhexq4y2DljX3bXEcvso0G+/0tA
         7t1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690882966; x=1691487766;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=spF4IU+DOCl88bX1rso/uViMAiAyL5X5n+sxPi2GuFg=;
        b=JQNkgC1l0e87jsWV9YTk78WcHZuMtlxW2BIOV3oHGU2MH/ft+cMwhrDKY6UUmBcc0I
         AepAupPc1MQzm8EaH4Ce+/MPd7DExos3fS6/t4akMbYRp+R8fDQZGfJ8L8Y2eiJP+NTc
         SLoLyqGu/tHxc10Pi8/6zBVm5M9Yom89Erie8zGuhP9GyWWuIIXdtCEPGbzIQMKI+zK9
         k8tnpmpY+cTs84DRt5zOPQc5lT8y7Fk8eCSW7E2gbVQFFfZLVBA41D4vLxFCbgEuBrP+
         HftJwS6kJbDFsRIJxQBzwCUhZqISdsFX2LmrQNKVP71WJvSUfkCKLedIyun6DBs48CvF
         BOrg==
X-Gm-Message-State: ABy/qLbDH5zRQk+FWT9Idq+SMZA61OeuBrZKJji6cOoMMWxemh10hyBk
        bbGjuhSK761+MG6qeOhMsuccmQ==
X-Google-Smtp-Source: APBJJlGnV/bR40erYnmyMF31OZCXGjDstUGU65XA0rEf6F8ew0/xJcZhNxfe8e789SbPjqVfzSdibg==
X-Received: by 2002:a05:600c:4792:b0:3fe:21f1:aba8 with SMTP id k18-20020a05600c479200b003fe21f1aba8mr1916010wmo.12.1690882965908;
        Tue, 01 Aug 2023 02:42:45 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3? ([2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3])
        by smtp.gmail.com with ESMTPSA id 3-20020a05600c234300b003fc16ee2864sm13713955wmq.48.2023.08.01.02.42.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Aug 2023 02:42:45 -0700 (PDT)
Message-ID: <8753afee-e160-8252-9ab2-4b1dad82d432@linaro.org>
Date:   Tue, 1 Aug 2023 11:42:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 6/9] drm/bridge: synopsys: dw-mipi-dsi: Set minimum lane
 byte clock cycles for HSA and HBP
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     andrzej.hajda@intel.com, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
References: <20230717061831.1826878-1-victor.liu@nxp.com>
 <20230717061831.1826878-7-victor.liu@nxp.com>
Organization: Linaro Developer Services
In-Reply-To: <20230717061831.1826878-7-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 08:18, Liu Ying wrote:
> According to Synopsys support channel, each region of HSA, HBP and HFP must
> have minimum number of 10 bytes where constant 4 bytes are for HSS or HSE
> and 6 bytes are for blanking packet(header + CRC).  Hence, the below table
> comes in.
> 
> +------------+----------+-------+
> | data lanes | min lbcc | bytes |
> +------------+----------+-------+
> |     1      |    10    |  1*10 |
> +------------+----------+-------+
> |     2      |    5     |  2*5  |
> +------------+----------+-------+
> |     3      |    4     |  3*4  |
> +------------+----------+-------+
> |     4      |    3     |  4*3  |
> +------------+----------+-------+
> 
> Implement the minimum lbcc numbers to make sure that the values programmed
> into DSI_VID_HSA_TIME and DSI_VID_HBP_TIME registers meet the minimum
> number requirement.  For DSI_VID_HLINE_TIME register, it seems that the
> value programmed should be based on mode->htotal as-is, instead of sum up
> HSA, HBP, HFP and HDISPLAY.
> 
> This helps the case where Raydium RM67191 DSI panel is connected, since
> it's video timing for hsync length is only 2 pixels and without this patch
> the programmed value for DSI_VID_HSA_TIME is only 2 with 4 data lanes.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 332388fd86da..536306ccea5a 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -757,12 +757,19 @@ static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
>   	dsi_write(dsi, DSI_MODE_CFG, ENABLE_CMD_MODE);
>   }
>   
> +static const u32 minimum_lbccs[] = {10, 5, 4, 3};
> +
> +static inline u32 dw_mipi_dsi_get_minimum_lbcc(struct dw_mipi_dsi *dsi)
> +{
> +	return minimum_lbccs[dsi->lanes - 1];
> +}
> +
>   /* Get lane byte clock cycles. */
>   static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
>   					   const struct drm_display_mode *mode,
>   					   u32 hcomponent)
>   {
> -	u32 frac, lbcc;
> +	u32 frac, lbcc, minimum_lbcc;
>   	int bpp;
>   
>   	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
> @@ -778,6 +785,11 @@ static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
>   	if (frac)
>   		lbcc++;
>   
> +	minimum_lbcc = dw_mipi_dsi_get_minimum_lbcc(dsi);
> +
> +	if (lbcc < minimum_lbcc)
> +		lbcc = minimum_lbcc;
> +
>   	return lbcc;
>   }
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
