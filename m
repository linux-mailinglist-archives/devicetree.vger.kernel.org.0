Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70E8375115C
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 21:38:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232531AbjGLTiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 15:38:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232512AbjGLTiR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 15:38:17 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E51F01FDA
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:38:15 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-666e97fcc60so5152607b3a.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689190695; x=1691782695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RAqGktah/O0GFdZ50GvGMkJOQPo1Bdaik/QUjfLnP24=;
        b=WJeDPc4KW7qUMZDwMdPPhOaka2bROkoS7mx53G29NSbD7Ho7yYmc5DWWptBlgYfTxt
         zfnMq/SKO0HNNKGCdxkL8LGfDh8GBN4fT+3wlM5EicocAxeHR2tEZAF2/cm0pfSJy9FT
         wV8sXOdOas0qgOoZS4s634XJxtQ+bfVqhwB9hqn2W5sYFiOWciiKaBqgS0W1rs634cwy
         08zTJVZyeXy5/rzp7F3HUNoTICYiFnQQettEA/0tjHc11Tjn9tHJlE9VF7TvACuuc108
         qj57ut4ZCiACpGnOJ6DiE2jA2keRXkY9lDe2lxK8yeSwDdhAUENDv6WxlBOOIrcUKfrJ
         PAzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689190695; x=1691782695;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RAqGktah/O0GFdZ50GvGMkJOQPo1Bdaik/QUjfLnP24=;
        b=LBlhDuKwnm/26u3CJ06yO8szhYkmgx829LNhImYTxKOaVEAIZlhR6gZN+4a68rhVhh
         Kun+nA4HRGgb/T99mtjyyb3oPBbEZwvlxAjkKlWpn6Ei8gpgWiweJdYquZGbu7rkfGch
         UHRMs3Y8twCfcLNIzeieIC1b/xvA4kOKGCX8pPuWP93fT2MCVXVqX9FGfJG8oF9Op0Sp
         gmQK5PPInxDP8vVz6Nk1oKyPJNq9ACUMZ/4NtoizwarR3CqWO2KcelO77WocT9qL880n
         6rGTxK/3NqNp8zEPw9l1DCgmp+zu6b4aS+i8xhqfxeAw3aHjmZZTFUISJ8/iKkrE/Bbf
         SmWQ==
X-Gm-Message-State: ABy/qLa5b0VZPKXesr7Fyr7e9H6vyBj5dbttY32Evv/KSGZoagkPZNYU
        NM82dJx/HX0Fn1W66QwiycnM+w==
X-Google-Smtp-Source: APBJJlGMOcbAwwVpsCYEnmiXNjwnmO20wsWdfSSDUrRNsz5IVZWYyjz+0agcO2l6LoBeRiJr0STtHg==
X-Received: by 2002:a05:6a00:148b:b0:681:6169:e403 with SMTP id v11-20020a056a00148b00b006816169e403mr19538672pfu.8.1689190695254;
        Wed, 12 Jul 2023 12:38:15 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:70ea:7145:ddf8:7208])
        by smtp.gmail.com with ESMTPSA id v11-20020aa7808b000000b00669c99d05fasm3907344pff.150.2023.07.12.12.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 12:38:14 -0700 (PDT)
Date:   Wed, 12 Jul 2023 13:38:12 -0600
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Tinghan Shen <tinghan.shen@mediatek.com>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v14 10/12] remoteproc: mediatek: Report watchdog crash to
 all cores
Message-ID: <ZK8BJOXcBjjLXUlu@p14s>
References: <20230707052612.27521-1-tinghan.shen@mediatek.com>
 <20230707052612.27521-11-tinghan.shen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230707052612.27521-11-tinghan.shen@mediatek.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 07, 2023 at 01:26:10PM +0800, Tinghan Shen wrote:
> Once the SCP watchdog timeout happened, trigger the rproc recovery flow on
> all cores.
> 

You are missing the most important part... "Why" is this needed?  Without it I
don't know what is going on and can't review your work.

> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  drivers/remoteproc/mtk_scp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 9fed5161f094..7e786aaf04e1 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -80,8 +80,14 @@ EXPORT_SYMBOL_GPL(scp_put);
>  
>  static void scp_wdt_handler(struct mtk_scp *scp, u32 scp_to_host)
>  {
> +	struct mtk_scp_of_cluster *scp_cluster = platform_get_drvdata(scp->cluster_pdev);
> +	struct mtk_scp *scp_node;
> +
>  	dev_err(scp->dev, "SCP watchdog timeout! 0x%x", scp_to_host);
> -	rproc_report_crash(scp->rproc, RPROC_WATCHDOG);
> +
> +	/* report watchdog timeout to all cores */
> +	list_for_each_entry(scp_node, &scp_cluster->mtk_scp_list, elem)
> +		rproc_report_crash(scp_node->rproc, RPROC_WATCHDOG);
>  }
>  
>  static void scp_init_ipi_handler(void *data, unsigned int len, void *priv)
> -- 
> 2.18.0
> 
