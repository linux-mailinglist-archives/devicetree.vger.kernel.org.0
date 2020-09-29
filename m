Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3D4C27BEC7
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727403AbgI2IEu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:04:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgI2IEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 04:04:50 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78F30C061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:04:50 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 4575C29B056
Subject: Re: [PATCH] ARM: dts: cros-ec-keyboard: Add alternate keymap for
 KEY_LEFTMETA
To:     Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
References: <20200925162604.2311841-1-swboyd@chromium.org>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <16ec2003-462e-326b-8b3c-51d8b9ae9829@collabora.com>
Date:   Tue, 29 Sep 2020 10:04:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200925162604.2311841-1-swboyd@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

Thank you for your patch.

cc'ing Heiko and Matthias

On 25/9/20 18:26, Stephen Boyd wrote:
> On newer keyboards this key is in a different place. Add both options to
> the keymap so that both new and old keyboards work.
> 
> Cc: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Usually the DT changes go through the Rockchip dts or Mediatek dts tree, this is
not a specific Rockchip/Mediatek change but for both. Are you fine If I pick the
patch through the chrome-platform tree? I don't think there is any conflict.

Thanks,
 Enric

> ---
>  arch/arm/boot/dts/cros-ec-keyboard.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/cros-ec-keyboard.dtsi b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> index 4a0c1037fbc0..165c5bcd510e 100644
> --- a/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> +++ b/arch/arm/boot/dts/cros-ec-keyboard.dtsi
> @@ -46,6 +46,7 @@ MATRIX_KEY(0x02, 0x08, KEY_LEFTBRACE)
>  			MATRIX_KEY(0x02, 0x09, KEY_F8)
>  			MATRIX_KEY(0x02, 0x0a, KEY_YEN)
>  
> +			MATRIX_KEY(0x03, 0x00, KEY_LEFTMETA)
>  			MATRIX_KEY(0x03, 0x01, KEY_GRAVE)
>  			MATRIX_KEY(0x03, 0x02, KEY_F2)
>  			MATRIX_KEY(0x03, 0x03, KEY_5)
> 
