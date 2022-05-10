Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C43AF520E81
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 09:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237970AbiEJHgn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 03:36:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241537AbiEJHdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 03:33:22 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA4BA2A4A0A
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:29:22 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id p26so14469029lfh.10
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 00:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=VSqxzZ29hbc10inJEDBipg5Dn8Q2IgbVBIfcAZuWFlc=;
        b=ZpYGnuztQW0iA1l4+RIZIihgQVuuvVmdcZwAdtEMwooAUiC0fu376dlSygjE8O0mwP
         Un7c+sHOg0wOmMwO9X3VZ5bJImTWXQDt4H+g/6l2K6SyjxdvvVuBcJFuTrTIwRKmNY+w
         +N174UAnqR55Gt87Kf2jwomaCpAia42vtxPOqGYvGSuVo1dmvtQyCLQfnjxlE/eBpFxJ
         e8HycjhiLJtATq/gLyrUAyVeAudl5qOh6Oyj1YhshYUZq8RaTRJu8wKj3izgSiGcD330
         7C+Rqxh5C4QcmK9CIEm7JpQb0LQsQq76viDK4vVSRHLI0CQbOnVbwiIfscZMuMJIn5BQ
         EfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=VSqxzZ29hbc10inJEDBipg5Dn8Q2IgbVBIfcAZuWFlc=;
        b=0Lu3i6+AckioUxw6fUTvlPYq9nvuZVaIE06eYZ3TmkmKZFvLTFgL57png9G30acTW3
         DhL8ZDElrxITn0nYkWTzkC8MOodokiAVwkjQIlC8fBSl+5eUmrtxLtR4m4f3BpQgR64S
         FE+w/rZ63kOwzWrgFcA3HSVyuCD45IouFXymyuJy86fE/ZBlq5HAkoGgVLjPOTqaGflF
         Q05O7TL/GaZOYm+JVJ2wTcUHg5dc1UXySKnVKaQ5MbV2pKRgocthJJP1Q61cJbZWh/yX
         icTEVxtXjEfHeGL5yn+wuVQbPgXVkdRTwcldYgNNNfRU6bne/9ZMPN8Kt/IpqqQSEKJO
         jx5Q==
X-Gm-Message-State: AOAM532CYu1J2C97BJvfMr+eEH4lFayW5F6EF231xO0J/nz4Z3wG23Ut
        H0W5ykdo/XPJ0r1VkOndc9s=
X-Google-Smtp-Source: ABdhPJzuUZxd81Xg7d+yaJFS9q6e43uMHj3m7T3kM3PY0/JUhTO2qkFChHbG5NwyadTcS6MMwjtvHQ==
X-Received: by 2002:a05:6512:1189:b0:473:b9ee:30cf with SMTP id g9-20020a056512118900b00473b9ee30cfmr15797805lfr.282.1652167760971;
        Tue, 10 May 2022 00:29:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl. [31.178.191.245])
        by smtp.gmail.com with ESMTPSA id r10-20020a19da0a000000b0047255d211c1sm2189757lfg.240.2022.05.10.00.29.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 May 2022 00:29:20 -0700 (PDT)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From:   Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
Date:   Tue, 10 May 2022 09:29:14 +0200
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel test robot <lkp@intel.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
To:     Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> Wiadomo=C5=9B=C4=87 napisana przez Peter Geis <pgwipeout@gmail.com> w =
dniu 10.05.2022, o godz. 03:35:
>=20
> Could you grab the clock tree from /sys/kernel/debug/clk/clk_summary
> for the clk_hdmi_cec tree?

Here it is:
                                enable  prepare  protect                 =
               duty  hardware
   clock                          count    count    count        rate   =
accuracy phase  cycle    enable
=
--------------------------------------------------------------------------=
-----------------------------
   clk_rtc32k_frac                   1        1        0       32768     =
     0     0  50000         Y
       clk_rtc_32k                    1        1        0       32768    =
      0     0  50000         Y
          clk_hdmi_cec                1        2        0       32768    =
      0     0  50000         Y=
