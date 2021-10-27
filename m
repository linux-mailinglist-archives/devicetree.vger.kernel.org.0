Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C94EF43D372
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 23:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244169AbhJ0VEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 17:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244156AbhJ0VEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 17:04:50 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3ABCC061570
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 14:02:24 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 71-20020a9d034d000000b00553e24ce2b8so805208otv.7
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 14:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=EWGuNWBIhypYPfhEwftufgfwqDqQ723njHLWk1GFVNA=;
        b=MmzNbp++wNza27ctdQLLqrbr070EwEsA68FErbYt9pXcWuV/40LvGqgr/h53l2qCvi
         0gjOxvnnkQeULOA/8abqsLbXqGJFcY4j3WiDOhVr9Cqn2GnOikq6Oy10PEcYqs7fbl/J
         KfHL0PNMZn2F+HtqLJIz6ei7aNF53jusSnYBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=EWGuNWBIhypYPfhEwftufgfwqDqQ723njHLWk1GFVNA=;
        b=5v3tYWuEtUk3K0O96EP6f28SXa6u/iFGgbAQWNBM7P8zgGJ91efBEJ8+tAT7F2HpJ6
         EotvxVB3e3p6BD4XiRPQzlEaekCIjGCsYTTt26LtvPxSG+kd2Gj93b+Tm5N4IdHf2Vnr
         3Efg+3k60Eo6jj6M30r7fkg55LKfY1EP7lZulbwneNKjrPrlaTwJRuIobntDzcLWWXxq
         HRHgEK57WV/9S1TE9erOaO9nuvfHCqcFiKyD0nTjWbMYBzxaPJy32755Tg+YwYEzQM3U
         949Ngh920sJ/Y5Ks2sRRoV7Xyt4MHL8Jwa5zvIzTYW0QpybMCdGH4E0Qa6wscCL2QpDo
         h06Q==
X-Gm-Message-State: AOAM531qvShz8jDRTbOrmRDYAV4IYJcms9FKmVlCZ4qXPldzYCXRjQYh
        g06gxN2rG3Qzo2E/xduRZvpV21ktfcyRZQwxOgoRtg==
X-Google-Smtp-Source: ABdhPJwh99/Sh85MxoTTnuIvD5jp6hvye9B7r5N4NVAEnB3jm3m/LIvK9076YdNwy13oqDkW7nn0cj9KPHILd7ZjSOU=
X-Received: by 2002:a9d:6e16:: with SMTP id e22mr89272otr.77.1635368544206;
 Wed, 27 Oct 2021 14:02:24 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Oct 2021 14:02:23 -0700
MIME-Version: 1.0
In-Reply-To: <1635250764-13994-4-git-send-email-srivasam@codeaurora.org>
References: <1635250764-13994-1-git-send-email-srivasam@codeaurora.org> <1635250764-13994-4-git-send-email-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 27 Oct 2021 14:02:23 -0700
Message-ID: <CAE-0n53SMuHkWzNfBUw2Dym5hBGha1rWF-F3W5XpQvuWaULyAg@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] soundwire: qcom: Add compatible name for v1.6.0
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-10-26 05:19:24)
> Update compatible string and master data information in soundwire driver
> to support v1.6.0 in lpass sc7280 based platform.
>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> Co-developed-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> Signed-off-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> ---
>  drivers/soundwire/qcom.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
> index 2492190..2b39f4c 100644
> --- a/drivers/soundwire/qcom.c
> +++ b/drivers/soundwire/qcom.c
> @@ -173,6 +173,11 @@ static struct qcom_swrm_data swrm_v1_5_data = {
>         .default_cols = 16,
>  };
>
> +static struct qcom_swrm_data swrm_v1_6_data = {

const?

> +       .default_rows = 50,
> +       .default_cols = 16,
> +};
> +
>  #define to_qcom_sdw(b) container_of(b, struct qcom_swrm_ctrl, bus)
>
>  static int qcom_swrm_ahb_reg_read(struct qcom_swrm_ctrl *ctrl, int reg,
