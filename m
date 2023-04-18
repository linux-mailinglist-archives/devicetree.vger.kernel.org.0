Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50E856E5AA2
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 09:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjDRHnB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 03:43:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230025AbjDRHm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 03:42:59 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD4585FE4
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 00:42:33 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4edc7cc6f46so946915e87.1
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 00:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681803752; x=1684395752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtqIqMNC7LuOrbOTCfwMXdHzZ9s4D5MfzU5PnZ8V9ZU=;
        b=Qnj0pAaqHUlLnkjL7ZdgJvOGu3CJF1kbQ/d70sYVORX+UNXbanHAYgp8JzTcAlnnNr
         6/Mw2vQx972XFVFHqG8PUgOw2oDwJDsfwMSjaFXP2vHT6C4AptLmtP/7QTJEGPsfMqZM
         D2rBU3hr9hkl/lr4U2xKelMMJhUVyARrmxJdFNKoGkMG/T59lI0XJ686UVN0i11shX4W
         6ctvxMeIpYDY6XnW6/hsBCpF6oCkLf2i/ZD5+zlImUb/qjdJFl8mC+IFxJYkBAy8OSJA
         lTUx2HFDW9eFbNQG4Bhc5vGNRHK1dITWCOtE91LgMtjhE87kfX5JZ2ruhn7IHddddmlq
         AXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681803752; x=1684395752;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtqIqMNC7LuOrbOTCfwMXdHzZ9s4D5MfzU5PnZ8V9ZU=;
        b=TUZdHTpshFSQGtrueo90/5olAeJ3j9Uj8O2LPB5EZKQxRvdAF46foYY/EOKo64osLx
         XrFDTiBtB0OAQY/mp0twDeRKhPfLFwyB/Tzx2VKxit5IIh9/4JgTEvr8mL8kIKrW46eU
         nSZgYPqNwuuP4WWn3EFzp+JzTK863mhdZUsp4R6PnRgXEuGB/PU0w8Po397MVkIWmSw3
         oTsycY+nHhZapgd9Awbg8Qa1bYfMMDbnNq6CNH2IXnE1jVvSu0QgbGfUc6mqdyBaCc+e
         DC6pZiNkYto8uE0ic93aw8j1nk69CEcUpfCPsSPAgSW0CRIQP5OlaalRSwt1tw+jgjQM
         +Qaw==
X-Gm-Message-State: AAQBX9cO9+i5bsv2YpMiVG3+4FlMBFW1pJyQF0zEJKCk/PCESR//sbWB
        LjcdGWaTHt2z+axtfuXd/MRxjjnVx5PNyRF4AdU=
X-Google-Smtp-Source: AKy350YxPhK/T8mwd1xKJXt0SNqsHzgZFnLvwyzVRMnlbOkfb9QeMhsrLcDTLq3RzGU41Rm6Jqh/SMCqNO4Cot792Fc=
X-Received: by 2002:ac2:47e7:0:b0:4ec:7967:9e93 with SMTP id
 b7-20020ac247e7000000b004ec79679e93mr2946555lfp.0.1681803751913; Tue, 18 Apr
 2023 00:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230405123813.2272919-1-pbrobinson@gmail.com> <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
In-Reply-To: <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 18 Apr 2023 08:42:20 +0100
Message-ID: <CALeDE9N_DFdsxNf5UJL265fBTeEO=NPmUPb-YnDqiLMCWkPrOA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Martijn Braam <martijn@brixit.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        linux-rockchip@lists.infradead.org, Ondrej Jirman <megi@xff.cz>,
        linux-arm-kernel@lists.infradead.org,
        Jarrah Gosbell <kernel@undef.tools>,
        =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 17, 2023 at 11:43=E2=80=AFPM Heiko Stuebner <heiko@sntech.de> w=
rote:
>
> On Wed, 5 Apr 2023 13:38:13 +0100, Peter Robinson wrote:
> > From: Ondrej Jirman <megi@xff.cz>
> >
> > These are implemented via regular ADC, so regular polling is needed,
> > for these keys to work.
> >
> >
>
> Applied, thanks!
>
> [1/1] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
>       commit: d3150ed535805403291b95fd84b00b0b5ef41096
>
> With Volume Down increased to 600mV as suggested by Ondrej

Thanks folks
