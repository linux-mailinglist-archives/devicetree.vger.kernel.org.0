Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A66C1958BE
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2020 15:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726698AbgC0OPp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Mar 2020 10:15:45 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:34000 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727115AbgC0OPp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 27 Mar 2020 10:15:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=s4i5KmLKfub8BBxXB3cWuYtKCz0ltkH5r8L+83ZwU2g=; b=3pJjhKfQTzZ1v9BAbUW+liAWeV
        jGi6zab4lBOwxHobsVXn2SqI9PtZxqqUHrwC4uXyO1kc++9Aacb8/FYMcypIZehz7RTkWerfAMorA
        yAB9sTv0D0ckDyxUZYHjgMQzJiXZkxXTXB0brbIGsDFGpSlhIrJV5d/ZSpzaPkd4Nzek=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
        (envelope-from <andrew@lunn.ch>)
        id 1jHplq-00027N-TP; Fri, 27 Mar 2020 15:15:38 +0100
Date:   Fri, 27 Mar 2020 15:15:38 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Jason Cooper <jason@lakedaemon.net>,
        "Madalin Bucur (OSS)" <madalin.bucur@oss.nxp.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327141538.GE11004@lunn.ch>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
 <20200327134319.GD11004@lunn.ch>
 <20200327134651.GM25745@shell.armlinux.org.uk>
 <20200327135046.GN25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327135046.GN25745@shell.armlinux.org.uk>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> ... and actually there is no point.

O.K. lets merge these as normal, not as fixes.  It is probably too
late for ARM SoC, so i guess they will get merged next cycle.

     Andrew
