Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FAFE377225
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 15:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbhEHNib (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 09:38:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbhEHNia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 09:38:30 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E886CC061574
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 06:37:27 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id w4so15110343ljw.9
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 06:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ftM0lriMacmVyjTFdywUNrTXZZCxqno3YAZgA1+tZyM=;
        b=SpDJY7ytjcoqwVVrsHip7c9vdckuTk1kHLPg33T9n0WloY02+59vCmBy08MeQn4xb2
         8+qPG4eywmytY+AVoWWetOl+pRw9aXaaAH9J5cum7wY1crDyOAXRIgdPfq/nI0iCbwMz
         Tsj/qazW8AKHeD+uQxWRU7X4Fl8UB6B0dOYhMFjLV8psuL9hEk2ZbMn0GNwbIoP/L1YY
         kqbAjdj2z3BbcpIvbgIaSszwpibQJ4f1gGP+sVWWImA9C2+TYXXy/prDScXppkdvI2tF
         1ROpKB+b23AAa6lB8y+FbXf45+zUc28rJKAXWJHH1idHnLKXEVf+OqKFDb66mNjujTfm
         zOdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ftM0lriMacmVyjTFdywUNrTXZZCxqno3YAZgA1+tZyM=;
        b=PPQW4QeI7Xk6vl6D+0nE8rASRToHNaFkjcuCuwbOIKRh7PIvK7tB8guPefKZeXwN+3
         KzUaI4q0Dgipsp35Ry5C979zTKlTsCBPkUsza0EfXr2WgcYFwylepFQRuHVHw8HJcqwU
         V2K8b/L4yB+8qL7sPxQxI8NV5YrYMGjpA0aCibNShEyW806MXtEqF0IoP8zvpTmYHPLB
         oKqpGpGfFd6XlT6s2e67KDcAqJhXcp0bqFobwR3FUXeSOjVCsO2N9BliKtCuLDfH6Cbq
         ORNHC2jyjeeZY7jkhJNiVEo/7qKacYJ5QJzuI7nM/nZOJWSGhNrxvr9/J6FVykyX2eWb
         5gyw==
X-Gm-Message-State: AOAM531Ehm2Uej6/QT+BpBvyfhH1OSjyH43AUxTZowhRmPlupHqxrg/I
        H44r5K/l3S6iS1Lpv4dJ0xpsMsMXT8XMrx361Us=
X-Google-Smtp-Source: ABdhPJzoei07QrcBU0Ejw5f4jc5K8KJeKh5UH//PxDbr+BlwNkbYMrq9q+OxQRONUnhUVm+ZlnKON5siL84EOvOR+aU=
X-Received: by 2002:a2e:9892:: with SMTP id b18mr12112134ljj.490.1620481046330;
 Sat, 08 May 2021 06:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210508121650.105864-1-dev@lynxeye.de>
In-Reply-To: <20210508121650.105864-1-dev@lynxeye.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sat, 8 May 2021 10:37:16 -0300
Message-ID: <CAOMZO5B6_UVhAeCt7-AjeB8LR-_J7vQEQqb0yV5gAFUbBj_5VQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: imx8mq: add Nitrogen8 SoM
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Sat, May 8, 2021 at 9:17 AM Lucas Stach <dev@lynxeye.de> wrote:

> +       pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK                 0x8d
> +                       MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD                 0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6             0xcd
> +                       MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7             0xcd
> +               >;
> +       };
> +
> +       pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
> +               fsl,pins = <
> +                       MX8MQ_IOMUXC_SD1_CLK_USDHC1_CLK                 0x9f
> +                       MX8MQ_IOMUXC_SD1_CMD_USDHC1_CMD                 0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA0_USDHC1_DATA0             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA1_USDHC1_DATA1             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA2_USDHC1_DATA2             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA3_USDHC1_DATA3             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA4_USDHC1_DATA4             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA5_USDHC1_DATA5             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA6_USDHC1_DATA6             0xdf
> +                       MX8MQ_IOMUXC_SD1_DATA7_USDHC1_DATA7             0xdf

The 100 and 200MHz pinctrl entries are unused here, so you could just
remove them.
