Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB573112B96
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2019 13:36:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726604AbfLDMg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Dec 2019 07:36:56 -0500
Received: from mail.kernel.org ([198.145.29.99]:34480 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726586AbfLDMg4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Dec 2019 07:36:56 -0500
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C1B172077B;
        Wed,  4 Dec 2019 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1575463016;
        bh=IEViihsXqnNjLA7qY7TBVTr1iIuoipkvM1Y0xCsQOiI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NixFrMHiAyrafH7vOuLQuynqWv63B7yq3UGMsHHw3XdazZbYIrxadrALygMKPK7VA
         Ap9Vi4rdWr4bsQhrqb1XggvkMLG2RfJTwv+DQv+gNn/Lhn6jpmmToAXlwMFW0ZYA7s
         76P2lngyF3sWm+mvDEBj1dTFt32rr2QooPwkWdNY=
Date:   Wed, 4 Dec 2019 20:36:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Andreas Kemnade <andreas@kemnade.info>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "H . Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH] ARM: dts: e60k02: fix power button
Message-ID: <20191204123645.GL3365@dragon>
References: <20191111202959.24189-1-andreas@kemnade.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191111202959.24189-1-andreas@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 11, 2019 at 09:29:59PM +0100, Andreas Kemnade wrote:
> The power button was only producing irqs, but no key events,
> Forced power down with long key press works, so probably
> only a short spike arrives at the SoC.
> Further investigation shows that LDORTC2 is off after boot
> of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
> which probably transfers the button press to the SoC.
> That regulator off at boot, so "regulator-boot-on" is definitively
> wrong. So remove that.
> 
> Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>

Do you want this go into 5.5-rc as a fix?  In that case, we may need a
Fixes tag here.

Shawn

> ---
>  arch/arm/boot/dts/e60k02.dtsi | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/e60k02.dtsi b/arch/arm/boot/dts/e60k02.dtsi
> index a0ade2ba7a21..33e02bd2b59d 100644
> --- a/arch/arm/boot/dts/e60k02.dtsi
> +++ b/arch/arm/boot/dts/e60k02.dtsi
> @@ -356,11 +356,6 @@
>  				regulator-name = "LDORTC1";
>  				regulator-boot-on;
>  			};
> -
> -			ldortc2_reg: LDORTC2 {
> -				regulator-name = "LDORTC2";
> -				regulator-boot-on;
> -			};
>  		};
>  	};
>  };
> -- 
> 2.20.1
> 
