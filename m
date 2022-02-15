Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 138E24B5FDB
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 02:12:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbiBOBMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 20:12:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230412AbiBOBMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 20:12:17 -0500
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53E3DDEBA
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 17:12:09 -0800 (PST)
Received: by mail-oo1-xc2a.google.com with SMTP id p190-20020a4a2fc7000000b0031820de484aso21399193oop.9
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 17:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=2z0HLBtdwl7RuykFNoLcrOpeQoN2RrPQlxsn50U+srI=;
        b=Q85Iy1x0nXlLnvvWd0qW9X3s9tgMAJ7AnlBSq3D89DE5VcsaJ25zy163dK52rAgG+C
         G1Rp6kBsRRKD5HB17M3DH8DPVV2g7hkKKTDgG9GLsFrH4GEKh57ytrF0L8TgjrWgWNpx
         beKuRv5pUE2ndVw+oZhC8NrzutWuu1E2niMDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=2z0HLBtdwl7RuykFNoLcrOpeQoN2RrPQlxsn50U+srI=;
        b=n31ezHX4agwkHhKZ8HB3Dal2Wc9lJRU554p+N0iafxhMRUHejHBbH4nAvxW1ZWRvJd
         J5YjH36lGpEt+v06fptcd1RyMz9lS7/4QfxcDwqDxnY7GL46DMJRVzsHrgUS4jMC2UC1
         cREDXZKDOhhQhpNVnzc8Y9Olec+QkqfAjfYk/LijBuIsfp35FaY8KS+E6/UfrkUh9CeD
         zho0d5e6zxPloptlr149OCw9JbJhbBnB2AClBDFDiP9Uqej1fR0DU4WRoi7t+jne9zSU
         A5+cfphCh+b3NqeTisW2TY5vxuZU50Y15DzFJ7VxdDwsIJqdwnXoSHKCs0jpbNzHgOUH
         KIFQ==
X-Gm-Message-State: AOAM530ul0P+Xq3lK4nqpriCRLH9eTRs/3n3ThHbq3r5AfZlZtiFNtdm
        gbsNb3QobZzhFXX2aAoRBVgHTLuFO79MW8feFXbkYA==
X-Google-Smtp-Source: ABdhPJzqr0qj+6PGWqY06otbFxJxLPzm/naHHRbTzZGQw8jz3YGa4aV1SMC/JucpyLkPPx1hqwG9ibRXSdkd51IAglA=
X-Received: by 2002:a05:6870:d413:: with SMTP id i19mr598159oag.54.1644887528729;
 Mon, 14 Feb 2022 17:12:08 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 14 Feb 2022 17:12:08 -0800
MIME-Version: 1.0
In-Reply-To: <1644850708-11099-6-git-send-email-quic_srivasam@quicinc.com>
References: <1644850708-11099-1-git-send-email-quic_srivasam@quicinc.com> <1644850708-11099-6-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 14 Feb 2022 17:12:08 -0800
Message-ID: <CAE-0n53iKwT8u=d2KG5KX8fJgFs1JhTnaGCfG=OLarhvLdmf3Q@mail.gmail.com>
Subject: Re: [RESEND v13 05/10] ASoC: qcom: Add register definition for codec
 rddma and wrdma
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-02-14 06:58:23)
> This patch adds register definitions for codec read dma and write dma

 git grep "This patch" -- Documentation/process/

> lpass interface.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

> diff --git a/sound/soc/qcom/lpass.h b/sound/soc/qcom/lpass.h
> index 7cc3763..e059c4a 100644
> --- a/sound/soc/qcom/lpass.h
> +++ b/sound/soc/qcom/lpass.h
> @@ -39,6 +39,29 @@
>                         return -EINVAL;         \
>         } while (0)
>
> +static inline bool is_cdc_dma_port(int dai_id)
> +{
> +       switch (dai_id) {
> +       case LPASS_CDC_DMA_RX0 ... LPASS_CDC_DMA_RX9:
> +       case LPASS_CDC_DMA_TX0 ... LPASS_CDC_DMA_TX8:
> +       case LPASS_CDC_DMA_VA_TX0 ... LPASS_CDC_DMA_VA_TX8:
> +               return true;
> +       default:

Drop case

> +               return false;
> +       }

return false;

would be shorter.

> +}
> +
> +static inline bool is_rxtx_cdc_dma_port(int dai_id)
> +{
> +       switch (dai_id) {
> +       case LPASS_CDC_DMA_RX0 ... LPASS_CDC_DMA_RX9:
> +       case LPASS_CDC_DMA_TX0 ... LPASS_CDC_DMA_TX8:
> +               return true;
> +       default:
> +               return false;
> +       }

Same.

> +}
> +
>  struct lpaif_i2sctl {
>         struct regmap_field *loopback;
>         struct regmap_field *spken;
