Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2C37346A6
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 16:39:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbjFROjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 10:39:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjFROjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 10:39:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE96194
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 07:39:08 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8B98960BC2
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 14:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0752C433C0;
        Sun, 18 Jun 2023 14:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687099148;
        bh=wvkhVOSIXZAPjW4B3K3huxSlZpIAJF0lQ4NJmv+BClk=;
        h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
        b=BavRPtBl9ruDuyqvQe0CLoqSOkqS+WonLsWzyOScqgimiUyxKwfzFit1KJQnTAmaD
         e5D3buhfhgIFz9kAZIcSH8NGx83MO+qyav82FbpBmblOHHUqWBzuI2d8p1FBxchq8E
         p8n3rzXsublnBFgBHGwvu7ZHs/uvvcpu/0EZi28xWoD4mXRuFBFDfhYRx1kP3vtN1n
         A6R4X7HmqOytXM9PCizYPnyDp+i7emY/aED+4ru2vFc3zxEKz5Vqsf1i2PUv54eQg8
         Pf0c6yVuJszn5v8sPEFD4wIONtksASQn/YCcw/oS4fOrrqSbzDlvrjl9X3BhGNOYac
         DrU2xNg0m7VeA==
Message-ID: <7add37b15a20d42b0cae0d8dd28605da.mripard@kernel.org>
Date:   Sun, 18 Jun 2023 14:39:05 +0000
From:   "Maxime Ripard" <mripard@kernel.org>
To:     "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 4/6] drm/panel: sitronix-st7789v: Clarify a
 definition
In-Reply-To: <20230616163255.2804163-5-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-5-miquel.raynal@bootlin.com>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        "Daniel Vetter" <daniel@ffwll.ch>,
        "David Airlie" <airlied@gmail.com>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Maxime Ripard" <maxime@cerno.tech>,
        "Michael Riesch" <michael.riesch@wolfvision.net>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Sam Ravnborg" <sam@ravnborg.org>,
        "Sebastian Reichel" <sre@kernel.org>,
        "Thierry Reding" <thierry.reding@gmail.com>,
        "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Jun 2023 18:32:53 +0200, Miquel Raynal wrote:
> The Sitronix datasheet explains BIT(1) of the RGBCTRL register as the
> DOTCLK/PCLK edge used to sample the data lines:
>=20
>     =E2=80=9C0=E2=80=9D The data is input on the positive edge of DOTCLK
>     =E2=80=9C1=E2=80=9D The data is input on the negative edge of DOTCLK
>=20
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime
