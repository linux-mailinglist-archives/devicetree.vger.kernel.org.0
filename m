Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EDAB4549C9
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 16:19:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231500AbhKQPWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 10:22:50 -0500
Received: from mail.kernel.org ([198.145.29.99]:39174 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231338AbhKQPWu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 10:22:50 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id B958461BF8
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 15:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637162391;
        bh=21V8ySdNI8rzKppmwzqXaWV+WIeRV5sbbODnQ+RIf/4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=cz59dCa+o2S/wHot45VrB76ew3z7XNQ55gUlziZUp5WzfwP1jlnBNpZtJk00p3JeI
         EuvTBY88yoYke5aVPCR3Lt4OksFhJBJRyOqUyHM/ZwwLjZTvzXuWe1YwV1wYkNxbjC
         gGJtsLGsf566Vm4OJapBw1F6WTHDl9IiKeTE/nbsvyDtwedn0ad6INVefXZRueXdj4
         nPYwjZku/V8mEm2GBPckhPJZ9zgE5jDoYq48kxQkqlsTzI8Azj2NNoXiUddCMd8peh
         5khdWUcfI4CP/7NLas+8NOSulMrLzld1dEQKqWzPYWJokbCOUPsNaGidg2IundZsS9
         avOG9wUy5xzmA==
Received: by mail-ed1-f41.google.com with SMTP id z5so12796342edd.3
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 07:19:51 -0800 (PST)
X-Gm-Message-State: AOAM531LbcS2uq6/YEynUpYSb3Uw0H4z/OVuhUOVZ2a4LZF6btCntp0w
        PeqJ6zO/Oic+Mza6KfNw6zmAdY6mkJl/TKjiqA==
X-Google-Smtp-Source: ABdhPJxa6UOUwCE4UADcjJKl6sQgO6HQ05fBhvojoiMf7CwaNTfZtwtbbDkvZLkvvHzt+nTfGmKMinHDp78RYSO3hOI=
X-Received: by 2002:a17:907:7f25:: with SMTP id qf37mr22897118ejc.147.1637162390183;
 Wed, 17 Nov 2021 07:19:50 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <20211117143347.314294-11-s.hauer@pengutronix.de>
In-Reply-To: <20211117143347.314294-11-s.hauer@pengutronix.de>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 17 Nov 2021 09:19:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
Message-ID: <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This enabled the VOP2 display controller along with hdmi and the
> required port routes which is enough to get a picture out of the
> hdmi port of the board.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416af..156e001492173 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
>         status = "okay";
>  };
>
> +&hdmi {
> +       status = "okay";
> +       avdd-0v9-supply = <&vdda0v9_image>;
> +       avdd-1v8-supply = <&vcca1v8_image>;
> +};
> +
>  &i2c0 {
>         status = "okay";
>
> @@ -390,3 +396,21 @@ &sdmmc0 {
>  &uart2 {
>         status = "okay";
>  };
> +
> +&vop {
> +       status = "okay";
> +       assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +       assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +};
> +
> +&vop_mmu {
> +       status = "okay";
> +};
> +
> +&hdmi_in_vp0 {
> +       status = "okay";
> +};
> +
> +&vp0_out_hdmi {
> +       status = "okay";
> +};

You can accomplish the same thing already with:

&vp0_out_hdmi {
  remote-endpoint = <&hdmi_in_vp0>;
};

or:

&vp0_out_hdmi {
  /delete-property/ remote-endpoint;
};
