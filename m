Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4166426465
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 15:15:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728827AbfEVNPk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 09:15:40 -0400
Received: from mail.kernel.org ([198.145.29.99]:54930 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728744AbfEVNPk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 May 2019 09:15:40 -0400
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9EA9D217D9
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 13:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558530939;
        bh=LybLgEqAOQX5cXSMz7BU6qWkV66dzvXQQOcoYms5Qjs=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KJh9BOS7TZt72l+NOmvG/wj+xz2gnTcD099CqXtyjrNbjT433RyNnn5CfaEi9Mc3X
         Zl4YOlM3zfVthGhsJXJyCObDSLekjIpRJGewdPQQn9wNcsn2WoWQ+G6Jvw5eqGO9QL
         /H4kAj4fxR0dr0lNgbvUimETIZfT9CyRVf3WEppk=
Received: by mail-qt1-f170.google.com with SMTP id i26so2206652qtr.10
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 06:15:39 -0700 (PDT)
X-Gm-Message-State: APjAAAUpfLNKyv/RUNwhpbt4d0bLB3keouk2YNJKSPwE+sna4K91inVo
        TZ8K7M+3hBOiohOtRly74uUvVxdvBNEk4Dy4bg==
X-Google-Smtp-Source: APXvYqwe/U7YiI1Ggwaht2mNfidlcYL5slSsEfYTadt4joC/F4IL6mIqQDJev3LbSmg7Fkkxvfxh18tgqlOpfF9wFZ0=
X-Received: by 2002:aed:3f5b:: with SMTP id q27mr73453374qtf.143.1558530938871;
 Wed, 22 May 2019 06:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190521143518.32416-1-miquel.raynal@bootlin.com>
In-Reply-To: <20190521143518.32416-1-miquel.raynal@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 22 May 2019 08:15:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ=gFK604Wbd0D4NN__L4ZfKDO7+j8OGh_buq06oA6deQ@mail.gmail.com>
Message-ID: <CAL_JsqJ=gFK604Wbd0D4NN__L4ZfKDO7+j8OGh_buq06oA6deQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: mvebu-comphy: Update references to
 CP110 nodes
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Grzegorz Jaszczyk <jaz@semihalf.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 9:35 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> The CP110 DT nodes references have changed, reflect these changes in
> COMPHY documentation.

This change isn't necessary. The examples are just examples. They
don't have to match anything exactly.

>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/phy/phy-mvebu-comphy.txt          | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> index cf2cd86db267..af2402c18513 100644
> --- a/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> +++ b/Documentation/devicetree/bindings/phy/phy-mvebu-comphy.txt
> @@ -35,19 +35,19 @@ Required properties (child nodes):
>
>  Examples:
>
> -       cpm_comphy: phy@120000 {
> +       CP110_LABEL(comphy): phy@120000 {

Also, as we convert bindings to schema, the examples are compiled and
this won't without CP110_LABEL defined.

>                 compatible = "marvell,comphy-cp110";
>                 reg = <0x120000 0x6000>;
> -               marvell,system-controller = <&cpm_syscon0>;
> +               marvell,system-controller = <&CP110_LABEL(syscon0)>;
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>
> -               cpm_comphy0: phy@0 {
> +               CP110_LABEL(comphy0): phy@0 {
>                         reg = <0>;
>                         #phy-cells = <1>;
>                 };
>
> -               cpm_comphy1: phy@1 {
> +               CP110_LABEL(comphy1): phy@1 {
>                         reg = <1>;
>                         #phy-cells = <1>;
>                 };
> --
> 2.19.1
>
