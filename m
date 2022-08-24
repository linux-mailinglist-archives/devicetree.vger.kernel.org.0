Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A348E59F335
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 07:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234138AbiHXFv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 01:51:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231804AbiHXFv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 01:51:56 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FAA6642F5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 22:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661320314; x=1692856314;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/vT2RTQyLbNApsavW8ctZU0rB7ip6vknIclhC31+ZW0=;
  b=VPr8iUB/Gt8oTDiyyWDMHeMl30um5KnsoJZlANkqcVSA4IeHj5rZYlx1
   1Buu3B5WeQq5ntzfFlZ3ofyhFbrf9AidC8KHs+p2sx5rbzIpGRPK//cTf
   RzccsN0qGDSenC4YSbDZ2gubXIjfSv4MHzpJUhjdDN0lbswTi4oyOSjEC
   rcclRA3h3JHjODTHsH9ItddMRcQoZJF/wTbIbHeEX25wW4DZekZYpKRnu
   VThw71zaJq7Bg9v4cmYI0P7/KYCS0AY9G9S4yh4usVrR/QsRjrXHu9xxK
   zcj4SMCaXCeJUhjIYjL55P2ku534Bn8RKjaKccTshNEMsywTOL5ymJbsc
   w==;
X-IronPort-AV: E=Sophos;i="5.93,260,1654552800"; 
   d="scan'208";a="25767440"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 24 Aug 2022 07:51:52 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 24 Aug 2022 07:51:52 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 24 Aug 2022 07:51:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661320312; x=1692856312;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=/vT2RTQyLbNApsavW8ctZU0rB7ip6vknIclhC31+ZW0=;
  b=kaqkd/MUomOvCLUBu++puyQe1/mnTlcuNmV81YPGPaR6dSzS65a1Kd4/
   p6PPACk5TZrkSpY7p/Ekr/5Rj3dNp6eXRdqjkqh/mnnJd8JLX8zTjwKKK
   aCPScEXXwKiHipAjpiK5RBJAyegzInCXTI+MoMmebRDflIepfat615fY/
   1MfolLn1QSAehtCZZ4hOSXYU+dBnPG4Zu8EGz0PgNGtri9Cys7VvFaIZN
   5bh+5aAmWmVYryYeGqKFKvykmocWoAdb+pJCaogOlFIChxUmfcdiFJUtc
   rQ1BcFMtHQgNtY3VQvt5DJ3YPqKKVWDhfs3CGP6aOJrJv1kKeD+PSbvCy
   w==;
X-IronPort-AV: E=Sophos;i="5.93,260,1654552800"; 
   d="scan'208";a="25767439"
Subject: Re: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 Aug 2022 07:51:52 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1DA79280056;
        Wed, 24 Aug 2022 07:51:52 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>
Date:   Wed, 24 Aug 2022 07:51:49 +0200
Message-ID: <11067634.nUPlyArG6x@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220823165602.275931-1-marex@denx.de>
References: <20220823165602.275931-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marek,

Am Dienstag, 23. August 2022, 18:56:02 CEST schrieb Marek Vasut:
> Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
> e.g. boot counter.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> f7adcb2c14880..21689e9e68170 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -478,6 +478,11 @@ snvs_pwrkey: snvs-powerkey {
>  					wakeup-source;
>  					status = "disabled";
>  				};
> +
> +				snvs_lpgpr: snvs-lpgpr {
> +					compatible = 
"fsl,imx8mp-snvs-lpgpr",
> +						     
"fsl,imx7d-snvs-lpgpr";
> +				};
>  			};
> 
>  			clk: clock-controller@30380000 {

Do you have any information that the i.MX8M Plus actually has the HPLR 
register (at offset 0)? This is used in snvs_lpgpr_write. I can't find it in 
the RM, although GPR_SL is referenced in LPGPRx register description.

Best regards,
Alexander



