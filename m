Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B31B7C9A33
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 10:45:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727357AbfJCIpH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 04:45:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:39678 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725497AbfJCIpH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 3 Oct 2019 04:45:07 -0400
Received: from X250 (li937-157.members.linode.com [45.56.119.157])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9638F2133F;
        Thu,  3 Oct 2019 08:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570092307;
        bh=mCXGpj7WUx1zpUig4d9GBPTN3mh9KYKoc3jEyRS/aSQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=l9ENMG7k45sF1sGBU5HHbYVGKpAuQFOR4YHFwEOBjQzSzVJvtBTv227bwvItXDLtr
         3YVL4LG0GM4Je9MWCKBozpcn0u7LYq33q8sZq6CdvpnC8Sq4JHa0CncJHWnPxXseaU
         CheiWmMoXsJfM3eYG+sdBWns78jV6wGGLhGPYNCo=
Date:   Thu, 3 Oct 2019 16:44:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Andy Tang <andy.tang@nxp.com>
Cc:     Leo Li <leoyang.li@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Message-ID: <20191003084443.GA22491@X250>
References: <20190829073439.13069-1-andy.tang@nxp.com>
 <20190914024231.GB3425@dragon>
 <VI1PR04MB4333F1CF5DF521678575D61EF3840@VI1PR04MB4333.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI1PR04MB4333F1CF5DF521678575D61EF3840@VI1PR04MB4333.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 24, 2019 at 08:00:29AM +0000, Andy Tang wrote:
> Hi Shawn,
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: 2019年9月14日 10:43
> > To: Andy Tang <andy.tang@nxp.com>
> > Cc: Leo Li <leoyang.li@nxp.com>; robh+dt@kernel.org;
> > mark.rutland@arm.com; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org
> > Subject: [EXT] Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
> > 
> > Caution: EXT Email
> > 
> > On Thu, Aug 29, 2019 at 03:34:39PM +0800, Yuantian Tang wrote:
> > > The I2C multiplexer used on ls1028aqds is PCA9547, not PCA9847.
> > > So correct it.
> > 
> > Can elaborate the fix a little bit, saying what's the issue exactly with using
> > that incorrect compatible?
> Ok.
> 
> > 
> > >
> > > Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> > 
> > Do we need a fix tag?
> What does "fix tag" mean? 

Please search 'Fixes' in Documentation/process/submitting-patches.rst.

Shawn
