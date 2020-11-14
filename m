Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 081502B3167
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 00:32:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726177AbgKNXcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 18:32:06 -0500
Received: from mail.kernel.org ([198.145.29.99]:60198 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726146AbgKNXcG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 18:32:06 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6C0B424137;
        Sat, 14 Nov 2020 23:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605396725;
        bh=ksZRMURl6QrPM+7xsn9GHVkWXHX19K3tTzb/Y7ML4Og=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=gSTqRJkKD6EVXkm5whN0YZ5jNPM5SS3psmE6qmGqjqupeHtefGOyqzgzMGGmDoVNS
         wl+s+zHrXlpIDjpWUKOAFsrN9eC2LoB6NGjfqQ/6cAypFxU8pp+KmL20yqgfDk6Auu
         RMyJVg8tdS7ZPVPtDQA7Z1XA0jHrPWT8ZNrolLWI=
Date:   Sun, 15 Nov 2020 00:32:00 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUs=?= =?UTF-8?B?w7ZuaWc=?= 
        <uwe@kleine-koenig.org>, Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201115003200.789e3f0e@kernel.org>
In-Reply-To: <a060d0fe-a10f-de9f-bc21-7b7ec8da5f86@suse.de>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
        <20201114174928.5ab4f8ae@kernel.org>
        <20201114171639.GO1456319@lunn.ch>
        <a060d0fe-a10f-de9f-bc21-7b7ec8da5f86@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 22:20:38 +0100
Andreas F=C3=A4rber <afaerber@suse.de> wrote:

> P.S. Was LAKML intentionally omitted from CC?

I do not include LAKML to Cc in most cases, just the corresponding
maintainers and mailing lists of given subsystems.

Marek
