Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1E93584A02
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 05:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233856AbiG2DAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 23:00:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233400AbiG2DAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 23:00:32 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 900FF4D4C3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 20:00:31 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso1889378wmq.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 20:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IARz1toyVxe2HEfXFShiS/q8AGQuTpTxAvAR8tfiMlI=;
        b=PEMKgRBg0/b8wGG06Ge61tOAZBg5440Z+J7QOYbD12FX41/2XsVQyh4TznJ+UHK5kH
         NryQjFW2ZK2KTD8qQxn3ZgSFKXRI1VjMcXjDvrtle5B2LdnezzkZrl3qN4w4bcm0Qlvu
         faD6K2VU+v8jypIBrG+P6iJUKSnGYh2oH6csw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IARz1toyVxe2HEfXFShiS/q8AGQuTpTxAvAR8tfiMlI=;
        b=6e1mLRnqX1a5c7oPQKQihaQW5L293XPe72E7MmY2MUsD/gklfZj4iufKFo8SWSpSxa
         V7K0WRFLj0dfD5D0taDBBnoGkq41j7kG67qPqiFaPncggkFutQvJ6dgk0BUca0h8ALrj
         DKchTclQGeEbVLQYvvL8AhANR8qyeAXMSKrK6Kv8/CwEf+4gN9F8oYMTGnE4Rbps4Wj2
         tIpHoNhNG11oSjfu6dIMKZgCLFm8cqxEYHRPPAdTHcIVCmOeWvpRkiPtvPhO4YSE8kF2
         QYMQKCFGwNvjxBcAlzbUVQogwvrtmd5uIeHuThLkOsckDD7nTYE+YVIhOVHquvurNrRF
         jQrQ==
X-Gm-Message-State: AJIora/SEVdAXrFiSQbevKw1Oykrd+aPGX3oDwAFctzVkfjXiHG4TPvX
        1nfyQUhuUDHMzKMR9xfIH58IOEw6IcnQfmpviqvjYg==
X-Google-Smtp-Source: AGRyM1s4J7+PVpOZXKBLR/RL1MJ9PGiF4IXC/hzBc5uB4snB/tWt+HG0unw+G16sBk8ZRvUykWi1YgJdBM4Iqn6UzPo=
X-Received: by 2002:a7b:c7d1:0:b0:3a3:1890:3495 with SMTP id
 z17-20020a7bc7d1000000b003a318903495mr1284023wmk.18.1659063630016; Thu, 28
 Jul 2022 20:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220728153913.2652153-1-treapking@chromium.org> <2640c637-68c7-641d-9b15-c57bdd5adca2@linaro.org>
In-Reply-To: <2640c637-68c7-641d-9b15-c57bdd5adca2@linaro.org>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Fri, 29 Jul 2022 11:00:19 +0800
Message-ID: <CAEXTbpdpOE=9U2ZNPBZDqBVS3AU9-cO6G9kjBy3tuVAbGrDNQA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: mt8173-oak: Switch to SMC watchdog
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Eizan Miyamoto <eizan@chromium.org>,
        Evan Benn <evanbenn@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 29, 2022 at 1:54 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 28/07/2022 17:39, Pin-yen Lin wrote:
> > Switch to SMC watchdog because we need direct control of HW watchdog
> > registers from kernel. The corresponding firmware was uploaded in
> > https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405.
> >
> > Signed-off-by: Pin-yen Lin <treapking@chromium.org>
> > ---
> >
> > Changes in v3:
> > - Remove /delete-node/ and create a new node for SMC watchdog.
> >
> > Changes in v2:
> > - Move the modifications to mt8173-elm.dtsi and add some comments.
> >
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > index e21feb85d822..fc8203297bac 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > @@ -161,6 +161,19 @@ hdmi_connector_in: endpoint {
> >                       };
> >               };
> >       };
> > +
> > +
>
> Why?
>
> > +     smc_watchdog {
>
> No, you need to read the comment you receive one more time. So to be
> clear: "watchdog"
>
Ah I see. I'll fix this in v4.
>
>
> Best regards,
> Krzysztof
