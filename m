Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CBEF44A84C
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 09:26:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244041AbhKII2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 03:28:47 -0500
Received: from 17.mo561.mail-out.ovh.net ([87.98.178.58]:34479 "EHLO
        17.mo561.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239099AbhKII2q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 03:28:46 -0500
X-Greylist: delayed 1799 seconds by postgrey-1.27 at vger.kernel.org; Tue, 09 Nov 2021 03:28:46 EST
Received: from player750.ha.ovh.net (unknown [10.109.146.143])
        by mo561.mail-out.ovh.net (Postfix) with ESMTP id 572F32422C
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 07:49:50 +0000 (UTC)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player750.ha.ovh.net (Postfix) with ESMTPSA id 6F7A52400E93F;
        Tue,  9 Nov 2021 07:49:37 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-102R004b5d7a376-507d-4bf9-be5d-6ccd0cb549da,
                    59B56381F1A9F0D5248293F13F2B328DA5DD2F9D) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 194.187.74.233
Message-ID: <48cb0c8c-c752-0832-1e1a-836303926ed3@milecki.pl>
Date:   Tue, 9 Nov 2021 08:49:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:95.0) Gecko/20100101
 Thunderbird/95.0
Subject: Re: [PATCH 1/2] dt-bindings: mtd: brcmnand: add "no-wp" property
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com
References: <20211103151117.18690-1-zajec5@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
In-Reply-To: <20211103151117.18690-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 2890748011998849882
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudefgddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomheptfgrfhgrlhcuofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeetledugeejtdevheetieduhefgtedvgefftddvfedvieevjeegleffleegtdeunecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeehtddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03.11.2021 16:11, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's required to properly describe boards without connected WP pin (e.g.
> Asus GT-AC5300).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>   Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> index dd5a64969e37..49c7860c0dad 100644
> --- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> +++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
> @@ -111,6 +111,11 @@ properties:
>         earlier versions of this core that include WP
>       type: boolean
>   
> +  no-wp:
> +    description:
> +      This property marks boards with WP pin not connected to the NAND chip.
> +    type: boolean

I started rethinking this. Since we already hav "brcm,nand-has-wp"
(boolean), would makes more sense:
1. Add "no-wp" boolean (as proposed in this patch)
2. Add "wp" (or similar) with [0, 1] and deprecate "brcm,nand-has-wp"
