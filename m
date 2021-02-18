Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C75D931EE32
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 19:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229879AbhBRSX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Feb 2021 13:23:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233332AbhBRRLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Feb 2021 12:11:45 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02561C061786
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 09:11:05 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id e7so2094438ile.7
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 09:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8yQ/zWxObiX2rUkRsp1l9aOlKO2P0V1q6ExJ8fYc9VI=;
        b=BSxAOJZzCE6YdIymgI/nnZwgXE5GvvgbV1mpoo8Z8diaoejwUpfHDrusjQuth1K+/l
         xRaf7RSj1RTJYAv3X5Tec78RSlZbNCeWyYc+oqPZteOj9pA1Ee2UmqkXZVpBECnkRrfs
         OOT5NunbqV/ZGuvrg8DHAI7J1s1v2ZzTUK02edp0NQMNI6ZwcCiw/GvlX2C0LOTeABTA
         nPxbI5bP9NBR1LVYCCBLYiNYWVKz0AernT4fBwnlw24ZHwWc33Y69waKVaB1rXpqv9Qb
         NzbwF5CMrHEQBsiNbVh28khFJpRzGwl8z5HjRJ5HnmLlGtjMDupfpjiNSLJcz8LD7M7k
         QnSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8yQ/zWxObiX2rUkRsp1l9aOlKO2P0V1q6ExJ8fYc9VI=;
        b=U0I8W/AvQZE8VtBUyhYWpMZf74txCPVOvQo9VxJEchlARM19xRYXySsvTtAt8JBlON
         BFhL2gfr2QAi2ljLfb6fpB/UWCbcTganCxuqO1Rb/vosJMagnjgl3aqiMe8dqgNKpV/J
         Z8UCHvxaf6V6Q+bUipk0V8Vr4V8rO+h9sTIJly+YbYpNv61QIElMla+2nIUMdTT2AnDx
         KEchkLppSimo2BlWm2yB0VZzx4I5nTQUPOZldxRNkvNrHMpGXcVNZot6Q/GTwSsoWtEB
         +I1WtUhJsI/ClefzTlRan+7FZ6qbYUIRB//1EyPvI9pcQcmJOidGrZi5sgNaH03+odbn
         8ZhA==
X-Gm-Message-State: AOAM532rRuU1nWcZ+KIMcvQ3vKA/EwK1eInSPrMhn7q+5IQaxOXUKLp2
        ivKPnl+WDjYxAEfv24Yf9gbYSWCoCXtzSFQcEG+1EQ==
X-Google-Smtp-Source: ABdhPJxEtfoENyAGsiLWovEpocXc51k4nYXe4wiW3+m+FLWcg9jEl5tgQgHwo97gzNCS0b9N3HVzK+E5z+mKUQGvut8=
X-Received: by 2002:a92:ad0a:: with SMTP id w10mr72733ilh.235.1613668263832;
 Thu, 18 Feb 2021 09:11:03 -0800 (PST)
MIME-Version: 1.0
References: <20210218122546.3546582-1-gmouse@google.com>
In-Reply-To: <20210218122546.3546582-1-gmouse@google.com>
From:   Benjamin Fair <benjaminfair@google.com>
Date:   Thu, 18 Feb 2021 09:10:26 -0800
Message-ID: <CADKL2t6P4gaSUZEFgk7y+TNBRw0Lhf8mXTxzLdbe3FhGs0WH+w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: nuvoton: Fix flash layout
To:     Anton Kachalov <gmouse@google.com>
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 18 Feb 2021 at 04:42, <gmouse@google.com> wrote:
>
> From: "Anton D. Kachalov" <gmouse@google.com>
>
> This change satisfy OpenBMC requirements for flash layout.
>
> Signed-off-by: Anton D. Kachalov <gmouse@google.com>
> ---
>  arch/arm/boot/dts/nuvoton-npcm750-evb.dts | 28 +++++++----------------
>  1 file changed, 8 insertions(+), 20 deletions(-)
>
> diff --git a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts b/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
> index bd1eb6ee380f..741c1fee8552 100644
> --- a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
> +++ b/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
> @@ -182,8 +182,8 @@ bbuboot2@80000 {
>                                 reg = <0x0080000 0x80000>;
>                                 read-only;
>                                 };
> -                       envparam@100000 {
> -                               label = "env-param";
> +                       ubootenv@100000 {
> +                               label = "u-boot-env";
>                                 reg = <0x0100000 0x40000>;
>                                 read-only;
>                                 };
> @@ -195,25 +195,13 @@ kernel@200000 {
>                                 label = "kernel";
>                                 reg = <0x0200000 0x400000>;
>                                 };
> -                       rootfs@600000 {
> -                               label = "rootfs";
> -                               reg = <0x0600000 0x700000>;
> +                       rofs@780000 {
> +                               label = "rofs";
> +                               reg = <0x0780000 0x1680000>;
>                                 };
> -                       spare1@D00000 {
> -                               label = "spare1";
> -                               reg = <0x0D00000 0x200000>;
> -                               };
> -                       spare2@0F00000 {
> -                               label = "spare2";
> -                               reg = <0x0F00000 0x200000>;
> -                               };
> -                       spare3@1100000 {
> -                               label = "spare3";
> -                               reg = <0x1100000 0x200000>;
> -                               };
> -                       spare4@1300000 {
> -                               label = "spare4";
> -                               reg = <0x1300000 0x0>;
> +                       rwfs@1e00000 {
> +                               label = "rwfs";
> +                               reg = <0x1e00000 0x200000>;
>                         };

I recommend just including the openbmc-flash-layout.dtsi file here
instead since that contains the common flash layout for most OpenBMC
systems.

>                 };
>         };
> --
> 2.30.0.478.g8a0d178c01-goog
>
