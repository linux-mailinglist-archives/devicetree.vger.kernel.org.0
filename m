Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE4EE5A5AF0
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 06:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbiH3E4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 00:56:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbiH3E4P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 00:56:15 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF57266A7A
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 21:56:13 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id z8so3829961edb.6
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 21:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Ct12KTYjiiY5loIbV4mY2fxWIuXj8jz58iaHIjxHic8=;
        b=lna4QNb5nnAPp1vH6NVXtxzsSFkSKU2mg3KMsHJJ7kj++9vTwz1uSkt33p1QTddnAa
         LU5go2AcbcSI9C8eoj+0B6yhKdjLkr2c53xALiMcYPrkEXq732K9mhl0QuQXNpxY6p2z
         CPQcO2yc+iTb46wsdrmcqhfv9a562NHCDRDp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Ct12KTYjiiY5loIbV4mY2fxWIuXj8jz58iaHIjxHic8=;
        b=PakFTtYGB7c7apG/Ax1Vbllbxctt2sSySO6pncVJQMQ/F47Sk5H++WyE1bKu5QI9xA
         KMkE4/VWxe7AH+ywmi6jKWK85YRa+v8b1yJIlUvSb4SAEqOVP53QHaMFWAPZj65l2Zd9
         KYiesyV0qy49rb+MEGHFngNIH/1mpcKmahY97sma4bYL8sHFOe5OmMH275VUS9IqDf1J
         bCXX7ak4LPzco1PlGiT1nUj035lOwBftGdVVlWiR2TiUMAzQVvks8f4Q37d5lEAGtbOn
         MH8eGJk0o9MP8ji3eUI0mttkRm1uILGSluNbTnTVXqZ1JJOypUVpxVvfkXHHrTOvdzRI
         4peQ==
X-Gm-Message-State: ACgBeo1KuZMvu3szCz2qcUZJ9islmBsX7Svoru1Tno8GlfpkL5mK0P7M
        CIu4zY5DySWMbzr6zq6p7C0xDa7d8UdY69Oae3r7ybcNqu90EwWW
X-Google-Smtp-Source: AA6agR6EQyA/TtFnUUL9Y3HVLcIWTXWS3OJ7y6+paUu/xnq251VjV3BwtIHPo4hCcXe200uGbKf2wdtcN8dOv0eEf+M=
X-Received: by 2002:a05:6402:4303:b0:448:7014:ed8f with SMTP id
 m3-20020a056402430300b004487014ed8fmr6625364edc.335.1661835372254; Mon, 29
 Aug 2022 21:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220824080903.3696847-2-jagan@amarulasolutions.com> <20220829201752.518374-1-naoki@radxa.com>
In-Reply-To: <20220829201752.518374-1-naoki@radxa.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 30 Aug 2022 10:26:01 +0530
Message-ID: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To:     FUKAUMI Naoki <naoki@radxa.com>
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        stephen@radxa.com
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

On Tue, Aug 30, 2022 at 1:48 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> Hello,
>
> thank you very much for your work!
>
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
>
> this is not an objection, just a note for me, currently our(Radxa)
> u-boot try to load "rk3399-rock-pi-4c-plus.dtb".
>
> > +#include "rk3399-opp.dtsi"
>
> ROCK 4C+ has RK3399-T. it needs different opp table.
>
> > +     aliases {
> > +             mmc0 = &sdmmc;
>
> please add
>
>                 mmc1 = &sdhci;
>
> as like as other ROCK (Pi) 4 series.

are you sure? other use the same.

mmc0 = &sdmmc;
mmc1 = &sdhci;
