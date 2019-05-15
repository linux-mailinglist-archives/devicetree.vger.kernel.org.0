Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BDF4E1F9A8
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 19:59:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727428AbfEOR7j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 13:59:39 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:40763 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726626AbfEOR7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 13:59:39 -0400
Received: by mail-ua1-f67.google.com with SMTP id d4so198680uaj.7
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 10:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
        b=eMSKiMkGDiPhEV6MfHv/8lqxI0ZIJwgTFHaLe+9m7kHkPBaae8ncl6ySq7O3M6a5pL
         mh4fcV39mHessqaqiXbT86R8AQRmrn+GjnwD1D4DsYF3IXresr7LwJhlyrk7UX9qQFsq
         yb4nLY9TjQf6qjO/OLDuqrTfslgVfMW0QzmSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VYGv5m3AMILz51Spmrt6yHEEOb39aK0Gg2jo/Bu5BT8=;
        b=EMQnaE+Cw7kEgRUbPOqvM/oS9B1pXyPHhEoCaKOAL6XXLFFNQiy8f1aNVH0kUlBWxk
         oPWA2KU7u9Op6AXOs3HhqkYD25zNdDG1Wg8ku+8bsUtB5gBw/hafeiD8kls7XQdHHyu0
         CMv45lgCCRMZQgNYLFUrNs80hwYy2ATtAartPsJRzxVC88nBOIGX20LlTT1FWUs3M7P/
         lu5YTRWurLpaMf2LsSEWqYK7RKx8cUzQSNrDhgCkRFDx4ED5s3L/+f5+BvRtANh7e+s+
         Xw4lH50h/qMtwYbGmaxMitFINU8w8BHR/MziH6ZxIXj3ldXx43ujTiaDF/0du+Qcq1Iz
         1X+A==
X-Gm-Message-State: APjAAAXs5oZH3o5QrE/IKViEzXNh1tKhcKhk6PwH7OC+2gKWAN2TJbzh
        ByLWpFbEc4vDXEgfI2Jd2FPPy9FZjmc=
X-Google-Smtp-Source: APXvYqz3Ljsc4J8PARJH0T2uOjm/0KLIoIleH/5lgKlng9w1iL+p84fQtNy4Qh7/uwllVMUekRbUdQ==
X-Received: by 2002:ab0:25cc:: with SMTP id y12mr21327119uan.9.1557943177742;
        Wed, 15 May 2019 10:59:37 -0700 (PDT)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com. [209.85.221.180])
        by smtp.gmail.com with ESMTPSA id r70sm1800174vke.36.2019.05.15.10.59.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 10:59:36 -0700 (PDT)
Received: by mail-vk1-f180.google.com with SMTP id d77so245898vke.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 10:59:36 -0700 (PDT)
X-Received: by 2002:a1f:d884:: with SMTP id p126mr20080140vkg.70.1557943175846;
 Wed, 15 May 2019 10:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org>
In-Reply-To: <20190424162827.5297-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 May 2019 10:59:21 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Message-ID: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288 GPU
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> The Mali GPU of the rk3288 can be used as cooling device, add
> a #cooling-cells entry for it.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index ca7d52daa8fb..767e62908a6e 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1275,6 +1275,7 @@
>                 interrupt-names = "job", "mmu", "gpu";
>                 clocks = <&cru ACLK_GPU>;
>                 operating-points-v2 = <&gpu_opp_table>;
> +               #cooling-cells = <2>; /* min followed by max */
>                 power-domains = <&power RK3288_PD_GPU>;
>                 status = "disabled";
>         };

Seems like a good idea to me.  Presumably we should also add this to
the bindings?

Reviewed-by: Douglas Anderson <dianders@chromium.org>


-Doug
