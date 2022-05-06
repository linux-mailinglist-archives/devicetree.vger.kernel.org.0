Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2E2051D68F
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 13:22:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345460AbiEFLZr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 07:25:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345321AbiEFLZr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 07:25:47 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C0D817E1F
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 04:22:04 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id a11so6009958pff.1
        for <devicetree@vger.kernel.org>; Fri, 06 May 2022 04:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QzcULi/NEqbiq1KZArjdeAAEvQ1r8nGAdFnTPkHvJCk=;
        b=ubvSKp2j/nBF7QMFlpnNddBMuL4Ti/91Iq/ANnrM6O+RwKiwiOmjptsRCCVKWb/pSK
         0P7FpRJQ7jcPnKPI4ipxwLWvoQ9HGZ0ab0G6sCo2vK0UQXzHJ70J/R2Rpgt55mzqPKVf
         B9kf5VHFjTBz+GeCXYZMV2ZNOrHoTArjO+0oX0jF4fPgPS0Ptqc7SMbCzJIyL8SVSX66
         zRVGcZdOzfw9NxEylEh9I4bIgehE2Sl7EtudZhXF+sa6MVho54b6HvK6VPNkZ7JPR1y+
         5hWAl1wmuXXgulEuuxdOzbkGlb/FsbFuNtizKHQWXfRI7Jaqo0q4crImrFOkNQqfsYm0
         2GTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QzcULi/NEqbiq1KZArjdeAAEvQ1r8nGAdFnTPkHvJCk=;
        b=CUxIIB2R8e1qX9T5fPP97aWXAnYhJJeXaEdbfV0rt25K8NH0zjSxxWGWED65L4oSU5
         j8cAJRnfM0JBOuPN5Dn879jc/SuoaXhm0dmhunzJLNSMXohM83sugGa/F1QXMdqDBr6K
         786AoQ7earF6rdeBrbQHLzTe1+W85tqXoEI7jZvX17b1Bv4ZVdWj/G5NZ7gNR+aMrCaf
         hp7s4LZU/v9UTIaXuE4+bb4TU6FsOMB3x9obC5DTfI3cvGPtKOn5nyI8MXKQNvLC+RmO
         82szWOoQghytqfLgtnGHHHyqIkBGZrRh6H8IRm8xut9cXninjWEGwsoS+VfXhcHtUXVr
         +8Aw==
X-Gm-Message-State: AOAM533SBzVJ9obzBIfKeRAW0J72M7G34AHX9Ktkgmm7d+3IRH5dMEyD
        Aa5k8B77KwLFWrDWseyK/1w/6hcw1eiPfbqdaSgSbA==
X-Google-Smtp-Source: ABdhPJxViGPU/wM/TPfR8O6YJ6fZB1sR3gBTzkfEeuZcRh9eJ3J968t5HKPbYeVQKhGbB3eqCTtgUiD+Z1oOg9JjsqI=
X-Received: by 2002:a05:6a00:174a:b0:50d:44ca:4b with SMTP id
 j10-20020a056a00174a00b0050d44ca004bmr3115682pfc.0.1651836123935; Fri, 06 May
 2022 04:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220426193645.244792-1-marex@denx.de> <YnB3008DXAVoUK7j@robh.at.kernel.org>
 <6a079a60-f6b6-f432-b9c2-0444ab5ecd09@denx.de>
In-Reply-To: <6a079a60-f6b6-f432-b9c2-0444ab5ecd09@denx.de>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 6 May 2022 13:21:53 +0200
Message-ID: <CAG3jFyvdANjKd-0cMz+srgkeYt16wOdOKiF-6m4W5kk2=1Mn8Q@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement
 simple Freescale i.MX8MP LDB bridge
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
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

> >> +description: |
> >> +  The i.MX8MP mediamix contains two registers which are responsible
> >> +  for configuring the on-SoC DPI-to-LVDS serializer. This describes
> >> +  those registers as bridge within the DT.
> >
> > This is a subblock of the mediamix? Please add 'reg' for the 2 registers
> > even if you use a regmap.
>
> I submitted a patch:
> [PATCH] dt-bindings: display: bridge: ldb: Fill in reg property

Would you like me to apply this, or do you want to revert all of the above?

>
> > I didn't find a binding for mediamix. You really need the containing
> > block binding before a child node.
>
> Right, I'm tempted to send a revert outright and wait for the mediamix
> bindings to hit upstream.
