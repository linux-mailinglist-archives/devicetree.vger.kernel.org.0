Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6DF55B51AD
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 00:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiIKWzn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 18:55:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiIKWzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 18:55:41 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF4821E0A
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:55:40 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1279948d93dso18952529fac.10
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 15:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date;
        bh=nlcIQGarpQZF1b3fqIIEqAzgfa9Oo0Ubme7PE3yoogc=;
        b=eaaBTIwttt2CjIs/FXfOF4vlIZCdC9jW55CaoI+H1a2K1pq3RM0VFGrIiSlYIPOiPW
         Qlrn8bN0Ra+7DncrXuIYcOYujD/gqXLxB7pGV++pzW64HuK1pefvkJ1jUH+cgehbvP3N
         5HQdmB14xiAq7k1qiVq/13s8VkQ9imB2EJ9UY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=nlcIQGarpQZF1b3fqIIEqAzgfa9Oo0Ubme7PE3yoogc=;
        b=losI7OgWM+ROGSxkedj34yhffDlU4SLJsoOlvx4h4hZrbcwmBB1Lw0kVXJkY7DsZ0A
         iEOskm20HvCULnR3ooFskdF+5MyyLSTlRFPUk7JVVP7nFx6MFWYjrpDteucBPicqKEXq
         AEVvkzgpI7aMn8qaUQmQkZEmRQ7EkktWC+Uiry2vI0Xy5nhWD609stfNyNl8QtAVxTqQ
         7WID4/M5tmyf7rWrRstM/XKF3tFKO3WvEHkCKDDtW6/ONJV3954bsiyr12wf0dZ7Ll6B
         tDT2fYSQhcGtp5U9Br6UU32zYLohjHHtONAT987X+cTtBbewRjHczUqvs+ZSZDi/Q0GG
         Psog==
X-Gm-Message-State: ACgBeo18zHinFGMY6umSs7EGgGmaUgAfKtcQafPHpcvoWy5pkmr22vzK
        hf6wQaYBNqp1Nj3bWg55WoS3+J2MMEnmg/xzMzr2Cg==
X-Google-Smtp-Source: AA6agR7OYBLg+WdC6y3UCRy2aVOaumf8UJxXjuDOYFe8okh2tGp8wIsyxmb63X1InGt+PoQArJn6b6NMdTC54iHquW4=
X-Received: by 2002:a05:6808:bca:b0:344:ef42:930f with SMTP id
 o10-20020a0568080bca00b00344ef42930fmr7698554oik.0.1662936939654; Sun, 11 Sep
 2022 15:55:39 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 11 Sep 2022 17:55:39 -0500
MIME-Version: 1.0
In-Reply-To: <1662643422-14909-5-git-send-email-quic_srivasam@quicinc.com>
References: <1662643422-14909-1-git-send-email-quic_srivasam@quicinc.com> <1662643422-14909-5-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sun, 11 Sep 2022 17:55:39 -0500
Message-ID: <CAE-0n50i7jqoA8rYhkvMEd_i13apA1ZWhHsXBj99Sn_8Hkywag@mail.gmail.com>
Subject: Re: [PATCH v6 4/8] remoteproc: qcom: Update rproc parse firmware callback
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        perex@perex.cz, quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-09-08 06:23:38)
> diff --git a/drivers/remoteproc/qcom_q6v5_adsp.c b/drivers/remoteproc/qcom_q6v5_adsp.c
> index 02d17b4..207270d4 100644
> --- a/drivers/remoteproc/qcom_q6v5_adsp.c
> +++ b/drivers/remoteproc/qcom_q6v5_adsp.c
> @@ -447,7 +447,7 @@ static unsigned long adsp_panic(struct rproc *rproc)
>         return qcom_q6v5_panic(&adsp->q6v5);
>  }
>
> -static const struct rproc_ops adsp_ops = {
> +static struct rproc_ops adsp_ops = {

This is sad.

>         .start = adsp_start,
>         .stop = adsp_stop,
>         .da_to_va = adsp_da_to_va,
> @@ -590,6 +590,9 @@ static int adsp_probe(struct platform_device *pdev)
>                 return ret;
>         }
>
> +       if (desc->has_iommu)
> +               adsp_ops.parse_fw = rproc_elf_load_rsc_table;
> +

Why not have two different set of ops so that the function pointer table
can't be hijacked? One for the parse_fw callback? Or simply return from
rproc_elf_load_rsc_table() when has_iommu is false?

>         rproc = rproc_alloc(&pdev->dev, pdev->name, &adsp_ops,
