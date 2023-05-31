Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F4F77176F8
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 08:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234083AbjEaGhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 02:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234223AbjEaGhR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 02:37:17 -0400
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715AD122;
        Tue, 30 May 2023 23:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1685515036; x=1717051036;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/XsjYBIRAyqv0X1TCrdxbKHYdMYqZYEh1vg4pZv1/f8=;
  b=HcIAls0F6ub0yI1sxpvNyf6TcnIYmgeZcu2lY2TotH5Whpqf4gq0Kmly
   k4pXjCch9cPr5kd79hn+AE57HnA2LsbqtFtmhHOTtYEfqtkbsY2vQzsUL
   C5IN6xMOKmPR8+e+ukaR+YGsc0DT946QESuc5PLBQvKIHmzolSq/efkKW
   mdSh+0om/43nxW2V6ekoC28dIMjyeRpm+/h9Le3Djk8eR2Iwrawd7FQRF
   ZqcYTPb1K2EGZOgFGm26QzCl3kQMfCZHDjfsMgv9G/EYORc+4qE2xu/hH
   ypO67snjWXK1Hb6R30F+R+WObQJ4eiN3RbVkpmwFbzeK1loIdTkCXCYHK
   A==;
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; 
   d="scan'208";a="213869825"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 30 May 2023 23:37:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 30 May 2023 23:37:15 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.21 via Frontend
 Transport; Tue, 30 May 2023 23:37:14 -0700
Date:   Wed, 31 May 2023 08:37:14 +0200
From:   Horatiu Vultur <horatiu.vultur@microchip.com>
To:     Atsushi Nemoto <atsushi.nemoto@sord.co.jp>
CC:     <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Michael Hennerich <michael.hennerich@analog.com>,
        Alexandru Tachici <alexandru.tachici@analog.com>
Subject: Re: [PATCH net-next 2/2] net: phy: adin: add support for inverting
 the link status output signal
Message-ID: <20230531063714.7znsc7cepsk3yu44@soft-dev3-1>
References: <7eedd83d-7d87-ba3e-7a38-990f05a44579@sord.co.jp>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <7eedd83d-7d87-ba3e-7a38-990f05a44579@sord.co.jp>
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 05/30/2023 14:36, Atsushi Nemoto wrote:

Hi Atsushi,

When you create patch series that contains more than 1 patch, you need to
create also a cover letter.
Also it seems that not all the maintainers were CCed. To find out which
ones are the maintainers please use: ./scripts/get_maintainer.pl

Other than that, it looks OK.

 
> The ADIN1200/ADIN1300 supports inverting the link status output signal
> on the LINK_ST pin.
> 
> Add support for selecting this feature via device-tree properties.
> 
> Signed-off-by: Atsushi Nemoto <atsushi.nemoto@sord.co.jp>
> ---
>  drivers/net/phy/adin.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/phy/adin.c b/drivers/net/phy/adin.c
> index 134637584a83..331f9574328f 100644
> --- a/drivers/net/phy/adin.c
> +++ b/drivers/net/phy/adin.c
> @@ -140,6 +140,9 @@
>  #define ADIN1300_RMII_20_BITS                  0x0004
>  #define ADIN1300_RMII_24_BITS                  0x0005
> 
> +#define ADIN1300_GE_LNK_STAT_INV_REG           0xff3c
> +#define   ADIN1300_GE_LNK_STAT_INV_EN          BIT(0)
> +
>  /**
>   * struct adin_cfg_reg_map - map a config value to aregister value
>   * @cfg:       value in device configuration
> @@ -495,6 +498,15 @@ static int adin_config_init(struct phy_device *phydev)
>         if (rc < 0)
>                 return rc;
> 
> +       if (device_property_read_bool(&phydev->mdio.dev,
> +                                     "adi,link-stat-inv")) {
> +               rc = phy_set_bits_mmd(phydev, MDIO_MMD_VEND1,
> +                                     ADIN1300_GE_LNK_STAT_INV_REG,
> +                                     ADIN1300_GE_LNK_STAT_INV_EN);
> +               if (rc < 0)
> +                       return rc;
> +       }
> +
>         phydev_dbg(phydev, "PHY is using mode '%s'\n",
>                    phy_modes(phydev->interface));
> 
> --
> 2.30.2
> 
> 
> 

-- 
/Horatiu
