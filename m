Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 570807510C1
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 20:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbjGLSxO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 14:53:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjGLSxN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 14:53:13 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5A81993
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:53:11 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 114683F18B
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 18:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689187990;
        bh=zDGdomtgiC1DNd+2RkB6zaiSgc3riteCyygnxmQ1i88=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=atfgGmMReHxBSYv4zE/NlJGemImpp39g7g6yuxTtv7LOATsjDEfxhSZkzdf/UdMgC
         Su1qXlLW0wHXQP///7MKmvbgUgiRhB75ZHv7uKzB/+rAHkUum21VoEbwD2IjD3RtGA
         HWtjBYLMFcZpIS/wDBDl/7MuSyXF015TrB+5FFS1xchV1Cr55uuPWt8f38Jjk95bE1
         /y8CjfSyVHrfQnRfoQ2lGNFZS7M433V+rac8ExsjNlNlHhHvF+F/CJukCsbnUeNAJO
         ULtbTWSNVJiaAYieQ3M7f/dMkhWs95sf+cPdZWQZu1nSvYWjRLKqvrYMMkhb7rxAWW
         hqd/57OMBcdqg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-403ae7d56baso43193981cf.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 11:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689187989; x=1691779989;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zDGdomtgiC1DNd+2RkB6zaiSgc3riteCyygnxmQ1i88=;
        b=YmNzEs+AEjNF/oC1BmNLi4CeWmwHXzLAcTRR1TIIC3HBPq/0GX+rnvsWR8VHp8i3Fz
         +nQlmD6XFZGprNEAs4QJiVbSmo5zE9IhsdCd3utEmoagHsI0VAscTadndAH6iE4Xojj7
         5FgfCcc9jiikkJvD0CQyJ8rXvFHrAxqYWUWMDgzBsxwjlpdJF0gFXAzoiWAIYvtsoRLd
         xMZiYBekgTUysRAOC4nvPr//LzaM22Z+MbXWjWnCxDQDE7H7p2ojhyYBy1EZmFaDzdC3
         yft1XJb1oK3Z2AxjWwS9xKZ90bdzV0xlDstNLJnbkmmKSRHCqaqIx4goTVd5/lwnatVh
         6xnA==
X-Gm-Message-State: ABy/qLYpClVEX1G2F9np5zCldtSR3F0+HH86GFUthGUsaVsRApuHEYgi
        oi5gtem8exJbhKLaAvmPyyC3l91H7BSIjiD8GYn2nLihW5gsUhJoOvXBZG8QeadLceT7Pap9N7p
        A9GzcRBitCT4GOYIMk6mLQmT1K5LDjhi6w8b5JqiCWY94ji9Hssp6YLc=
X-Received: by 2002:ac8:5907:0:b0:3ff:23e4:40b4 with SMTP id 7-20020ac85907000000b003ff23e440b4mr21858826qty.42.1689187988848;
        Wed, 12 Jul 2023 11:53:08 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHmQwEBRm9hkWnBl5+uXgIhEHsFqZaO51b31k/pOXHkjhUNY9XYe1J765jsNEaaNzKwTZ1bpQJdbzSVsfLDL6o=
X-Received: by 2002:ac8:5907:0:b0:3ff:23e4:40b4 with SMTP id
 7-20020ac85907000000b003ff23e440b4mr21858813qty.42.1689187988619; Wed, 12 Jul
 2023 11:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <20230627080620.329873-1-felix.moessbauer@siemens.com>
 <20230710-villain-dainty-d1a90ce57a27@spud> <CAJM55Z_0X+UT1s9s4kqKuyg4hF2JooTMXe4RYTAzoEgY=+8A1Q@mail.gmail.com>
 <20230712-single-crestless-93bf57c09773@spud>
In-Reply-To: <20230712-single-crestless-93bf57c09773@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 12 Jul 2023 20:52:52 +0200
Message-ID: <CAJM55Z9zZT5nTCw9R_hq+ez7qgXmczwheEKkJ-0sYwwxXtHqVg@mail.gmail.com>
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for
 starfive devices
To:     Conor Dooley <conor@kernel.org>
Cc:     Felix Moessbauer <felix.moessbauer@siemens.com>,
        Walker Chen <walker.chen@starfivetech.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jul 2023 at 18:23, Conor Dooley <conor@kernel.org> wrote:
>
> On Wed, Jul 12, 2023 at 06:17:19PM +0200, Emil Renner Berthing wrote:
> > On Mon, 10 Jul 2023 at 20:29, Conor Dooley <conor@kernel.org> wrote:
> > >
> > >
> > > Emil, Walker,
> > >
> > > On Tue, Jun 27, 2023 at 04:06:20PM +0800, Felix Moessbauer wrote:
> > > > Add the '-@' DTC option for the starfive devices. This option
> > > > populates the '__symbols__' node that contains all the necessary symbols
> > > > for supporting device-tree overlays (for instance from the firmware or
> > > > the bootloader) on these devices.
> > > >
> > > > The starfive devices allow various modules to be connected and this
> > > > enables users to create out-of-tree device-tree overlays for these modules.
> > > >
> > > > Please note that this change does increase the size of the resulting DTB
> > > > by ~20%. For example, with v6.4 increase in size is as follows:
> > >
> > > Whatcha think?
> >
> > I'm fine with it. I just wonder why it's only the Nvidia Tegra boards
> > and the VisionFive's that need this. Surely other boards have pins for
> > expansion cards.
>
> It's totally not just these two - there's been a flurry of similar
> patches recently. The RPi stuff got it - I think I Acked that one from
> the DT side while Rob and Krzysztof were out of office, partially on the
> basis that the Nvidia stuff had it (and IIRC Renesas).
> Since then there's been a couple other ones that got the same treatment,
> including 32-bit ARM Microchip stuff. I've been avoiding doing it for the
> RISC-V Microchip to see if Rob decides that what I Acked was a problem.
>
> It seems generally helpful, so I've been a little suspicious as to why
> it was not done already...

Ah cool. I must have been grepping on v6.4.
