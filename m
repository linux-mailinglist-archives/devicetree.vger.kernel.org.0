Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5E9D33A17C
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 22:40:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234758AbhCMVkS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 16:40:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234757AbhCMVkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 16:40:09 -0500
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D40C061762
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:40:08 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id s7so13527590plg.5
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 13:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=yZ7XlI29/00jhu+qIXXcNDVe1mGXP2PzVNn72kcLaUw=;
        b=KqXhJRxO32dPbBZcq63P8pgHn0ofIsUKMoYTinFYNN9rLSvhb59Bu5NWm0BgpYbki1
         fnkOIVg1fN5DBhAU6FUNWhKns38qaeVQuOo6f8Q3T74pxrgPTKv+GGFpIooIcfY9yXgf
         YHEeti2Phz8sMSkmL9BY69vt3/vS+lwHMGoco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=yZ7XlI29/00jhu+qIXXcNDVe1mGXP2PzVNn72kcLaUw=;
        b=GLb2GHE5QnEspR3lWbNWkxFLhFAoTSFnwgE3EU/IXJ28ErNISLkfIiG/p3cONaYJsV
         eGrWqX/lOotyNfqrBrAy7v6ZwKPUxZ0BLwEFR6HNOWjEMT+dzpIOGgC4YhWGzCZmRz7G
         Rc0xMJvqEEeWecBfJOX9BbBtnj+V4Yw776Fyfw4pW1ywCic7o//6NuWVn15JTUWxuzSN
         nWEn87DmMFXgVRFLYJL+MIcsD6142O8bVka9wmklZ79t91hC6/Som0zUdSWrmGnliS64
         +8Rff6G122SYtl/OPXLRbc3hTGlpahI/f/5bH9n8aZlqZghYQR7+X+/UrRPzb8Y3b1Y7
         5Mcw==
X-Gm-Message-State: AOAM531XVf4XnM1Pbh2oQ3pcEhwBk9iwP5K/qBqrrXR9vIs3gAWEkSPI
        K3K3Ofw+u14zGojixRQjMAttNA==
X-Google-Smtp-Source: ABdhPJzoo7LZHkaAwEeu9mYCXdf5W1xY5KtuMYVIOfJ9OLUnm1pRFfInDmwe/WsmIHqjMKZ1bulgnQ==
X-Received: by 2002:a17:90a:a898:: with SMTP id h24mr5347655pjq.9.1615671608562;
        Sat, 13 Mar 2021 13:40:08 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:e859:c7d5:7d7b:5ed8])
        by smtp.gmail.com with ESMTPSA id 205sm4491586pfc.201.2021.03.13.13.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 13:40:08 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1615269111-25559-6-git-send-email-sibis@codeaurora.org>
References: <1615269111-25559-1-git-send-email-sibis@codeaurora.org> <1615269111-25559-6-git-send-email-sibis@codeaurora.org>
Subject: Re: [PATCH 5/6] reset: qcom: Add PDC Global reset signals for WPSS
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     agross@kernel.org, mani@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        p.zabel@pengutronix.de, robh+dt@kernel.org
Date:   Sat, 13 Mar 2021 13:40:06 -0800
Message-ID: <161567160672.1478170.9206499753037545854@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-03-08 21:51:50)
> Add PDC Global reset signals for Wireless Processor Subsystem (WPSS)
> on SC7280 SoCs.
>=20
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  drivers/reset/reset-qcom-pdc.c | 62 ++++++++++++++++++++++++++++++++++--=
------
>  1 file changed, 51 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/reset/reset-qcom-pdc.c b/drivers/reset/reset-qcom-pd=
c.c
> index ab74bccd4a5b..bb7113ae6232 100644
> --- a/drivers/reset/reset-qcom-pdc.c
> +++ b/drivers/reset/reset-qcom-pdc.c
> @@ -11,18 +11,26 @@
> =20
>  #include <dt-bindings/reset/qcom,sdm845-pdc.h>
> =20
> -#define RPMH_PDC_SYNC_RESET    0x100
> +#define RPMH_SDM845_PDC_SYNC_RESET     0x100
> +#define RPMH_SC7280_PDC_SYNC_RESET     0x1000
> =20
>  struct qcom_pdc_reset_map {
>         u8 bit;
>  };
> =20
> +struct qcom_pdc_reset_desc {
> +       const struct qcom_pdc_reset_map *resets;
> +       unsigned int offset;
> +       size_t num_resets;

Please put num_resets next to resets and move offset before or after the
block. That way we know that resets and num_resets are related because
they're right next to each other.

> +};
> +
>  struct qcom_pdc_reset_data {
>         struct reset_controller_dev rcdev;
>         struct regmap *regmap;
> +       const struct qcom_pdc_reset_desc *desc;
>  };
> =20
> -static const struct regmap_config sdm845_pdc_regmap_config =3D {
> +static const struct regmap_config pdc_regmap_config =3D {
>         .name           =3D "pdc-reset",
>         .reg_bits       =3D 32,
>         .reg_stride     =3D 4,
