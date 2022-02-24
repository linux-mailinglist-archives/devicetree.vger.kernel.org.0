Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54E4A4C39A1
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 00:24:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232650AbiBXXZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 18:25:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbiBXXZ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 18:25:27 -0500
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A714275793
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 15:24:57 -0800 (PST)
Received: by mail-oo1-xc33.google.com with SMTP id d134-20020a4a528c000000b00319244f4b04so4119779oob.8
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 15:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ykl5+gmxA4yVeV9VmJK6ewapdNVNECzVgJJevXCRQuc=;
        b=TqnUO6z4Q6nA3vvMK4mvsAFxAm2dn/5v+tTeKoc+l5Bx/GpmNS+0w9whrVtnIekxTU
         Y8I0pVxPqJRS9yvOk8U+qh/lJUlnOu2zJ/2ALFyxMTPDBuazPTdITNufwlzT5F7g4qRB
         PHeHFonNG6dDZgQ1E9it56/ppFnxJ2JeZDODU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ykl5+gmxA4yVeV9VmJK6ewapdNVNECzVgJJevXCRQuc=;
        b=RoNh+eXdJaQPq6KpVvfYlI4CpFXV8ftJcz4RmKSy38rwrgCSFYnj/M4kMnvfjDbNLy
         dbMGX5CcRvMbWCMq+lcjeiA6g0gUfbq/M9hCBaPJaBChPEh/Ep/79WkC3IbVvdAg/Fes
         Cd6Z9f88XKguMQ5NemS1z0saqt4G7TJmzNzxztclNu8sO2w0S0Ch3SaB9y+5GiP3+hbU
         yNnUB0QZ5xApzzojSVK8RG8bcm8ZC6vP/GudhkZLvXOo1ZkiAj+oHMMLAvpqQSW50lbd
         G3i/eWcemRLv+Fi1cAckJ4w6p1sQWvyc5Zpz7Qx1trroE/Z7B2H1YL1a8YQG1uPZ9D7t
         LNaw==
X-Gm-Message-State: AOAM530MNTcneXoB2wBZ1/uFslZLRgmeT+Ia4Dh6rOd7JZgAsBXFo+GX
        dNDhj8UEBBq91ux+QKbchF3lLzsmwYPBe73cgIQ0Dg==
X-Google-Smtp-Source: ABdhPJxPu46LL0CWhZZy8QN5RXliJtD35auxrUHD4Ow5T5vwfCuYokKQpnP4+gcm1fxEoLSBSOT66tZKar/j9/lM6lM=
X-Received: by 2002:a05:6870:5829:b0:c8:9f42:f919 with SMTP id
 r41-20020a056870582900b000c89f42f919mr233403oap.54.1645745096848; Thu, 24 Feb
 2022 15:24:56 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 24 Feb 2022 15:24:56 -0800
MIME-Version: 1.0
In-Reply-To: <1645716828-15305-10-git-send-email-quic_srivasam@quicinc.com>
References: <1645716828-15305-1-git-send-email-quic_srivasam@quicinc.com> <1645716828-15305-10-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 24 Feb 2022 15:24:56 -0800
Message-ID: <CAE-0n51Lc8N=yfx0N=sSGYQLDSpUK_q3HEUkb6d4s1sdQ6W_3A@mail.gmail.com>
Subject: Re: [PATCH v16 9/9] ASoC: qcom: lpass-sc7280: Add platform driver for
 lpass audio
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
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-02-24 07:33:48)
> diff --git a/sound/soc/qcom/lpass-sc7280.c b/sound/soc/qcom/lpass-sc7280.c
> new file mode 100644
> index 0000000..70c4df8
> --- /dev/null
> +++ b/sound/soc/qcom/lpass-sc7280.c
> @@ -0,0 +1,438 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
> + *
> + * lpass-sc7180.c -- ALSA SoC platform-machine driver for QTi LPASS

Should be sc7280, but really the filename should be removed entirely.

> + */
> +
> +#include <linux/module.h>
> +#include <sound/pcm.h>
> +#include <sound/soc.h>
> +#include <linux/pm_runtime.h>
> +
> +#include <dt-bindings/sound/sc7180-lpass.h>

Is that right? Or is it supposed to be dt-bindings/sound/sc7280-lpass.h?
