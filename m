Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1C5C50E3BE
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 16:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbiDYO5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 10:57:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbiDYO5V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 10:57:21 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A6933467F
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:54:16 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id v59so14588158ybi.12
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wQZr9eh6feQtr/PZGtNf/LwMxvChFvbqt8/adktEEqQ=;
        b=gvIHaqnv6jfS42c36lLY6lisW4tYxSJgC1bTWmctt6ctqmPC4yh/WevUQTlEOZdI5k
         iKEf45GKpMA2KJHUmu04NoMBcWDtNez8gHafIfCPBRl6zdLICRclaXXynym83ujfH+z7
         EiXxhQO2pDc5eBG3+oXjotsvo/CfBLkR8CrGKNbJj45USajufyAl7BWfcyqUmN/G/N9L
         vMf4WEIxb9v1mNvhDuecuXhnWAB75QB1fqToyxcVtDDaxfiGzs+xNh4f+Ou8yomoWdu/
         5Fxz2aPBNxBlYwWaXqDvoO1LHSRtT3Jc59+WwYgMlabS6DaiRYwuc1GXJGTfVEBvHGfz
         4fCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wQZr9eh6feQtr/PZGtNf/LwMxvChFvbqt8/adktEEqQ=;
        b=oN6pgTB1NHLHLN5KUxYSno7D8jNncxT49iavZunhYeXyBmJ8sUZXVN4j5CksYUNow5
         e8NQyWJOC1eg6dQK2UsHT5E1L9caeV1CYjRywEhARpgasi/II2oY+lyT0bzbEgwXsSgF
         7/zT+5/gpgyL5UjMu97IL4V+838tkgPws2hbJTw5Lbqp/+00oeJZTtfxaJMSWHMYilXS
         /ph5EmtKceJIbJNc9RAnqmT5TWIu5w7vpFciS/Xkli/SSxCwYFMOABMfmtfO92ex02rh
         Uet5AgDNm8RLAhW5sLQwSpEt2Tgu9btuYkZIIHzloPK3G5fTApPLbD60XHcVbh7KcauC
         67Bw==
X-Gm-Message-State: AOAM530T0Nirn3bkVjXnEC5ESN8+X0LPjxLZnUa49zYx7fGGGJ2IhbuN
        iRb4DNZO5oo0ZFzcLTU3DBKR4Qa9ytSu0Q/QjbPzQg==
X-Google-Smtp-Source: ABdhPJyrElEV7qCG3Q1FuffDboG6sUDbDbsFKP8JYu6HsO7gvchyUgm7pO59ejDQ+UjRitA9ybuc0WtMrtVOmkH2LI4=
X-Received: by 2002:a25:1585:0:b0:63d:de88:5aa6 with SMTP id
 127-20020a251585000000b0063dde885aa6mr16508102ybv.201.1650898455071; Mon, 25
 Apr 2022 07:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com> <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com> <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com> <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com> <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
 <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com> <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
 <EE789168-EEFD-4231-96D5-9E62AED6D08C@gmail.com>
In-Reply-To: <EE789168-EEFD-4231-96D5-9E62AED6D08C@gmail.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Mon, 25 Apr 2022 15:54:03 +0100
Message-ID: <CAPj87rNr4c=xpp2XSsQ17da-gOoGBzf6scA1pZCOO_5CTqLjwg@mail.gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Lucas Stach <lst@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Piotr,

On Fri, 15 Apr 2022 at 12:11, Piotr Oniszczuk <piotr.oniszczuk@gmail.com> wrote:
> Looking on Qt sources it looks to me this format should be supported:
>
> https://code.qt.io/cgit/qt/qtbase.git/tree/src/platformsupport/kmsconvenience/qkmsdevice.cpp?h=5.15.2#n380
>
> Interesting that with custom Qt config1: "format": "argb8888",
> DRI state shows: format=AR24 little-endian (0x34325241)
>
> UI is OK, playback is OK. OSD not visible (*)
>
> custom config2: "format": "abgr8888"
> Qt crashes with EGL_BAD_MATCH
>
> So it looks forcing some Qt formats works while other - not.
>
> Looking why this:
>
> Qt logging says nothing.
> export MESA_DEBUG=1 gives no any message. I'm a lost here a bit...

I bet if you dumped the gbm_surface format (passed by Qt as a
parameter to gbm_surface_create_with_modifiers or gbm_surface_create)
and the EGLConfig's EGL_NATIVE_VISUAL_ID (from eglQueryConfig), you
would see that the format tokens are different. Which is a Qt coding
error.

> But from a bit more distant perspective:
>
> 1. Sascha concludes in (*) that issue is most probably in format negotiation by app.
>
> 2. imho app probably correctly negotiates accordingly to inputs it gets from providers (DRM) and clients (mesa).
> Test with patch excluding
> DRM_FORMAT_XRGB8888,
> DRM_FORMAT_ARGB8888,
> shows imho proper app reaction on this (new format elected; but Qt fails with this format). Indirectly i conclude app logic is ok....
>
> 3. Sum of p1 & p2 tells me:
> i need to add extra logic in format election to specifically deal with constrains of rk356x (see explanation in (*))

I disagree. I looked at a clone of Qt, and I could not see a coherent
path that ensured that the gbm_surface format chosen by Qt matched the
EGLConfig format used on that EGLSurface. A mismatch is an error.

There are some workarounds allowing you to specify a format, however
those only work by coincidence sometimes. Even with the explicit
format specification, Qt never makes any attempt to match gbm_surface
and EGLConfig formats; it just hopes that they will match by
coincidence.

There is no additional complexity or strangeness that RK356x is
introducing here. It only works by pure luck on other platforms.

> 4. Even if i implement p3 - then user world - (this using Qt) - will be not happy as:
> - majority users are using pre-build Qt
> - I don't believe Trolltech will fix this soon
>
> So i see following path:
>
> we will verify is issue of Qt with abgr8888 an Qt root cause issue,
>
> If Yes - then:
>         - Investigate is there reasonable way to workaround with this outside of Qt?
> If not - then:
>         - conclude: vop2 - due Qt bug - will not work ok with Qt until Qt will be fixed.
>
>
> If you think this make sense - i need some help with: verify is issue of Qt with abgr8888 an Qt root cause issue

Unfortunately there is no reasonable workaround outside of Qt. Looking
at the Qt/QPA source tree, it looks like the usual way of 'fixing'
this is to hack platform specific configuration into the Qt backend.
If Qt won't be fixed to use generic APIs correctly, then I guess your
best option is to just hack up yet another platform-specific backend.
Which is a shame, but there is no reasonable workaround we can do in
low-level code for toolkits doing the wrong thing and hoping it works.

Cheers,
Daniel
