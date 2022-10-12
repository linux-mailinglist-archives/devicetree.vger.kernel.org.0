Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCF335FC3A9
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 12:22:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiJLKWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 06:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiJLKWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 06:22:08 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A356B7EF4
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 03:22:06 -0700 (PDT)
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B9A35492;
        Wed, 12 Oct 2022 12:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665570124;
        bh=Q4U37sHPHno255Zadu765a/ekWBA5/Y/NjCYj1N5HAw=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=v58zDZtvAD4o/OReLZd7ycRlZ9sD1aW8EFzvdKKROMkvUTEI+0KpiWio5k/07fpQO
         ato/x3xRW0DMJ8UVM6SuVdY9YgEiUIaarOr1mHNdCweBQ8mDXVk6t3iY0uUOwDt6L0
         VzTDorlDnHnwNAIgXC4IDEn2olAzNEnoFNblyYek=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20221011064316.dv6ulnmdginr7p3y@pengutronix.de>
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com> <20221010134954.la2xqekhxhkw7kvb@pengutronix.de> <Y0Qk0fFd+zvs/qaP@pendragon.ideasonboard.com> <20221011064316.dv6ulnmdginr7p3y@pengutronix.de>
Subject: Re: [PATCH v2 0/3] Debix Model A board devicetree
From:   Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc:     Daniel Scally <dan.scally@ideasonboard.com>,
        krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, debix-tech@polyhex.net, linux-imx@nxp.com,
        kernel@pengutronix.de, festevam@gmail.com
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>
Date:   Wed, 12 Oct 2022 11:22:02 +0100
Message-ID: <166557012258.3760285.1911550181545000867@Monstersaurus>
User-Agent: alot/0.10
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Marc Kleine-Budde (2022-10-11 07:43:16)
> On 10.10.2022 16:57:37, Laurent Pinchart wrote:
> > > > This series adds a .dts file for the Polyhex Debix Model A board [1]
> > > > A binding for the vendor is also added.
> > >=20
> > > A bit off-topic, how cooperative is Polyhex when it comes to the
> > > datasheets of the board and the expansion boards?
> >=20
> > There is public documentation, including reduced schematics that provide
> > just the pinout of the connectors. When it comes to availability of
> > non-public documentation to selected upstream developers, I'll let
> > Polyhex answer that question. More detailed schematics would certainly
> > be useful to develop and review the upstream device tree integration for
> > the board.
>=20
> Thanks, I've found the "reduced" schematics. Do you have a direct
> contact to ask for more detailed schematics (e.g. for the IO board)?

There's a discord channel/server at https://discord.gg/adaHHaDkH2
and debix-tech@polyhex.net, already on Cc of this mail thread.

--
Kieran


>=20
> regards,
> Marc
>=20
> --=20
> Pengutronix e.K.                 | Marc Kleine-Budde           |
> Embedded Linux                   | https://www.pengutronix.de  |
> Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |
