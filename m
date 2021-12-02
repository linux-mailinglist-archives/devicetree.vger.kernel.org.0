Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24DDC465F3E
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 09:22:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231734AbhLBIZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 03:25:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbhLBIZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 03:25:24 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5688FC061574
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 00:22:02 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 60F9BCE21CD
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 08:22:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FAC1C00446;
        Thu,  2 Dec 2021 08:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638433318;
        bh=kUXbDggkGwlJWxJMD0VQNMh804jLa6pBwAoTq5c6lUY=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=X8xsSdozuL1cmixdChn2/OHN2qn0WEc2ZFjEC0YeNydnpANYyMVbeWY2i1pNPaUum
         iKUAEYsim+TydZSgsH+CH7IQc+RJMoAChJCrYh7XgJdFYSu7Q3YH1NlQB+KLjqV10c
         gNJ/6mWjyLHGFWkuNBKl6Dc+MYnmmIXZaG6126crw1raKVeowjuOyeLc/vqBn6LCbl
         vdvDXTEn/ToSEwDS4n49gq5AqHwL++PdAFcSKifHh6RGYiTQDLxWWHauCK90AeeE/A
         YwMmn2iILVeqG8DSBqUncN2ywo3INVpIxsVyh10GihAagGPvRF9q/UvId+wTwqaqA1
         oRYEGvi5jz7Nw==
Message-ID: <921ec5ea67b6d343647a28b57b78923e5678d59b.camel@kernel.org>
Subject: Re: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name
 array
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
Date:   Thu, 02 Dec 2021 09:21:53 +0100
In-Reply-To: <bc412de6-1f77-b8ba-fdff-af27c47c8e30@gmail.com>
References: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
         <3dd6940acac27e5577b54ded8f2d472bbb6f7733.camel@kernel.org>
         <bc412de6-1f77-b8ba-fdff-af27c47c8e30@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2021-12-01 at 14:16 -0800, Florian Fainelli wrote:
> On 12/1/21 3:40 AM, nicolas saenz julienne wrote:
> > On Tue, 2021-11-30 at 17:11 +0100, Uwe Kleine-König wrote:
> > > this helps human readers considerably to determine the line name for a
> > > given offset or vice versa.
> > > 
> > > Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> > > ---
> > 
> > Applied for next.
> 
> Subject should be:
> 
> ARM: dts: bcm2711-rpi-4-b: Add gpio offsets to line name array
> 
> Can you fix that up before sending this to me as a pull request? Thanks

Done, thanks for catching that one.

Nicolas
