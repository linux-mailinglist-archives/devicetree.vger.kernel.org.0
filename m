Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BA0F70EE7D
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 08:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239647AbjEXGvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 02:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239310AbjEXGut (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 02:50:49 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C76571BC0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 23:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684910948; x=1716446948;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Hf+M+2xND4N+7Ro7WW3Q7owfeFT1BqB76HchdFp59fY=;
  b=jjHJZ0tJk/fCGkdc89DjuYDioHV2Hc+E15+mpMip2hmjxzbf+4Ci7tT+
   p7MpKWkQkoI8IHkWJVluaU9VMdY1ZvIkLhgdqfMiPU4n4kcSQcAIew4p0
   Ia/irlIBDUEab66oMNgMYeqnQ8NfzANXWbR/v3vDhF2OhiV9hN6kYiInY
   7XicjPzEVWHIlEos7aLeX0aaTprwdfeK5x3hOC8p4WlPAjvIMnNss/YG0
   dNreQPzWvNHASwRZytd1JxZ+VjpWk31/LQkBvsKqpH2dvjQ/fNP4jerbB
   926YvDspAddt6x7bPgnma74hNISscRdKaKoBSqGvudw6//jeWILVRw9Tk
   w==;
X-IronPort-AV: E=Sophos;i="6.00,188,1681164000"; 
   d="scan'208";a="31061656"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 24 May 2023 08:49:05 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 24 May 2023 08:49:05 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 24 May 2023 08:49:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684910945; x=1716446945;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Hf+M+2xND4N+7Ro7WW3Q7owfeFT1BqB76HchdFp59fY=;
  b=EAk7TPed8Y/lhSjYilQ/cRiAJYrkllnoD48SFcxmGnko5fkmpdhc7f9J
   Q8tEYmnWeeDE6rgW1i0plfddzqQ05z+xKrJ1TDxh8RWLhs7MqQsijiL0/
   1xl8GmfZLamtrOp0HqgmNUwR6WjaLNf1yyEcQ3X6WQz9z5tBVj0IK894c
   KkG/eIcMZ5D3EB5r5NfcbvxfNKs8EBLCvluTzdr+CIItYMPfxcWIVh0w7
   rWQ1BWS6ilhf/dMFtnL3MPngqDw0EObHWIj4MS3OjBacXuuNo6jJWtgps
   l5yJhCQTnIXyfIFTq7et04Aau+rgtg1Kl6Aec2SlPfPu/HaDyk/pS6EX2
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,188,1681164000"; 
   d="scan'208";a="31061655"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 May 2023 08:49:05 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5D832280082;
        Wed, 24 May 2023 08:49:05 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics i.MX8M Plus DHCOM
Date:   Wed, 24 May 2023 08:49:04 +0200
Message-ID: <3741758.kQq0lBPeGt@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <43cb9c13-7d65-064e-943c-a9d3e6c63f64@denx.de>
References: <20230515162424.67597-1-marex@denx.de> <2684415.mvXUDI8C0e@steina-w> <43cb9c13-7d65-064e-943c-a9d3e6c63f64@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Am Dienstag, 23. Mai 2023, 15:10:05 CEST schrieb Marek Vasut:
> On 5/23/23 13:17, Alexander Stein wrote:
> > Hello Marek,
>=20
> Hi,
>=20
> > Am Montag, 15. Mai 2023, 18:24:24 CEST schrieb Marek Vasut:
> >> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
> >> DH electronics i.MX8M Plus DHCOM SoM . The bridge
> >> is populated on the SoM, but disabled by default
> >> unless used for display output.
> >>=20
> >> Signed-off-by: Marek Vasut <marex@denx.de>
> >=20
> > Were you actually able to access the display? E.g. reading DPCD via AUX
> > channel?
>=20
> I only tried the full display port (the one with large plug) on the TC
> evaluation kit, there I could use the aux channel. Are you testing this
> bridge and running into issues ? Details please ?

Which SoC is this evaluation kit based on?
Yes, I'm trying to test this bridge on imx8mp based board.=20

AFAICS I run into a timeout during drm connector .get_modes call, see kerne=
l=20
log below.

> samsung-dsim 32e60000.dsi: [drm:samsung_dsim_host_attach [samsung_dsim]]=
=20
Attached tc358767 device
> tc358767 1-000f: failed to read DPCD: -110
> tc358767 1-000f: failed to read display props: -110

Looking at the AUX_CH+/- signals, I can see the native aux request and the=
=20
(presumable) correct answer (DP_DPCD_REV register) from the display. But fo=
r=20
some reason the bridge runs into a aux timeout.
I can see in the DP0_AUXSTATUS register the bus gets busy (0x1) after start=
ing=20
transfer. But after the tc_aux_wait_busy() call DP0_AUXSTATUS his indicatin=
g a=20
timeout and sync error (0x310002).
When changing the "Aux Bit Period Calculator Threshold" to 5 (register=20
AUXCFG1), the sync error is gone, but the timeout still happens.

The frequency used from the display is ~1MHz, which should be okay. So on t=
he=20
electrical side all seems okay, but the native aux transfer don't work.

Any ideas?

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


