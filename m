Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A6F64BA49A
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 16:40:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242623AbiBQPkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 10:40:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:32824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242633AbiBQPkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 10:40:23 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D316D2B2E39
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:40:07 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id r20so28534ljj.1
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0QQBoXxNzNE8ywxlHFFfAWGomixHy2u6zilUaFbuhmE=;
        b=RrJjmHuXVzVPtammx2PWFkPzYxa0sp+CIs+a7p1reY0HA9oZgI6A2REIXw9b8X87aw
         7pc9oqYfh2pWUeDGPUC+sYPFiWy5TmNtt0N8Yk45gdx5bEQCumDai+PpoJesoGcTvHkK
         3DRBdvC49FrGQhrxOH/yH4nzcpoghoBj2cAkf/i7i2WMNp/JuYdHrXjA+/5A//mRpxy8
         kkUCQyA6YybDATTmZeDwQT8wppphoA7p08DHO0KUt+BMuEQXgDCFQhQosH1H2P+Ws4dH
         xyth298pl5lKvbRhwd5OOQ3S2/WTqa0/tqOiawymfYhfgUwa3YDahOFTXQbXp+jgr+f4
         kkVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0QQBoXxNzNE8ywxlHFFfAWGomixHy2u6zilUaFbuhmE=;
        b=idBybPLOI1aTRa0CZcdXDkER7EKkZbliXitY61+u1nE8XHdBiZN8rTtKFY9jGWNIGK
         ZK8pNqUGpjfnZ8ScXCrLl6rFt8UiobekTXKHc0X/j5XfYhZVnlmQ0sCUziOALU13ujRl
         Ucp2o0U6Ra9j84qfLu8GvDQAFLpx/XrDR2eHKXimYFBAXb/Dn1IXbebTZ4OqurESHDQf
         3o9F+ScKO5tii7WisTxmNbJ+j+hysMbduwbbR5soW72H7pYPvFPkxMx4T5JHzWWOc0u4
         Jwo0h1HCoVpFicJYCFKRIKOR5oN+igayW0wmohogFt8BRveOK9kL7+c3kFAbJbOYlH7R
         aPOA==
X-Gm-Message-State: AOAM531CDTOA5Hg5qFXXRyl97bh5D9mnhQ4br8R3aCzfNnJDoSmUD9Ks
        VnnKD7Krlualg9F02u1Eigqujm1S5AcJ9KE+oadQhQ==
X-Google-Smtp-Source: ABdhPJz/2VHYH9XfV+9CZAADf8Qh3/CV94aravtyvXjpcx8p81PXfewRvi4Izfd3VQLRzuBPEmKSwtVVgXuWCGv7jDM=
X-Received: by 2002:a2e:8603:0:b0:246:24c:b79c with SMTP id
 a3-20020a2e8603000000b00246024cb79cmr2624384lji.367.1645112406253; Thu, 17
 Feb 2022 07:40:06 -0800 (PST)
MIME-Version: 1.0
References: <20220215081502.789067-1-peng.fan@oss.nxp.com>
In-Reply-To: <20220215081502.789067-1-peng.fan@oss.nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 17 Feb 2022 16:39:30 +0100
Message-ID: <CAPDyKFpkBGyxNxi3uYyYRrgh=itNf69-Xe9gwJktoE0p9yj74A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: imx-esdhc: Add imx93 compatible string
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     robh+dt@kernel.org, shawnguo@kernel.org, Kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Feb 2022 at 09:15, Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:
>
> From: Peng Fan <peng.fan@nxp.com>
>
> Add i.MX93 compatible string, it uses two compatible strings.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> index 17acbc665f5a..7dbbcae9485c 100644
> --- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.yaml
> @@ -47,6 +47,7 @@ properties:
>            - const: fsl,imx7d-usdhc
>        - items:
>            - enum:
> +              - fsl,imx93-usdhc
>                - fsl,imx8ulp-usdhc
>            - const: fsl,imx8mm-usdhc
>
> --
> 2.25.1
>
