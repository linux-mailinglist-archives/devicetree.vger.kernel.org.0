Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4F555A5BA9
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 08:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbiH3GUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 02:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiH3GUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 02:20:10 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9EA93E745
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:20:07 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id m1so12826874edb.7
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 23:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=++JdMGtMD26Cu+yzgg5WWgx+GFtBxRSzs+SJ9mrdYSs=;
        b=RuopdrOnXcvGPQpkkU5y7aUfCeDwL2Vk+B0uFOGQ31l8vnTiZTHYk6ihBlMJAYdYI2
         w4ks2FybqN28VPifo1EW556toPVbTZb+gsL67qEjMjDbbs8dY/9J+/irPaOKW1jFSQBg
         BlZpdpQeU9e9TLTY2vUo5zOqs6uvetWvKh144=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=++JdMGtMD26Cu+yzgg5WWgx+GFtBxRSzs+SJ9mrdYSs=;
        b=R4S6xxi1wr/OPnYOQuMfaXG8S8/hMbPIcFa5vJdRMGxmMQY3u2xUzbfEAMDbAp7KJ5
         WBoWX1jQ5DdiG2KwzKOCXIB+v3VOWv3RMgKv+fg97vVTzhbSMXuir/rHl8DLPHSzXx7J
         EBeLh5Ngi/DZaoeR2g6f04m6NeEd/DgIBp3d4KkGryqBQ4fbQL/I8zejUs+I4AslZ6Ij
         4dakIfLBKDTOo6F2V3gh6mlSIluiRC6vpwQGBUTrHESD6ZkhScJ3W2E2REhrqfzgWsHY
         clwOby+qXSEklGTb/XMj3CLszNgn0Pi3EQkW10yMbLfhb9v4L2/gHuq3o7SsXXjbRNsb
         gDzg==
X-Gm-Message-State: ACgBeo0G8Cc/261E9YC5RAzxJw5Tm+FAHqekSdw3kNs9TJSqIxzhjpyr
        OfeYpkuCArsaywN7czuv+RwBSbTFkj5HlfGRapiTbg==
X-Google-Smtp-Source: AA6agR4+X1HPMOGOCekLTu6kouxtunRcm+JWVbIlAPGOJ9Se/iF2PG5WIT30LAM1ip8dpzPQ0uRuj18BopHLMsP7L9M=
X-Received: by 2002:a05:6402:428c:b0:440:8259:7a2b with SMTP id
 g12-20020a056402428c00b0044082597a2bmr18557129edc.329.1661840406408; Mon, 29
 Aug 2022 23:20:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZD2QDPKwAvJWB=kTJ+5ZtcdZhcT+No9joTkvBWnrKRmOQ@mail.gmail.com>
 <20220830054317.181733-1-naoki@radxa.com>
In-Reply-To: <20220830054317.181733-1-naoki@radxa.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 30 Aug 2022 11:49:55 +0530
Message-ID: <CAMty3ZCJ7oA8V72n2RTEBnyM9dH9uHd_a2XG0GUY8qyp0MpwtA@mail.gmail.com>
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

On Tue, Aug 30, 2022 at 11:13 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> > > > > does card detect work for you? it doesn't work for me. I think it
> > > > > needs
> > > >
> > > > Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> > > > revision board.
> > >
> > > I have same board, but I'm using eMMC as boot media. do you have any
> > > eMMC module?
> > >
> > > what I tried was inserting uSD card while running Linux on eMMC. it
> > > didn't work.
> >
> > Here is booted from SD with eMMC inserted on board.
> > https://gist.github.com/openedev/85fb939664b6f0803c9ce02c5b275167
>
> please try
>
> 1. power off
> 2. remove SD
> 3. attach bootable eMMC
> 4. power on
> 5. insert SD
> 6. see what happen

Got it. I'm sending V3 for updated changes.

Thanks,
Jagan.
