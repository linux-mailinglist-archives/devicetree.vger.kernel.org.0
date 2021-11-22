Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51C894589E8
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 08:38:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230211AbhKVHli (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 02:41:38 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:17566 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230142AbhKVHli (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Nov 2021 02:41:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637566712; x=1669102712;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/mdJ+Yr8hjVsePo4uGTtT/2vo5F6SZai0jjIYYSVgHc=;
  b=Bepi63ZfpUtDOeC+Jr8shfqjlPd2m2365MNImnEK9Rf1q6J9elNt1XU9
   XJz4vZLUKLAmeXMjRCojQcZxq7NmyzV2Z1cjwW35Y+/qo++lFRhMSgllM
   MTPNEsWLQ0QhQHo8VXxMX4o+4irw6StiTdYxydt9tg9xOops3hNtc7Pqb
   lFOjFQ5iRnWoVxez03/IuHR8I3qYCkPQ1Jm6HCGyLRLtLWUFGx3E9vDRa
   Hi0HmVul2rog/N/vGHeIuwsXSXGjWh5MAQTPffPjTZBBi2CKVvh6n0AF3
   s9H6TxZyWAy8jt3UsQW62MSWetIc9BQOxGGFtMQZZvUFnYOkERk/92O0p
   A==;
X-IronPort-AV: E=Sophos;i="5.87,254,1631570400"; 
   d="scan'208";a="20583589"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Nov 2021 08:38:31 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 22 Nov 2021 08:38:31 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 22 Nov 2021 08:38:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1637566711; x=1669102711;
  h=message-id:subject:from:to:cc:date:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/mdJ+Yr8hjVsePo4uGTtT/2vo5F6SZai0jjIYYSVgHc=;
  b=a1EzLcj/0qb+34hk5iL/w2ccKb2pBW6SQoQllWwvT1ncN6NJKKjnlLvB
   +oJJfnFug9yO4L83AMI2A95QSKRHTwmYhujMM9EIM+ynmslHARqQ+uRCE
   b7K8B+tUl3os18Wl2/tj46R+10JSihaxCTSA4eS4zDuVYfIpEowC4c8o5
   VRSMqK2nYb4bZT5OfiWiEodgZilt/k03a7kFndOuDnOjs3WUpmyy1W64+
   BZH8Z1l5fzKQroByt3mA7FEqpZ+yDrjFM1qX+gFAVIQ58ChrV07VWt4cu
   k3CPs3d93L8QJRfFRG4d6yaWaS7w2DcB6JhB8m9CknDKrvqtctDBhONwH
   Q==;
X-IronPort-AV: E=Sophos;i="5.87,254,1631570400"; 
   d="scan'208";a="20583588"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Nov 2021 08:38:31 +0100
Received: from steina-w (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C31FF280065;
        Mon, 22 Nov 2021 08:38:30 +0100 (CET)
Message-ID: <c5c16bb09ed704b16e531fd83cf24f140dc2f529.camel@ew.tq-group.com>
Subject: Re: (EXT) Re: [PATCH v2 1/1] arm64: dts: imx8qm: Add fsl,
 imx7ulp-lpuart compatible to lpuart
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Mon, 22 Nov 2021 08:38:28 +0100
In-Reply-To: <20211122014314.GV31998@dragon>
References: <20211116125814.2674343-1-alexander.stein@ew.tq-group.com>
         <20211122014314.GV31998@dragon>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, dem 22.11.2021 um 09:43 +0800 schrieb Shawn Guo:
> On Tue, Nov 16, 2021 at 01:58:14PM +0100, Alexander Stein wrote:
> > After commit b4b844930f27 ("tty: serial: fsl_lpuart: drop earlycon
> > entry
> > for i.MX8QXP") earlycon support was essentially removed from
> > imx8qm/imx8qxp due to missing compatible.
> > The commit message says "i.MX8QXP lpuart is compatible with
> > i.MX7ULP" so
> > adding a fallback compatible should be fine.
> > With this change earlycon is supported again on imx8qm/imx8qxp.
> > 
> > Signed-off-by: Alexander Stein <
> > alexander.stein@ew.tq-group.com
> > >
> > Reviewed-by: Peng Fan <
> > peng.fan@nxp.com
> > >
> > ---
> > Changes in v2:
> > * Fix typo in commit message: 'early' -> 'earlycon'
> > 
> >  arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > index bbe5f5ecfb92..3486b99ab6eb 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > @@ -19,19 +19,19 @@ uart4_lpcg: clock-controller@5a4a0000 {
> >  };
> >  
> >  &lpuart0 {
> > -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> > +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> > "fsl,imx7ulp-lpuart";
> 
> Then fsl,imx8qxp-lpuart should be dropped?

If you drop fsl,imx8qxp-lpuart in the compatible list, fsl_lpuart.c
needs a new lpuart_soc_data for imx8qm in order to work. "fsl,imx7ulp-
lpuart" is not enough for imx8qm, as (among other things) "baud" clk is
mising in imx7. IMHO there are 2 ways:

1st
Add both fsl,imx8qxp-lpuart and fsl,imx7ulp-lpuart to the compatible
list to get both regular serial support (fsl,imx8qxp-lpuart) as well as
earlycon (fsl,imx7ulp-lpuart). In this case the bindings need to get
fixed as well, see [1]

2nd
Remove fsl,imx8qxp-lpuart compatible for imx8qm. But in this case
everything done for imx8qxp in fsl_lpuart.c has to be duplicated.
fsl,imx7ulp-lpuart is still required for earlycon support.

If you want to get rid of fsl,imx7ulp-lpuart compatible for
imx8qm/imx8qxp in either case, you need to revert b4b844930f27 ("tty:
serial: fsl_lpuart: drop earlycon entry for i.MX8QXP").

Best regards,
Alexander

[1] 
http://lists.infradead.org/pipermail/linux-arm-kernel/2021-November/697507.html

