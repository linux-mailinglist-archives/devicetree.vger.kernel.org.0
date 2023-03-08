Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 668B66B0764
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:45:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbjCHMpr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:45:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjCHMpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:45:46 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6218D252A8
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678279545; x=1709815545;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=g97Y/x5r8BfLbogty+vcP8Aczi2GNnPl+kyOC6nl01w=;
  b=e3BulK5cd1hZsnblMNcQrTQfAPO0858wKpqmqsi/rGtmrfmGrqydB/ZL
   tlBKc6bYPkF6wrUWFoT+kM7z3XpHM8WqzEewKrtYZa+2zcxWeG7PiGqov
   DnIie0RtQCC2G1jIno3SRKmnkGY4qBzweuauuw7rgfn4WoPoqP3aIpTth
   ZIG+f0BTnu1Wmwq74Epkap1fAFLGP6PDx8XPgGbVJ4jdILnAxfuT0kWE5
   LmbXZeKeQTSBlUG8FAhIU0zQkRQKGfkuuypnJKTq9us+9aYjQDQpzpGbs
   deDRofE6KyqWc14nKjIszJyJkMtXLJQsDhVnlMVhKkBGIuQGhYgbg5ECg
   A==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29547335"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Mar 2023 13:45:43 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 08 Mar 2023 13:45:43 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 08 Mar 2023 13:45:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1678279543; x=1709815543;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=g97Y/x5r8BfLbogty+vcP8Aczi2GNnPl+kyOC6nl01w=;
  b=S0lySv/FRK0dMYTV3MxjDoHJo3nEcWIKVzY0/ehZtjKuvA6rhuFz64gW
   bqFSod4hM7d5P9JVFMoxwIw0rMyaR1RujNKksioNBgmaB2kvijNn5K7rS
   7ZIJEAcvuABdnEsOIRylXpY/+y/9HWaF9/zpBZRg3MXdHNYKpAEVPZs6z
   0RJn+zXBcbCHMedwcsCKJxOQsWZEZkEFcTzQK7SOHWBWO1UqjKwQLAoGl
   Eu6bptI+ApBlQNy7j6Uakf70fgQghAOC69mIzwNm76TGw65cE2fK7SkUt
   p+zzja4DkbdwsWapFybOId2LrAYu4IkwDz0QSyzJr1rcv7+tE5VtwOVJz
   w==;
X-IronPort-AV: E=Sophos;i="5.98,243,1673910000"; 
   d="scan'208";a="29547334"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2023 13:45:43 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 3F60F280056;
        Wed,  8 Mar 2023 13:45:43 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx93: add missing tpm pwm instances
Date:   Wed, 08 Mar 2023 13:45:42 +0100
Message-ID: <4699883.LvFx2qVVIh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <CAOMZO5Ao8-AW_LXdVbrxcHO1Yn9YP8UPyNy7U3ecy+G+9ZD7Eg@mail.gmail.com>
References: <20230227093846.151474-1-alexander.stein@ew.tq-group.com> <CAOMZO5Ao8-AW_LXdVbrxcHO1Yn9YP8UPyNy7U3ecy+G+9ZD7Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

Am Mittwoch, 8. M=C3=A4rz 2023, 13:34:44 CET schrieb Fabio Estevam:
> Hi Alexander,
>=20
> On Mon, Feb 27, 2023 at 6:38=E2=80=AFAM Alexander Stein
>=20
> <alexander.stein@ew.tq-group.com> wrote:
> > TPM1/TPM3 are missing, add them.
> >=20
> > Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>=20
> Who is the original author? If it is Markus, then his name should
> appear in the From: line.

Yes, it's Markus. I don't know why authorship got changed, I'll send v2 wit=
h=20
that fixed.

> Apart from that:
>=20
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks
Alexander

=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/


