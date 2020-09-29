Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF1327CE96
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 15:09:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728407AbgI2NJ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 09:09:28 -0400
Received: from gloria.sntech.de ([185.11.138.130]:59546 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725776AbgI2NJ1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 29 Sep 2020 09:09:27 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1kNFNj-000819-Jx; Tue, 29 Sep 2020 15:09:23 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] ARM: dts: cros-ec-keyboard: Add alternate keymap for KEY_LEFTMETA
Date:   Tue, 29 Sep 2020 15:09:22 +0200
Message-ID: <13926897.yVF7epPfh5@diego>
In-Reply-To: <16ec2003-462e-326b-8b3c-51d8b9ae9829@collabora.com>
References: <20200925162604.2311841-1-swboyd@chromium.org> <16ec2003-462e-326b-8b3c-51d8b9ae9829@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 29. September 2020, 10:04:45 CEST schrieb Enric Balletbo i Serra:
> Hi Stephen,
> 
> Thank you for your patch.
> 
> cc'ing Heiko and Matthias
> 
> On 25/9/20 18:26, Stephen Boyd wrote:
> > On newer keyboards this key is in a different place. Add both options to
> > the keymap so that both new and old keyboards work.
> > 
> > Cc: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> 
> Usually the DT changes go through the Rockchip dts or Mediatek dts tree, this is
> not a specific Rockchip/Mediatek change but for both. Are you fine If I pick the
> patch through the chrome-platform tree? I don't think there is any conflict.

So from me, sure go ahead with picking this patch :-)


Heiko


> > ---
> >  arch/arm/boot/dts/cros-ec-keyboard.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> > index 4a0c1037fbc0..165c5bcd510e 100644
> > --- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> > +++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> > @@ -46,6 +46,7 @@ MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
> >  			MATRIX_KEY(0x02, 0x09, KEY_F8)
> >  			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
> >  
> > +			MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)
> >  			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
> >  			MATRIX_KEY(0x03, 0x02, KEY_F2)
> >  			MATRIX_KEY(0x03, 0x03, KEY_5)
> > 
> 




