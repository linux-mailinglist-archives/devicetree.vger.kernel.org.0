Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52DED4FF96C
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 16:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232990AbiDMOwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 10:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234561AbiDMOwV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 10:52:21 -0400
X-Greylist: delayed 104938 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 13 Apr 2022 07:49:58 PDT
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94CDA167E9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 07:49:58 -0700 (PDT)
Received: (Authenticated sender: herve.codina@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id 716D240009;
        Wed, 13 Apr 2022 14:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1649861397;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=l7gqjjhj0XbhASsT9yx1167D/NkqUVY3vj/OxIB/ROU=;
        b=nhhCNspC0kHQKc6yGBP+mIyCoLG+cWyi075dvuNNmJpNn0lfozq6KB5nskGwe5Gi5QlQ+n
        Unaeh9evR+5dHfSfUUrakEV1DZSrmcPDliXM4RF0pysUogHcq55xIPO+TD+48mJoii0RvE
        vSb6C6jC3Di1zsaw31MZPHh0or52spHX8ICd0XYqd1CAZc4qphhWIrryj4udfFeFtEuSTv
        KRq8EgccyQtQyViaPjWMA8UBDAj6zHrtdj12XHJDLXR35VU2kDHxp1lSc1i5iq/fuu5lr5
        nLCU7DbxLoKBhNe+YlrLIDC06rxVDQDaqT6mqcONpqpFWY2J+7wiI5k9k9DzEg==
Date:   Wed, 13 Apr 2022 16:49:54 +0200
From:   Herve Codina <herve.codina@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marek.vasut+renesas@gmail.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof =?UTF-8?B?V2lsY3p5xYRz?= =?UTF-8?B?a2k=?= 
        <kw@linux.com>, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Clement Leger <clement.leger@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/6] PCI: rcar-gen2: Add support for clocks
Message-ID: <20220413164954.32365292@bootlin.com>
In-Reply-To: <YlWfslEOdrf62KiP@robh.at.kernel.org>
References: <20220412094029.287562-1-herve.codina@bootlin.com>
        <20220412094029.287562-2-herve.codina@bootlin.com>
        <YlWfslEOdrf62KiP@robh.at.kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.31; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, 12 Apr 2022 10:50:10 -0500
Rob Herring <robh@kernel.org> wrote:

> On Tue, Apr 12, 2022 at 11:40:24AM +0200, Herve Codina wrote:
> > The PCI rcar-gen2 does not call any clk_prepare_enable().
> > This lead to an access failure when the driver tries to access
> > the IP (at least on a RZ/N1D platform).
> >=20
> > Prepare and enable clocks using the bulk version of
> > clk_prepare_enable() in order to prepare and enable all clocks
> > attached to this device. =20
>=20
> The binding says there is only a single clock, so it needs an update if=20
> there are multiple clocks. (And ideally converted to DT schema format.)

Indeed, I will convert to DT schema format and update the clocks property
description.

Regards,
Herv=C3=A9
