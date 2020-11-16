Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB71A2B3CE3
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726802AbgKPGOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:14:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgKPGOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:14:22 -0500
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com [IPv6:2607:f8b0:4864:20::742])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5176C0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:21 -0800 (PST)
Received: by mail-qk1-x742.google.com with SMTP id 11so15915083qkd.5
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gviu029IUTZcefVLfZeomA1jSzTP/vwpt9wwXVnDh54=;
        b=fP6vSsOXqHI5ONHbB/LAyl/UeyOobLvy0HI1/nScnj3DBmvVynFilN5RwNPIGKujsc
         8eEF/Q2hMYTN2F6B7Exk29xz7Kvic69142n2eZb49oyGvwJe724tOBDruBkS//jFrfMa
         c+YheYtF1HSLHaEAlwtvqDHMhluXFRYVwTLPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gviu029IUTZcefVLfZeomA1jSzTP/vwpt9wwXVnDh54=;
        b=sLmEACTrdfMml2Fr+j0KzrL2jz5MULXkJY/fdrIhJyk4XBMFGmCXj1Z3lQCvQD/HbK
         UlztGmS6xvAbBpzI8CZ35uACMaNGatPBEehjzATYBVjHSV610U6C2ZIHt2+Q/ZMSbnr4
         BDckQ/TTfeRD/KdI9jpkLZcXGmReBJvoMWNQP+rAe+bRqijWyXM4TDCwffrF6DpmlYcY
         p1bZ3s9LIoo4VlXZQTt3qjkJD6FRFn28qybNKBZNFIHyYPbsUyd4eoDVI+/5bC+ZHZwu
         MwqUPId8TGW7IGVrc9bDCD9kphWb6wNU46vnG+E8BR8ZrMpiwkrK2KRiLGpU4Ckiahze
         KcXA==
X-Gm-Message-State: AOAM5338WHohgrNu1O6dQJi1HxkoHldEqyWfIEeUd5m04AuPsb2KWxCy
        8bUZ/gRNjWTuKluDlOBb7Grl6vM5MWnqHu8F8R8=
X-Google-Smtp-Source: ABdhPJxHOxp6ldhR04za+G01MZh65Kwl3vECb6VAUk6UeqPvhFMIiZ5iyvG5qQhxKlB/nhuRZ8M1UXk4FMhMslivTcA=
X-Received: by 2002:a05:620a:7e8:: with SMTP id k8mr12692677qkk.273.1605507261007;
 Sun, 15 Nov 2020 22:14:21 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:14:08 +0000
Message-ID: <CACPK8XchiV5OO0zLAUm9VPbOXNLQnKy-0=zj4=juLx2HS=BTZw@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: dts: aspeed: rainier: Add Operator Panel LEDs
To:     Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
Cc:     linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Nov 2020 at 05:59, Vishwanatha Subbanna
<vishwa@linux.vnet.ibm.com> wrote:
>
> These LEDs are on the operator panel and are connected via
> a PCA9551 I2C expander.
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>


> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 82 ++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index 21ae880..64d8748 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -122,6 +122,38 @@
>                         reg = <3>;
>                 };
>         };
> +
> +       leds {
> +               compatible = "gpio-leds";
> +
> +               /* System ID LED that is at front on Op Panel */
> +               front-sys-id0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca_oppanel 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* System Attention Indicator ID LED that is at front on Op Panel */
> +               front-check-log0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca_oppanel 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* Enclosure Fault LED that is at front on Op Panel */
> +               front-enc-fault1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca_oppanel 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* System PowerOn LED that is at front on Op Panel */
> +               front-sys-pwron0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca_oppanel 3 GPIO_ACTIVE_LOW>;
> +               };
> +       };
>  };
>
>  &ehci1 {
> @@ -838,6 +870,56 @@
>                 };
>         };
>
> +       pca_oppanel: pca9551@60 {
> +               compatible = "nxp,pca9551";
> +               reg = <0x60>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +
> +               gpio@0 {
> +                       reg = <0>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@1 {
> +                       reg = <1>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@2 {
> +                       reg = <2>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@3 {
> +                       reg = <3>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@4 {
> +                       reg = <4>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@5 {
> +                       reg = <5>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@6 {
> +                       reg = <6>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@7 {
> +                       reg = <7>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
>         ibm-panel@62 {
>                 compatible = "ibm,op-panel";
>                 reg = <(0x62 | I2C_OWN_SLAVE_ADDRESS)>;
> --
> 1.8.3.1
>
