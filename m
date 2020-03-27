Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 73056195839
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2020 14:43:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726656AbgC0Nnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Mar 2020 09:43:33 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:33884 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726333AbgC0Nnd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Mar 2020 09:43:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=zZWEELccHVa5+BLnBo1aGEf+Gz/sDEZu70SzadPvVWs=; b=abeAp8r8wnTeLEfHIePmS3GU3q
        4QesXg+IybgHxTOXrbvrxydAJa7MBbAGbGCQVAkkkQYzm7I9BrNbTc277RnYzeGcNbN7q0cdpwbEd
        SfXLGwYoHGLtU5OrVDe83RQUjccOZ5ZWrvZs12/VsYxtpj4nCM8i/lKNmVtEwYN0aNno=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
        (envelope-from <andrew@lunn.ch>)
        id 1jHpGZ-0001m7-Rq; Fri, 27 Mar 2020 14:43:19 +0100
Date:   Fri, 27 Mar 2020 14:43:19 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327134319.GD11004@lunn.ch>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 27, 2020 at 12:40:42PM +0000, Russell King wrote:
> Update the SolidRun Armada 8040 platforms phy interface types from the
> old 10gbase-kr to the newer and more correct 10gbase-r.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Can we add a fixes: tag to this? So it gets backported to the point
10gbase-r was added.

    Andrew
