Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7855057C4E9
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 09:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232310AbiGUHDt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 03:03:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232301AbiGUHDr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 03:03:47 -0400
X-Greylist: delayed 600 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 21 Jul 2022 00:03:40 PDT
Received: from 13.mo583.mail-out.ovh.net (13.mo583.mail-out.ovh.net [87.98.182.191])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF73F7B1DA
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:03:40 -0700 (PDT)
Received: from player697.ha.ovh.net (unknown [10.110.103.91])
        by mo583.mail-out.ovh.net (Postfix) with ESMTP id 458FE245EB
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:46:06 +0000 (UTC)
Received: from RCM-web2.webmail.mail.ovh.net (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player697.ha.ovh.net (Postfix) with ESMTPSA id 0069A2CD2E7F8;
        Thu, 21 Jul 2022 06:45:54 +0000 (UTC)
MIME-Version: 1.0
Date:   Thu, 21 Jul 2022 08:45:54 +0200
From:   =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To:     William Zhang <william.zhang@broadcom.com>
Cc:     Linux ARM List <linux-arm-kernel@lists.infradead.org>,
        joel.peshkin@broadcom.com, dan.beygelman@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH 5/9] arm64: dts: Add BCM4908 generic board dts
In-Reply-To: <20220721000731.29597-1-william.zhang@broadcom.com>
References: <20220721000731.29597-1-william.zhang@broadcom.com>
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <4919ef26ece22db845de584e3d9b3814@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 194.187.74.233
X-Webmail-UserID: rafal@milecki.pl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Ovh-Tracer-Id: 17739115984414288859
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrudelkedgudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepggffhffvvefujghffgfkgihitgfgsehtjehjtddtredvnecuhfhrohhmpeftrghfrghlpgfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeegvdffjeelvdeggeetheegveejieetgeeiiefggeelveejffehieekhfduueelhfenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrheileejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehkeef
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-07-21 02:07, William Zhang wrote:
> Add generic bcm94908.dts file.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> ---
> 
>  arch/arm64/boot/dts/broadcom/bcmbca/Makefile  |  1 +
>  .../boot/dts/broadcom/bcmbca/bcm94908.dts     | 30 +++++++++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dts
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
> b/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
> index d30fa75f0611..27741b71ba9e 100644
> --- a/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
> +++ b/arch/arm64/boot/dts/broadcom/bcmbca/Makefile
> @@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_BCMBCA) += \
>  				bcm4906-tplink-archer-c2300-v1.dtb \
>  				bcm4908-asus-gt-ac5300.dtb \
>  				bcm4908-netgear-raxe500.dtb \
> +				bcm94908.dtb \
>  				bcm4912-asus-gt-ax6000.dtb \
>  				bcm94912.dtb \
>  				bcm963158.dtb \

AFAIU bcm94908 is a reference board name. I think I see some
inconsistency in naming Broadcom's reference boards DTS files.

If you take a look at in-kernel DTS files:
find ./arch/arm*/boot/dts/ -name "*.dts"
99% of them are prefixed with family/SoC name. I did the same for
bcm4908 (and Northstar) boards. So it's
<soc>-<manufacturer>-<model>.dts
e.g.
bcm4908-asus-gt-ac5300.dts

To match that I *think* you should actually call your file:
bcm4908-bcm94908 (or bcm4908-94908 depending on actual board name)

First of all: am I correct here?

Secondly: could you do that? I know many DTS files named ignoring SoC/
family prefix. Still maybe we could change it as some (this) point?
