Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3433A2B3CE4
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:15:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726812AbgKPGOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:14:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgKPGOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:14:30 -0500
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com [IPv6:2607:f8b0:4864:20::841])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EA6AC0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:30 -0800 (PST)
Received: by mail-qt1-x841.google.com with SMTP id i12so12193125qtj.0
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ddE24nQujT4J4E8zVi5n6V/UPcSe6Ll28OZ8BrAwJE=;
        b=caWd7PQCiDo5DKvH4ennPUR9tOnTLqxi7X8fk12z9jr3r/dzTsePJ3c2nvqdGVEH94
         23tDzGyYr0Z4FSpHGVU3RNfCbKRgpLRBB5fZ4pYqXMTDajTc04//GY2rC1rYOE8KZKRS
         ZR71CgFRxtqGQZQFL0OJ8AJouP1kmL+0f4KNM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ddE24nQujT4J4E8zVi5n6V/UPcSe6Ll28OZ8BrAwJE=;
        b=k7RWkPY5+b9xKPo/wm1h0iD4Cgz7rPTPBMCRXnVqAKVz6slzq6VSicEMJT+VkwLUc2
         M/42+3YddWO/oXbfQiHkKGM3/fcLujweZmaFLqZieRvKHbvmHV+lj4YjBpyLQWocZlrm
         Dx8r5iScRLqF3ihO6CAqhxPnWA3pn1sYNf1IvclGwa0Y9MerrQDLlR/8ZXsKKzG+2XT5
         At+EB6NfRI+7Mg604RBXIS/V+oJ6QF8C4RLYK13pZ6l/L9TATWzu+QBzFOgAoyhevNcT
         KXjCbg379NaMwJ6gql0RgI2MRd5xAXwCfHL2rqbk/UT6YM7RBK7Dn1tv5+3sZbHgZng2
         i4PQ==
X-Gm-Message-State: AOAM531Wt418wGNXm66diOnee3qi8jFsbPT4ulrBX/PQXj5ngshpwRzE
        MiSEdRevtiHHjA4G4L/I7hEuPhAI/W8/bFaGYoIDD2yRB1g=
X-Google-Smtp-Source: ABdhPJxgdb5hpT67M0J/B3xkkTbq1dkPmMTpc/DBsLigD8nT5JB1RC4e68r1TOcTn4GiKMisJFqjnFeJo2jaQezNogg=
X-Received: by 2002:ac8:75c9:: with SMTP id z9mr13544465qtq.363.1605507269330;
 Sun, 15 Nov 2020 22:14:29 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com> <1605247168-1028-3-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-3-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:14:16 +0000
Message-ID: <CACPK8XdcUyw4st2Et2W0o95sdGOvGNuyoemgt_dUzrS3dYuRcg@mail.gmail.com>
Subject: Re: [PATCH 3/6] ARM: dts: aspeed: rainier: Add leds that are off PCA9552
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
> These LEDs are on the fans and are connected via a
> PCA9552 I2C expander
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 36 ++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index 1da7389..b7d7246 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -173,6 +173,42 @@
>                         default-state = "keep";
>                         gpios = <&pca_oppanel 3 GPIO_ACTIVE_LOW>;
>                 };
> +
> +               fan0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 0 GPIO_ACTIVE_LOW>;

Does it make sense to rename the pca0 phandle to something more
descriptive so it isn't confused with other expanders? If you want to
do that please send a follow up patch.

Reviewed-by: Joel Stanley <joel@jms.id.au>


> +               };
> +
> +               fan1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               fan2 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               fan3 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               fan4 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               fan5 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca0 5 GPIO_ACTIVE_LOW>;
> +               };
>         };
>  };
>
> --
> 1.8.3.1
>
