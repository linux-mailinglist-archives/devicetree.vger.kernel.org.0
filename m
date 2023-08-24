Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31B7B78692E
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 10:01:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231959AbjHXIAn convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 24 Aug 2023 04:00:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231891AbjHXIAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 04:00:12 -0400
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D157170E
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 01:00:11 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-d73c595b558so6273855276.2
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 01:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692864010; x=1693468810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bJRgi40/+0jfmQCJPM0l/K80in6/nUWxccLQ0POe8jY=;
        b=P4osEZ8QmCxYGzZHP7UNCYRz8aK2c74TFQATfogiLrYv4/Xu+H9fjCEzB2CEkbNAJr
         mb49inFizy9swdu1/rm+wRD8K9kPMXQRfSfZJpnSdf+qQvG36ZBCwReu0uY+cRpNMd0b
         UVhWXKLZceYBAfL2F9qZbuv/k2TFqdS71BqJV0Ex57ZamkiJC0gccuTXe7XT2lueMscI
         dY8DDxpwjeCzJ2F8fAuaiX4lgU6rzPjsu9kqfpEG+Sg9yNO+Cp6dhLSocUQdOp2cbQKK
         HFbVEvxFRBSlFJVGcXV2qwl+Ka3xxyrzrQImPzlNMP6hSTSx+s6G0ew9y3cUpex1AuRl
         yF/Q==
X-Gm-Message-State: AOJu0Yx9mavrnGMiz6tb9VoZGgAWeAFgR7O30pguGvul0EC7xGXVA8ga
        s2rE8rgKAk4H5HtAhcfq2hedGRmmx053eg==
X-Google-Smtp-Source: AGHT+IH5fG7iVrWG72PTIpgb7Hk7muEuK9UevkGBAZ+TonTpo8Qnnm+P7mcyewHOpUMVadZrEMezBA==
X-Received: by 2002:a25:e042:0:b0:d16:bdcf:943d with SMTP id x63-20020a25e042000000b00d16bdcf943dmr15305720ybg.6.1692864010071;
        Thu, 24 Aug 2023 01:00:10 -0700 (PDT)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id 8-20020a251908000000b00d7465a90f0csm2743817ybz.22.2023.08.24.01.00.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 01:00:09 -0700 (PDT)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-58fa51a0d97so56687697b3.3
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 01:00:09 -0700 (PDT)
X-Received: by 2002:a0d:cc4f:0:b0:589:9717:22c7 with SMTP id
 o76-20020a0dcc4f000000b00589971722c7mr15810593ywd.22.1692864009286; Thu, 24
 Aug 2023 01:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <6bb6289a1829bf4d03fc65994ad4887ca60afffa.1692795112.git.geert+renesas@glider.be>
 <CAL_JsqLauGcTb0NbU-MfkN1HD4==XrVG0ocsFzoMkSt0H3Q6kg@mail.gmail.com>
In-Reply-To: <CAL_JsqLauGcTb0NbU-MfkN1HD4==XrVG0ocsFzoMkSt0H3Q6kg@mail.gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Thu, 24 Aug 2023 09:59:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+JuvgewKgDHZd=JznLZOznsdy800th2kN_jxYfxHhCQ@mail.gmail.com>
Message-ID: <CAMuHMdV+JuvgewKgDHZd=JznLZOznsdy800th2kN_jxYfxHhCQ@mail.gmail.com>
Subject: Re: [PATCH] [RFC] of: unittest: overlay_pci_node: Fix overlay style
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Lizhi Hou <lizhi.hou@amd.com>,
        Herve Codina <herve.codina@bootlin.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Aug 23, 2023 at 6:44 PM Rob Herring <robh+dt@kernel.org> wrote:
> On Wed, Aug 23, 2023 at 7:52 AM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > Miscellaneous fixes and improvements to the overlay_pci_node:
> >   - Add missing /plugin/,
>
> Is it really missing if it wasn't needed since no unresolved phandles?
> I guess the sugar syntax needs, too?

It's indeed needed for the &{...} reference using sugar syntax.

> >   - Convert to sugar syntax,
> >   - Add missing blank lines between properties and subnodes.
> >
> > As sugar syntax does not support empty target paths, the test device is
> > added to /testcase-data/overlay-node instead.
>
> There's a definite need for unspecified target paths. It's probably
> something of an oversight that a blank path was even allowed. I don't
> think putting in the wrong path is a good solution. There should be
> perhaps more discussion if a blank path is the right thing and then
> how to make the sugar syntax output a blank path.

The path will not be used anyway, as it will be overwritten by passing
the new base parameter of of_overlay_fdt_apply().
So "/" could be used as well.
I have more comments, but I'll give them as a reply to the original
patch introducing the base parameter.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
