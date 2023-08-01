Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C18C876AF58
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 11:46:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233085AbjHAJqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 05:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233528AbjHAJpA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 05:45:00 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F04D3591
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 02:42:53 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe1e1142caso22462905e9.0
        for <devicetree@vger.kernel.org>; Tue, 01 Aug 2023 02:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690882971; x=1691487771;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZHtkQBwYJWC3v3bJWmfz/i0gWwYwgp5p+j4xvyTGTE=;
        b=RCuElZ03uOIXpeiisCk+hSTxfkXSgPS06OqCadIKp0yk3xf00FqESa8DG4xLQk+HuW
         329VXl9xTia4AwNFJPcr3K9Sieub8uRG+f1U3FDPIA7F9gdfwVVN00pDMnlQFcC4Mqkg
         Z2OjpIR31igB6ZhoCj0xVXYiXZQ24q2/O/mBDdcw74IAJntuZosDT4GGfu2uOmOHTIdU
         luXDBCKxTVOgwc7GHYB/DIRKBhhZPzPh1vsSK+40kzOJdhbVfarliq+0wMwNzkSKjJFn
         MuY9GiCTi8iqcefvIlatigbi3jvTT/kw/bZL7WLgrpBEv35R/mG8Nc8Crv/H/SwOjDp2
         +irg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690882971; x=1691487771;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ZHtkQBwYJWC3v3bJWmfz/i0gWwYwgp5p+j4xvyTGTE=;
        b=iEN2wumf8JPtwql3jqAY5h73B0TzYafsN908KEgn3T20PBwR6kzqLSL2mftLSQuwW3
         XCcEABmIQ+zD7GsybiqugY+5BxRTslolqCPoNLAyB/3RV9pgI8vU3nDJIF/LnvMBr+8/
         Up48pYOkPiV+hyUKkc6QIZLG8dlXSlCb2dj5akxJ4hZvFb0bDTN2ODOoa4O5gm8t3ThD
         o4kQcDqCBse8V2IY+6JLkUucqm/EBjnXQPA7u39aVneFQJyGm3GDN7hpl3B/wf1uUneK
         opMRCO+xF/H7+6OdGrSZ5WCjbkEaizdgaAPOv79aYM/5o3rrs6mV9Xd90448suWFS/H3
         yF4w==
X-Gm-Message-State: ABy/qLayzo05E9sJB/NQTgi9PlABWqsGS6o70QCEZDEYLkzVcsovOd6G
        elqgNRCb+DKgMyjQuSiorNjv1w==
X-Google-Smtp-Source: APBJJlFnFH+EEEeNtiva1AIY578o6dsghC4jMpKOnKQ79gJShSS2WayhhW4ndyjf9hsAO2wSLswejg==
X-Received: by 2002:adf:e946:0:b0:317:4cf8:35f9 with SMTP id m6-20020adfe946000000b003174cf835f9mr1888323wrn.16.1690882971601;
        Tue, 01 Aug 2023 02:42:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3? ([2a01:e0a:982:cbb0:b92a:81a9:df6e:1e3])
        by smtp.gmail.com with ESMTPSA id x1-20020a5d60c1000000b00317afc7949csm1091567wrt.50.2023.08.01.02.42.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Aug 2023 02:42:51 -0700 (PDT)
Message-ID: <95dc8275-feae-fd03-48bb-5f27e619c021@linaro.org>
Date:   Tue, 1 Aug 2023 11:42:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 7/9] drm/bridge: synopsys: dw-mipi-dsi: Disable HSTX and
 LPRX timeout check
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
 <20230717061831.1826878-8-victor.liu@nxp.com>
Organization: Linaro Developer Services
In-Reply-To: <20230717061831.1826878-8-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 08:18, Liu Ying wrote:
> According to Synopsys DW MIPI DSI host databook, HSTX and LPRX timeout
> contention detections are measured in TO_CLK_DIVISION cycles.  However,
> the current driver programs magic values to TO_CLK_DIVISION, HSTX_TO_CNT
> and LPRX_TO_CNT register fields, which makes timeout error event wrongly
> happen for some video modes, at least for the typical 1920x1080p@60 video
> mode read from a HDMI monitor driven by ADV7535 DSI to HDMI bridge.
> While at it, the current driver doesn't enable interrupt to handle or
> complain about the error status, so true error just happens silently
> except for display distortions by visual check.
> 
> Disable the timeout check by setting those timeout register fields to
> zero for now until someone comes along with better computations for the
> timeout values.  Although the databook doesn't mention what happens when
> they are set to zero, it turns out the false error doesn't happen for
> the 1920x1080p@60 video mode at least.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>   drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 536306ccea5a..0fcadf99e783 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -684,7 +684,7 @@ static void dw_mipi_dsi_init(struct dw_mipi_dsi *dsi)
>   	 * timeout clock division should be computed with the
>   	 * high speed transmission counter timeout and byte lane...
>   	 */
> -	dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVISION(10) |
> +	dsi_write(dsi, DSI_CLKMGR_CFG, TO_CLK_DIVISION(0) |
>   		  TX_ESC_CLK_DIVISION(esc_clk_division));
>   }
>   
> @@ -747,7 +747,7 @@ static void dw_mipi_dsi_command_mode_config(struct dw_mipi_dsi *dsi)
>   	 * compute high speed transmission counter timeout according
>   	 * to the timeout clock division (TO_CLK_DIVISION) and byte lane...
>   	 */
> -	dsi_write(dsi, DSI_TO_CNT_CFG, HSTX_TO_CNT(1000) | LPRX_TO_CNT(1000));
> +	dsi_write(dsi, DSI_TO_CNT_CFG, HSTX_TO_CNT(0) | LPRX_TO_CNT(0));
>   	/*
>   	 * TODO dw drv improvements
>   	 * the Bus-Turn-Around Timeout Counter should be computed

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
