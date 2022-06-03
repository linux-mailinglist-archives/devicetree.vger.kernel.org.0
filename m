Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D6D53C5BA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:07:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238005AbiFCHHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:07:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242121AbiFCHHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:07:38 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53EFA1903D
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 00:07:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 14DBEB8222E
        for <devicetree@vger.kernel.org>; Fri,  3 Jun 2022 07:07:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23C8BC385A9;
        Fri,  3 Jun 2022 07:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654240052;
        bh=k2DES+vJ/S4fJJUyfR81LuaIXq78K3H1om/oGYR8TvQ=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=UPvvex7SO4n1UUFQmE94IsZ8aAnl9VO3YVHnvHET+YQTWgvDIn3lmO7MOVO4zOPF3
         +pmmFoCv6P5x8DLCNoHEVwIqHMvWI4MsGTBINOP7YGDnMK1yK8EHKpKbxdcYkIfYnr
         +HxOTPtLEqE6LhHgtyBWO6tpIwNlCz3ADWBHfA4teyBAaAMyYFwbV9Inept1R7+Id7
         WbQiXbmPl1B979GtTpdljfkroZbafQvnMiEXYMHhB9l7tzi4JVGgr6yUmSY6oCH+ws
         MiBABA64CpnKztHs+XdJa8QUjjZEge21RwYVLYP+f9GsuKU88G+PnIdVRcqNRpIoCe
         LqV2wtmZwnD+g==
Message-ID: <5550435a41ca9ec190015ce1b872be85edcd71b7.camel@kernel.org>
Subject: Re: [PATCH v5 2/6] drm/v3d: Get rid of pm code
From:   nicolas saenz julienne <nsaenz@kernel.org>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Rob Herring <robh+dt@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Date:   Fri, 03 Jun 2022 09:07:26 +0200
In-Reply-To: <20220601110249.569540-3-pbrobinson@gmail.com>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
         <20220601110249.569540-3-pbrobinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2022-06-01 at 12:02 +0100, Peter Robinson wrote:
> Runtime PM doesn't seem to work correctly on this driver. On top of
> that, commit 8b6864e3e138 ("drm/v3d/v3d_drv: Remove unused static
> variable 'v3d_v3d_pm_ops'") hints that it most likely never did as the
> driver's PM ops were not hooked-up.
>=20
> So, in order to support regular operation with V3D on BCM2711 (Raspberry
> Pi 4), get rid of the PM code. PM will be reinstated once we figure out
> the underlying issues.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---

Hi Florian, any thoughts on this?
Are brcm,7268-v3d and brcm,7278-v3d using runtime PM downstream?

Nicolas
