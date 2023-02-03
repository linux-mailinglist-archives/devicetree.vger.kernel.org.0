Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8A6D689189
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 09:05:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232673AbjBCIFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 03:05:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232919AbjBCIE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 03:04:59 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FBC1928E5
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 00:03:36 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id b3so6687130lfv.2
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 00:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGYEX31cIOUlSxZudKjVopVzn91z3Ew01YpLoqcpKls=;
        b=S/60yaFdQiaph4QS9kkuj+ea2XwVyrywllXnGIQ+IkTP+ldBv+p6rxiVqeUDCnzyWH
         LHu9uivsd8Fw/uvmqtQIHvF63F2lo/DeYreDaQUnzGc9jpytJm6bB65qfBvXfdvsGX4Q
         HdFSE+S/rVYBUN1CVlRW1dCBSYIaGYgdwAI/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZGYEX31cIOUlSxZudKjVopVzn91z3Ew01YpLoqcpKls=;
        b=Z+srbpeGgByD90VFYbPPOjiQb2nugmYtpjNfEcFpmX2Orp7/78el2fNkpGCYTx3lur
         fK4YxXnQAsw6T+lZZRkfcjRS8rnpDHbUWrdEL2ISuk7C5q6tGVySd6Z6mWrHlRZ415fW
         sBjT4TQiV8wgJL90xGeJHP2rc4HkLYKCuSDXEy908m+X1F4wRRw8ecoIrXHHU7dMh9Wp
         Kc4RRsDDljc7ap9s/SPutafTfYrDjMTH0YjRBaLB+cBJx3J4rewUD7NS/5fhirNefffw
         MXbJVYTZ5lEQZG9FMyxxpjHUERGpolV1PjbSvJluIVXruXv6f9FE4oWazTji3+myFEB7
         xVow==
X-Gm-Message-State: AO0yUKUzbao6nnYTYoEQ0VZnZZOB+Vta3FrVPKg76oMTRWaJkXCQ0Qg5
        O6FCfjdtGiSeBgVPNblpiPfaleueTRR0SQNWWfTrjA==
X-Google-Smtp-Source: AK7set91XwnaYcZbBk/Yz9RWLdFi3h485mqp5EUXwdslWc6MSPZlMY9ANjRIQq6nkxM/JF5EMtZO+TPQ/q336fuis0Y=
X-Received: by 2002:a05:6512:4005:b0:4b1:7c15:e922 with SMTP id
 br5-20020a056512400500b004b17c15e922mr1719439lfb.214.1675411414892; Fri, 03
 Feb 2023 00:03:34 -0800 (PST)
MIME-Version: 1.0
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org> <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
 <1jedrg6mkl.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jedrg6mkl.fsf@starbuckisacylon.baylibre.com>
From:   Da Xue <da@lessconfused.com>
Date:   Fri, 3 Feb 2023 03:03:23 -0500
Message-ID: <CACdvmAhW-uDUK-iL4HT1PgEnRHrBmNr26Q6M=wBYcpZ8=DF4Tg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
To:     Jerome Brunet <jbrunet@baylibre.com>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>, neil.armstrong@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 27, 2023 at 10:10 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Fri 27 Jan 2023 at 14:02, Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> > On 27.01.2023 08:59, Neil Armstrong wrote:
> >> Hi,
> >>
> >> On 26/01/2023 15:03, Heiner Kallweit wrote:
> >>> The usage of edge-triggered interrupts lead to lost interrupts under load,
> >>> see [0]. This was confirmed to be fixed by using level-triggered
> >>> interrupts.
> >>> The report was about SDIO. However, as the host controller is the same
> >>> for SD and MMC, apply the change to all mmc controller instances.
> >>
> >> Thanks, I applied it in for-next so it runs on the CI tests.
> >>
> >>>
> >>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> >>>
> >>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> >>
> >> I think we should find a better Fixes or perhaps split in 3 so it targets the
> >> right commit adding the nodes for each family.
> >>
> > This would be the cleanest option, right. Practically it shouldn't make
> > much of a difference. The chosen commit is from 2019, SDIO interrupt
> > support has been added just recently, and regarding MMC/SD it seems no
> > problems caused by edge-triggered interrupts are known.
>
> ... Well, I wonder is this might be linked to instabilities seen with
> very high speed mode (such as SDR104) and DDR modes. We have seen quite
> a lot of those over the years. In any case, if it helps stabilize the
> MMC on amlogic, it would be great if it can be picked up by stable.

On S905X, I'm still getting SDR104 failures with this change at both
208MHz and 150MHz so maybe not completely.

[    9.071641] mmc1: tuning execution failed: -5
[    9.579765] mmc1: tuning execution failed: -5
[    9.761580] mmc1: tuning execution failed: -5
[    9.871836] mmc1: tuning execution failed: -5

>
> >
> >> If the test doesn't report any breakage, I'll probably ask you that.
> >>
> > Sure.
> >
> >> Neil
> >>
> > Heiner
>
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic
