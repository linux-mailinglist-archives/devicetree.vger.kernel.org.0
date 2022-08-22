Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48DD059C19C
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 16:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233716AbiHVO3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 10:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232132AbiHVO3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 10:29:01 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEF8C15A23
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 07:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=UQWEpWR+eqTrQhL/m6CNPQK0fjX0dQXbp7+dCwDhCA0=; b=Tr4Tud/32/zM5qK9lgBgLrADv6
        jRpQ+PtcqySgQh/WrldVBCO+Dv0U6ZGkBP6YSJbRhZKN8c8syNCYUZK4B+IfJrmsiqhkCbro02bxK
        YOKStqYQuw8bGhgGq4vHX7PEFl3ftcr30KthZXAsAL+O3aQFnclRZFA/hcPe9m6NXtNY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oQ8QE-00EELz-0Y; Mon, 22 Aug 2022 16:28:58 +0200
Date:   Mon, 22 Aug 2022 16:28:57 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 00/11] Start converting MVEBU bindings to YAML
Message-ID: <YwOSqRxv/MZxpXL8@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
 <20220822135323.GA3758572-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220822135323.GA3758572-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 08:53:23AM -0500, Rob Herring wrote:
> On Sat, Aug 20, 2022 at 09:47:53PM +0200, Andrew Lunn wrote:
> > This is the first batch of patches converting the Marvell MVEBU driver
> > bindings from .txt to .yaml. So far, kirkwood has been used for
> > testing, but these drivers apply to a range of Marvell SoCs.
> > 
> > In order to reduce the number of warnings from the DT schema checking
> > tools, a few minor changes have been made to a few DT files. No actual
> > errors have been found, the changes just make the checker quiet.
> > 
> > Andrew Lunn (11):
> >   DT: RTC: orion-rtc: Convert to YAML
> >   DT: thermal: marvell,kirkwood-thermal: Convert to YAML
> >   DT: pinctrl: Convert marvell,kirkwood-pintctrl to YAML
> >   DT: USB: Convert ehci-orion to YAML
> >   DT: watchdog: Convert marvel.txt to YAML
> >   arm: DT: kirkwood/orion5: Rename watchdog node
> >   DT: nand-controller: Reflect reality of marvell,orion-nand
> >   DT: mtd: Convert orion-nand to YAML
> >   arm: DT: kirkwood.dtsi: Rename nand to nand-controller
> >   DT: timer: Convert marvell,orion-timer.txt to YAML
> >   DT: clock: Convert mvebu-gated-clock.txt to YAML
> 
> Also, there's not any dependency between most of these patches and they 
> all go thru different subsystems, so no need for this to be 1 series.

My intention was for them all to go through mvebu, to arm-soc and in.
That is how all these .txt files got merged many years ago.

There is one exception that i know of, somewhere in a later series i
convert the PCI controller. There is conflicting change being made, so
i plan to submit that one via the PCI Maintainer to solve the
conflict.

  Andrew
