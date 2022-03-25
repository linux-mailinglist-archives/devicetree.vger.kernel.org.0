Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CD7B4E7CB4
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231197AbiCYUN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 16:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbiCYUN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 16:13:56 -0400
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458DF46640
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 13:12:21 -0700 (PDT)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-2e612af95e3so94230507b3.9
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 13:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YT2o1xxdFf9OVHBJJGoL9aS2UVDgV96wgaPQnf59u3A=;
        b=iUDT/G3LEcGf/5tagjP8eFjsGsyOBph1oCwiAU9SRpn47LJA8MWoC2ZnwxrjbSPjMm
         NMgbwZLb++g0JJFq9rSNRDfuiuAAY8Rb8mEl15bFUi/1axDz0mqVDBjWIOF7rWkJktPB
         GVLthy7ZRekp5ux4Y2DFI5hfRTVn6an7IoJvpEJSJ/9e6g+VV6/TIh6v+e0YKsPg/ANl
         u9+Q/qattDvEkHp5i6SesaOU1SOYG0BE3BKYCSAklaOO+5ljSccec5A3gP/LLOHHRLHW
         2IrIx4x8ygD2EPSpIa9BNu8dVIUcFM2jbwLpeByGektKecBFHNoOwvOwoDpGWDgslNFr
         atGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YT2o1xxdFf9OVHBJJGoL9aS2UVDgV96wgaPQnf59u3A=;
        b=AR0S7Cf36uC5j6nnmJXSjDWF63MDcGAcPTdcBc88mAJJNTpyLQ10DQ8oZiyhuNB8Kn
         yehzYTPR+hVXtxsWRJAVYwQ/qTsErvRF1NTxFKenoXfiY+j4Il01d6EbOmTFIJVsHOWo
         XfRGThEH1tn84gST/aci6psvf5OqtpcusbQeB5phxHoLQjAWsUPar/IwvMhpEsMxnNdg
         81TcGI93SSJpN8qvgdIelVMbyKmyK2ftkXf+g/d7Hfy9be6o96TPlYxiUUr9bp4DVZi0
         BlADWkPgZUKYvCUsinl8u22m/0uvskch650lf8jsdmj4iXs/a3mzsKO6svez20dwxY7h
         r1aQ==
X-Gm-Message-State: AOAM531tHU7Sr6Q8vjHWZiwKS9NWPVBvaBTl1HzNcGTSI6706QJuNzRN
        tMBP8eWJVMOgNqKJdmMMwFb8OH23rY7etMb7a+YXvw==
X-Google-Smtp-Source: ABdhPJxUBffdaPMdxHWCaYq0Qr6rteF2S4TUamYdP1nuniOmrgv1lq5txO6UeJxGVYZr0OiLkvNRfbesOoqWq1bIo24=
X-Received: by 2002:a81:164a:0:b0:2e6:8e4b:7487 with SMTP id
 71-20020a81164a000000b002e68e4b7487mr12654258yww.437.1648239140546; Fri, 25
 Mar 2022 13:12:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220304135134.47827-1-yann.gautier@foss.st.com>
 <20220304135134.47827-2-yann.gautier@foss.st.com> <CACRpkdYQz+-im3n-r0_8RKL7so2bHS=aZobty4BbzixmPzms-Q@mail.gmail.com>
 <0bc53018-fce4-4104-fa47-6e60d2367d69@foss.st.com>
In-Reply-To: <0bc53018-fce4-4104-fa47-6e60d2367d69@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 25 Mar 2022 21:12:09 +0100
Message-ID: <CACRpkdYMWXEX6dpT0aUrCrFd-8-U35OG9Zmpkfty=zMH=mQqbA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: mmci: add a property to disable DMA LLI
To:     Yann Gautier <yann.gautier@foss.st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Ludovic Barre <ludovic.barre@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        Manivannan Sadhasivam <mani@kernel.org>,
        Grzegorz Szymaszek <gszymaszek@short.pl>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 15, 2022 at 9:26 AM Yann Gautier <yann.gautier@foss.st.com> wrote:

> The STM32 variant uses an internal DMA, and the DMA functions are in its
> dedicated file. So I was planning to do the same as what is done in
> meson-gx-mmc.c: using a bounce buffer to copy from/to in case DMA
> constraints are not fulfilled. Not sure it can help for Ux500.
>
> Ulf, before I send my new series (although it is not ready yet), would
> you be OK with the bounce buffer idea?

Would it not be better if the bounce buffer is something available
for all MMCI variants and not restricted to the STM32 DMA add-on?

What I'm thinking is that this is a problem with the MMCI hardware
rather than with the DMA hardware, so the problem kind of gets
fixed in the wrong place if the bounce buffer is in the DMA add-on
code.

Maybe this is how you fixed it in later patches, I'll take a look.

Yours,
Linus Walleij
