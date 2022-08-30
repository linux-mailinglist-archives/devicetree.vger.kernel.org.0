Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C1C95A6CA7
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:58:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbiH3S6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiH3S6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:58:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FFE76759
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:58:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D0D82616ED
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 18:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33F1DC433B5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 18:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661885923;
        bh=UYHgBV+4vixipQlg73oRKuMjEI0LBX2eLl4qrlCo+io=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=O50BKqkVSvvKoEWniqFC+XYC+vJmB+S6CrUk03yTkwNhxiZpvXXBjyGP8vLPsBnoe
         s76q9GkGq1fwm2JQQfw9HdBhDa8BMFYekZSgBHei+Zk8Tb2rNde8DoWoXn34DSwp9x
         hwwTKXh0k7r3+7DLq9Rve7V+xOlsiG2bvFG+Sq4KawtWJNoZe/4ZFVYt8lto5lKNJT
         /+1rm2g68bVvY8G+3IW/McB/C8wlHQ32WXD8468MYRtTASlrwt2yGEb0UCXxIEr2e7
         hzSzzy/r7kHi+Eyq3eoc1ZlbEnEYkeQz6/vJ39FmGjQkNjUWRSN4xCFJQaxKrW3Kp/
         UmPlZAXdTn8fA==
Received: by mail-ua1-f45.google.com with SMTP id x15so4243531uat.2
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:58:43 -0700 (PDT)
X-Gm-Message-State: ACgBeo2aeCB7Jat+kAz66JKN5pacv2ndPkIDQX1J9/FPzOkx2vu9Vm7c
        5OX4hXSl6x+9X12xBtpxFmRrd6MBc/YmHUq4zA==
X-Google-Smtp-Source: AA6agR57o0zHpieTDGeM9YdxMK5F56W9O8E/PNP3bVjL7EW/wZfqHUmUZLDJP3R/pVze9XE/8M3zJpYGSt4nn7xAeN8=
X-Received: by 2002:a9f:23ec:0:b0:39e:c54f:ffc7 with SMTP id
 99-20020a9f23ec000000b0039ec54fffc7mr5832204uao.17.1661885922123; Tue, 30 Aug
 2022 11:58:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220820194804.3352415-1-andrew@lunn.ch> <20220822135323.GA3758572-robh@kernel.org>
 <YwOSqRxv/MZxpXL8@lunn.ch>
In-Reply-To: <YwOSqRxv/MZxpXL8@lunn.ch>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 30 Aug 2022 13:58:30 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+fvBfUSaDRjyj0NWCcn5XmP6etoYq1tVwtkK82SMthug@mail.gmail.com>
Message-ID: <CAL_Jsq+fvBfUSaDRjyj0NWCcn5XmP6etoYq1tVwtkK82SMthug@mail.gmail.com>
Subject: Re: [PATCH 00/11] Start converting MVEBU bindings to YAML
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 9:29 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Aug 22, 2022 at 08:53:23AM -0500, Rob Herring wrote:
> > On Sat, Aug 20, 2022 at 09:47:53PM +0200, Andrew Lunn wrote:
> > > This is the first batch of patches converting the Marvell MVEBU driver
> > > bindings from .txt to .yaml. So far, kirkwood has been used for
> > > testing, but these drivers apply to a range of Marvell SoCs.
> > >
> > > In order to reduce the number of warnings from the DT schema checking
> > > tools, a few minor changes have been made to a few DT files. No actual
> > > errors have been found, the changes just make the checker quiet.
> > >
> > > Andrew Lunn (11):
> > >   DT: RTC: orion-rtc: Convert to YAML
> > >   DT: thermal: marvell,kirkwood-thermal: Convert to YAML
> > >   DT: pinctrl: Convert marvell,kirkwood-pintctrl to YAML
> > >   DT: USB: Convert ehci-orion to YAML
> > >   DT: watchdog: Convert marvel.txt to YAML
> > >   arm: DT: kirkwood/orion5: Rename watchdog node
> > >   DT: nand-controller: Reflect reality of marvell,orion-nand
> > >   DT: mtd: Convert orion-nand to YAML
> > >   arm: DT: kirkwood.dtsi: Rename nand to nand-controller
> > >   DT: timer: Convert marvell,orion-timer.txt to YAML
> > >   DT: clock: Convert mvebu-gated-clock.txt to YAML
> >
> > Also, there's not any dependency between most of these patches and they
> > all go thru different subsystems, so no need for this to be 1 series.
>
> My intention was for them all to go through mvebu, to arm-soc and in.
> That is how all these .txt files got merged many years ago.

Yes, that did happen some, but the documented path in for bindings is
via subsystem maintainers (with the driver for new bindings). The 2nd
preference is the DT tree as I'm about the only one testing (or
continuously testing) the schemas.

Rob
