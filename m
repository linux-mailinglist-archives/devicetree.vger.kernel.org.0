Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8658257437
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 00:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726341AbfFZWTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 18:19:32 -0400
Received: from gloria.sntech.de ([185.11.138.130]:56602 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726239AbfFZWTb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jun 2019 18:19:31 -0400
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1hgGGG-0004PZ-Dy; Thu, 27 Jun 2019 00:19:28 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        enric.balletbo@collabora.com
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: move rk3288-veryon display settings into a separate file
Date:   Thu, 27 Jun 2019 00:19:27 +0200
Message-ID: <2418036.tTYI8lUvN5@phil>
In-Reply-To: <20190625222629.154619-1-mka@chromium.org>
References: <20190625222629.154619-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias,

Am Mittwoch, 26. Juni 2019, 00:26:28 CEST schrieb Matthias Kaehlcke:
> The chromebook .dtsi file contains common settings for veyron
> Chromebooks with eDP displays. Some veyron devices with a display
> aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
> display related bits from the chromebook .dtsi into a separate file
> to avoid redundant DT settings.
> 
> The new file is included from the chromebook .dtsi and can be
> included by non-Chromebook devices with a display.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> This series is based on v5.3-armsoc/dts32 (f497ab6b4bb8 "ARM:
> dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
> veyron") plus the display timing patches from Doug:

the display-timing patches are still stuck on panel-review.

But while we wait for that to get resolved, you could also check if
the veyron panels could use Enric's fanzy new automatic calculation
of brightness-leves in the pwm-backlight driver, so that we possibly
could get rid of the long table of levels.


Heiko



