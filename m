Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D44D243AF16
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 11:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232745AbhJZJcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 05:32:13 -0400
Received: from 7.mo575.mail-out.ovh.net ([46.105.63.230]:41471 "EHLO
        7.mo575.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231224AbhJZJcN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 05:32:13 -0400
X-Greylist: delayed 2154 seconds by postgrey-1.27 at vger.kernel.org; Tue, 26 Oct 2021 05:32:12 EDT
Received: from player716.ha.ovh.net (unknown [10.110.115.111])
        by mo575.mail-out.ovh.net (Postfix) with ESMTP id 1DB0F23C0F
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 08:53:54 +0000 (UTC)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player716.ha.ovh.net (Postfix) with ESMTPSA id B3EF9238EA1EC;
        Tue, 26 Oct 2021 08:53:46 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-103G005b4b68228-3bbb-46d3-a6b2-96fa5c8c4aa5,
                    D2D2DA125972966749BCF64AB0EA86670254DB21) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Message-ID: <c4c43ba0-4946-d9d2-ae79-285ef0545b17@milecki.pl>
Date:   Tue, 26 Oct 2021 10:53:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:94.0) Gecko/20100101
 Thunderbird/94.0
Subject: Re: [PATCH 1/2] ARM: dts: BCM5301X: remove unnecessary address & size
 cells from Asus RT-AC88U
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20211025213926.21203-1-arinc.unal@arinc9.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20211025213926.21203-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13988461920030993242
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefjedgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeetledugeejtdevheetieduhefgtedvgefftddvfedvieevjeegleffleegtdeunecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejudeirdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25.10.2021 23:39, Arınç ÜNAL wrote:
> Remove the unnecessary #address-cells & #size-cells in the gpio-keys node from the device tree of Asus RT-AC88U.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

One complain from checkpatch:

WARNING: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10:
Remove the unnecessary #address-cells & #size-cells in the gpio-keys node from the device tree of Asus RT-AC88U.


Acked-by: Rafał Miłecki <rafal@milecki.pl>
