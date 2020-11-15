Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D0602B318E
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 01:11:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726433AbgKOALi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 19:11:38 -0500
Received: from mail.kernel.org ([198.145.29.99]:37418 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726429AbgKOALh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 19:11:37 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E8934239D2;
        Sun, 15 Nov 2020 00:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605399097;
        bh=x/pm3r47P1PbIICIqZyHa4/S0agy7+gk+cV4VFNXQy4=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=TTzSMtk4FVnHu9HCWVyr1GI/JcRK3tbHwQj2BLGSh5RZR5CMYod/SGKi9+wh1Oje3
         fggxU/2nJskfVKyJB50bxdj7E7Z9R6ZgBTDDpyjpGDRLQFvjA/pqOcPKyQYhvC0p+u
         fwsMIRrllQLEHt+zsf1JOKjN1E+gAf4AGQobPu14=
Date:   Sun, 15 Nov 2020 01:11:31 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5l?= =?UTF-8?B?LUvDtm5pZw==?= 
        <uwe@kleine-koenig.org>, Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201115011131.7ecae950@kernel.org>
In-Reply-To: <9135e412-4062-18bf-4d7f-5096e5c742d5@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-5-kabel@kernel.org>
        <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
        <9135e412-4062-18bf-4d7f-5096e5c742d5@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Actually one minor diff: As I had pointed out to you privately before, I
> set maximum-power-milliwatt to its max of 2000.
> 
> Does your hardware only support the default of 1000, or are you still
> unsure of the limit that you've omitted it here? Not sure if it makes a
> difference in practice, but it does show up in dmesg.

I am unsure, I have to ask HW guys what power is guaranteed.

Marek
