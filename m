Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 56E89A6329
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2019 09:55:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726631AbfICHzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Sep 2019 03:55:10 -0400
Received: from 2.mo177.mail-out.ovh.net ([178.33.109.80]:35471 "EHLO
        2.mo177.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbfICHzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Sep 2019 03:55:10 -0400
X-Greylist: delayed 1005 seconds by postgrey-1.27 at vger.kernel.org; Tue, 03 Sep 2019 03:55:09 EDT
Received: from player756.ha.ovh.net (unknown [10.109.143.72])
        by mo177.mail-out.ovh.net (Postfix) with ESMTP id 79EA8109701
        for <devicetree@vger.kernel.org>; Tue,  3 Sep 2019 09:38:22 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player756.ha.ovh.net (Postfix) with ESMTPSA id 4880088D8887;
        Tue,  3 Sep 2019 07:38:12 +0000 (UTC)
Subject: Re: [PATCH v2 1/2] ARM: dts: opos6ul/opos6uldev: rework device tree
 to support i.MX6ULL
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
From:   =?UTF-8?Q?S=c3=a9bastien_Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Openpgp: preference=signencrypt
Message-ID: <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
Date:   Tue, 3 Sep 2019 09:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 1760344505444685052
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudejuddguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 7/24/19 2:06 PM, Sébastien Szymanski wrote:
> Rework the device trees of the OPOS6UL and OPOS6ULDev boards to support
> the OPOS6UL SoM with an i.MX6ULL SoC.  The device trees are now as
> following:
> 
> - imx6ul-imx6ull-opos6ul.dtsi
>   common for both i.MX6UL and i.MX6ULL OPOS6UL SoM.
> - imx6ul-opos6ul.dtsi
>   for i.MX6UL OPOS6UL SoM. It includes imx6ul.dtsi and
>   imx6ul-imx6ull-opos6ul.dtsi.
> - imx6ull-opos6ul.dtsi
>   for i.MX6ULL OPOS6UL SoM. It includes imx6ull.dtsi and
>   imx6ul-imx6ull-opos6ul.dtsi.
> 
> - imx6ul-imx6ull-opos6uldev.dtsi
>   OPOS6ULDev base device tree.
> - imx6ul-opos6uldev.dts
>   OPOS6ULDev board with an i.MX6UL OPOS6UL SoM. It includes
>   imx6ul-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> - imx6ull-opos6uldev.dts
>   OPOS6ULDev board with an i.MX6ULL OPOS6UL SoM. It includes
>   imx6ull-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> 
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
> 
> Changes for v2:
> - explain the file hierarchy in the commit log
> - use MIT license instead of X11
> - Change compatible properties to "armadeus,imx6{ul,ull}-opos6ul" and
>   "armadeus,imx6{ul,ull}-opos6uldev" to follow the bindings of the
>   Armadeus boards already supported.

gentle ping...

Regards,

Sébastien
