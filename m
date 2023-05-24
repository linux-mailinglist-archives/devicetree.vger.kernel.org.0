Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD2A670F416
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 12:24:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231506AbjEXKYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 06:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231827AbjEXKY1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 06:24:27 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD0B1189
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 03:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684923857; x=1716459857;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Rc84ojW4hQevoGDBaVtQpGYulSFqn5AVEQWxry54pw8=;
  b=EZpmZWtqdqJiz+xTgJ4ZORmZijsgexFf7MIv/RydCqM6vJ8punQF1sWc
   qv6HinrfTr7h3d+u53TfDxLQk0Yhb5EKhVZPJPRPJySNCGw3GnQgFdS+N
   Ay0PaS+33H3/oXv2pl2VcuoOsXGI/CggZUmvocSFmrSyP5dbCLycF0xb5
   b34zDP9BJTJbhZZPOgaEWb9muVRxz3xFK6sOrLJ5kkJfrbzWfU+YiYsOD
   Xo46p2jp3NHVPlYwQ/z5GH0xI4bawtfgPAfdLUUIc9UkDURGgybOHQfWo
   4Qmg9V1f61mP+6P8HoQ/77tKHsyrK0KXZgTHHSgGKcNtZmk1yqi/oj9Dc
   w==;
X-IronPort-AV: E=Sophos;i="6.00,188,1681164000"; 
   d="scan'208";a="31070880"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 24 May 2023 12:24:15 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 24 May 2023 12:24:15 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 24 May 2023 12:24:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1684923855; x=1716459855;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Rc84ojW4hQevoGDBaVtQpGYulSFqn5AVEQWxry54pw8=;
  b=TbwkFSuyg12aLMwWfqOESPB83e1nNXtLc5e0Wzfj11CM1KF/oQ+ssksg
   sEzBX25WKCVCnTDZpAXMFEkdPIkGEUY3IWUUOw8ekX+bYA49hsfewt4KU
   lE5yegq/kjZeWpB64WllguU35By7oaf11q7mQo3fHZWTu7ImMJwz5akoY
   6puHxFZ5acLwdmEp++XFeZ1zfu+7Pgowh2JzoctPNJT2+WcL3uvKZytrC
   M1u2uGT3+SjL7HU4a5jZK+SMXnIsCZbcEExwKmVIphUDmhcRUgoZ+Mjij
   EpOPCrQa2TiE0LShVssVM3LKriHlYqRUWgnUG2cj2F/SK9OF8JiCSivAl
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,188,1681164000"; 
   d="scan'208";a="31070879"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 24 May 2023 12:24:15 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 80EA0280082;
        Wed, 24 May 2023 12:24:15 +0200 (CEST)
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
Date:   Wed, 24 May 2023 12:24:14 +0200
Message-ID: <1953702.usQuhbGJ8B@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <a8306df6-3b30-19d1-6153-b30a425c7ed0@denx.de>
References: <20230515162424.67597-1-marex@denx.de> <3741758.kQq0lBPeGt@steina-w> <a8306df6-3b30-19d1-6153-b30a425c7ed0@denx.de>
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

Am Mittwoch, 24. Mai 2023, 11:28:32 CEST schrieb Marek Vasut:
> On 5/24/23 08:49, Alexander Stein wrote:
> > Hi Marek,
>=20
> Hi,
>=20
> > Am Dienstag, 23. Mai 2023, 15:10:05 CEST schrieb Marek Vasut:
> >> On 5/23/23 13:17, Alexander Stein wrote:
> >>> Hello Marek,
> >>=20
> >> Hi,
> >>=20
> >>> Am Montag, 15. Mai 2023, 18:24:24 CEST schrieb Marek Vasut:
> >>>> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
> >>>> DH electronics i.MX8M Plus DHCOM SoM . The bridge
> >>>> is populated on the SoM, but disabled by default
> >>>> unless used for display output.
> >>>>=20
> >>>> Signed-off-by: Marek Vasut <marex@denx.de>
> >>>=20
> >>> Were you actually able to access the display? E.g. reading DPCD via A=
UX
> >>> channel?
> >>=20
> >> I only tried the full display port (the one with large plug) on the TC
> >> evaluation kit, there I could use the aux channel. Are you testing this
> >> bridge and running into issues ? Details please ?
> >=20
> > Which SoC is this evaluation kit based on?
>=20
> There is no SoC attached to it, it's just a breakout board for the
> bridge chip. You can attach it via DSI to whichever SoC you want. So far
> I tried STM32MP15xx and i.MX8MP.

I assume you were able to successfully use the bridge on both boards, no?

> > Yes, I'm trying to test this bridge on imx8mp based board.
> >=20
> > AFAICS I run into a timeout during drm connector .get_modes call, see
> > kernel log below.
> >=20
> >> samsung-dsim 32e60000.dsi: [drm:samsung_dsim_host_attach [samsung_dsim=
]]
> >=20
> > Attached tc358767 device
> >=20
> >> tc358767 1-000f: failed to read DPCD: -110
> >> tc358767 1-000f: failed to read display props: -110
>=20
> How are you supplying clock to the TC358767 (or newer) ?
> Do you supply clock from DSI or from Xtal ?
> If DSI and if possible, switch to Xtal and see whether that helps.
> Also check the Xtal frequency and make sure you define that correctly in =
DT.

It's already connected to an Xtal, according to schematic it's 26MHz. This =
is=20
also what I configured in DT. So far I think this looks correct.

> > Looking at the AUX_CH+/- signals, I can see the native aux request and =
the
> > (presumable) correct answer (DP_DPCD_REV register) from the display. But
> > for some reason the bridge runs into a aux timeout.
> > I can see in the DP0_AUXSTATUS register the bus gets busy (0x1) after
> > starting transfer. But after the tc_aux_wait_busy() call DP0_AUXSTATUS
> > his indicating a timeout and sync error (0x310002).
> > When changing the "Aux Bit Period Calculator Threshold" to 5 (register
> > AUXCFG1), the sync error is gone, but the timeout still happens.
> >=20
> > The frequency used from the display is ~1MHz, which should be okay. So =
on
> > the electrical side all seems okay, but the native aux transfer don't
> > work.
> I recall DPCD read timeouts, but those were usually triggered by either
> bad clock or wiring problems (the devkit wiring I used was horrible at
> the beginning) from what I can recall.

bad clock in the sense of badly configured or bad xtal hardware? As the bri=
dge=20
and the xtal is on the same mainboard, for now, I ignore wirings.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


