Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 637305A6D05
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 21:22:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229569AbiH3TWX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 15:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230462AbiH3TWW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 15:22:22 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC27579A56
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=pkWcx0o+0LUwEyaoVC+PhGx4f4ropxLGGmhXhsbPxOI=; b=MmIUTMNNtWx86qtzkcv1JZNZLl
        oPHmqno05FWVwtib94IV1kDRdQK2wbGLFSZ1Ctv8OYpQXEWA1w70+VpVoy52VaBM9TlA7KdI6SZLn
        VmsBXDGFoYs0sg1TZXm8M+AePMwabHFwSUjgycWEqbJLDvwR9YzEF3wqeSs72K/FcIOo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oT6oV-00F7oI-At; Tue, 30 Aug 2022 21:22:19 +0200
Date:   Tue, 30 Aug 2022 21:22:19 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Rob Herring <robh@kernel.org>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        arm-soc <arm@kernel.org>,
        Device Tree <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 00/12] Start converting MVEBU bindings to DT Schema
Message-ID: <Yw5jaz/EqNS0hT/T@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
 <20220830184334.GA1825505-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830184334.GA1825505-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 30, 2022 at 01:43:34PM -0500, Rob Herring wrote:
> On Thu, Aug 25, 2022 at 03:32:46AM +0200, Andrew Lunn wrote:
> > This is the first batch of patches converting the Marvell MVEBU driver
> > bindings from .txt to .yaml. So far, kirkwood has been used for
> > testing, but these drivers apply to a range of Marvell SoCs.
> > 
> > In order to reduce the number of warnings from the DT schema checking
> > tools, a few minor changes have been made to a few DT files. No actual
> > errors have been found, the changes just make the checker quiet.
> > 
> > I propose these patches are merged via mvebu to arm-soc. No conflicts
> > are expected with these patches.
> 
> Why? I strongly prefer the bindings go via subsystem trees. That is the 
> documented way.

I have 50 patches to convert kirkwood from .txt to .yaml. probably
around 30 subsystems.

1) Complete nightmare to keep track of so many different patchsets
   going in 30 different directions.

2) None of these patches change any driver code. This is pure
   'Documentation'. The subsystem probably reviewed the .txt file 10
   years ago when I and other mvebu maintainers submitted
   them. Nothing is changing in the kernel code base, except now we
   gain some degree of validation for this 'Documentation'.

3) Pretty much all of these were merged via arm-soc 10 years ago. Why
   do it different now? What is gained by not going via arm-soc?

   Andrew

