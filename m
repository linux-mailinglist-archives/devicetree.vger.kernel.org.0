Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C512F51D7FF
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 14:38:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1392068AbiEFMmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 08:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237378AbiEFMmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 08:42:08 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E75E66ACA
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 05:38:26 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id j8-20020a17090a060800b001cd4fb60dccso6757681pjj.2
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 05:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8Iv8SoSGBxWhw5qDincZ2Joez8FK0jJmCBzROaO+wX8=;
        b=kg3X7f76VAhb5/0qlftuTSqLaYMwDIxBDAd1RWI38gWo8rY2zEW0LKoS5c5pqiDXmU
         J24k3b4+WItGItv4dq6hX/6tcVO2INMZYHVBBX3N+mLn/2Odgb4R2b4uM92As4EHs7YM
         zzGm1kNGfpBNHNp0KX50x+s9BFvgHnZ+P7rAWwR265PeyT2T63+zTztq/MPTyZeWdTwK
         Jue4OpVj5v5h1dpZPEK57GToifuoVNn/kyKgfqLyTiLFtBLUY3PK7ooYdwo15NS1HBLP
         kz5wTinfBSEHFhFy+AJPMISuMWqPdSh/Is+LYy8EcxxZd0RZzpw39zaq+dwcC1vcaeYG
         MWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Iv8SoSGBxWhw5qDincZ2Joez8FK0jJmCBzROaO+wX8=;
        b=GifzD5Wej5E+oG9LJ/Fc85IAVn1b7GgMiMtxG/6k1QR7eigYmUNUQdkM6oY1QVQG7f
         knNFEKLMp9WiHG65nfmthfvhnKZ8X6D/avg6EHWwJq/TjweBSR7dG6WHsyNvTX/0eycP
         37qzlIhZPVXrl5cmW2UsZGLPfd/ozr9HSeMYfV+Ufs6viK1l87jksI1QfDJzGKisOS/k
         H9xP7UXNLZ3FFJKJU5IEpwYXDWNpMhU4xgrv/niKI6HxIrY4D6XW8uDYzYEMMLEEAc5g
         kZPfFi2IQQLBlqwmC48dpHQ+B4qOaNVGVx5bpAeezu/FSyeIYEmmafZMm1NqJN8wuNcM
         r5sA==
X-Gm-Message-State: AOAM532J2f3PzqWpNOzfwqXjuzTpkPlghBn4mImQxO+fKyGAFDS2CZ31
        tpHNypidczuQymiObD9s4B2qTPNfibRjtxWwqI24Ye55xbE=
X-Google-Smtp-Source: ABdhPJy9H58NHSFFT2cxJ8NNbv/IBW8+5AyJ4M/qbkpKhSG/EzIWZIerpt2VYedRbVV5I8pFe97agg11zULt3k/oh3Y=
X-Received: by 2002:a17:903:2350:b0:15e:93de:763a with SMTP id
 c16-20020a170903235000b0015e93de763amr3428485plh.117.1651840705693; Fri, 06
 May 2022 05:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20220504012601.423644-1-marex@denx.de> <YnKWeAu2MxXA7GzV@robh.at.kernel.org>
In-Reply-To: <YnKWeAu2MxXA7GzV@robh.at.kernel.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 6 May 2022 14:38:14 +0200
Message-ID: <CAG3jFysE6yjBByBRxdjvOXmZH4Acw=M06toeG3evBZ9NeGifhw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: ldb: Fill in reg property
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 4 May 2022 at 17:06, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, 04 May 2022 03:26:01 +0200, Marek Vasut wrote:
> > Add missing reg and reg-names properties for both 'LDB_CTRL'
> > and 'LVDS_CTRL' registers.
> >
> > Fixes: 463db5c2ed4ae ("drm: bridge: ldb: Implement simple Freescale i.MX8MP LDB bridge")
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Maxime Ripard <maxime@cerno.tech>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Robby Cai <robby.cai@nxp.com>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: devicetree@vger.kernel.org
> > To: dri-devel@lists.freedesktop.org
> > ---
> >  .../bindings/display/bridge/fsl,ldb.yaml         | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> >
>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to drm-misc-next
