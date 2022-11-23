Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6526365E8
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 17:35:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238194AbiKWQfj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 11:35:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235641AbiKWQfi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 11:35:38 -0500
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA3A723BD7
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 08:35:37 -0800 (PST)
Received: by mail-yb1-xb29.google.com with SMTP id 205so2215028ybf.6
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 08:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=I512k+5HxYN6TIYNRPVdtDxoBAmyY+SrEKRZhcw37Jg=;
        b=ei9V3ZOElczjruMMx6tL0CNa+yhbaYUOyBh5s103CFRHYUUcOp/G6QhgtfZr6+ZRIu
         KuF822LhArqBJ2geTG6U0zKIguwA+ZPgGWRz1g1A+sDVVqMZUJS/nxFmeHYssSFP5kk6
         xnQ6GpDWpGTFSSoPFYbQ3NDZ/8ldGhPQbTV8+zj9mjji8SsA17fbqA64OYAH58X5EsJX
         YmMoNd8kZYrYppf1mfdVW0BoJiZFdMX/jhxeNRtTDgROU2v80PRu1wDMW9Q+VCITYa/X
         08GkSlxY36oZC5C1N75HniBZWdWkekjr2JBsjHAfixYGq+WaO5g5F2VmUorrWXuZhSbS
         CWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I512k+5HxYN6TIYNRPVdtDxoBAmyY+SrEKRZhcw37Jg=;
        b=rcvQteMq/c1ZhL+SG6zWrQhDK5ZiHefv+7GicoSGqGzLXsZZygV7n9kCqugj7zuftP
         fXoDvAq3jOjrkh7j52fHEZiTdIcefBU0wJ6bc2SDfLcMypBzFH2Gq7V9ik607nq3G3Be
         pcI/+mZJA0h4KQ9MU4Ugj5mO1SkCwpkjwlCGMpVr0yOS51WfvE5F5W7zacdzNEkzUUq8
         OiNNIQUPhcic9jsbQPcTIkc1QDOT19VK0QfQZkpVizt3e3/fuMajhKg1lbkGdHo3Qon7
         ltPoL7vMFzTtu48faaK8XltdAXWxxIsxnwlpN7yAkVqJUi7MGVpifSeLlUsIrpA4sXZ7
         Kg0Q==
X-Gm-Message-State: ANoB5pm6PT1IuWbdsfNrK/CQNY41jrWZtD49tpAoMJAhlhVnld1F1Cc9
        npjB6ZCZ98plsu0J3uEzzCCR6bxW8kaMeF/y2Kz57pbSd4RkNb0Yx+PE1Q==
X-Google-Smtp-Source: AA0mqf5pllc0QqC3+Ys8ottc4PMAMxgfQ1Nx8S4Gs9rMEjdsQxuVNXp/uZH68vAUtJ5KB0PdkZtV5nIZQyITvOD8Pxo=
X-Received: by 2002:a25:aa2f:0:b0:6d6:9455:cb0d with SMTP id
 s44-20020a25aa2f000000b006d69455cb0dmr9232544ybi.539.1669221336842; Wed, 23
 Nov 2022 08:35:36 -0800 (PST)
MIME-Version: 1.0
References: <20221108041400.157052-1-jagan@edgeble.ai> <20221108041400.157052-7-jagan@edgeble.ai>
 <429df965-bd4a-afa4-e66c-6907677fbf8c@linaro.org> <CA+VMnFxs06_KvZc5p_rNAep9aJ+t908CUtVcVTBV7c_b1mu+Xg@mail.gmail.com>
 <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
In-Reply-To: <149c2614-d87a-4406-5552-f444709a6e09@linaro.org>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Wed, 23 Nov 2022 22:05:25 +0530
Message-ID: <CA+VMnFybPA=6-LvSDd=7EXk6fo4oY_hNBwCcDURgnFs4DP_hzA@mail.gmail.com>
Subject: Re: [PATCH v7 06/10] ARM: dts: rockchip: Add Rockchip RV1126 SoC
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
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

On Tue, 15 Nov 2022 at 13:25, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 15/11/2022 07:38, Jagan Teki wrote:
> > On Tue, 8 Nov 2022 at 23:43, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 08/11/2022 05:13, Jagan Teki wrote:
> >>> RV1126 is a high-performance vision processor SoC for IPC/CVR,
> >>> especially for AI related application.
> >>>
> >>> It is based on quad-core ARM Cortex-A7 32-bit core which integrates
> >>> NEON and FPU. There is a 32KB I-cache and 32KB D-cache for each core
> >>> and 512KB unified L2 cache. It has build-in NPU supports INT8/INT16
> >>> hybrid operation and computing power is up to 2.0TOPs.
> >>>
> >>> This patch add basic core dtsi support.
> >>>
> >>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> >>> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> >>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> >>> ---
> >>> Changes for v7:
> >>> - fix dtbs_check
> >>> - rearrange nodes
> >>> - remove Edegble in license text
> >>> Changes for v6:
> >>> - add psci node
> >>> Changes for v5:
> >>> - none
> >>> Changes for v4:
> >>> - update i2c0
> >>> - rebase on -next
> >>> Changes for v3:
> >>> - update cru and power file names
> >>> Changes for v2:
> >>> - split pinctrl in separate patch
> >>>
> >>>  arch/arm/boot/dts/rv1126.dtsi | 438 ++++++++++++++++++++++++++++++++++
> >>>  1 file changed, 438 insertions(+)
> >>>  create mode 100644 arch/arm/boot/dts/rv1126.dtsi
> >>>
> >>> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> >>> new file mode 100644
> >>> index 000000000000..a485420551f5
> >>> --- /dev/null
> >>> +++ b/arch/arm/boot/dts/rv1126.dtsi
> >>> @@ -0,0 +1,438 @@
> >>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >>> +/*
> >>> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd.
> >>> + */
> >>> +
> >>> +#include <dt-bindings/clock/rockchip,rv1126-cru.h>
> >>> +#include <dt-bindings/gpio/gpio.h>
> >>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> >>> +#include <dt-bindings/interrupt-controller/irq.h>
> >>> +#include <dt-bindings/pinctrl/rockchip.h>
> >>> +#include <dt-bindings/power/rockchip,rv1126-power.h>
> >>> +#include <dt-bindings/soc/rockchip,boot-mode.h>
> >>> +
> >>> +/ {
> >>> +     #address-cells = <1>;
> >>> +     #size-cells = <1>;
> >>> +
> >>> +     compatible = "rockchip,rv1126";
> >>> +
> >>> +     interrupt-parent = <&gic>;
> >>> +
> >>> +     aliases {
> >>> +             i2c0 = &i2c0;
> >>> +             serial0 = &uart0;
> >>> +             serial1 = &uart1;
> >>> +             serial2 = &uart2;
> >>> +             serial3 = &uart3;
> >>> +             serial4 = &uart4;
> >>> +             serial5 = &uart5;
> >>
> >> These are not properties of a SoC but board. They depend on the
> >> particular routing on the board... unless this SoC is an exception from
> >> all others?
> >
> > Was this a new feature to follow, didn't see this before at least
> > rockchip SoC's.
> >
>
> It's not exactly new comment, but rather not always enforced/given.

It seems like i2c0 and serial aliases are required across SoC instead
of the specific board. An example of which i2c0 connected via PMIC
which indeed require aliases to get a probe, which is common across
SoC.

[    1.778941] i2c_dev: i2c /dev entries driver
[    1.780877] rk3x-i2c ff3f0000.i2c: rk3x-i2c needs i2cX alias
[    1.781410] rk3x-i2c: probe of ff3f0000.i2c failed with error -22
[    1.791312] Bluetooth: HCI UART driver ver 2.3

Thanks,
Jagan.
