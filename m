Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2689E407DCB
	for <lists+devicetree@lfdr.de>; Sun, 12 Sep 2021 16:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbhILOmG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Sep 2021 10:42:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbhILOmG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Sep 2021 10:42:06 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A22C061574
        for <devicetree@vger.kernel.org>; Sun, 12 Sep 2021 07:40:51 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id g8so10202404edt.7
        for <devicetree@vger.kernel.org>; Sun, 12 Sep 2021 07:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M7XAduPSau7jNQ1Bw+pmFFUarTdMQmGShJ3P2Wf2mk0=;
        b=nPcDSOXwJfKBIwxe8NBTL4d8RsRbV9lf1sRbeE5xGrNJB8ShNcnhoyGkAl/f4A3ph/
         r0s/XQthLKYzVH7MKlRO133IBagMeQqaKeMdmX/pqVzmj6iQcKG1A93PPK8knHuJuzge
         o4PfWkKtJPZXrvNK65eLT/opBJEtvtbaQZOo4jDfBF9bsUONsPGMWkKxblLLsDbCYihj
         7IjC4MnkpGuw5b4rljxWX9c1I/jpoR3EDB9+TBTQGgRhs4OaB+9czqgyslHzFO7iiaef
         Uc3sNR5DGkqLx/xZ9/Ae3PIm3CvnF020hX24ZJWNlYf7oNJCE/778YwFFS0gsC/dl2hG
         Hciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M7XAduPSau7jNQ1Bw+pmFFUarTdMQmGShJ3P2Wf2mk0=;
        b=XxOY+QS5oJEcN2yV6uVeISkq2wzXoMkBRBwAXiIBNyyu8L91i9k8Z5xtWTD4znAFTW
         Zmf0mVgvbNx3Xh/Z1JfuTrx73Jd0byYAVQC5e5TH5PL+3S4AJEk/8IrGLUP8xcaV6hqi
         IuxftfQ7fy1cB9qplxIyJD8qLE/tzTtEppsGnElkRyb+x3MDvQsqhr3ZmmJiAoIeE3mP
         7JgTIMdNFVbrG8jx2bnjbqhgW+3PnWssAvT09XLBa2JDLTHoBm88lXxfcwOupU3vsutH
         Qq7RxQH52aZlXMjEWVJNbu37YhmyeNsbDfxlsjjpFqMx9h3NxAsRN3gH+ztUXNtH4ctx
         1prA==
X-Gm-Message-State: AOAM533xyv/BXeB7LkqPOrlHDbBHxNWBmmk3potXG4ZN7/biShGBrnyG
        y6Xl5J8QgSkGAQA6T+wPgtTpOQfuYh46Qq2diFou5EaU3el+lw==
X-Google-Smtp-Source: ABdhPJx6XCXRe3c6Fkp8vsAG28brDO7fcRgiQMj6a1y97qUOgoseDUl2JXCpf5sqdQ5pGv/Zm9IZJ9jJA82riFC/OlU=
X-Received: by 2002:a50:9e02:: with SMTP id z2mr8117088ede.249.1631457650124;
 Sun, 12 Sep 2021 07:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210910202640.980366-1-l.stach@pengutronix.de> <20210910202640.980366-14-l.stach@pengutronix.de>
In-Reply-To: <20210910202640.980366-14-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sun, 12 Sep 2021 09:40:39 -0500
Message-ID: <CAHCN7xKfuewfxbCkOAtFvD+SLk+ej71iTrVa2ws8ZAAhrp0btA@mail.gmail.com>
Subject: Re: [PATCH v4 13/18] soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 10, 2021 at 3:26 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> This adds the description for the i.MX8MM disp blk-ctrl.
>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/soc/imx/imx8m-blk-ctrl.c | 70 ++++++++++++++++++++++++++++++++
>  1 file changed, 70 insertions(+)
>
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> index f2d74669d683..225c15f35dad 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -431,11 +431,81 @@ static const struct imx8m_blk_ctrl_data imx8m_vpu_blk_ctl_dev_data = {
>         .num_domains = ARRAY_SIZE(imx8m_vpu_blk_ctl_domain_data),
>  };
>
> +static int imx8mm_disp_power_notifier(struct notifier_block *nb,
> +                                     unsigned long action, void *data)
> +{
> +       struct imx8m_blk_ctrl *bc = container_of(nb, struct imx8m_blk_ctrl,
> +                                                power_nb);
> +
> +       if (action != GENPD_NOTIFY_ON && action != GENPD_NOTIFY_PRE_OFF)
> +               return NOTIFY_OK;
> +
> +       /* Enable bus clock and deassert bus reset */
> +       regmap_set_bits(bc->regmap, BLK_CLK_EN, BIT(12));
> +       regmap_set_bits(bc->regmap, BLK_SFT_RSTN, BIT(6));
> +
> +       /*
> +        * On power up we have no software backchannel to the GPC to
> +        * wait for the ADB handshake to happen, so we just delay for a
> +        * bit. On power down the GPC driver waits for the handshake.
> +        */
> +       if (action == GENPD_NOTIFY_ON)
> +               udelay(5);
> +
> +
> +       return NOTIFY_OK;
> +}
> +
> +static const struct imx8m_blk_ctrl_domain_data imx8m_disp_blk_ctl_domain_data[] = {

Since the 8MQ, 8MM, 8MN, and 8MP have different blk_ctl structures,
shouldn't this be imx8mm_disp_blk_ctl_domain_data?

> +       [IMX8MM_DISPBLK_PD_CSI_BRIDGE] = {
> +               .name = "dispblk-csi-bridge",
> +               .clk_names = (const char *[]){ "csi-bridge-axi", "csi-bridge-apb",
> +                                              "csi-bridge-core", },
> +               .num_clks = 3,
> +               .gpc_name = "csi-bridge",
> +               .rst_mask = BIT(0) | BIT(1) | BIT(2),
> +               .clk_mask = BIT(0) | BIT(1) | BIT(2) | BIT(3) | BIT(4) | BIT(5),
> +       },
> +       [IMX8MM_DISPBLK_PD_LCDIF] = {
> +               .name = "dispblk-lcdif",
> +               .clk_names = (const char *[]){ "lcdif-axi", "lcdif-apb", "lcdif-pix", },
> +               .num_clks = 3,
> +               .gpc_name = "lcdif",
> +               .clk_mask = BIT(6) | BIT(7),
> +       },
> +       [IMX8MM_DISPBLK_PD_MIPI_DSI] = {
> +               .name = "dispblk-mipi-dsi",
> +               .clk_names = (const char *[]){ "dsi-pclk", "dsi-ref", },
> +               .num_clks = 2,
> +               .gpc_name = "mipi-dsi",
> +               .rst_mask = BIT(5),
> +               .clk_mask = BIT(8) | BIT(9),
> +       },
> +       [IMX8MM_DISPBLK_PD_MIPI_CSI] = {
> +               .name = "dispblk-mipi-csi",
> +               .clk_names = (const char *[]){ "csi-aclk", "csi-pclk" },
> +               .num_clks = 2,
> +               .gpc_name = "mipi-csi",
> +               .rst_mask = BIT(3) | BIT(4),
> +               .clk_mask = BIT(10) | BIT(11),
> +       },
> +};
> +
> +static const struct imx8m_blk_ctrl_data imx8m_disp_blk_ctl_dev_data = {

Same here.

> +       .max_reg = 0x2c,
> +       .power_notifier_fn = imx8mm_disp_power_notifier,
> +       .domains = imx8m_disp_blk_ctl_domain_data,
> +       .num_domains = ARRAY_SIZE(imx8m_disp_blk_ctl_domain_data),
> +};
> +
>  static const struct of_device_id imx8m_blk_ctrl_of_match[] = {
>         {
>                 .compatible = "fsl,imx8mm-vpu-blk-ctrl",
>                 .data = &imx8m_vpu_blk_ctl_dev_data
>         }, {
> +               .compatible = "fsl,imx8mm-disp-blk-ctrl",
> +               .data = &imx8m_disp_blk_ctl_dev_data
> +       } ,{
>                 /* Sentinel */
>         }
>  };
> --
> 2.30.2
>
