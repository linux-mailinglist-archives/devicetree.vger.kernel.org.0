Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7114D43F3B2
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 02:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231144AbhJ2AKq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 20:10:46 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:33508 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229621AbhJ2AKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 28 Oct 2021 20:10:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1635466097;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2dXWLir0xySSN/lNTgQ/kSLAwhiL9BlluDCsS0xaJJw=;
        b=WvdiC6ePaKFEXvmzotZsBPIlvhctWkXGDt33OoBPSTkxE05vqfiJqAS4+op0KKqbq4VqrV
        YAZwgzIzZXtC29gUFBDN2+LRa55+KwOgm9/S520AKbjVvvn96T6U5oz9EnpBEeUKvy3Pw0
        H4Zb1Z0/AWXncPntNh7wFssOjVOnK8w=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-lPNvqasPOfOyLedxbDU8_w-1; Thu, 28 Oct 2021 20:08:16 -0400
X-MC-Unique: lPNvqasPOfOyLedxbDU8_w-1
Received: by mail-qv1-f72.google.com with SMTP id p10-20020a0cc3ca000000b0038559d56582so6341623qvi.18
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 17:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2dXWLir0xySSN/lNTgQ/kSLAwhiL9BlluDCsS0xaJJw=;
        b=zaPjJA/AsCttD8A6jwg2tHFMsDvw3QGj/yT/n1CobAij/C53stuQH7jt2B6yzqmGAU
         m+qIAOsx4BpDH8hzU6tcXfix1Wt8gDCnZ30PNZjcTkUzkTDm+UBLAOTxeK1zFSOgQsxE
         pJyhTfdAftIQizprEB6N6U0X/+mq8FsjPZhzTkRtfC7fZkXKTZvZvteAiqMhbsxyOEV8
         RrPZ4ENxzCuEDgf//38I3qJo6QQ5XA4tUlKwULjdnvrN4pmOtlsWwxPV6OUJYo84U6yK
         JPslBH5q+z9nEz16Ya/3YyuavG7Uwa+af2pjnyBqXIBt439achxDinLy6EuyVa6Z+f0j
         NSJA==
X-Gm-Message-State: AOAM530XjUhlqLfdQ3eDsU7CLnu+lqhmyjVZ6bQdwIPY+mPWxml8fXs5
        ha0MlrxsdQavckOCQwJlzMlUVL9qX5baVFHs6QQcQb/wHtRCSRGA1WpenPYMFutKETZTZglwXjN
        tbP89nQZGg5VghUuhPCFWmjO3ScjDeX56qyhKWQ==
X-Received: by 2002:ad4:5423:: with SMTP id g3mr7259956qvt.45.1635466094764;
        Thu, 28 Oct 2021 17:08:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlX0H3PzRKE7YwLRNiq7Ik8MdJouN/ytTWhzbDMAC3kwJbBebEZkU4mrkC1/tqczLe8cLMAPmNmdhpaAEd34k=
X-Received: by 2002:ad4:5423:: with SMTP id g3mr7259936qvt.45.1635466094493;
 Thu, 28 Oct 2021 17:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20211020095926.735938-1-flokli@flokli.de> <20211020095926.735938-2-flokli@flokli.de>
In-Reply-To: <20211020095926.735938-2-flokli@flokli.de>
From:   Dennis Gilmore <dgilmore@redhat.com>
Date:   Thu, 28 Oct 2021 19:08:03 -0500
Message-ID: <CAJesf3Oenzbtm09YbgfMowWSkJ0OBCVkNq4Fh3rDqN7pW9SCJg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix poweroff
To:     Florian Klink <flokli@flokli.de>
Cc:     Heiko Stuebner <heiko@sntech.de>, Aditya Prayoga <aditya@kobol.io>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Rockchip SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-rockchip@lists.infradead.org,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tested-by: Dennis Gilmore <dgilmore@redhat.com>


On Thu, Oct 28, 2021 at 11:37 AM Florian Klink <flokli@flokli.de> wrote:
>
> Adding the rockchip,system-power-controller property here will use the
> rk808 to power off the system.
>
> Signed-off-by: Florian Klink <flokli@flokli.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index 93745dcc2af6..af3bf7800dba 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -293,6 +293,7 @@ rk808: pmic@1b {
>                 clock-output-names = "xin32k", "rk808-clkout2";
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pmic_int_l>;
> +               rockchip,system-power-controller;
>                 vcc1-supply = <&vcc5v0_sys>;
>                 vcc2-supply = <&vcc5v0_sys>;
>                 vcc3-supply = <&vcc5v0_sys>;
> --
> 2.33.0
>


-- 
Dennis Gilmore
Multiple Architecture Portfolio Enablement
T: +1-312-660-3523

