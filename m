Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD5EB7126F2
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 14:52:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236495AbjEZMw0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 08:52:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230421AbjEZMwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 08:52:25 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62E0B114
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 05:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685105543; x=1716641543;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=P56jRYx8x4wiLyblEJCYsDvHn8dkjs3K/b4UWx2IjD8=;
  b=m5rJiYviUmmf6KuHWee9TkbZ3/LYrIYI6jyCUUIqWpqYipeaYJXCNhSh
   Pwk/BIXnecml2bX2/9zhkAk9D/7WFCXZwml0lFzQZjmHTwgYGJlkYE6oS
   I6ZP8/w85QxGXNpkEwzm4oa369VdtFD2IMGvc/QnJoYJlJSDQfqH0G6WF
   MyRYm8LH48uThtVslq1rhnNyVHv6Mdbgvng9X3aD6LkK6iB0B0ca2BjwY
   V4h4gdRQUThfi+HHwgSWfe9+RFujG8KIHgMiQmWW+BAN8433sfuEy5wuo
   CJXGxhIsw9Y/Gb6AX7bB4mb6AsI96TMkPQWjc04OUaXwuhUrn6EtMfokc
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,194,1681164000"; 
   d="scan'208";a="31128837"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 May 2023 14:52:21 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 May 2023 14:52:21 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 May 2023 14:52:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1685105541; x=1716641541;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=P56jRYx8x4wiLyblEJCYsDvHn8dkjs3K/b4UWx2IjD8=;
  b=XtHxJgaFzNgqe1Zu1AOsjHGfuE9A/6NgT7djD9nkyi6A/p2UW+vftRxa
   YNRyuB0L3CeqCOJUn2P2JTc9qAjURkzfP/VvqZrd0ZdYXoPM4jWYPDCdv
   yvpR2mlrZg1OZe5DRIVLbVWopBJE++DXpiDNHTI7ZIhFCvV9oTPPqea5/
   zrzuTa8Q+UQ9ltnY1wd8RuibKb6ycOyqMtxqPmuhOJnOONNr+Ejan8pN8
   ftTatV16rGYHkXVLfBA9sXEfxZfVzVGABmmAYuaMk9OnWCq1Y8Y0XURD2
   /zUIegsFxdWTsccLF2ixZhwg1NoKej8iQa6CxEWbnTRc5mkz2rWFRsP/G
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,194,1681164000"; 
   d="scan'208";a="31128836"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 May 2023 14:52:21 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 64188280082;
        Fri, 26 May 2023 14:52:21 +0200 (CEST)
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
Date:   Fri, 26 May 2023 14:52:21 +0200
Message-ID: <7530294.EvYhyI6sBW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <75c45018-fae3-aa9d-db5d-7d378f69b53c@denx.de>
References: <20230515162424.67597-1-marex@denx.de> <1953702.usQuhbGJ8B@steina-w> <75c45018-fae3-aa9d-db5d-7d378f69b53c@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Am Mittwoch, 24. Mai 2023, 12:37:50 CEST schrieb Marek Vasut:
> On 5/24/23 12:24, Alexander Stein wrote:
>=20
> Hi,
>=20
> >>> Looking at the AUX_CH+/- signals, I can see the native aux request and
> >>> the
> >>> (presumable) correct answer (DP_DPCD_REV register) from the display. =
But
> >>> for some reason the bridge runs into a aux timeout.
> >>> I can see in the DP0_AUXSTATUS register the bus gets busy (0x1) after
> >>> starting transfer. But after the tc_aux_wait_busy() call DP0_AUXSTATUS
> >>> his indicating a timeout and sync error (0x310002).
> >>> When changing the "Aux Bit Period Calculator Threshold" to 5 (register
> >>> AUXCFG1), the sync error is gone, but the timeout still happens.
> >>>=20
> >>> The frequency used from the display is ~1MHz, which should be okay. So
> >>> on
> >>> the electrical side all seems okay, but the native aux transfer don't
> >>> work.
> >>=20
> >> I recall DPCD read timeouts, but those were usually triggered by either
> >> bad clock or wiring problems (the devkit wiring I used was horrible at
> >> the beginning) from what I can recall.
> >=20
> > bad clock in the sense of badly configured or bad xtal hardware?
>=20
> As in, the xtal clock drives the internal PLLs and if those are
> misconfigured for whatever reason, the chip can misbehave. You might
> want to double-check the clock routing chapter in the toshiba bridge
> datasheet and matching registers.
>=20
> Have you tried forcing the chip into 1.62G (instead of 2.7G) operation
> and into 1-lane DP instead of 2-lane DP mode ? Does that make any
> difference ?

The initial AUX problem is unrelated to DP link. I had problems way before=
=20
2.7G or 2-lane DP comes into play. The problem in aux channel was caused by=
=20
bad clock input :( and the DSI host not putting all DSI lines into LP-11.
=46or some reason apparently nobody had to do these kind of changes on=20
samsung_dsim. I had to enable all DSI lines (incl. clock) on dsim for the=20
bridge to properly use the AUX channel.

With that fixed, DPCD read is successfull and DP link training seems okay, =
as=20
I can enable the test pattern on the bridge.

But displaying regular DSI stream is not working. I see the DSI error count=
er=20
continuously increasing in the DSIERRCNT register (0x300).
=46orcing 1-lane DP or 1.62G operation reduces the possible resolution but=
=20
displaying does still not work.

Best regards
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


