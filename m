Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1382A6291ED
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 07:38:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232359AbiKOGic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 01:38:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232314AbiKOGib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 01:38:31 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4BB12CE
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 22:38:30 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id j2so16113735ybb.6
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 22:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6shJJo4xYqvesACp/7EtByfbdXxtPIwt6YdEFaaoorY=;
        b=KtnYSxEPptNmDg41JK6c0ZW9RxdZ6NXaJHhFC3XoYYfesPNnv/izUtRJDF9XMxTdwi
         evj/48DIwXqDq8TRG63zK73tuJcdb3bmBtphMaR+7WA9GKlbEKbsuallVA7K+J8+0rvU
         hYygSHEK+QonqJScvE46KF7cSkuJNKq7NHpLE78O0auAZkFYaveSj7ejpXEKFupbpN1F
         Uxs0ews+T5dEk1Hkm076bVckDAh2/Wq+pHT3Z9/x29G6T/OD6iG3823EbhnhKQOIAqnT
         FpVjeWp+dYVLvUzhlrQAkLH9AT2Q1rqFlvdRrkNRulyBjfN5+Lz7CD/ctsnkRhMUjw6O
         UnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6shJJo4xYqvesACp/7EtByfbdXxtPIwt6YdEFaaoorY=;
        b=FKPamUU9tMk8c4HsgZh9C87KgwIcmMO7KLY8nR046A1VTdPlque9zISyKil3pL4h6V
         xugZNNhD+kA+34LcCysNSpYSuk9ZdPJDqXV1vCvI6/X4/nHc6Z7jCEmU7YH59PyXgJ5U
         5vR/dLXAXL1WKANE4jUzhrQqTv9uHDTQDQGFb9W+DNEx94+SAVPo97au4aFDr2VOU/ks
         W5Uwdjwtc/f99R1SnUBj6gKeA6FP5EbI4yvQQuLbMistANlLi0ZElmDiSd3BZkvvQfrl
         prVc024oUgAFV0ytusLXdENZHiDRtKfdIr3D1ePVvvKzqu8fntMlxIGfgV34xtFouHci
         aCJw==
X-Gm-Message-State: ANoB5plIyaSTWQnBrEWe+JIwwkoAMSYCVX0NQykRp+OeivirdAT2kiC5
        WDgj90mHFA9npuhuIRAG7bchxzKRmA9pwj0ARf8Ajg==
X-Google-Smtp-Source: AA0mqf7GgWnoT1OlRVIkansgNrcwHk+AdrHNSoMFN501pQtR/GqqAwQIYmTBxMXyZUYgjxUXBqcC/Rlmi/dYrk69nGM=
X-Received: by 2002:a25:acc7:0:b0:6dd:ac4a:65e1 with SMTP id
 x7-20020a25acc7000000b006ddac4a65e1mr16069701ybd.288.1668494309937; Mon, 14
 Nov 2022 22:38:29 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
In-Reply-To: <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 15 Nov 2022 12:08:18 +0530
Message-ID: <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jon Lin <jon.lin@rock-chips.com>,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/11/2022 05:13, Jagan Teki wrote:
> > RV1126 is a high-performance vision processor SoC for IPC/CVR,
> > especially for AI related application.
> >
> > It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> > NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> > and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> > hybrid operation and computing power is up to 2.0TOPs.
> >
> > This patch add basic core dtsi support.
> >
> > Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v7:
> > - fix dtbs_check
> > - rearrange nodes
> > - remove Edegble in license text
> > Changes for v6:
> > - add psci node
> > Changes for v5:
> > - none
> > Changes for v4:
> > - update i2c0
> > - rebase on -next
> > Changes for v3:
> > - update cru and power file names
> > Changes for v2:
> > - split pinctrl in separate patch
> >
> >  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 438 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >
> > diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> > new file mode 100644
> > index 000000000000..a485420551f5
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rv1126.dtsi
> > @@ -0,0 +1,438 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> > + */
> > +
> > +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/power/rockchip,rv1126-power.h>
> > +#include <dt-bindings/soc/rockchip,boot-mode.h>
> > +
> > +/ {
> > +     #address-cells = <1>;
> > +     #size-cells = <1>;
> > +
> > +     compatible = "rockchip,rv1126";
> > +
> > +     interrupt-parent = <&gic>;
> > +
> > +     aliases {
> > +             i2c0 = &i2c0;
> > +             serial0 = &uart0;
> > +             serial1 = &uart1;
> > +             serial2 = &uart2;
> > +             serial3 = &uart3;
> > +             serial4 = &uart4;
> > +             serial5 = &uart5;
>
> These are not properties of a SoC but board. They depend on the
> particular routing on the board... unless this SoC is an exception from
> all others?

Was this a new feature to follow, didn't see this before at least
rockchip SoC's.

Heiko, any comments on this?

Jagan.
