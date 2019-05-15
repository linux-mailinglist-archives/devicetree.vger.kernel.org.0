Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 248231F9FE
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 20:30:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbfEOSam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 14:30:42 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:45193 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727004AbfEOSak (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 14:30:40 -0400
Received: by mail-vs1-f65.google.com with SMTP id o10so554549vsp.12
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
        b=nzi7Tz62FN/3PrAYjwJ++Zv1PALOdoOBPyJ4XX1U8AIyDcFe0i1fEKvD9H1x6Ag/2X
         1EoWcOkUtrM1ICXH7Oz33wBHzE8UdR+QGwDdXu69dg9MCw2GhPZ2xNfQlrmMzR4nd29d
         oT7q4wYBWTdMI2IrNv/Gsm55qOGS3VsmSNlco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kcBF6F4zgNomYlPRQZzOJ2t4+wjtmmM8eaNQl5KRjbc=;
        b=acxWYuttso3na5pui0vIvaYmCtd0P65Ht8SVixOm8mltYmUVKHY4POm3poeMjIOUP2
         BcEojP240bv0CKVgscfg6JnQzm3lmegjSOudvhdqlPMWMK0CZjDQJU1i8482QTRfK2YL
         7wWoqq+LYRNRy6Ej3jjydc7kt+YBJwEQvtmkHUj89kN+0ewVs/cdV3VWpESvLQj30FuO
         fn405m/WRed1cjStWUcoowVGCd/IJQYvo5g2bqKNSLGW4L0Do1h2TF4RdaXlyno8IGXC
         bBqPrFvRWAkIBq1vkeyQV01Vx2CbZAcVEcDA3UbYwpbY4DyYD0Hxc5cbnGi2cXNXHo/r
         tVvQ==
X-Gm-Message-State: APjAAAX4djoMaQaOQksSguvo2XmAiQlTcppgSeV699j7ukz+7+FjvX0/
        eUR53a3BUqNS3Qo3cfHj/yknAo87QTw=
X-Google-Smtp-Source: APXvYqwZzNqYxnG15obATquLuIHkK36Kduu6M1aNs4PcifvMjqfzxVgI2+GFt1R5DcTl7BET9bHWMw==
X-Received: by 2002:a67:ec94:: with SMTP id h20mr21777553vsp.195.1557945038909;
        Wed, 15 May 2019 11:30:38 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id j78sm883509vkj.47.2019.05.15.11.30.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 11:30:37 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id e2so547851vsc.13
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:30:37 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr13692401vsm.144.1557945037046;
 Wed, 15 May 2019 11:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org>
In-Reply-To: <20190515153127.24626-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 May 2019 11:30:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Message-ID: <CAD=FV=U19uAGkwTqg-N6_m5WYQ7yMwjQir3TYUsb3SWWOihTOg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dts: rockchip: raise GPU trip point temperature for
 veyron to 72.5 degC
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

On Wed, May 15, 2019 at 8:31 AM Matthias Kaehlcke <mka@chromium.org> wrote:

> This value matches what is used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  arch/arm/boot/dts/rk3288-veyron.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
> index 1252522392c7..169da06e1c09 100644
> --- a/arch/arm/boot/dts/rk3288-veyron.dtsi
> +++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
> @@ -446,6 +446,14 @@
>         status = "okay";
>  };
>
> +&gpu_thermal {
> +       trips {
> +               gpu_alert0: gpu_alert0 {
> +                       temperature = <72500>; /* millicelsius */
> +               };
> +       };
> +};
> +

This should be sorted alphabetically.  Thus this should sort right
after this in rk3288-veyron.dtsi

&gpu {
  mali-supply = <&vdd_gpu>;
  status = "okay";
};

Also you don't need to replicate the whole structure?  I think the
above should just be:

&gpu_alert0 {
  temperature = <72500>; /* millicelsius */
};

NOTE also that that gpu and cpu critical is 100 C downstream.  Should
we do that too?  Ah, but before we do that I guess we'd need to also
override the "rockchip,hw-tshut-temp" to 125000 to match downstream.
I guess that could be a separate series?

-Doug
