Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2695DABADD
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2019 16:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388545AbfIFO3P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Sep 2019 10:29:15 -0400
Received: from forward105p.mail.yandex.net ([77.88.28.108]:55189 "EHLO
        forward105p.mail.yandex.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388655AbfIFO3P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Sep 2019 10:29:15 -0400
Received: from mxback1g.mail.yandex.net (mxback1g.mail.yandex.net [IPv6:2a02:6b8:0:1472:2741:0:8b7:162])
        by forward105p.mail.yandex.net (Yandex) with ESMTP id 334974D4146F;
        Fri,  6 Sep 2019 17:29:12 +0300 (MSK)
Received: from smtp4o.mail.yandex.net (smtp4o.mail.yandex.net [2a02:6b8:0:1a2d::28])
        by mxback1g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id 6PCJvxfTMP-TBdSdDG4;
        Fri, 06 Sep 2019 17:29:12 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cloudbear.ru; s=mail; t=1567780152;
        bh=sPocmmM6i45jDc/RSbyUGamRnUwGnrzEdS887P25xos=;
        h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
        b=PnUgmdiPwWCGdoxwZw7ZzBhx2g/zdT+dSb/b2yzUQ44IFFNh5MlJhQt8unSJZPnLt
         QMLhZzC6DpST4J/qXYgEPUCdJWufxlBifWI8W074Jvk7GOcrLO6KirViVDEnKyFTpv
         YWTk8oTFgiDuqvSJSxjxYbWOuHKfK5kWqGwYkyGk=
Authentication-Results: mxback1g.mail.yandex.net; dkim=pass header.i=@cloudbear.ru
Received: by smtp4o.mail.yandex.net (nwsmtp/Yandex) with ESMTPSA id 6AWXk3pOHW-TAgiFMup;
        Fri, 06 Sep 2019 17:29:10 +0300
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (Client certificate not present)
Date:   Fri, 6 Sep 2019 17:29:09 +0300
From:   "<Vitaly Gaiduk>" <vitaly.gaiduk@cloudbear.ru>
To:     Trent Piepho <tpiepho@impinj.com>
Cc:     davem@davemloft.net, f.fainelli@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] net: phy: dp83867: Add documentation for SGMII mode
 type
Message-ID: <20190906142909.GA16695@asus-X750JA>
References: <1567700761-14195-1-git-send-email-vitaly.gaiduk@cloudbear.ru>
 <1567700761-14195-2-git-send-email-vitaly.gaiduk@cloudbear.ru>
 <1567703176.6344.4.camel@impinj.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1567703176.6344.4.camel@impinj.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Oh, sorry for delayed reply.
This value means chosen sgmii type mode and can be 0 or 1 only.
Idea with phy-mode adds some work with dts because this field
is placed in mac node usually. Maybe just use "sgmii-clk" boolean 
instead of my?

P.S. It's my first experience with LKML so I'm apologize in advance
if something is wrong with CC field or other.

On Thu, Sep 05, 2019 at 05:06:17PM +0000, Trent Piepho wrote:
> On Thu, 2019-09-05 at 19:26 +0300, Vitaly Gaiduk wrote:
> > Add documentation of ti,sgmii-type which can be used to select
> > SGMII mode type (4 or 6-wire).
> > 
> > Signed-off-by: Vitaly Gaiduk <vitaly.gaiduk@cloudbear.ru>
> > ---
> >  Documentation/devicetree/bindings/net/ti,dp83867.txt | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/ti,dp83867.txt b/Documentation/devicetree/bindings/net/ti,dp83867.txt
> > index db6aa3f2215b..18e7fd52897f 100644
> > --- a/Documentation/devicetree/bindings/net/ti,dp83867.txt
> > +++ b/Documentation/devicetree/bindings/net/ti,dp83867.txt
> > @@ -37,6 +37,7 @@ Optional property:
> >  			      for applicable values.  The CLK_OUT pin can also
> >  			      be disabled by this property.  When omitted, the
> >  			      PHY's default will be left as is.
> > +	- ti,sgmii-type - This denotes the fact which SGMII mode is used (4 or 6-wire).
> 
> Really should explain what kind of value it is and what the values
> mean.  I.e., should this be ti,sgimii-type = <4> to select 4 wire?
> 
> Maybe a boolean, "sgmii-clock", to indicate the presence of sgmii rx
> clock lines, would make more sense?
> 
> I also wonder if phy-mode = "sgmii-clk" or "sgmii-6wire", vs the
> existing phy-mode = "sgmii", might also be a better way to describe
> this instead of a new property.
