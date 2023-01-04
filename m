Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A57265D2EA
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 13:40:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239229AbjADMkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 07:40:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239234AbjADMkP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 07:40:15 -0500
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ADCB17049
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 04:40:14 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 84FCB5C01B4;
        Wed,  4 Jan 2023 07:40:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 04 Jan 2023 07:40:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm3; t=1672836013; x=
        1672922413; bh=gdQGu+69jkJCD5m36m0FsHULAMVy6bJCZt8Vjz//wA0=; b=b
        o8GBFbKrBcDEzrgnYODD4e+7NvnX1GZYZUEwsOngnIVUbKqIgtr7AACOw1vQeZry
        tz5dqLZCJg0lK5cBUZW4ufV2lR9kD2JtC1Jd1ZCYabVIJ2TYSUQquaDf8+DTNsZ4
        OCaWn+oAET88j2A09/CBbK++mesngUyzoL3VQEwEshUYcwynjSeMYf2E8fic0mj+
        138FSGfyeIyD0rnpZqruCc8ShWEvxD52VRuDps3ei5F6oAbbY9yFnC7oRkyVGmxt
        SJbVJtaEhf2oTLK5sJNqQ1LZ+oKfIOqyUGaqqUT8eujPwmKIp6DAeS+k81RlfLCp
        Cm3FqYO8QhYd5OtMtahuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672836013; x=
        1672922413; bh=gdQGu+69jkJCD5m36m0FsHULAMVy6bJCZt8Vjz//wA0=; b=Y
        oecdIStarLJpMj4nNaSjAXRYuMhkhS4soe26f0V6suGDoE769kIp1htRMrF7DQsh
        +nkkEBQ2bHPN1vO6g8OmR/JfiR3tUevIN/mkbnw6+XnGAixMNygjfWwXfR+yLB8s
        AUt0SMCJyS+8DwXviw/gqPt2GajcsA/5bfLthYs/wbXa1ihwD6x0vr+DMHVx1ZSX
        jiRzxVJWhoPy7KrHSB0y6rPcFRV/e6A+J77z1j6tbyBy/XWA4e+nznz/KKC2Uc8J
        yBBMgwE3z79ywE7nKyGkjPfoFifaNgWgGOCGbbmeTU2h6Gs/OnrWBq5Cq3UYyH80
        X7fjKV3R17x4smlMDNO/g==
X-ME-Sender: <xms:rXO1Y959pzKVudUeDUsD8CEA_TkwckhxEKzbDj_6R4fD_un-U3rk8g>
    <xme:rXO1Y64nBOHa8HFAeyluzvzZomVH52uc375DU2Sjyh0hQ1fo1DUiT9-UMJ-n4WGIZ
    uuDq-TQE5hxMhImcBE>
X-ME-Received: <xmr:rXO1Y0eRM_o2-_78p4VmxsEbuRRLQuOxvBubiwWtROe7JDS6TporbB7ooyzFxxm0cbs0jswzrAqYOZ1Cpm0u-vXLPDelI8xB0ucnz2RUaqAbDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrjeeigdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeetgfelgefggeekkefggfeludeiudffjeffgeevveekjedukedtudeuteef
    teefgfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rXO1Y2IR0qCK07R9DD9lSoqDdwf66H13wy2WyMKhIyj4jQz0Sey3zw>
    <xmx:rXO1YxI3q3O8mzFjpgziO7Mb4Nw2mlsdW7Qap1TWO4uJ5R46Y0aDew>
    <xmx:rXO1Y_w63_SqsGyP8rY3dJXI6WekQvOPFUdqmJjIATiTc-9sJmE4MA>
    <xmx:rXO1YwVgjpkyv38jB4bhJINlMoJsijMn2sgtVAKx2n10NXePMHz4GA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Jan 2023 07:40:12 -0500 (EST)
Date:   Wed, 4 Jan 2023 13:40:10 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com,
        linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230104124010.6rambtw7mzg7sycv@houat>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
 <20230103190707.104595-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230103190707.104595-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jan 03, 2023 at 01:07:04PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/drm_of.c | 62 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_of.h     | 11 +++++++
>  2 files changed, 73 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 7bbcb999bb75..7d89ac164069 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_encoder.h>
> +#include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
> =20
> @@ -493,3 +494,64 @@ int drm_of_get_data_lanes_count_ep(const struct devi=
ce_node *port,
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> +
> +/**
> + * drm_of_get_dsi_bus - find the DSI bus for a given device
> + * @dev: parent device of display (SPI, I2C)
> + * @dsi_host: DSI host to be populated
> + * @info: DSI device info to be updated with correct DSI node

Why aren't we returning the dsi_host through an ERR_PTR? All the DRM
accessors with get return the pointer directly, I'd rather stick to
that.

> + * Given a panel device parented to a non-DSI device, follow the
> + * devicetree to find the correct DSI host node and populate the
> + * dsi_host with the correct host and info with the correct node.

I think we could make that a bit clearer using something like:

Gets parent DSI bus for a DSI device controlled through a bus other than
MIPI-DCS (SPI, I2C, etc.) using the Device Tree.

> + * Returns zero if successful, -EPROBE_DEFER if the DSI host is
> + * found but not available, or -ENODEV otherwise.
> + */

> +int drm_of_get_dsi_bus(struct device *dev,
> +			      struct mipi_dsi_host **dsi_host,
> +			      struct mipi_dsi_device_info *info)

The arguments are not aligned.

Maxime
