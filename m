Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14AB84EF928
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 19:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235552AbiDARuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 13:50:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244792AbiDARuD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 13:50:03 -0400
X-Greylist: delayed 25669 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 01 Apr 2022 10:48:11 PDT
Received: from 10.mo581.mail-out.ovh.net (10.mo581.mail-out.ovh.net [178.33.250.56])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 398EC2597F6
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 10:48:11 -0700 (PDT)
Received: from player692.ha.ovh.net (unknown [10.111.172.229])
        by mo581.mail-out.ovh.net (Postfix) with ESMTP id 809B622A31
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 10:40:20 +0000 (UTC)
Received: from RCM-web8.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player692.ha.ovh.net (Postfix) with ESMTPSA id 21C9D28E09FC7;
        Fri,  1 Apr 2022 10:40:13 +0000 (UTC)
MIME-Version: 1.0
Date:   Fri, 01 Apr 2022 12:40:12 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     =?UTF-8?Q?Ar=C4=B1n=C3=A7_=C3=9CNAL?= <arinc.unal@arinc9.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 5/5] ARM: dts: BCM5301X: Disable unused gmac0 and gmac2 on
 Asus RT-AC88U
In-Reply-To: <20220401102002.15765-5-arinc.unal@arinc9.com>
References: <20220401102002.15765-1-arinc.unal@arinc9.com>
 <20220401102002.15765-5-arinc.unal@arinc9.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <06e49b67a2e2f75040c51f8a05c329ef@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15461983424647506778
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiiedgfeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvufgjfhgfkfigihgtgfesthekjhdttderjeenucfhrhhomheptfgrfhgrlhgpofhilhgvtghkihcuoehrrghfrghlsehmihhlvggtkhhirdhplheqnecuggftrfgrthhtvghrnhepjeffudffgfejgfdvieegudekffefveehjeeuieekheduieduhedvieefudetheeinecukfhppedtrddtrddtrddtpdduleegrddukeejrdejgedrvdeffeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrieelvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H4,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-01 12:20, Arınç ÜNAL wrote:
> Disable gmac0 and gmac2 which are currently not used. This doesn't seem 
> to
> be implemented yet on drivers/net/ethernet/broadcom/bgmac-bcma.c but 
> this
> change is harmless, nonetheless.

It doesn't matter whether Linux respects that.


> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>  arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> index 2f944d1c0330..0f5c5d576814 100644
> --- a/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> +++ b/arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts
> @@ -242,11 +242,19 @@ fixed-link {
>  	};
>  };
> 
> +&gmac0 {
> +	status = "disabled";
> +};
> +
>  &gmac1 {
>  	nvmem-cells = <&et1macaddr>;
>  	nvmem-cell-names = "mac-address";
>  };
> 
> +&gmac2 {
> +	status = "disabled";
> +};

I don't think that is correct. Those interfaces are still there and
they are actually connected to switch ports. If you configure your
switch properly you can use them.

Someone may want to use e.g. gmac0 & gmac1 with two sets of ports to
speed up network communication.

I think gmac2 is required if you want to enable FA (flow acceleration /
accelerator) - even though there isn't Linux driver for it yet.

They are not disabled / unpopulated / non functional interfaces.
