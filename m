Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D7FA6D55F3
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 03:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232506AbjDDB2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 21:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232445AbjDDB2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 21:28:34 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F783170F
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 18:28:07 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DA67185845;
        Tue,  4 Apr 2023 03:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680571685;
        bh=x32yYJFvbxRm91oAwn0GIDCaguRd9ohMkYso/AFJYD8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=J7n52nxmtiFY65dq5arEvECpelhbd2oXBz34Q1W6BrboQXF0qWEWdc4YXRUqo7FZ2
         rLCnLTDRikwpTa3urNttLf+Q3vRWLgpp9ei0k/mnxdTkA0gYelNlszTFr9OTAHpym9
         wG8CK9eSEu7zt6eHy1bBWmIWb+WkurkuWjeYojzDqoVBTDFbfwuWnHNYUFZ9A6xfrf
         RIbBeMoMESccg1GAGlIhQpzmen7dDTXs/NlP3zXxWqT4rre9nDiCiV8gKLMSRgorpP
         f/L/gx/6RxCHCMD7K2apUFDaoHCT0TSUu077rraglF8VQLAoh/9kT581qDt7k6D6RX
         +KTpgD0ykhueg==
Message-ID: <47251659-c31c-2d71-48ee-59b3611b8e16@denx.de>
Date:   Tue, 4 Apr 2023 03:28:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/2] drm/bridge: fsl-ldb: Add i.MX6SX support
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230330104233.785097-1-festevam@gmail.com>
 <20230330104233.785097-2-festevam@gmail.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230330104233.785097-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/30/23 12:42, Fabio Estevam wrote:
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

You might want to rename this one to something like 
"composite_control_reg" since the MX6SX only has one LDB control 
register instead of two like the newer SoCs. But that's optional change.

Reviewed-by: Marek Vasut <marex@denx.de>
