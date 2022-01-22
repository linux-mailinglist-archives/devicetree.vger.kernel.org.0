Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 211B5496BC3
	for <lists+devicetree@lfdr.de>; Sat, 22 Jan 2022 11:48:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233936AbiAVKsP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jan 2022 05:48:15 -0500
Received: from 19.mo582.mail-out.ovh.net ([188.165.56.177]:45809 "EHLO
        19.mo582.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233835AbiAVKsO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jan 2022 05:48:14 -0500
X-Greylist: delayed 1185 seconds by postgrey-1.27 at vger.kernel.org; Sat, 22 Jan 2022 05:48:14 EST
Received: from player157.ha.ovh.net (unknown [10.108.16.164])
        by mo582.mail-out.ovh.net (Postfix) with ESMTP id 1CB72202CE
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 10:32:46 +0000 (UTC)
Received: from etezian.org (82-181-27-157.bb.dnainternet.fi [82.181.27.157])
        (Authenticated sender: andi@etezian.org)
        by player157.ha.ovh.net (Postfix) with ESMTPSA id 8612B269A01DF;
        Sat, 22 Jan 2022 10:32:31 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-97G002d1f1703d-60b6-4d6e-9bce-356b1a80796e,
                    47613193A4C2821AFA139AF0D7345AE9E747044F) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 82.181.27.157
Date:   Sat, 22 Jan 2022 12:32:30 +0200
From:   Andi Shyti <andi@etezian.org>
To:     Alim Akhtar <alim.akhtar@samsung.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski@canonical.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        broonie@kernel.org, andi@etezian.org, linux-spi@vger.kernel.org,
        linux-fsd@tesla.com, Aswani Reddy <aswani.reddy@samsung.com>
Subject: Re: [PATCH v2 2/3] spi: s3c64xx: Add spi port configuration for
 Tesla FSD SoC
Message-ID: <YevdPslZ//gylbGX@jack.zhora.eu>
References: <20220120192438.25555-1-alim.akhtar@samsung.com>
 <CGME20220120193618epcas5p45be1db500363072e647bf179623f8e7a@epcas5p4.samsung.com>
 <20220120192438.25555-3-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220120192438.25555-3-alim.akhtar@samsung.com>
X-Ovh-Tracer-Id: 15946683333332503243
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrvddvgddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpkedvrddukedurddvjedrudehjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrudehjedrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alim,

> Adds compatible and port configuration for spi controller
> for Tesla Full Self-Driving SoC.

please next time be a bit clearer in the cover letter. I think
you want to say:

  "This patch adds the compatible..."

But it's anyway recommended to use the imperative form:

  "Add the compatible blah blah blah...."

> Cc: linux-fsd@tesla.com
> Signed-off-by: Aswani Reddy <aswani.reddy@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>

Other than that, looks good to me:

Reviewed-by: Andi Shyti <andi@etezian.org>

Thanks,
Andi
