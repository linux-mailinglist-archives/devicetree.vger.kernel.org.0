Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7FF143AE4A
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 10:46:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbhJZIsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 04:48:39 -0400
Received: from 10.mo584.mail-out.ovh.net ([188.165.33.109]:38171 "EHLO
        10.mo584.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbhJZIsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 04:48:39 -0400
X-Greylist: delayed 599 seconds by postgrey-1.27 at vger.kernel.org; Tue, 26 Oct 2021 04:48:38 EDT
Received: from player693.ha.ovh.net (unknown [10.109.146.211])
        by mo584.mail-out.ovh.net (Postfix) with ESMTP id 54F922360E
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 08:29:10 +0000 (UTC)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player693.ha.ovh.net (Postfix) with ESMTPSA id 599E82393585A;
        Tue, 26 Oct 2021 08:29:03 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G001d1689758-4ca3-4b32-85ae-c73bd53dff71,
                    D2D2DA125972966749BCF64AB0EA86670254DB21) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Message-ID: <0f1f7596-2529-845f-9d5e-fee622e9a767@milecki.pl>
Date:   Tue, 26 Oct 2021 10:29:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:94.0) Gecko/20100101
 Thunderbird/94.0
Subject: Re: [PATCH 2/2] ARM: dts: BCM5301X: define RTL8365MB switch on Asus
 RT-AC88U
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20211025213926.21203-1-arinc.unal@arinc9.com>
 <20211025213926.21203-2-arinc.unal@arinc9.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20211025213926.21203-2-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 13571034527869807450
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrvdefjedgtdefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepgfetgfetuddujedujeduvddvgfffudeuudeuhedtffevvdetvddvveffgfdvjeffnecuffhomhgrihhnpehrmhhilhgvtghkihdrlhhotggrlhenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrieelfedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25.10.2021 23:39, Arınç ÜNAL wrote:
> Define the Realtek RTL8365MB switch without interrupt support on the device tree of Asus RT-AC88U.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>

./scripts/checkpatch.pl doesn't like formatting in your patch:

WARNING: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#9:
Define the Realtek RTL8365MB switch without interrupt support on the device tree of Asus RT-AC88U.


This change introduces new "make ARCH=arm dtbs_check" validation
warnings / errors:

arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml:0:0: /switch: failed to match any schema with compatible: ['realtek,rtl8365mb']
arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml:0:0: /switch/mdio: failed to match any schema with compatible: ['realtek,smi-mdio']
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: phy@0: '#phy-cells' is a required property
         From schema: /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: phy@1: '#phy-cells' is a required property
         From schema: /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: phy@2: '#phy-cells' is a required property
         From schema: /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml
/home/rmilecki/linux/linux-next/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dt.yaml: phy@3: '#phy-cells' is a required property
         From schema: /home/rmilecki/.local/lib/python3.6/site-packages/dtschema/schemas/phy/phy-provider.yaml

the first two are caused by realtek-smi.txt not being converted to YAML.
Ignore them.

Later are caused by using phy@ instead of ethernet-phy@ and have to be
fixed.
