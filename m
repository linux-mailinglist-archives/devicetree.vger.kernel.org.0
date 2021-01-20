Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C81972FD9E4
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 20:43:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732237AbhATTmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 14:42:12 -0500
Received: from 6.mo5.mail-out.ovh.net ([178.32.119.138]:40606 "EHLO
        6.mo5.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436480AbhATTdn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 14:33:43 -0500
X-Greylist: delayed 925 seconds by postgrey-1.27 at vger.kernel.org; Wed, 20 Jan 2021 14:33:42 EST
Received: from player759.ha.ovh.net (unknown [10.108.35.13])
        by mo5.mail-out.ovh.net (Postfix) with ESMTP id 8EB7C2A0838
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 20:07:22 +0100 (CET)
Received: from RCM-web2.webmail.mail.ovh.net (public-gprs350448.centertel.pl [37.47.0.49])
        (Authenticated sender: rafal@milecki.pl)
        by player759.ha.ovh.net (Postfix) with ESMTPSA id 2E5521A44063F;
        Wed, 20 Jan 2021 19:07:17 +0000 (UTC)
MIME-Version: 1.0
Date:   Wed, 20 Jan 2021 20:07:17 +0100
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Rafa=C5=82_Mi=C5=82e?= =?UTF-8?Q?cki?= 
        <zajec5@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V2] arm64: dts: broadcom: bcm4908: describe internal
 switch
In-Reply-To: <20210120185824.2360279-1-f.fainelli@gmail.com>
References: <20210112131727.19020-1-zajec5@gmail.com>
 <20210113110946.19614-1-zajec5@gmail.com>
 <20210120185824.2360279-1-f.fainelli@gmail.com>
User-Agent: Roundcube Webmail/1.4.10
Message-ID: <105a78eed57cfbe5556284f79b3d1b0d@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 37.47.0.49
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 9181150792718782191
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledruddvgdduvddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeffudffgfejgfdvieegudekffefveehjeeuieekheduieduhedvieefudetheeinecukfhppedtrddtrddtrddtpdefjedrgeejrddtrdegleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-01-20 19:58, Florian Fainelli wrote:
> On Wed, 13 Jan 2021 12:09:46 +0100, Rafał Miłecki <zajec5@gmail.com> 
> wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>> 
>> BCM4908 has internal switch with 5 GPHYs. Ports 0 - 3 are always
>> connected to the internal PHYs. Remaining ports depend on device 
>> setup.
>> 
>> Asus GT-AC5300 has an extra switch with its PHYs accessible using the
>> internal MDIO.
>> 
>> CPU port and Ethernet interface remain to be documented.
>> ---
> 
> Applied to devicetree-arm64/next, thanks!

You may need to pick a patch sent as
[PATCH V2x] arm64: dts: broadcom: bcm4908: describe internal switch
instead.

V2x contains Signed-off-by which I missed in the V2.

Sorry for the inconvenience!
