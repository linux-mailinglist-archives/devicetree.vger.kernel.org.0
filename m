Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46473373B82
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 14:38:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233346AbhEEMj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 08:39:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233470AbhEEMj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 08:39:27 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56555C061574
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 05:38:29 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id p12so2261850ljg.1
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 05:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7jz0wfEaTjiRsEn3zc+8d7yiMJY9ky84eJFohIov42E=;
        b=CzVGS1APxjTmBN1mOTJ6DDKwucW9033xAOvkXvQMk7lVIICoqZHC8dWk909D2D2ImA
         cZq8a9myMnOz9e+35bd1yUSkpAt6Q/6zdPe8G1mftlE0P/F38cOJJELlAgml75ydiWGu
         iSWpcf+XBrVme5nQTvlUXgJ9eJIVQFPWJFJxcUNb5TUbLzhoFMY3I8Nzht1ngSaL0e9/
         YLZ02NohkL8yfaXjQbVyjuZAykY4DuB8RHNzf9UX4gyDKqhB13tiQNIwJYL9bsEO6Djc
         JRHfF/wB5YH/BRv/RhSpNcZlNCUXsJcoxR3WUlvMTnsDmefJdIsKwTKDp6xCepxcg/j5
         aNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7jz0wfEaTjiRsEn3zc+8d7yiMJY9ky84eJFohIov42E=;
        b=OTYhiMvyXfnEASRv1xJw1NLeY5oMsrhC/LJFqxyT33/e7/q/pKSD830YqzvgdCMDyh
         Ynet9s41tlSt6pMAm8oSAgIXCN/c67N7hJ3QLmbEtqUD4Bqxb5Lta9TyuYii2mzXQWQ2
         VoNwTmlE6g02d00mnzCF0S9s4ezHYxYP77y0hC4hu2PPkKDuIKS/ZvCtxnb1+SLsO4m5
         Z5L6X2Ofdo70Sg9W+bDWiqLG+NfWdmC4/+Bitr8OQcTzcbnGl677Flm/yWAOmvfXjMVE
         k/suUZObjxh9oQwsC2TOblDNx2u0+H3ZpXTyodsQgPJM2dB1aWqoXF6XkkCxTIgb7CX7
         vLGA==
X-Gm-Message-State: AOAM531XUfVPfUl6mUh/aXdSBx/9tn7Pf/WSeohpJiOJGVayH+YYJkph
        9O76tprgGcpAw5ysNNmDj8xsl12peT8URoBGwRIVhw==
X-Google-Smtp-Source: ABdhPJw62T+5dKlLRZZKI0KxRU8HD6fa8e/7RHrL5x3kUDSZ/FqWvvvJJ/eFcc5c7Um3Z2Nidd1q/lr5EfOmMkb1CpM=
X-Received: by 2002:a2e:2e12:: with SMTP id u18mr13853586lju.200.1620218307890;
 Wed, 05 May 2021 05:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210505100218.108024-1-marex@denx.de>
In-Reply-To: <20210505100218.108024-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 5 May 2021 14:38:17 +0200
Message-ID: <CACRpkdZpjxsm8hV6wrCs1jH-W2c_-0BH_y7du9vZJ0VMGa+=zg@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
To:     Marek Vasut <marex@denx.de>
Cc:     "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        ch@denx.de, Douglas Anderson <dianders@chromium.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 5, 2021 at 12:03 PM Marek Vasut <marex@denx.de> wrote:

> Add DT binding document for TI SN65DSI83 and SN65DSI84 DSI to LVDS bridge.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org

This looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
