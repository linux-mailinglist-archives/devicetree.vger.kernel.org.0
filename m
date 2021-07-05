Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F02C63BBB80
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 12:46:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231190AbhGEKte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jul 2021 06:49:34 -0400
Received: from first.geanix.com ([116.203.34.67]:60676 "EHLO first.geanix.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231209AbhGEKte (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Jul 2021 06:49:34 -0400
Received: from skn-laptop (unknown [185.233.254.173])
        by first.geanix.com (Postfix) with ESMTPSA id BC8064C5383;
        Mon,  5 Jul 2021 10:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
        t=1625482015; bh=/8FqO6pBB1MSEkM8eBrDR29KNXvVw/vqG/8FEdlGiHU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To;
        b=kDmIklMJBmOIl5BQ9Bv3Ly8GWxhpiYpztpHJ35MvrpmD7fC3h7/S94MlWE2MYfrIY
         BBixsqqoIUJs9jbUBqnkxKyofKBcUCeRts3GP35rTDarTTYPZjR09bNHJydjvaBgRJ
         fkTJuQe71mHSRivmxatVrUv5bS5DBYU3hwofvrSs1MJYRtqPDJJNzU2SsM/kSnlB1D
         qXMQpzAAUq/Y/FSp8zQcNgoWKosSVY8zt1rXgxJX1RU3xcrLmA83I1yB0cfBgsdCeG
         q8JYTUxvI5DR/QoWA2k7csQqvE0MPo+KNZ/YlefZAIKzJ8sNkTrPINgPFjX1/I0xm5
         kxXzqnV2uj1bQ==
Date:   Mon, 5 Jul 2021 12:46:54 +0200
From:   Sean Nyekjaer <sean@geanix.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Han Xu <han.xu@nxp.com>, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] mtd: nand: raw: gpmi: new bch geometry settings
Message-ID: <20210705104654.gko7ettkilrrosi7@skn-laptop>
References: <20210522205136.19465-1-han.xu@nxp.com>
 <13c975bc-b37b-8708-9ac7-acdc62ef7108@geanix.com>
 <20210525191308.jlxqvy7khptbuj4z@umbrella>
 <20210526094136.279976a6@xps13>
 <20210526141700.5gygssig4rnzn6mj@umbrella>
 <20210526173123.1787713b@xps13>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210526173123.1787713b@xps13>
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 93bd6fdb21b5
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 26, 2021 at 05:31:23PM +0200, Miquel Raynal wrote:
> Hi Han,
> 

[ ... ]

> 
> I understand that (2) might be ideal to meet but is breaking all the
> boards that use this driver really worth the trouble?
> 
> Short answer: no. So we need to adapt the calculation for new
> boards/new flash chips/certain geometries at most.
> 
> > > > The new implementation might get weak ecc than legacy way in some cases but it
> > > > is safety guaranteed.  
> > > 
> > > What does "safety guaranteed" means?  
> > 
> > set minimum ecc required by nand chip at least meet all requirements
> > 
> > >   
> > > > This reminds me the gpmi raw access mode changes in kernel 3.19, it also changes
> > > > the driver behaviors and makes totally different output compared with older
> > > > versions. I know changes bring mess but we have to accept it at some point
> > > > rather than keep compromising to the wrong way.  
> > > 
> > > How is this an argument? I am usually in favor of moving forward when
> > > there is a real justification, but this does not seem the case, unless
> > > I am understanding it all the wrong way.
> > >   
> > > > The change has been in NXP kernel fork for a while, so quite a few customers are
> > > > using this bch geometry settings. I hope it can be upstreamed, any other things
> > > > I can do may mitigate the imapact?  
> > > 
> > > You are well aware of the upstreaming process, trying to merge
> > > something locally, making it used and then complaining because not
> > > upstreaming it would break your customers really is your own
> > > responsibility.  
> > 
> > Sorry I understand I should try upstreaming it early, so I am still looking for
> > a chance to avoid further divergence.
> > 
> > > 
> > > IMHO the solutions are:
> > > - the current (mainline) default will remain the standard for
> > >   geometries which are already widely supported
> > > - if there are new geometries that must be supported and do not fit
> > >   because of the "legacy" logic, then you may detect that and try
> > >   to fallback to the "modern" way of calculating the ECC
> > >   parameters (or even jump directly to the modern way if the geometry
> > >   really is not currently supported officially)
> > > - if your customers want a specific chunk size/strength when
> > >   rebasing on top of a mainline kernel there are DT properties which do
> > >   that anyway
> > > - follow Sean advice: introduce a property requesting to use the
> > >   'modern' or 'legacy' logic (with a better name than modern) but first
> > >   check with Rob that this if valid.
> 
> Another hint: please check the core helpers and use them instead of
> trying to re-invent the wheel: normally just describing the engine
> capabilities and calling a single helper should do the trick. But this
> 'new' calculation should only apply to eg. MLC devices or devices with
> specific geometries, not to all devices.
> 
> Thanks,
> Miquèl

Hi Han,

Is this something you are working on?
If not I really think we need to revert the changes to u-boot, to allign
vanilla u-boot and kernel.

/Sean
