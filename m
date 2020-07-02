Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5D88211B5B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 07:07:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726283AbgGBFHK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 01:07:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726273AbgGBFHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 01:07:09 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF22EC08C5DB
        for <devicetree@vger.kernel.org>; Wed,  1 Jul 2020 22:07:09 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id o3so5713062ilo.12
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2020 22:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qald6rTjM4Ozy8eAzbgJVI8/UFGWkxBCP1h2R/b2HEE=;
        b=criUw8gg4UsLv4wS6rOpUP57mfy4z/RM9vYloRYpnSo3OSFmJxYpVDBCZgRD07wZE/
         yRhAEuqYghRTI9LzdhTQUyYEfgqC3u4upk0J63naiTxemEG/hJ2c1zFXXstvC1Eqkxzw
         UaOujL74VTxd2aKyhFIxcvPa0DhYLEagppAwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qald6rTjM4Ozy8eAzbgJVI8/UFGWkxBCP1h2R/b2HEE=;
        b=jca9gBHy2OVzkPs0KUv0Sz2hvQo3soRO+ROGRbkqhBiSa4wNxdIEZaWd90eQsMHLxT
         ch7IR6eD14VPwkc56NfrgZ5aU1skGmYVaLNauC7/PjwttX/mak0C8/8YTI2h6ftaqvSg
         oUufa9F07nle6INgutCX2Znxn7/FeExuSy9S36VP5LvU262nWPVjVpCd7renj7oMnsna
         Pd49aqI32bCdYuZjjjzJippEv87xcLmwk4ZOrQLyjGvEmtxDnOcTfJ3FtIihYHxct/OH
         /b3O1diIPSCRFptFTI3lm8X8/jAqgpML3z925OBnzG4OpiH1aVDb/qyRA9cZmyGhWmE9
         FiqA==
X-Gm-Message-State: AOAM533D+Mj1X74x7+Tmw5dXGDMECwkBt3mPEZt75lGONvVlveZKF5PG
        HXfo4lA6ubYTObgKpPYB42TFMsDVWXlFUZPKaQ56vA==
X-Google-Smtp-Source: ABdhPJzfV9z2gnPuOKbbS2NygSGMccIzKO2/dmQEKUKLyjJzRE7KdaCnjYq7UNkKeomd2DQ15Rdu7uZJ+R84y36nxKg=
X-Received: by 2002:a92:4b08:: with SMTP id m8mr10499872ilg.150.1593666429155;
 Wed, 01 Jul 2020 22:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200625101757.101775-1-enric.balletbo@collabora.com> <20200625101757.101775-6-enric.balletbo@collabora.com>
In-Reply-To: <20200625101757.101775-6-enric.balletbo@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 2 Jul 2020 13:06:43 +0800
Message-ID: <CAJMQK-jm4kuT+cB-mS+hMD5SxWHZAyn8WJ+chgn-BKQAANpgGw@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: dts: mt8183-evb: Fix unit name warnings
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        erwanaliasr1@gmail.com, Matthias Brugger <matthias.bgg@gmail.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 25, 2020 at 6:18 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Remove the unit address from the DT nodes that doesn't have a reg
> property. This fixes the following unit name warnings:
>
>     Warning (unit_address_vs_reg): /soc/pinctrl@10005000/mmc0@0: node has a unit name, but no reg or ranges property
>     Warning (unit_address_vs_reg): /soc/pinctrl@10005000/mmc1@0: node has a unit name, but no reg or ranges property
>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>
> Changes in v2: None
>
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index afd6ddbcbdf2c..ae405bd8f06b0 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -205,7 +205,7 @@ pins_rst {
>                 };
>         };
>
> -       mmc0_pins_uhs: mmc0@0{
> +       mmc0_pins_uhs: mmc0 {
>                 pins_cmd_dat {
>                         pinmux = <PINMUX_GPIO123__FUNC_MSDC0_DAT0>,
>                                  <PINMUX_GPIO128__FUNC_MSDC0_DAT1>,
> @@ -264,7 +264,7 @@ pins_pmu {
>                 };
>         };
>
> -       mmc1_pins_uhs: mmc1@0{
> +       mmc1_pins_uhs: mmc1 {
>                 pins_cmd_dat {
>                         pinmux = <PINMUX_GPIO31__FUNC_MSDC1_CMD>,
>                                    <PINMUX_GPIO32__FUNC_MSDC1_DAT0>,
> --
> 2.27.0
>
