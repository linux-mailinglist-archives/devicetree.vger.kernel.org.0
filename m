Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 710E2531389
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 18:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238399AbiEWQLp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 12:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238435AbiEWQLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 12:11:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A27D82C665
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:11:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 349A4613F9
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 16:11:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95E23C36AE3
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 16:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1653322302;
        bh=WC5Erb03j6UTbN29e97wjRY6NpeuUThx3bQ2cMRWNMU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=FeqOyRJcKO+yALB5u5JJowHz0KJ2MlfK11kTCrxbAZYQv8r1deeKtk0v60UGH+P0m
         +JAy9LlJ+C04P5tGNWAV4SKmmbvEGJDEtW6zqLP5EMkcQundAdFbUDQcMWjPd8xFl6
         z2OSbzElvzZeTe5UeoensH74Ga3DlHy51s/8uzr3KZZatzp/0g+UQTmmY4dnNpnMId
         OzGYKLazTMLwHCCPO2t/y0rLWeYIQdfU73Xpd9yy4Ub8ajmKPkpslJk3amJLR5H4dM
         JXQPwWcAkLincl/fALUd2tGBlI4Nn6EqvYDiu4bTEbq/1F9iKZtzSal7iVP4da4m9x
         h2OAzf0gYof3g==
Received: by mail-ed1-f52.google.com with SMTP id h11so18611002eda.8
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 09:11:42 -0700 (PDT)
X-Gm-Message-State: AOAM5333HbMgfT2waHXqrvOlr5H9JNCT37GKMO4DxG6U6SW/IVi5+Pbm
        VuUOkgn0k/vsBboTGDD8lS8RAQBcR+P8SGZYKg==
X-Google-Smtp-Source: ABdhPJxaqem0pOSf+wMPVCOReFJuCJuTGy44os5M+lA3eVu+X80wah+G3KiFr30CFIsFBZK1ALbv9m8mmHfkBKzbTVU=
X-Received: by 2002:a05:6402:5388:b0:42a:ba77:7669 with SMTP id
 ew8-20020a056402538800b0042aba777669mr24478979edb.89.1653322300901; Mon, 23
 May 2022 09:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 23 May 2022 11:11:28 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+RWAs9W-a0xVYJxQMamkkm0uWqs22HSSoZO0NNY7QKxw@mail.gmail.com>
Message-ID: <CAL_Jsq+RWAs9W-a0xVYJxQMamkkm0uWqs22HSSoZO0NNY7QKxw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 3:05 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The DT example incorrectly names the ISP power domain "isp1" instead of
> "isp". This causes a validation failure:
>
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>         From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>
> Fix it.
>
> Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Shawn, this fixes an issue in linux-next, could you please apply the
> patch to your imx/bindings branch for v5.19 ?

Ping! Still failing in linux-next.

Rob

> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index 21d3ee486295..b246d8386ba4 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -88,7 +88,7 @@ examples:
>                          <&mediamix_pd>, <&ispdwp_pd>, <&ispdwp_pd>,
>                          <&mipi_phy2_pd>;
>          power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
> -                             "mipi-csi2", "lcdif2", "isp1", "dwe", "mipi-dsi2";
> +                             "mipi-csi2", "lcdif2", "isp", "dwe", "mipi-dsi2";
>          clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
>                   <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
>                   <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
> --
> Regards,
>
> Laurent Pinchart
>
