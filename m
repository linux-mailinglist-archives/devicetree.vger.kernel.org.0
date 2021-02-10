Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5AA33168A5
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 15:03:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbhBJODE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 09:03:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232003AbhBJOCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 09:02:54 -0500
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E36C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 06:02:14 -0800 (PST)
Received: by mail-qt1-x82a.google.com with SMTP id e15so1517203qte.9
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 06:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6WiDGSBnYqLsXv6lvPHQ+KqJDHOJ69kpa9/logsOjNE=;
        b=ObDq5vnoNF9zunSukgf9jTYHbW95puZS3bA9T4IidFfRxoFjJk7fRcMjWK+RoCnxxw
         FEgMMQ266vip+uw3wfy6UYhOFiiOwuX6mYYFSuPk4k2g2kga2zkDjJkRuDphhUuNGaoE
         Sp8caM7RxnPSQ78pjTRpJ6CYQc90VYFY15FrNH/b5v74Xb1xXvuqPlSkZKd8P92f/NsZ
         Rqd95vxQpQASTIDoz1PERxQNWuJjRo+dylSVvTES083xfXahlDwjMr1y5pocTRgcp6Dc
         TkK9ffN1iANQwfMD8J86jQDbByqbDnZINV0kdZq7L4tx9CYs904+dZrS1r9863XmmxTr
         TUkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6WiDGSBnYqLsXv6lvPHQ+KqJDHOJ69kpa9/logsOjNE=;
        b=J24e7CkMfX7KjOa4wVOfoAj4g2Ycukvnb+zYfaCEvLHz1MucAK8mcCBk7vs5eS6S21
         ApCIaeNJ6FEcXCOl8PwQ2ixTPFSOA4k497X+ZsB/6OP90G3CeTVt4p50r/KJrn2txVuH
         4eoyikgzCGFg782bbum9ZljNwckIoVJtP6JkLCKJa5l0MdvWL6KnW6ml2ZxviNziFD0V
         H+2nqJxpMnTrX8cFuCViOuwqVz/t8wxu5g3S6C+8hLQSaufAkxwxS39X9mF/2aZp/NH/
         hfGZXi/0RqyEOY22wY8oTqOOzIq/+Lzt87p0jv5esxbzzRl5LuvJfHt0iLJJzmQJL222
         diTQ==
X-Gm-Message-State: AOAM532iXj8IwvMqnFyM7mMEx/3l5UARAjJuLpTk+Dqa6ifRPzXetLqS
        caRDpzaDMOIaRzVXQCCVcBXHopbphrwmuxiYYcYIbw==
X-Google-Smtp-Source: ABdhPJyklgAHzNmKOgnwKyvHJnmEttD7gqZ5dNBiSK8hLQ/j72sdwqpRGHD6FbOBfhnwmbvUyKOqsvk6l0Y1vGKc7SA=
X-Received: by 2002:ac8:5c41:: with SMTP id j1mr2801615qtj.306.1612965733141;
 Wed, 10 Feb 2021 06:02:13 -0800 (PST)
MIME-Version: 1.0
References: <20210210131604.28806-1-kostap@marvell.com> <20210210131604.28806-5-kostap@marvell.com>
In-Reply-To: <20210210131604.28806-5-kostap@marvell.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Wed, 10 Feb 2021 15:02:00 +0100
Message-ID: <CAPv3WKfs3mYsM5omSSF+yZjo_s8-qFh9Yrr8JqB8FpvmPSvWdQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] dts: marvell: Enable 10G interfaces on 9130-DB and
 9131-DB boards
To:     Kostya Porotchkin <kostap@marvell.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Vid <vladimir.vid@sartura.hr>, tmn505@gmail.com,
        luka.kovacic@sartura.hr,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        vkoul@kernel.org, kishon@ti.com,
        =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
        Grzegorz Jaszczyk <jaz@semihalf.com>, nadavh@marvell.com,
        Stefan Chulski <stefanc@marvell.com>,
        =?UTF-8?B?QmVuIFBlbGVkICjXkdefINek15zXkyk=?= <bpeled@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=C5=9Br., 10 lut 2021 o 14:16 <kostap@marvell.com> napisa=C5=82(a):
>
> From: Stefan Chulski <stefanc@marvell.com>
>
> This patch enables eth0 10G interface on CN9130-DB paltforms and
> eth0 10G and eth3 10G interfaces on CN9131-DB.

Thank you.
Reviewed-by: Marcin Wojtas <mw@semihalf.com>

>
> Signed-off-by: Stefan Chulski <stefanc@marvell.com>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> ---
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi | 2 +-
>  arch/arm64/boot/dts/marvell/cn9131-db.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9130-db.dtsi
> index 8de3a552b806..97c74b81fd78 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> @@ -125,7 +125,7 @@
>
>  /* SLM-1521-V2, CON9 */
>  &cp0_eth0 {
> -       status =3D "disabled";
> +       status =3D "okay";
>         phy-mode =3D "10gbase-kr";
>         /* Generic PHY, providing serdes lanes */
>         phys =3D <&cp0_comphy4 0>;
> diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9131-db.dtsi
> index 82471a83ad6d..f2e4d3a6a4f8 100644
> --- a/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9131-db.dtsi
> @@ -84,7 +84,7 @@
>
>  /* CON50 */
>  &cp1_eth0 {
> -       status =3D "disabled";
> +       status =3D "okay";
>         phy-mode =3D "10gbase-kr";
>         /* Generic PHY, providing serdes lanes */
>         phys =3D <&cp1_comphy4 0>;
> --
> 2.17.1
>
