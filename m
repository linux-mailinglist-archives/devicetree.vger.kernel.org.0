Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F4B66D1B01
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231434AbjCaI7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbjCaI65 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:58:57 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73A70198B
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:58:53 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id i9so21660947wrp.3
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680253132;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qp4ZuRqGg+J10iY7rZdCsDY9wWn1yWd+JVxuMOW1CjQ=;
        b=SxOLTxovlmyoaEOdtsIfBq0y+mvqTHm5WFFqG7tVRO8f8DOhTbTTg+Ee3Dxhs8dexF
         cqcazyoFmqU37a8PY+qErJGWTeaKqAZaiUougzvmPUIRSISNuun6U3MfzfZcg2GqjtpI
         GMP2eIQbpDy4jHLknst59hJc+9NZJJOL5PDooqpyHDO58eFPTUt2eoiRTgj0PS1hIPuk
         b0x+9KaHvRPk4PAN3FxsBkT61aiVwajytEkBE7p9pZQjVKvN4+kFbO0OJP6lBVQ8augf
         XgFV2cFRhz4z4E+U5E4lgUFKyPUF2TMJvgflXG6mGpopht1Rx9225FT5siXWbNlIYbD6
         8Ojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680253132;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qp4ZuRqGg+J10iY7rZdCsDY9wWn1yWd+JVxuMOW1CjQ=;
        b=HugJ8VU9wRc171bSvrEWerOXa75xiI1/l2zRF5lW/j/ZIoloUXxetJX0CvKrRiTDFi
         108H77yTCjUOc40BIoGTMPBpeqrZe3Y5RYQtjo8yJkSr7ZyfZO5X1bBXz9gXGJSmfLQR
         k/qPPN+esvmgjquJ/M9qMiiZhMDqY8A6UvdlgqfzMedcqwMOmBIjhW7isMdIEaGDVoMd
         q39QMwh2phGKvdeDF3g1O+SekLIPpuhMxebgwGi2pjEUG2yRicE0Wh34OSxtLHj8e34x
         uM4gqTi4jRQxyVDtauBQqp7pz622Ij7+SNAnVC6/8JCgfPEtUhjM2d1Qwtahw6JPc5kX
         /uBQ==
X-Gm-Message-State: AAQBX9dCaEz4wRHL6ePcHo8rX9ubR/91Zi2hX3Bmp6RpE93Cq9PKZbfX
        zuvdZG7iywQE11QsOPFHObMmyzy6dCEoYcKRyIz1Tg==
X-Google-Smtp-Source: AKy350ZagJqGVqaTHbzlkmFylpx6nzpUz5xLWI+4DNMOI/FjohpCwlHeLywbK3lmFaiw8EAcNUti7w==
X-Received: by 2002:a5d:6585:0:b0:2c8:c667:1bb4 with SMTP id q5-20020a5d6585000000b002c8c6671bb4mr18983039wru.48.1680253131901;
        Fri, 31 Mar 2023 01:58:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:74cb:1a96:c994:e7e0? ([2a01:e0a:982:cbb0:74cb:1a96:c994:e7e0])
        by smtp.gmail.com with ESMTPSA id e38-20020a5d5966000000b002d78a96cf5fsm1634697wri.70.2023.03.31.01.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:58:51 -0700 (PDT)
Message-ID: <11a171df-3143-9ec2-4aa5-cc599383ac8a@linaro.org>
Date:   Fri, 31 Mar 2023 10:58:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] drm/bridge: fsl-ldb: Add i.MX6SX support
To:     Fabio Estevam <festevam@gmail.com>
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230330104233.785097-1-festevam@gmail.com>
 <20230330104233.785097-2-festevam@gmail.com>
Content-Language: en-US
Organization: Linaro Developer Services
In-Reply-To: <20230330104233.785097-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 12:42, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has a single LVDS port and share a similar LDB_CTRL register layout
> with i.MX8MP and i.MX93.
> 
> There is no LVDS CTRL register on the i.MX6SX, so only write to
> this register on the appropriate SoCs.
> 
> Add support for the i.MX6SX LDB.
> 
> Tested on a imx6sx-sdb board with a Hannstar HSD100PXN1 LVDS panel
> and also on a custom i.MX6SX-based board.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - None
> 
>   drivers/gpu/drm/bridge/fsl-ldb.c | 14 +++++++++++++-
>   1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fsl-ldb.c
> index 450b352914f4..f8e5d8ab98e3 100644
> --- a/drivers/gpu/drm/bridge/fsl-ldb.c
> +++ b/drivers/gpu/drm/bridge/fsl-ldb.c
> @@ -56,6 +56,7 @@
>   #define LVDS_CTRL_VBG_ADJ_MASK			GENMASK(19, 17)
>   
>   enum fsl_ldb_devtype {
> +	IMX6SX_LDB,
>   	IMX8MP_LDB,
>   	IMX93_LDB,
>   };
> @@ -64,9 +65,14 @@ struct fsl_ldb_devdata {
>   	u32 ldb_ctrl;
>   	u32 lvds_ctrl;
>   	bool lvds_en_bit;
> +	bool not_lvds_ctrl;
>   };
>   
>   static const struct fsl_ldb_devdata fsl_ldb_devdata[] = {
> +	[IMX6SX_LDB] = {
> +		.ldb_ctrl = 0x18,
> +		.not_lvds_ctrl = true,
> +	},
>   	[IMX8MP_LDB] = {
>   		.ldb_ctrl = 0x5c,
>   		.lvds_ctrl = 0x128,
> @@ -202,6 +208,9 @@ static void fsl_ldb_atomic_enable(struct drm_bridge *bridge,
>   
>   	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, reg);
>   
> +	if (fsl_ldb->devdata->not_lvds_ctrl)
> +		return;
> +
>   	/* Program LVDS_CTRL */
>   	reg = LVDS_CTRL_CC_ADJ(2) | LVDS_CTRL_PRE_EMPH_EN |
>   	      LVDS_CTRL_PRE_EMPH_ADJ(3) | LVDS_CTRL_VBG_EN;
> @@ -228,7 +237,8 @@ static void fsl_ldb_atomic_disable(struct drm_bridge *bridge,
>   		regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl,
>   			     LVDS_CTRL_LVDS_EN);
>   	else
> -		regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, 0);
> +		if (!fsl_ldb->devdata->not_lvds_ctrl)
> +			regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->lvds_ctrl, 0);
>   	regmap_write(fsl_ldb->regmap, fsl_ldb->devdata->ldb_ctrl, 0);
>   
>   	clk_disable_unprepare(fsl_ldb->clk);
> @@ -355,6 +365,8 @@ static void fsl_ldb_remove(struct platform_device *pdev)
>   }
>   
>   static const struct of_device_id fsl_ldb_match[] = {
> +	{ .compatible = "fsl,imx6sx-ldb",
> +	  .data = &fsl_ldb_devdata[IMX6SX_LDB], },
>   	{ .compatible = "fsl,imx8mp-ldb",
>   	  .data = &fsl_ldb_devdata[IMX8MP_LDB], },
>   	{ .compatible = "fsl,imx93-ldb",

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
