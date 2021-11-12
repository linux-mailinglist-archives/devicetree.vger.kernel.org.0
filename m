Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C98C544E20E
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 07:55:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232430AbhKLG54 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 01:57:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230259AbhKLG5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 01:57:55 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0CDC061767
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 22:55:04 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id f8so34022919edy.4
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 22:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=To+Hrt/YJtzMS8Ax7Q4RYEa2brHHp6skSFCVWG9Je5Y=;
        b=RqrRoXnN1GSAvBKjU1L/2WILu4krk8kArFFAx9wej/qkCuZJI8t7xhp5ecuBqdsBl/
         1y94HtlpGP4Wy+vcVo8lhpBOfhraclDkwrVe+24ZUZ5dzcF+wFgwDWv/zmfCTiWaCcvi
         1D2/bJoLnCOS14uoQx915z9vcr1LaoJsLRPX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=To+Hrt/YJtzMS8Ax7Q4RYEa2brHHp6skSFCVWG9Je5Y=;
        b=36BJq/i8So5GjviYxPHi5obuq+36inJHGoFMEp9m2+1cqZ27AH9OIkjABOPDKP6pCP
         M8v2XQ1lYxKri1A8GAlp+RALnhWF0lpFMxxT3I2EkTwaI5sZ4QN46VBmf1rrdwxoyRm3
         9iBhnnaFKSol2Hc50E/TNKDJAZPtNHIpHTaOFVgnV8Mb8p0N0SlgwRgg80wsuy6/fpeo
         Rz+JRkb87E7mbpnm++GHOj00Vc54rjXL4OF/sk6cG6zoOaZkV5OMKjBYZ4tPfVCfxy2p
         +uqCIpEcjKrS7dkwb03pI5V+6eQFFvc0PtYY/DlzKRG0AEcGsR7OKOLIUJbkB9d/cmb/
         fAzg==
X-Gm-Message-State: AOAM530Ty7bSFIeMttidTsypzNMl5Y8NSVlwTyox9/7Fes0z4eMWfWKc
        MLNRFJN6OuOB3zaAO/hLhGNRLZWFobGJAozdZHz2Wg==
X-Google-Smtp-Source: ABdhPJwOEpGKQBzUUa60Ozn0KGjXRmmDQYViyaSrxV7MX+UL5Qisz1sqfBDKiQWOmmy2d7iBt5UJqG1CoGHWBd3kqOc=
X-Received: by 2002:aa7:d748:: with SMTP id a8mr4764040eds.21.1636700102636;
 Thu, 11 Nov 2021 22:55:02 -0800 (PST)
MIME-Version: 1.0
References: <20211106155427.753197-1-aford173@gmail.com>
In-Reply-To: <20211106155427.753197-1-aford173@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 12 Nov 2021 12:24:51 +0530
Message-ID: <CAMty3ZDi+FMLBooi2jt=dPKVC8PhaBWLgtjoe3m=GHCNiqDqQw@mail.gmail.com>
Subject: Re: [PATCH V2 1/5] soc: imx: imx8m-blk-ctrl: Fix imx8mm mipi reset
To:     Adam Ford <aford173@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, linux-media@vger.kernel.org,
        laurent.pinchart@ideasonboard.com, aford@beaconembedded.com,
        cstevens@beaconembedded.com, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marek Vasut <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 6, 2021 at 9:24 PM Adam Ford <aford173@gmail.com> wrote:
>
> Most of the blk-ctrl reset bits are found in one register, however
> there are two bits in offset 8 for pulling the MIPI DPHY out of reset
> and these need to be set when IMX8MM_DISPBLK_PD_MIPI_CSI is brought
> out of reset or the MIPI_CSI hangs.
>
> Fixes: 926e57c065df ("soc: imx: imx8m-blk-ctrl: add DISP blk-ctrl")
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
>
> V2:  Make a note that the extra register is only for Mini/Nano DISPLAY_BLK_CTRL
>      Rename the new register to mipi_phy_rst_mask
>      Encapsulate the edits to this register with an if-statement

This is DPHY reset mask, not sure we can handle this via blk-ctrl.
Marek has similar patch to support this [1]. we need to phandle the
phy in host node in order to work this.

However this current patch change seems directly handling dphy reset
which indeed fine me as well.

>
>  drivers/soc/imx/imx8m-blk-ctrl.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
> index 519b3651d1d9..581eb4bc7f7d 100644
> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
> @@ -17,6 +17,7 @@
>
>  #define BLK_SFT_RSTN   0x0
>  #define BLK_CLK_EN     0x4
> +#define BLK_MIPI_RESET_DIV     0x8 /* Mini/Nano DISPLAY_BLK_CTRL only */
>
>  struct imx8m_blk_ctrl_domain;
>
> @@ -36,6 +37,15 @@ struct imx8m_blk_ctrl_domain_data {
>         const char *gpc_name;
>         u32 rst_mask;
>         u32 clk_mask;
> +
> +       /*
> +        * i.MX8M Mini and Nano have a third DISPLAY_BLK_CTRL register
> +        * which is used to control the reset for the MIPI Phy.
> +        * Since it's only present in certain circumstances,
> +        * an if-statement should be used before setting and clearing this
> +        * register.
> +        */
> +       u32 mipi_phy_rst_mask;

May be dphy_rst_mask (above comment may not be required, as it
understand directly with commit message).

>  };
>
>  #define DOMAIN_MAX_CLKS 3
> @@ -78,6 +88,8 @@ static int imx8m_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>
>         /* put devices into reset */
>         regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +       if (data->mipi_phy_rst_mask)
> +               regmap_clear_bits(bc->regmap, BLK_MIPI_RESET_DIV, data->mipi_phy_rst_mask);
>
>         /* enable upstream and blk-ctrl clocks to allow reset to propagate */
>         ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);
> @@ -99,6 +111,8 @@ static int imx8m_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>
>         /* release reset */
>         regmap_set_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
> +       if (data->mipi_phy_rst_mask)
> +               regmap_set_bits(bc->regmap, BLK_MIPI_RESET_DIV, data->mipi_phy_rst_mask);
>
>         /* disable upstream clocks */
>         clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> @@ -120,6 +134,9 @@ static int imx8m_blk_ctrl_power_off(struct generic_pm_domain *genpd)
>         struct imx8m_blk_ctrl *bc = domain->bc;
>
>         /* put devices into reset and disable clocks */
> +       if (data->mipi_phy_rst_mask)
> +               regmap_clear_bits(bc->regmap, BLK_MIPI_RESET_DIV, data->mipi_phy_rst_mask);
> +
>         regmap_clear_bits(bc->regmap, BLK_SFT_RSTN, data->rst_mask);
>         regmap_clear_bits(bc->regmap, BLK_CLK_EN, data->clk_mask);
>
> @@ -488,6 +505,7 @@ static const struct imx8m_blk_ctrl_domain_data imx8mm_disp_blk_ctl_domain_data[]
>                 .gpc_name = "mipi-csi",
>                 .rst_mask = BIT(3) | BIT(4),
>                 .clk_mask = BIT(10) | BIT(11),
> +               .mipi_phy_rst_mask = BIT(16) | BIT(17),

DPHY has BIT(17) for Master reset and BIT(16) for Slave reset. I think
we just need master reset to enable. I've tested only BIT(17) on
mipi-dsi gpc and it is working.

Jagan.
