Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3E5B6C7F5A
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 15:00:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232110AbjCXOA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 10:00:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbjCXOAJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 10:00:09 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5391F4B0
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 06:59:43 -0700 (PDT)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E42C844541
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 13:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1679666378;
        bh=0CzCezUBFius1/QvCjfVKLrX7WEPXSwgwzTCxhDCoiA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=OmUDwCnLqdBtqb3GFy9r6zh6719eF7W6DROxdNM7xgIYzyhAOmAeZzJ1bpxU3/q9C
         0jfRabi9cOoeQvRqXIjTTWFf+cCqoZkxtwH4VnaXcNF8eFQiM/c5PKqSc13jabGdpJ
         VfuPS/FOzJ3APRYZfOm0oxiTdBSYW+YPysQOtv0a+YnbfzR2lglz8QdkrxtxWqkpLh
         jEjLbhBF2HkuJ9CQdD6DXjrNW6nQ9Ue6vNzbmljfxtyuLR2RtV8tNNBuSkYjRDd125
         xm5VgwJPETDQ5o2xnm60EYEfNWgJRMT5YQGBvxnS/zY+4Q59NaD/qqUJKWI7nXIMJa
         k7V0K1R74WqeA==
Received: by mail-qv1-f70.google.com with SMTP id f3-20020a0cc303000000b005c9966620daso1052939qvi.4
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 06:59:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679666378;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0CzCezUBFius1/QvCjfVKLrX7WEPXSwgwzTCxhDCoiA=;
        b=1CL0M96hJUnYeHdL0DoYEr59c47BoHK1cpYQpRp4HQD51U72Q7TytmhV/Xi/m6CEJM
         Cf1xEUfdyqWJFk680yC/vAIzhBVCifU0DZACjLnkmx0U0OTW69xJJE7k0Ujau58JOrGq
         YZPEyYVh2/5YnVFRg4kTWIU7jLrn2Zg60d3AfdV6x62wYt6TiQQN/Hz8VDZXCiSsxEQv
         SSOXH+eev+CxBhXvBZh9kdG9/xqQemBaNN01lZYBV80oh950dO5JpenFaY/yhDdCLsfx
         joeHoOJsSK6iAQpfeajFqWdRwmpjXAQJSdXxAdoiMRTA4WTILZxMo8n1V6t2IK0Pn6UR
         a/7g==
X-Gm-Message-State: AO0yUKUj02uELNe8qiPD5QRx1zasLp60ER4WmYa75DHyxI2h8OovFP1/
        c+aV7idwMWhkkcPch4WpGsxRYpT85tr0DWm9fIfzjk+K/mTyP+hGyahjHOqKe9x7HuHL9l0IfTR
        ZkxiJLsrEhrej6Lg2z63uYid8DzZMGto0/UaodHyLdpruLyL3ds1D0P0=
X-Received: by 2002:a37:a8cf:0:b0:745:8c04:2777 with SMTP id r198-20020a37a8cf000000b007458c042777mr503404qke.13.1679666377806;
        Fri, 24 Mar 2023 06:59:37 -0700 (PDT)
X-Google-Smtp-Source: AK7set+fYwdhVgyb9GNd32TrH8t4Pv6a28VQzyoEpE+xeNGm/T2XLuOweT5dKvtRVRvgDmnoGhBHVQhMCfEkxFGjGIU=
X-Received: by 2002:a37:a8cf:0:b0:745:8c04:2777 with SMTP id
 r198-20020a37a8cf000000b007458c042777mr503392qke.13.1679666377512; Fri, 24
 Mar 2023 06:59:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230324022819.2324-1-samin.guo@starfivetech.com> <20230324022819.2324-7-samin.guo@starfivetech.com>
In-Reply-To: <20230324022819.2324-7-samin.guo@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 24 Mar 2023 14:59:21 +0100
Message-ID: <CAJM55Z8_W9yOcL+yGAwB-qanD_-bbf16VjCP66P_xDFW6-c+3A@mail.gmail.com>
Subject: Re: [PATCH v8 6/6] net: stmmac: starfive_dmac: Add phy interface settings
To:     Samin Guo <samin.guo@starfivetech.com>
Cc:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, netdev@vger.kernel.org,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Jose Abreu <joabreu@synopsys.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Yanhong Wang <yanhong.wang@starfivetech.com>,
        Tommaso Merciai <tomm.merciai@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Mar 2023 at 03:30, Samin Guo <samin.guo@starfivetech.com> wrote:
>
> dwmac supports multiple modess. When working under rmii and rgmii,
> you need to set different phy interfaces.
>
> According to the dwmac document, when working in rmii, it needs to be
> set to 0x4, and rgmii needs to be set to 0x1.
>
> The phy interface needs to be set in syscon, the format is as follows:
> starfive,syscon: <&syscon, offset, shift>
>
> Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>
> Signed-off-by: Samin Guo <samin.guo@starfivetech.com>
> ---
>  .../ethernet/stmicro/stmmac/dwmac-starfive.c  | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> index ef5a769b1c75..84690c8f0250 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-starfive.c
> @@ -13,6 +13,10 @@
>
>  #include "stmmac_platform.h"
>
> +#define STARFIVE_DWMAC_PHY_INFT_RGMII  0x1
> +#define STARFIVE_DWMAC_PHY_INFT_RMII   0x4
> +#define STARFIVE_DWMAC_PHY_INFT_FIELD  0x7U
> +
>  struct starfive_dwmac {
>         struct device *dev;
>         struct clk *clk_tx;
> @@ -44,6 +48,43 @@ static void starfive_dwmac_fix_mac_speed(void *priv, unsigned int speed)
>                 dev_err(dwmac->dev, "failed to set tx rate %lu\n", rate);
>  }
>
> +static int starfive_dwmac_set_mode(struct plat_stmmacenet_data *plat_dat)
> +{
> +       struct starfive_dwmac *dwmac = plat_dat->bsp_priv;
> +       struct regmap *regmap;
> +       unsigned int args[2];
> +       unsigned int mode;
> +
> +       switch (plat_dat->interface) {
> +       case PHY_INTERFACE_MODE_RMII:
> +               mode = STARFIVE_DWMAC_PHY_INFT_RMII;
> +               break;
> +
> +       case PHY_INTERFACE_MODE_RGMII:
> +       case PHY_INTERFACE_MODE_RGMII_ID:
> +               mode = STARFIVE_DWMAC_PHY_INFT_RGMII;
> +               break;
> +
> +       default:
> +               dev_err(dwmac->dev, "unsupported interface %d\n",
> +                       plat_dat->interface);
> +               return -EINVAL;
> +       }
> +
> +       regmap = syscon_regmap_lookup_by_phandle_args(dwmac->dev->of_node,
> +                                                     "starfive,syscon",
> +                                                     2, args);
> +       if (IS_ERR(regmap)) {
> +               dev_err(dwmac->dev, "syscon regmap failed.\n");
> +               return -ENXIO;
> +       }
> +
> +       /* args[0]:offset  args[1]: shift */
> +       return regmap_update_bits(regmap, args[0],
> +                                 STARFIVE_DWMAC_PHY_INFT_FIELD << args[1],
> +                                 mode << args[1]);
> +}
> +
>  static int starfive_dwmac_probe(struct platform_device *pdev)
>  {
>         struct plat_stmmacenet_data *plat_dat;
> @@ -89,6 +130,12 @@ static int starfive_dwmac_probe(struct platform_device *pdev)
>         plat_dat->bsp_priv = dwmac;
>         plat_dat->dma_cfg->dche = true;
>
> +       err = starfive_dwmac_set_mode(plat_dat);
> +       if (err) {
> +               dev_err(&pdev->dev, "dwmac set mode failed.\n");
> +               return err;
> +       }

Usually it's better to keep all error messages at the same "level".
Like this you'll get two error messages if
syscon_regmap_lookup_by_phandle_args fails. So I'd suggest moving this
message into the starfive_dwmac_set_mode function and while you're at
it you can do

err = regmap_update_bits(...);
if (err)
  return dev_err_probe(dwmac->dev, err, "error setting phy mode\n");

Also the file is called dwmac-starfive.c, so I'd expect the patch
header to be "net: stmmac: dwmac-starfive: Add phy interface
settings".

/Emil

>         err = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
>         if (err) {
>                 stmmac_remove_config_dt(pdev, plat_dat);
> --
> 2.17.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
