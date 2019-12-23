Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 071011290B4
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2019 02:41:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726539AbfLWBlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Dec 2019 20:41:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:56602 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726616AbfLWBlZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 22 Dec 2019 20:41:25 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2D14B2067C;
        Mon, 23 Dec 2019 01:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1577065284;
        bh=E/kka9OXm0qYxQhxNuqLXHMpmTHBqe4nWeazON9zZ/4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jgfU/fk9gHUM8QCkQdO6cQdmQC2ijdDDJqG4xyhXJXMGylA6GqCpjXufw2uZFLZ13
         2LfXz7kK/cbcceOrh3Q2dv2SVXm0yOdgcf2cK47KLfS5LIzhQg65Reoo0b9N7KXz7G
         N/2fcGyTZ0WOx5r4UKqAxx7Nn1HySFcNQznK70Q4=
Date:   Mon, 23 Dec 2019 09:41:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Jon Nettleton <jon@solid-run.com>,
        Rabeeh Khoury <rabeeh@solid-run.com>,
        Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191223014101.GC11523@dragon>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
 <20191216110253.GE25745@shell.armlinux.org.uk>
 <20191216113455.GF25745@shell.armlinux.org.uk>
 <20191216123442.GG25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191216123442.GG25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 16, 2019 at 12:34:42PM +0000, Russell King - ARM Linux admin wrote:
> Okay, I finally found it at:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/patch/?id=6e1b8fae892daa7ffb48570264b8e43b3f807e9a
> 
> Note that that was unnecessarily difficult - google was unable to find
> it.  Ioana's patch should have been copied to linux-arm-kernel as per
> MAINTAINERS, but wasn't.  Is copying the appropriate mailing lists for
> a patch now optional?

Absolutely no.  I will remind people to copy appropriate mailing lists
when sending patches.  Sorry.

Shawn
