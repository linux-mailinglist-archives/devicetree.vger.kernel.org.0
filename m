Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A363864D9CC
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 11:55:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiLOKzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 05:55:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229596AbiLOKzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 05:55:31 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A70F75F66
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:55:30 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id 2so2978111ybl.13
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MAzkART/K+H1BtBy2iGf2pMDNR/MlfcpKi3QLVUBijc=;
        b=3XwC3z+7qmKuu3PPVK1x6/x3iu4IDgw/47F0Lq1kOaCXFWv8uu6uZuN0gLYi7w+3zm
         kvOWLkPOSsh36KlrBfmKIhkfe/QDvyP3UP7uIXDDmxQdZDEa5EsMOvn6+lDuqPlMc6Fr
         Ty4+PnXwXPwWp1sDc83bUv7lHZRyie5AddZzNEOK4QgPZwK/WTzIbp6ftggolib+6jsR
         5JCm/goNnWG0lhyid5lCYJ/kZuOuwQKNSiY61WUFC/ksL09Lbg1JdIhY5rMzqAmXyItM
         ow4QCkRMSJRujiAmdHAupsiQoE/3rZREJGls9+gGjPrA5XMDMLUjk4bovi7CdB3dvN2s
         rkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAzkART/K+H1BtBy2iGf2pMDNR/MlfcpKi3QLVUBijc=;
        b=s7hOCxusoDynqLNl/d6qxE85K/SCJDZzesjrD/JAidqJVRHCxp18N65jhBdpR3dIXN
         XMN8FHycEWg87CgXA0QxlmhGQgQbpl2EpVWEIoZMLlnoP9FUq/5iW+2n/AFW6f/9HC1H
         0IkLfPBfFCfPEDqWsVschQSRTL9d6a8eujVUFrzOGFXo+Xt5CYFAiGm3OxZLKQRAG4u3
         olSvDwVyjU17fVE0jBkm7OX9Txf4WDthPOPIMqLoBRCGVW3f0FJ3DZiiyNzuUR7so/Vy
         hoLnVAk8Azu2qXxA7WugxjG9wsRiEDXRDyDimJHoKRrMWK73/ARH+bfZp6hQZz/OThmb
         r7TA==
X-Gm-Message-State: ANoB5pnpSvffgFbeb0RM+4LBt6AloSR/k+5ZFM0DNtSm3moySBHdSY2N
        rvzOUtMUkv2QWHwalgAcNrXhTop+/Dkkz1nVZDK5kw==
X-Google-Smtp-Source: AA0mqf5D2ka2OLSU6EKaH/KzAy3R9CDYQoDtyeqHkE52AM+pBVLuEEW2g1AXaXRdS9FL2SHNiUg+soG/TsJ0Rrphz/I=
X-Received: by 2002:a5b:ac6:0:b0:702:5c2c:c9ee with SMTP id
 a6-20020a5b0ac6000000b007025c2cc9eemr14594410ybr.44.1671101729873; Thu, 15
 Dec 2022 02:55:29 -0800 (PST)
MIME-Version: 1.0
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-4-sebastian.reichel@collabora.com> <CA+VMnFzMgOC7sgcpQ7nZx2gaJfqqvRu8RxETguaBHN1Lg_nG_w@mail.gmail.com>
 <9a3cf2f1567f2a5990ed6dea9d6a5669@kernel.org>
In-Reply-To: <9a3cf2f1567f2a5990ed6dea9d6a5669@kernel.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Thu, 15 Dec 2022 16:25:19 +0530
Message-ID: <CA+VMnFxuzmP_7Rxp9UtUaeyZe=WCLCd2idqk8rorYsQWMSaF9g@mail.gmail.com>
Subject: Re: [PATCHv6 3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
To:     Marc Zyngier <maz@kernel.org>
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Christopher Obbard <chris.obbard@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
        Yifeng Zhao <yifeng.zhao@rock-chips.com>,
        Elaine Zhang <zhangqing@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Dec 2022 at 16:20, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2022-12-15 10:45, Jagan Teki wrote:
>
> > One nick with dtbs_check,
> > ethernet@fe1c0000: Unevaluated properties are not allowed ('reg',
> > 'interrupts', 'interrupt-names', 'power-domains', 'resets',
> > 'reset-names', 'snps,axi-config', 'snps,mixed-burst',
> > 'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'mdio',
> > 'stmmac-axi-config', 'rx-queues-config', 'tx-queues-config' were
> > unexpected)
>
> You did read the cover letter, right?

Now I checked, thanks. Seems a known issue to go.

Jagan.
