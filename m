Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53BC0785D6A
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 18:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237622AbjHWQoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 12:44:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231450AbjHWQoK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 12:44:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3D76E68
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 09:44:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 513D762853
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 16:44:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89573C433CB
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 16:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692809043;
        bh=PuTCi+qdXK7OaTSSHkCuTquydRmPzIqwdP9Ry1oJ9X4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qfUJ4tZUi8mKAOEWhaU12/xZTEzKyOXm1KGE6kGxysDjTUJCZLLCWwbU5qil5tAvu
         UrIKa2QAfDO74dWud6wVWXbcy5jhJJhm6roR8M+K0Zn/oKjz7qjkiO8W5fmVqPT2bN
         CeK5x11Np312CjlotQypg5/PxzPCJVPft9gf7soUk6g4Vx22q+VlV+jpUzNm8INC/1
         3fsJ5NxSiPlR1bJIeUftV1NtEHYWngr15ASDgsfqYxBwFStws6jsIWGS+GfMue82KA
         0lX5aZdSe1ydGJVoy2kHXMYiDuArilEKpCTIVjmCm6RaXxlfJK0rUcWAEEiR0TLyDR
         GVNumtkOpxorQ==
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2bcc187e0b5so51404971fa.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 09:44:03 -0700 (PDT)
X-Gm-Message-State: AOJu0YyL+naw7+EfQpWWg7B/9y2S0g+MxNJZQSbQ7W195iDKRiDeyHUZ
        iTVk3o06Fe9siIta7C9QH3goKJZ37GAINIOldQ==
X-Google-Smtp-Source: AGHT+IFIrNpjukJ47Qjq9PUSjGf61Z1gMprB5JhUH57KycGHKVPfXzso3N0AJ2+0z4/B15xfi+K2ZERc7YVuneb1kH4=
X-Received: by 2002:a2e:b053:0:b0:2b9:6810:b333 with SMTP id
 d19-20020a2eb053000000b002b96810b333mr9454713ljl.14.1692809041389; Wed, 23
 Aug 2023 09:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <6bb6289a1829bf4d03fc65994ad4887ca60afffa.1692795112.git.geert+renesas@glider.be>
In-Reply-To: <6bb6289a1829bf4d03fc65994ad4887ca60afffa.1692795112.git.geert+renesas@glider.be>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 23 Aug 2023 11:43:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLauGcTb0NbU-MfkN1HD4==XrVG0ocsFzoMkSt0H3Q6kg@mail.gmail.com>
Message-ID: <CAL_JsqLauGcTb0NbU-MfkN1HD4==XrVG0ocsFzoMkSt0H3Q6kg@mail.gmail.com>
Subject: Re: [PATCH] [RFC] of: unittest: overlay_pci_node: Fix overlay style
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Lizhi Hou <lizhi.hou@amd.com>,
        Herve Codina <herve.codina@bootlin.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 23, 2023 at 7:52=E2=80=AFAM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Miscellaneous fixes and improvements to the overlay_pci_node:
>   - Add missing /plugin/,

Is it really missing if it wasn't needed since no unresolved phandles?
I guess the sugar syntax needs, too?

>   - Convert to sugar syntax,
>   - Add missing blank lines between properties and subnodes.
>
> As sugar syntax does not support empty target paths, the test device is
> added to /testcase-data/overlay-node instead.

There's a definite need for unspecified target paths. It's probably
something of an oversight that a blank path was even allowed. I don't
think putting in the wrong path is a good solution. There should be
perhaps more discussion if a blank path is the right thing and then
how to make the sugar syntax output a blank path.

Rob
