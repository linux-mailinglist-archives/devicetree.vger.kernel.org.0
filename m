Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BD85670E67
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 01:09:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbjARAJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 19:09:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjARAIi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 19:08:38 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B66E3D926
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 15:23:05 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id b10so2495767pjo.1
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 15:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yiOhtHFUCQHTJwZMEWavbTvh/DfmWjunrPPmM5iaq4A=;
        b=DyJDSRVhZwiuq772b+nPU9RZErfrV68tUeigHy/m8zRReluJsW7TEvZnhmcTZrgN6z
         Dmq/iZ37fOySL9GyrxKRIq7oXbpQjS34/gVx2NJiknWE7/quNFyBFiMYWnPoJvfutfRJ
         K8lyPMAgIbdvGB+xC2PVO1XqPNgTmee6VYzKbLZKrF0IJPwvPMnow7IFpbalcLvVCGU3
         LFM9Mvy/IEbw4ELsRIINJrGiShldTo+D2Ssskm6ChDYNVOl1jq3qf4/+x5eEPViuEdYU
         W2f8SinmKE4Odzasr2Z+hxo5nl2K1tjajpF4yx0S7RG6tp4ay8OunvXWAGnTLjZVfubc
         LWMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yiOhtHFUCQHTJwZMEWavbTvh/DfmWjunrPPmM5iaq4A=;
        b=13Cy5uDuJIRLKHBYPsoriHIp7D+0FifMwtHljF+Q4mSUCgQs5Befxu5krmEKT/G077
         tYjRT5RvKfSRuPjkzQvzTg0bDDe1totXSkJZ9Q6+CbnKxY0+UAiVlgQHGNUu01UCFgye
         qwF+ogtmWPlj/yJiSi9jUaKqLlDoAXdivnCe4/ZwLwPqNS/DVKKDxWXVcBswnlW+FRcH
         42HGsVhEVNBw/Op00swHVxE9AGLeb64XaiS+rVMa67AmEgHZsoJsQey6Dg5GK4/4mouN
         Tx9McoAFelKq/kpdphcVVLzECKO5LphUYuZ/oZvKFOqSvUUqt/U1G5bTsBmXSwDdq8mh
         xiMQ==
X-Gm-Message-State: AFqh2kpoBNjigmEwIKeyPpsEYGXWCVgWW/SnVT3ANHsEHuCDJe2SPwns
        XuBkSIewlqttzpyYyUyDFt6Wik73+xvM0lNX2NY=
X-Google-Smtp-Source: AMrXdXtkNYXRSFciMXy2Cpun7uTCAJD1qp5M33yjwSqbE8jmeruvDadcwTaKk1DezNSjJz+QwCTIrQvcGkl1ccSdGEU=
X-Received: by 2002:a17:903:2c7:b0:194:7a94:ba0d with SMTP id
 s7-20020a17090302c700b001947a94ba0dmr365458plk.82.1673997784488; Tue, 17 Jan
 2023 15:23:04 -0800 (PST)
MIME-Version: 1.0
References: <20230117223942.130170-1-marex@denx.de>
In-Reply-To: <20230117223942.130170-1-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 17 Jan 2023 20:22:51 -0300
Message-ID: <CAOMZO5D9=i-BM8RsFmgAvnR9Eoj+bO+H-aknuST3gE8NZf71gg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve bluetooth UART on DH
 electronics i.MX8M Plus DHCOM
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Tue, Jan 17, 2023 at 7:39 PM Marek Vasut <marex@denx.de> wrote:
>
> Use PLL1_80M instead of PLL3 to drive UART2 clock divided down to 80 MHz
> instead of 64 MHz to obtain suitable block clock for exact 4 Mbdps, which
> is the maximum supported baud rate by the muRata 2AE BT UART.
>
> The difference here is that at 64 MHz UART block clock, the clock with are
> divided by 16 (due to oversampling) to 4 MHz and the baud rate generator
> then needs to be set to UBIR+1/UBMR+1 = 1/1 to yield 4 Mbdps . In case of
> 80 MHz UART block clock divided by 16 to 5 MHz, the baud rate generator
> needs to be set to UBIR+1/UBMR+1 = 4/5 to yield 4 Mbdps .
>
> Both options are valid and yield the same result, except using the PLL1_80M
> output requires fewer clock tree changes, since the PLL1 already generates
> the 80 MHz usable for UART, which frees the PLL3 for other uses.

This looks like a good idea:

Reviewed-by: Fabio Estevam <festevam@denx.de>
