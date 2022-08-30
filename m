Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AAA95A6DD4
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 21:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231676AbiH3Tvq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 15:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231689AbiH3Tvn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 15:51:43 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 005647E02A
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:51:40 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id fy31so23922105ejc.6
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=y2BsAU9V1vGdt8p536WRg36dWX8Oh3MzpJrUWzUelg0=;
        b=PKO9Ih5HCXvgFcNbUeRyybhQkiOyrhvI0hcbzTdHIAMDpYBWL9GHOUDjjY9UdWnRNU
         Z5Ojdi4hHX6CCebuGU0G1jKXT+BjL/h/yF6zBNhY0o6zuOgUIOcw5bMFsvIG9jbbgq4F
         5Iq5WrNcC4ROpyxhCYHMZPO3M5Fhv7/kemXOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=y2BsAU9V1vGdt8p536WRg36dWX8Oh3MzpJrUWzUelg0=;
        b=uIZuMZ1m2G8iLja2pGUaBsko2IeoF3ppF1iaqzYjqHK7tZJRvm5ThUS9+z5CxgCAiz
         eee5uZqW8dinKsZKSDY8Ckw9hoyfgZkuldb/q+sW/iX8Ld99ix7ytz7xkPdPCoaTWrXi
         4yIct7xMHjT2MVrQeW/JFsKKkmY0LcRVd5xgcMzHOVmhbZaU0lrDzgKaoUwtBdvnb9TO
         sim6dQmr1FwjwZoeyyjv6Gz1pArxu/UoikH+Fk/t1+iQ7DRA3FM6i4NIxRoM8MhetIHj
         kV3WdQulZLbfQGkIXDnSO61MYgzd/H4Bnbm7rbnJUMi+E2+krmb2OwKWgMqnQQHFdOkA
         91lw==
X-Gm-Message-State: ACgBeo0l7xRi0gZX0mx+JxdgcZ3/0fTIRKHrbDBz2nR+t7LrzAL13PJC
        bd4niI8I6oNQ87DCh7Js+Y0TttFwWrQG41QW
X-Google-Smtp-Source: AA6agR7N8PgnbrsN1d3bJ4e3QPuyqIJfaYwuT+9Ei2waBdirfJwapkqHnoJV+No7QNADfArHlfMfqQ==
X-Received: by 2002:a17:906:8a70:b0:730:9c9e:edb2 with SMTP id hy16-20020a1709068a7000b007309c9eedb2mr17750957ejc.41.1661889099095;
        Tue, 30 Aug 2022 12:51:39 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id lb6-20020a170907784600b0073d89c167a1sm6278979ejc.137.2022.08.30.12.51.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 12:51:37 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id az27so15598314wrb.6
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:51:36 -0700 (PDT)
X-Received: by 2002:a5d:6881:0:b0:225:28cb:332f with SMTP id
 h1-20020a5d6881000000b0022528cb332fmr9826377wru.405.1661889096492; Tue, 30
 Aug 2022 12:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
In-Reply-To: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 30 Aug 2022 12:51:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
Message-ID: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
To:     Brian Norris <briannorris@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, zain wang <wzz@rock-chips.com>,
        Lin Huang <hl@rock-chips.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 30, 2022 at 12:32 PM Brian Norris <briannorris@chromium.org> wrote:
>
> We've found the AUX channel to be less reliable with PCLK_EDP at a
> higher rate (typically 25 MHz). This is especially important on systems
> with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
> use of AUX.
>
> According to Rockchip, using any rate other than 24 MHz can cause
> "problems between syncing the PHY an PCLK", which leads to all sorts of
> unreliabilities around register operations.
>
> Signed-off-by: zain wang <wzz@rock-chips.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

nit: Sinze zain wang's SoB is first then I think either the patch
needs to be "From" zain wang or you need some different tagging, like
Co-Developed-by or something.

> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> index 45796b9fd94f..ee6095baba4d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> @@ -244,6 +244,14 @@ &dmc {
>  &edp {
>         status = "okay";
>
> +       /*
> +        * eDP PHY/clk don't sync reliably at anything other than 24 MHz. Only
> +        * set this here, because rk3399-gru.dtsi ensures we can generate this
> +        * off GPLL=600MHz, whereas some other RK3399 boards may not.
> +        */
> +       assigned-clocks = <&cru PCLK_EDP>;
> +       assigned-clock-rates = <24000000>;
> +

Yeah, this looks right to me. From my memory of the problem:

* For some reason, some devices hit it more than others (maybe just
process variance?)

* The problem affected nearly any register read or write on the eDP
controller and wasn't rk3399 specific (other Rockchip models were
impacted) but the failure rate was crazy low so it wasn't discovered
until rk3399 came about and we implemented PSR and the number of
register reads/writes to the eDP controller went through the roof.

* Most other devices use GPLL at 594 so that they can use it to make
certain standard HDMI rates. Changing other devices so GPLL = 600
wouldn't be trivial.

* It's fairly hard to change GPLL to 600 without coordinating with the
bootloader. Certainly it could be possible, but you'd have to make
sure that no important devices were impacted at boot when doing the
change. gru devices bootloaders are the only known ones to set GPLL to
600 MHz.


So:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
