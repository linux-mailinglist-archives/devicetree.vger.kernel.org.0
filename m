Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0188F6123E8
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 16:31:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbiJ2Obs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 10:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiJ2Obr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 10:31:47 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BD75F139
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 07:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=6XeitnMdgwFpeuK+H13twlavq6fbNgWRZM0W9Q9wNqQ=; b=BkDVIX/+LNajR4WP3unVw1T+eB
        FPzBZvY4ONnXa+yiZQmCCnQClBVtEN1OtlaEYTbqa7I7BMhuqJxM5OQm0Ok4M7kt8SBWduFgwOUcS
        Mb67oWk0QzDDgb7D8pobw9F5xDKCD7HnZiPjd4FDzHp8lvJn+H+Rf8x2xb9SQ6zy8llU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oomru-000uEZ-Ej; Sat, 29 Oct 2022 16:31:26 +0200
Date:   Sat, 29 Oct 2022 16:31:26 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Adam Baker <linux@baker-net.org.uk>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Tony Dinh <mibodhi@gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add Zyxel NSA310S board
Message-ID: <Y105PjbwnFJ1wItM@lunn.ch>
References: <20220929080110.3182561-1-paweldembicki@gmail.com>
 <YzWVOyM+Z3AFSI7c@lunn.ch>
 <e78b6ece-8dfa-733f-d449-1108a9545223@baker-net.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e78b6ece-8dfa-733f-d449-1108a9545223@baker-net.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 29, 2022 at 01:14:52AM +0100, Adam Baker wrote:
> On 29/09/2022 13:53, Andrew Lunn wrote:
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > Same license comment. However, you can only change the license if it
> > is your code. If you did the conversion from a board setup file to DT,
> > you can change the license. If somebody else did that and you are just
> > submitting it, then we need to keep to GPL-2.0-only.
> 
> As it lists my name in the copyright I'm guessing it is derived from my
> nsa320 device tree. If so I have no objection to relicensing to GPL2 + MIT
> for anything that came from my code.

Thanks Adam.

It would be nice if you sent an Acked-by: on the patch.

   Andrew
