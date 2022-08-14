Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CCF9591FD7
	for <lists+devicetree@lfdr.de>; Sun, 14 Aug 2022 15:11:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbiHNNL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Aug 2022 09:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbiHNNL0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Aug 2022 09:11:26 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC98AB87B
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 06:11:22 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id d5so444663wms.5
        for <devicetree@vger.kernel.org>; Sun, 14 Aug 2022 06:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=AwhK7wTBXcBXgJI8gYQWdu+no9daQGPqNzLmnBIJk/Y=;
        b=i2DReFLns7Fc0u+ltP6g2mGaoIGlbozNy1cckeaLmSueCXTgtqvrVuhYwrKpJMw2w7
         +jhgnTwrMsvUB72dyJ7jsaZwVrb34oZGho2Zcdk7aC1GXOiAqUemzz3dh3Bd1W4K90+Z
         WxDEus9fCX9hu3/GN4NAVFQV4fZFaAKPjjpyca6kn2E1ugUGatoiEslHnsQDd6zBecNj
         0CAFVi1xlMCiKoSXwPzUMOr9C4cQs+IQ1AcPQELPWOxZatTo7kcDIqp2k+moA8cp3r65
         H3eamcbSIGbvtp2wiby02RbbXOXDVeXsHRHP4RBeJZq7869hbUoZzI6uDqNJYxytZcGJ
         8kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=AwhK7wTBXcBXgJI8gYQWdu+no9daQGPqNzLmnBIJk/Y=;
        b=7n+Kp6ZYEahy9DNgEp/nXIFF5c81fz6QuE8K2a0/B0WWuzjNuAYVqRS58OsQOIWraG
         WQYiNUTaQkchVGyaCSB2ovjBqbSjTSl4tu6/GENqPEQhDlI3QTcuWCJBAp6FDQGkdNBv
         SeBIIyL+KXWQnUX2V8/SISPWywf2HETvoSALBx8VP8B1KaXSOUp7fMHe/DqzjVaVgXZk
         D7oBWTSh6DPmqGCK4DRNiHZQEI8tVS0YFmeQ8ZecOgAA9sUK5VZzQ6fD6cmpPzwYdjhl
         LKbu/35e1wuOS6/MnLu9WsMJ9d+RhxjuoSmKustu+NSNs/IoSFBzZI4EC68QJEi9giDO
         kjYQ==
X-Gm-Message-State: ACgBeo1xxXWyjDfkrPGLzMimgaWO1N7BXc1R9jWDejOzcdxHm7wh/DWo
        7i6KuzNTUpvZ0HJRTh6DqKz+hPywKWqVZbrtK80U6xwV08g=
X-Google-Smtp-Source: AA6agR5efggXY+S2mxoio8litXwouBnsyAK6zubmq0Kp4pzIcv/kqz9XG5Z24VzuncXXvhfpWZ6fKxiwDXznkK/mSlk=
X-Received: by 2002:a05:600c:1e1c:b0:3a5:b668:4e2 with SMTP id
 ay28-20020a05600c1e1c00b003a5b66804e2mr12767740wmb.112.1660482681273; Sun, 14
 Aug 2022 06:11:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220812143247.25825-1-macroalpha82@gmail.com>
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Sun, 14 Aug 2022 15:11:09 +0200
Message-ID: <CAMdYzYqno-kWvUjU37XjTwOQQKbf1uvpU02hHbB4hhVOEDVgig@mail.gmail.com>
Subject: Re: [RFC 0/4] rockchip-dsi for rk3568
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        dri-devel@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay Abraham, I" <kishon@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Heiko Stuebner <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 12, 2022 at 4:33 PM Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>

Good Afternoon,

>
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568. I can confirm that for the Rockchip RK3568 this
> current series DOES NOT WORK properly yet. The image on the screen
> is shifted about 100 pixels to the right and does not appear to be
> a timing issue. This behavior was observed on both the Anbernic RG503
> and RG353 portable gaming devices with different screens. These changes
> were also tested on an RK3326 based device (an Odroid Go Advance) with
> no noticeable regressions.
>
> An example of the issue on multiple devices:
> https://media.discordapp.net/attachments/973914035890290718/1007407064647221299/IMG_1999.jpg
> https://media.discordapp.net/attachments/995430498677571604/1003754966932008960/AB25898E-73EC-40A9-BD47-3FB970DDFB31.jpg
>
>
> Given the fact that the DSI controller is identical on the PX30 and
> RK3568 aside from different grf registers I am assuming the PHY is
> likely where the bugs are currently. I'm posting this as an RFC in the
> hopes that someone more knowledgeable than I can help identify the
> problem.

Thank you for this. It will be a few weeks before I'm in the position
to test your series, but what you have described matches what I have
observed in my attempts as well. I suspect the issue is actually in
the VOP2 driver, since the PHY test functions display without
corruption and loading up a 1080P hdmi connection allows DSI to
display correctly.

Very Respectfully,
Peter Geis

>
> Chris Morgan (4):
>   dt-bindings: display: rockchip-dsi: add rk3568 compatible
>   dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
>   drm/rockchip: dsi: add rk3568 support
>   phy/rockchip: inno-dsidphy: Add support for rk3568
>
>  .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>  .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |  51 ++++-
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  4 files changed, 209 insertions(+), 48 deletions(-)
>
> --
> 2.25.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
