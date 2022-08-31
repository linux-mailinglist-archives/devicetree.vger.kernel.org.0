Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 695235A80C5
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 16:58:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiHaO6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 10:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231342AbiHaO6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 10:58:39 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB94ED2EBF
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 07:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661957916; x=1693493916;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6QsTRvxqh42QrKAqaGkKTr8ea/gZV5ndpZDKx4HwhiY=;
  b=id1dIBKixBHnkrl+Dt1g1k0/hGciXe/aAQsz6C9TyahnAjtzDdjwdj5B
   0Sse1sZcShIQo/EXdvjwitPnPYV4S6Fa0RGgL7OVAiQHRKfJc96LicHfL
   n0QXlp7+fEmsX9rIMRayDSYQs8BLMAugX34JJki0XDgYGo2+tQUsWMfVj
   o+J+UFMSpwmjmyTxIzplQnFK9nZN/uT9KaspCqw6sa4ZQ3Ogi/1GGCuzW
   9EAu3EozxLoGNbnruRR7/tyUoLj6TiU47i90SiktIbKUz/p56VyBg1cjj
   iRqmRAZSIxlXV5lL0ARZCqwBEop/TR+wLBjL0k5llkvuI6dSPlRpzja/j
   g==;
X-IronPort-AV: E=Sophos;i="5.93,278,1654552800"; 
   d="scan'208";a="25914795"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 31 Aug 2022 16:58:33 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 31 Aug 2022 16:58:33 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 31 Aug 2022 16:58:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661957913; x=1693493913;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=6QsTRvxqh42QrKAqaGkKTr8ea/gZV5ndpZDKx4HwhiY=;
  b=BnsMTziXzARlphT8LN55oF6eN++6dQ/lZJD6YlNbku7Jodju5gvBZzmO
   ZQ+L+OZvzKTbPNKvji+7YSeVLhdCKr1tG0W4Mjpa+UBO5hFXMSuUQ1fl7
   mN1zuCrYCrFeIOfvT+SBdRxaIUlauxgLvmpJ8dRoILL1bQW7oNZw1Ks11
   afpcw+NswzpeemC1oo3jUSsZH1q6kLvzjX47mlxrdY07VneOxinP1jJ+E
   X+FFvIADp+ZHoh15oYkhqmRr9i9HUN8sh//zv7peedzZEhsq9TZfYf8l0
   Ix0ww9lM5Vq5NcmaddYZgUb8EiEadHvH8AjVzhIfNFERTHA49fNvxqOiN
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,278,1654552800"; 
   d="scan'208";a="25914794"
Subject: Re: Re: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Aug 2022 16:58:33 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 98379280056;
        Wed, 31 Aug 2022 16:58:33 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Date:   Wed, 31 Aug 2022 16:58:31 +0200
Message-ID: <7425574.EvYhyI6sBW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <95506426-6458-16c9-19c9-03f07aab734a@denx.de>
References: <20220823165602.275931-1-marex@denx.de> <11067634.nUPlyArG6x@steina-w> <95506426-6458-16c9-19c9-03f07aab734a@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Am Mittwoch, 31. August 2022, 16:45:31 CEST schrieb Marek Vasut:
> On 8/24/22 07:51, Alexander Stein wrote:
> > Hello Marek,
> 
> Hi,
> 
> > Am Dienstag, 23. August 2022, 18:56:02 CEST schrieb Marek Vasut:
> >> Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
> >> e.g. boot counter.
> 
> [...]
> 
> >> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> >> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> >> f7adcb2c14880..21689e9e68170 100644
> >> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> >> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> >> @@ -478,6 +478,11 @@ snvs_pwrkey: snvs-powerkey {
> >> 
> >>   					wakeup-source;
> >>   					status = "disabled";
> >>   				
> >>   				};
> >> 
> >> +
> >> +				snvs_lpgpr: snvs-lpgpr {
> >> +					compatible =
> > 
> > "fsl,imx8mp-snvs-lpgpr",
> > 
> >> +
> > 
> > "fsl,imx7d-snvs-lpgpr";
> > 
> >> +				};
> >> 
> >>   			};
> >>   			
> >>   			clk: clock-controller@30380000 {
> > 
> > Do you have any information that the i.MX8M Plus actually has the HPLR
> > register (at offset 0)? This is used in snvs_lpgpr_write. I can't find it
> > in the RM, although GPR_SL is referenced in LPGPRx register description.
> It seems the HPLR is only documented in the Security RM (MX8MMSRM,
> MX8MPSRM etc), not in the regular RM (MX8MMRM, MX8MPRM etc) . So it
> seems the register does exist, including the soft lock bit, it is only
> omitted from the plain RM.
> 
> (also, sorry for the delayed reply)

Ah, there it is. Nice!

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>



