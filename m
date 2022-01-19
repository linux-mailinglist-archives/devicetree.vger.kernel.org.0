Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9E8493B69
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 14:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236230AbiASNta (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 08:49:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235698AbiASNt3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 08:49:29 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83CAFC061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:49:29 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id f17so3433274edw.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:49:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5CKHyrBinXDGZq+R5Lj5WTkvbI+3HRL3jK7uNE3mCDA=;
        b=BTpsAev8L0zjJ1ApYj/IcqtjYKWABlaOwxpre/LcUrUhIGXphuUKV++HkDXUEAjrS4
         +Epyz+ROYQ246c6Re5eGs4LE6ilaffQP78IFDTQ6R3835VgWFYBWzzZjtXKtIox3A5J+
         fnvjWUuWNl3xdm0auA2eMaFtnIRX7yKRUB0GNW74gWv00aJ/KZzwNabz2IqUB5aufdKs
         FkNGk7VPyhLNliCTwi1D7qk0LAErKFB8r5QciebyQbcRFDzIlQ7dVoZusydl8x44pFfb
         j05OXyZyQ7vARQioEoeHM69ZEEY4D/1VzWe1HcPVPLv1Ov1neBMXUaEMYXudbTSfJNWQ
         UFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5CKHyrBinXDGZq+R5Lj5WTkvbI+3HRL3jK7uNE3mCDA=;
        b=Av1JdVNCM32rpbTxxd/YMUi60HAtzjTFx3tZGyVWyULC69DPv6Xcg/m6WSxk6tSJ/K
         BSeeQGEVK//07ZFP79bmnf8iL+OluwVpXF61dtoR9TbW0qZSHe/d0u86vnWJtrSZC/WM
         6/pZivpgmHPpmfl+gOUgfvrIAth/lXouepB45VtqM6m1546/q3wZoLaDq4PNNdvosGjP
         ZhXXEgHYzsfoqgkvpXBaYrQ/pbc7BvB363836J3ObwDJ3dI3yBl2MFSvEt+VZ4YogzwO
         aoiHgwJCbvII+/cXnbeIV6ndW6yrKToAeU7ntfWyesct84vzfR2QpvnXGWdo6yFxW641
         j1pw==
X-Gm-Message-State: AOAM5337g8E4evXE8tTVB+dPQA1WLe9NZ2aGN28LX5nFdQCMYm0K/rzU
        5Kowkhc7PbPlH3wdxFDgICjI9hwdqGT1dRbWPLwaGRU2QwsyBA==
X-Google-Smtp-Source: ABdhPJzVLW4LkIEu9DZtmYCpz6drPudDsDmXUYOg0cKQrH0DNOewPNcWgw16beIItF8ldjYSNGESFfa0nhmat0kOklU=
X-Received: by 2002:a17:906:4f90:: with SMTP id o16mr24857715eju.626.1642600168072;
 Wed, 19 Jan 2022 05:49:28 -0800 (PST)
MIME-Version: 1.0
References: <20220119134027.2931945-1-l.stach@pengutronix.de> <20220119134027.2931945-6-l.stach@pengutronix.de>
In-Reply-To: <20220119134027.2931945-6-l.stach@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 19 Jan 2022 10:49:16 -0300
Message-ID: <CAOMZO5DRkVJ++aTB3jtU9u7PqUMjMb96DdJkZjEfmnsHPmfSjA@mail.gmail.com>
Subject: Re: [PATCH 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO blk-ctrl
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Wed, Jan 19, 2022 at 10:40 AM Lucas Stach <l.stach@pengutronix.de> wrote:

> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml#

Should be http://devicetree.org/schemas/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml#

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8MM DISP blk-ctrl

Should be NXP i.MX8M HSIO blk-ctrl
