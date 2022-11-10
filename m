Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB489623FA7
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 11:21:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiKJKVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 05:21:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbiKJKVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 05:21:17 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7518B19C26
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:21:15 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id ud5so3794035ejc.4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DzVccqK8r10+eJcWFau+z76oVshVdUbajb+fpILwHo4=;
        b=ZjAWG299WEYD3yhWLaSEkxdPYu/zU0l6XzZeRRxVMF/TbyNqO4VjpXuAtPmN3OE7BL
         WU2ayYqvlurEI4IIqWefXARXvKodyhMPCIxUPeJu0Wh1rxfXBmsmxAsZ9rwxvpm+n3Hi
         VgYa3tKEmTetYUmFNPmOiQYDc29IZE9tv0tikOdFijyjoI+j6hQTy9qfLlku3jA1HkLs
         f6W5V2yQgG0zE/u+0ciDWzq/kYEuk9KoylB+bifB34zPgkF0WRaaUUizmpqThuzbGiJ6
         llmCosDcSRBA0zcQPfvGKeH2F3JPCtozxm+ClTMVSYwHlZXroAQwhFCO6W2IuHWUSg3X
         gZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DzVccqK8r10+eJcWFau+z76oVshVdUbajb+fpILwHo4=;
        b=5V078k963j+f+DXJrUHkI4BQhRAAacl2t4JK+zCsshPaLV3ecFD5ORrgD8Du7IMt+S
         EfZ0VjGEqrksDDvRtWfUzDF1smHJxDG1iPjdkljNJg69XD2U2LhMY4WRZDSwmF3bLWJD
         QZk1b0z/sq4Gb4etPa8GNjyuRrrfpVeo4j33B6dofAh1ZyrKDM4QEYi47WEbdyRqU0qu
         XxEmXmAeFSmqbP8N0UJVnDJGs6YFyaGfGVs5q63jUHVldtq3WoneqYaN+NFiUp8WM8DD
         umlgq0XeIcEbOW8zUzb+AbFp6aaSq7Z6P5zSdDUeUEBveYj63rH1RJ/Z9vfdgfNDpFAK
         bJkA==
X-Gm-Message-State: ACrzQf1hKnl+NT2inThPvJsXrXsNWUQCQb39T4u0w+sYatI7EcuZTmlk
        ToLeU8r8EVEojcJp/cFirA1F+U1taJ75QOTrVANpIg==
X-Google-Smtp-Source: AMsMyM7gTYta/+pVULXdP/rsWKEEJRTzX78HLJvZMbTb+bGDejI9yp4s7ufQUVVK7iJ/aB5J8JreNEBML0pwIRci4UA=
X-Received: by 2002:a17:906:4c4b:b0:7ad:a197:b58e with SMTP id
 d11-20020a1709064c4b00b007ada197b58emr60349152ejw.203.1668075673995; Thu, 10
 Nov 2022 02:21:13 -0800 (PST)
MIME-Version: 1.0
References: <20221110014255.20711-1-andre.przywara@arm.com>
In-Reply-To: <20221110014255.20711-1-andre.przywara@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Nov 2022 11:21:02 +0100
Message-ID: <CACRpkdb=5mobcWBJYtXd=nC7A+Uo__itk0F9oZBeTjWHBkBU1w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/2] pinctrl: sunxi: Introduce DT-based pinctrl builder
To:     Andre Przywara <andre.przywara@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Icenowy Zheng <uwu@icenowy.me>, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 10, 2022 at 2:44 AM Andre Przywara <andre.przywara@arm.com> wrote:

> Compared to my previous effort almost exactly five years ago [1], this
> new version drops the idea of describing the pinctrl data entirely in
> the DT, instead it still relies on driver provided information for that.
(...)
> On the DT side all that would be needed is *one* extra property per
> pin group to announce the mux value:
>
>         uart0_pb_pins: uart0-pb-pins {
>                 pins = "PB9", "PB10";
>                 function = "uart0";
>                 pinmux = <2>;
>         };

So what you need to do is to convince the device tree people that this
is a good idea.

For me as linux maintainer it's no big deal, it's fine either way. The new
code looks elegant.

But from a DT point of view this needs to make sense also for Windows
and BSD, so that is who you have to convince. If it is possible to derive
the same information from the compatible string (like today) that will
need an extended argument why all operating systems will benefit from
this.

Yours,
Linus Walleij
