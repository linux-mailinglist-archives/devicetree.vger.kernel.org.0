Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A4712B6E01
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 20:04:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729987AbgKQTDD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 14:03:03 -0500
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]:44464 "EHLO
        3.mo2.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728170AbgKQTDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 14:03:03 -0500
X-Greylist: delayed 1107 seconds by postgrey-1.27 at vger.kernel.org; Tue, 17 Nov 2020 14:03:02 EST
Received: from player729.ha.ovh.net (unknown [10.108.4.72])
        by mo2.mail-out.ovh.net (Postfix) with ESMTP id 799111ECDF2
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 19:44:34 +0100 (CET)
Received: from milecki.pl (ip-194-187-74-233.konfederacka.maverick.com.pl [194.187.74.233])
        (Authenticated sender: rafal@milecki.pl)
        by player729.ha.ovh.net (Postfix) with ESMTPSA id 685111863C63A;
        Tue, 17 Nov 2020 18:44:27 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-95G00165d8ccc0-173d-4c78-87b0-38760f7e9827,
                    B1E177F7E78B3956F2E633A591DED51936F1447F) smtp.auth=rafal@milecki.pl
Subject: Re: [PATCH 2/2] reset: brcm-pmc: add driver for Broadcom's PMC
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20201109163519.32605-1-zajec5@gmail.com>
 <20201109163519.32605-2-zajec5@gmail.com>
 <e89b4601-0c52-db46-4406-d9ac28687e8f@gmail.com>
 <41d25c9d-3562-9549-3582-78a5e2d37330@milecki.pl>
Message-ID: <e064498a-aacb-eb7a-13a7-441b1994ed7b@milecki.pl>
Date:   Tue, 17 Nov 2020 19:44:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <41d25c9d-3562-9549-3582-78a5e2d37330@milecki.pl>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 1878563996044529201
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudeffedguddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuhffvfhfkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejfeeutddvkefgueekudekiedvhefghfdvleegheetieevteettdegveduvdejfeenucfkpheptddrtddrtddrtddpudelgedrudekjedrjeegrddvfeefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjedvledrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehrrghfrghlsehmihhlvggtkhhirdhplhdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.11.2020 15:55, Rafał Miłecki wrote:
> *** PMB ***
> 
> It seems like PMB Master is reset controller on its own. Even though we don't
> have actual driver for the (documented) "brcm,bcm63138-pmb" binding, arch code
> treates it like a reset.
> 
> So it seems that a single PMB is capable at least of:
> 1. Resetting ARM CPU core (id by 8b addr)
> 2. Resetting devices (id by 8b addr) by (en|dis)abling zones
> 
> Above operations are performed in a different (programming) ways.
> 
> 
> *** PMC ***
> 
> PMC seems to be a reset controller with firmware capable at least of:
> 1. Resetting devices (id by 8b addr) by (en|dis)abling zones
> 
> that fallback to using PMB blocks when needed / required.

This just got more complex as I started playing with PMC / PMB and PCIe
controller.

1. BPCM_CAPABILITIES reg for PCIe controller reports 0 num_zones
2. Enabling PCIe requires powering on zone 0 manually
3. After powering on zone, PCIe requires setting SR_CONTROL

It means that PMB driver (and so PMC one as it fallback to the PMB) needs to
know what type of device we're addressing.

Anything simple like:

resets = <&pmb0 14>;
resets = <&pmc 1 14>;

won't work (unless we hardcode ids in driver - which is unwanted for DTS).


So I guess that after all we'll need something like:

cpu@1 {
     resets = <&pmb0 PMB_ARM 4>; /* ARM CPU */
}

foo {
     resets = <&pmb1 PMB_USB_DEVICE 17>; /* Reset USB using PMB directly */
}

bar {
     resets = <&pmb1 PMB_PCIE_DEVICE 15>; /* Reset PCIE using PMB directly */
}

and also

qux {
     resets = <&pmc PMB_PCIE_DEVICE 1 15>; /* Reset PCIe using PMC */
}
