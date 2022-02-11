Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45D4B4B280C
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 15:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345512AbiBKOhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 09:37:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243276AbiBKOhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 09:37:00 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F277C184
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644590219; x=1676126219;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dB8Ve8Skxsy/6w2lJfnE6TXqhFhJCuHN6O6Be80vcr0=;
  b=UPK/R7iQaxgsq0bbdYfTcg+nsYLCkYGKn9FF/Z+O98DLWEuREsF+H2CW
   /6W2UJZpydYJk6EkQMcYUR1zNJ47ZAIKVySkyj4FICDXqxcQeHf/JGjhf
   3BAmMYJPU+qEIkkYWjVjLg8Qd2LHQAwEa1RaGF2ljdrmziYR08vGlYBNt
   oAtKIMClcZM2EIfRvWeExsBXWp1dTmpO8FpdBcWzQzSQv7JZ1XFIDNDHJ
   8Fs8qXgXwnjZ/VIo9LFLMXANcdvLS6+ibsOpM+TSJaIdKpjaRX7nn3F7L
   M4MWLxXPckHO08MeCh+RzTXmHL8e3xuQ5l0g0CeeY6/aQcoq5YV4eyIQ6
   w==;
X-IronPort-AV: E=Sophos;i="5.88,361,1635199200"; 
   d="scan'208";a="22042493"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 11 Feb 2022 15:36:57 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 11 Feb 2022 15:36:57 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 11 Feb 2022 15:36:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644590217; x=1676126217;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dB8Ve8Skxsy/6w2lJfnE6TXqhFhJCuHN6O6Be80vcr0=;
  b=qiN41+PhvvoEYe1Kao+yEIvZ4Zc+Jjz0zp/FFFHoMnxcT4ogVoKvM/ZU
   g3SCH2nZfdt9pC1NoTrMsRN4qwtaK0shPjuuRZ6xVR08NJkgRJvHEbX+k
   mpnExZcrKL3xFBB+cTYu1m6HribBwOquSyQ8JmwHttIO6V1WierpZI2i5
   OZja2oxgdn6W0/0CYaQIhwLovqt0wGTk4fPuZIzkAcvDdZ8lznAaD3Tjv
   u2hBIfP4bAMNJu+dZola2iNYoj8RLCsWm4KGNnuFdr7V284I63oT32Iob
   bz7rVNU+BTfdweFKSzgQZ9+/CMMJjqklIbP0WCcF7uNqHlp0CdwLGErir
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,361,1635199200"; 
   d="scan'208";a="22042491"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Feb 2022 15:36:57 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3410D280065;
        Fri, 11 Feb 2022 15:36:57 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH 1/8] ARM: dts: imx6ul: add missing properties for sram
Date:   Fri, 11 Feb 2022 15:36:54 +0100
Message-ID: <2620153.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220211034219.GJ4909@dragon>
References: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com> <20220125135014.3041002-2-alexander.stein@ew.tq-group.com> <20220211034219.GJ4909@dragon>
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

Hi Shawn,

Am Freitag, 11. Februar 2022, 04:42:20 CET schrieb Shawn Guo:
> On Tue, Jan 25, 2022 at 02:50:07PM +0100, Alexander Stein wrote:
> > All 3 properties are required by sram.yaml. Fixes the dt_binding_check
> 
> I guess it's dtbs_check rather than dt_binding_check?

You are right. Will fix in a v2.

Regards,
Alexander

> > warning:
> > sram@900000: '#address-cells' is a required property
> > sram@900000: '#size-cells' is a required property
> > sram@900000: 'ranges' is a required property
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  arch/arm/boot/dts/imx6ul.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> > index afeec01f6522..1d435a46fc5c 100644
> > --- a/arch/arm/boot/dts/imx6ul.dtsi
> > +++ b/arch/arm/boot/dts/imx6ul.dtsi
> > @@ -149,6 +149,9 @@ soc {
> > 
> >  		ocram: sram@900000 {
> >  		
> >  			compatible = "mmio-sram";
> >  			reg = <0x00900000 0x20000>;
> > 
> > +			ranges = <0 0x00900000 0x20000>;
> > +			#address-cells = <1>;
> > +			#size-cells = <1>;
> > 
> >  		};
> >  		
> >  		intc: interrupt-controller@a01000 {




