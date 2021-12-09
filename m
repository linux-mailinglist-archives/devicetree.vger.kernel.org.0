Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99E3046F70F
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 23:50:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233865AbhLIWyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 17:54:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232030AbhLIWyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 17:54:10 -0500
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D40C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 14:50:37 -0800 (PST)
Received: by mail-io1-xd29.google.com with SMTP id 14so8462286ioe.2
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 14:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5ZRTQ7ooDwQfy9oZzqo/a73+qfonk8DtEs8N0Hj+xpQ=;
        b=IfQw828Gqg7Q/QWyzsyal4ehf1T+TN1ceMlijrcYOhf+6xYqnwQr/h17IkRy/UdzkJ
         pMZjTcvxss568kEP5fNMBEWMjVT7q7tjVocOc3fZNhq1F59gCtz3zs7Igh4rWNH9j3cX
         aUFb1PNEfIRjmbkHE2pvSn6IOgatp1argEpZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5ZRTQ7ooDwQfy9oZzqo/a73+qfonk8DtEs8N0Hj+xpQ=;
        b=J8m5BpaUUImxn1tepa2mElefBNG/Nf/jYhtvGLttOhl2aogrRO1q1Rzwhzl3FooQ+W
         /tp4zkpMi1bzErIZXufgpV1HjtV2/9dBXNcHejDmQ6Zyw3FDbvnEg3bzQ2ML+EdaQi38
         pLfQejJxZ5GiRkVA8aa6YN1x+BkKJoU8hPtWZKlMgOhZBm8s24u0xxmqIaiwULlny0qa
         Y/3BzklhK3ec1oh0/Ko50m3xmLoaaAimdbmxU8r3bCTOL/rFtgfGFUAoVMxs/c7gKVQg
         opVpDSGMPUYjZs+dHN1gmOokZdhSs4MLjIjshhC/W08jmhFsQGsQrm3d+e/P0s0OZ7fn
         WW9w==
X-Gm-Message-State: AOAM530R8CKQvg5L3NLvPPkjwljvnDR4dxxREKnDWjLp6z3DE75fZzWC
        52Ze8CCryPAoAWkbSQVXRIq2Gsfp2DV1qQ==
X-Google-Smtp-Source: ABdhPJzu0ymLfmidz6A7gr03p0wb78rD+yV4d8FBvfF9G2PQBC7/KDSHuDm5RvWBk/al/YZ7V42/+A==
X-Received: by 2002:a05:6602:29c5:: with SMTP id z5mr16598790ioq.34.1639090236095;
        Thu, 09 Dec 2021 14:50:36 -0800 (PST)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id i8sm686764ils.50.2021.12.09.14.50.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Dec 2021 14:50:35 -0800 (PST)
Received: by mail-io1-f42.google.com with SMTP id m9so8565425iop.0
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 14:50:35 -0800 (PST)
X-Received: by 2002:a05:6602:26d3:: with SMTP id g19mr16449520ioo.100.1639090234684;
 Thu, 09 Dec 2021 14:50:34 -0800 (PST)
MIME-Version: 1.0
References: <20211209195112.366176-1-pmalani@chromium.org>
In-Reply-To: <20211209195112.366176-1-pmalani@chromium.org>
From:   Alexandru M Stan <amstan@chromium.org>
Date:   Thu, 9 Dec 2021 14:49:57 -0800
X-Gmail-Original-Message-ID: <CAHNYxRxKzxxx2qTjvNGXc=L6Mx3J777P=H8uJEtbuUHfrNW4mg@mail.gmail.com>
Message-ID: <CAHNYxRxKzxxx2qTjvNGXc=L6Mx3J777P=H8uJEtbuUHfrNW4mg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mt8183: kukui: Add Type C node
To:     Prashant Malani <pmalani@chromium.org>
Cc:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Benson Leung <bleung@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 9, 2021 at 11:51 AM Prashant Malani <pmalani@chromium.org> wrote:
>
> Add a node describing the USB Type C connector, in order to utilize the
> Chromium OS USB Type-C driver that enumerates Type-C ports and connected
> cables/peripherals and makes them visible to userspace.
>
> Cc: Alexandru M Stan <amstan@chromium.org>
> Cc: Benson Leung <bleung@chromium.org>
> Signed-off-by: Prashant Malani <pmalani@chromium.org>
> ---
>
> Changes in v2:
> - Alexandru mentioned that HW specs suggest preferred power role for
>   devices like kukui to be sink, so changed try-power-role to "sink".
>
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index 94c13c459194..0f9480f91261 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -886,6 +886,20 @@ usbc_extcon: extcon0 {
>                 cbas {
>                         compatible = "google,cros-cbas";
>                 };
> +
> +               typec {
> +                       compatible = "google,cros-ec-typec";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       usb_c0: connector@0 {
> +                               compatible = "usb-c-connector";
> +                               reg = <0>;
> +                               power-role = "dual";
> +                               data-role = "host";
> +                               try-power-role = "sink";
> +                       };
> +               };
>         };
>  };
>
> --
> 2.34.1.173.g76aa8bc2d0-goog
>

Thanks!

Reviewed-by: Alexandru M Stan <amstan@chromium.org>
