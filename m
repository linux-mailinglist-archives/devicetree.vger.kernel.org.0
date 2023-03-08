Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 028A66B0C81
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 16:21:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231917AbjCHPVt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 10:21:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231531AbjCHPVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 10:21:33 -0500
Received: from smtp-190f.mail.infomaniak.ch (smtp-190f.mail.infomaniak.ch [185.125.25.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D1A7D08F1
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 07:21:09 -0800 (PST)
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PWwxw0Z70zMqN17;
        Wed,  8 Mar 2023 16:21:08 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PWwxv2Vhvz27Kj;
        Wed,  8 Mar 2023 16:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=pschenker.ch;
        s=20220412; t=1678288867;
        bh=S1v+xdi1EOvHpC9ygXMsvZ/MFDqonBB/9OcI+4PDgSA=;
        h=Subject:From:Reply-To:To:Cc:Date:In-Reply-To:References:From;
        b=Xc0+XykiYsRCx8i62h71sLcAqRiQRLZCjLafzfOpCbiUkIZpkZor0PfzW+Q2zH4sG
         ALQpxMzchNKA5UdgPXjPiRqo/lrIO7PLOiK6ZAsNkD3tnx09DtEHed9oHQZiThl/5E
         N/JYEgg8+rSfq7osbRti+NgPO5AGhAihuoup2bEg=
Message-ID: <324af2b0a763824bef5764ba89545db8bb7f1639.camel@pschenker.ch>
Subject: Re: [PATCH v1 01/25] arm64: dts: colibri-imx8x: Prepare for qxp and
 dx variants
From:   Philippe Schenker <dev@pschenker.ch>
Reply-To: dev@pschenker.ch
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        linux-kernel@vger.kernel.org
Date:   Wed, 08 Mar 2023 16:21:07 +0100
In-Reply-To: <efe2d0a5-7e4a-c4ff-0bcc-c7e64f5538d3@linaro.org>
References: <20230308125300.58244-1-dev@pschenker.ch>
         <20230308125300.58244-2-dev@pschenker.ch>
         <efe2d0a5-7e4a-c4ff-0bcc-c7e64f5538d3@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2023-03-08 at 15:33 +0100, Krzysztof Kozlowski wrote:
> On 08/03/2023 13:52, Philippe Schenker wrote:
> > From: Philippe Schenker <philippe.schenker@toradex.com>
>=20
> Subject: Split? Or Rename? Because prepare is too vague.
>=20
> >=20
> > Toradex sells the Colibri iMX8X module in variants with the i.MX
> > 8QXP
> > and i.MX8DX SoC. Prepare for this by moving majority of stuff from
> > imx8qxp-colibri.dtsi into imx8x-colibri.dtsi.
> >=20
> > Remove DX from the model string.
> >=20
> > This commit intends no functional change.
> >=20
> > Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> > ---
> >=20
> > =C2=A0.../dts/freescale/imx8qxp-colibri-eval-v3.dts |=C2=A0=C2=A0 4 +-
> > =C2=A0.../boot/dts/freescale/imx8qxp-colibri.dtsi=C2=A0=C2=A0 | 590 +--=
------------
> > --
> > =C2=A0...val-v3.dtsi =3D> imx8x-colibri-eval-v3.dtsi} |=C2=A0=C2=A0 0
> > =C2=A0.../boot/dts/freescale/imx8x-colibri.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
 | 593
> > ++++++++++++++++++
>=20
> Use proper -B/-C/-M settings so copy will be detected. It's not
> possible
> to review it otherwise.

Thank you! I wasn't aware of these options. They look nice, will try to
make look it better in v2!
>=20
>=20
>=20
> Best regards,
> Krzysztof
>=20

