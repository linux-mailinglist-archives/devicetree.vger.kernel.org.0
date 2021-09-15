Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DABAF40CE1C
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 22:34:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbhIOUf4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 16:35:56 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:43062 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231490AbhIOUf4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 16:35:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=I695fxV3rtoEGJmyLVEw/GhpWuvfSF9OuM8iMImSHYo=; b=5t90GtYm5tUxm8nTNSUJ3Dbw68
        9E5egFeviFEI9sj4iImH6TEAR4s3fMvz6oLqF3idlbRSjY3Cv51Ca5J6DZ8SyMG2q+Z7QhgLww5lj
        UhdKryWxuj4rEBxMb5mLicwLF3gXuqCzzWhC+72MVhBcmoG3kZ6aMLU/Dn8FHJSBRcD4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1mQbc2-006nuf-4S; Wed, 15 Sep 2021 22:34:34 +0200
Date:   Wed, 15 Sep 2021 22:34:34 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Subject: Re: [PATCH 0/3] SigmaStar SSD20XD GPIO interrupt controller
Message-ID: <YUJY2v59+ui1pGZp@lunn.ch>
References: <20210914100415.1549208-1-daniel@0x0f.com>
 <YUDG58WfACd8GYf5@lunn.ch>
 <CAFr9PX=J85PxAiHC2Cb9Z18v8pYtd2Uea8KOC+AsYyJKFCLHXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFr9PX=J85PxAiHC2Cb9Z18v8pYtd2Uea8KOC+AsYyJKFCLHXw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 15, 2021 at 06:06:52PM +0900, Daniel Palmer wrote:
> Hi Andrew,
> 
> On Wed, 15 Sept 2021 at 00:59, Andrew Lunn <andrew@lunn.ch> wrote:
> > How are the GPIOs mapped to the interrupts? Is it a simple 1:1?
> 
> Unfortunately, no.
> I wanted to add the GPIO controller part of this to this same series
> but there are some patches in flight for that so it would have been
> messy.
> You can see that here though:
> https://github.com/linux-chenxing/linux/commit/88345dc470bf07d36aa1ddab09551ed33a1cfb22
> 
> They've really made a mess of this. Their whole GPIO thing is a mess
> with no clear logic between the pin names and the register locations
> etc.
> This IRQ part is no exception. IRQ 0 from this thing isn't for the pin
> called GPIO0 or anything sane like that.

O.K. Then it sounds like splitting GPIO and the IRQ makes sense.  This
is the sort of thing which is good to put in the cover letter,
explaining why you decided to do it this way.

     Andrew
