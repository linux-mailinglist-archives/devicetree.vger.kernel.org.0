Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3223930CC0E
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 20:45:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239891AbhBBTm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 14:42:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239835AbhBBTmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 14:42:40 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDEAAC061573
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 11:41:58 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id p21so29690854lfu.11
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 11:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lEw/o9w5jfpQIMTYNMYstSkHlcinQzvDnsF23OD+n8Y=;
        b=Z/iRP03DVWUEtXmYCZmEvp1+10h3BP+LgWHA+mJsojoVPsYs9lvOwyIBn6yIgsurAg
         uQH7aWzyAYDXejo7vCezelC+PrmhZa2X27wjY2uyEr1KP7Fs/WC6eLNhPadzAvzjq9+q
         bQmFQFB0vhMN6E/V46PH3yUkuhhHBscAPwg8Z70rJkRdFspypNGp/F5GqsKUO3tjDHsu
         O+x4BOVmHm4CW1mRdZcAbr4xmZqmeTrOn6pKmfbe6D8x/oGwTtSSGtySSu18npi148yi
         FSTCG1FmJpWZkFDbfRlB1ZnYz5PqTtVCgsIjDCM7a/R7OKqisBAtFwbkgzz5o0S0Y2gg
         Kwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lEw/o9w5jfpQIMTYNMYstSkHlcinQzvDnsF23OD+n8Y=;
        b=N+NAQ5le/9IR05ROvMCfubRMbHS+1TRGoK6J2SZ5tM+NkKKPTRQsH/BigDX8vR9+1d
         PjWj3nS5wLjBdggeSNU7aW182QC3heznjJzuPXUKm3ddhPbWpBRnkTI9giJBaCLVqE3x
         ZLG1vJm3Z6FTOIeaTZxBgbS+db2nc7KoQZm6dnspYxEMdu4QA0o2jTX985XYb6J0Ojwq
         bfw1n3bxD8Qj2Qd/Gq43DAPelfKRJLTk80O2LV3u5xvTS+yGvyDDSIDiZ7zq2cCWA7Aq
         Q0xhLND4m22TNHjxRsvT2H036XUwZp302vSn+33flJeqz6LZ9x+qxBQJDz27iPjbCwzm
         4s9Q==
X-Gm-Message-State: AOAM532G0gsChrY6IBIqJNh2SSnnRH/hASCXhduZOEAk4698nGpoPRGP
        FcUWGF80HosNqG4rLFZIQgtd9nU4hw3vk6O2F8r12jFla/BNtg==
X-Google-Smtp-Source: ABdhPJzqbBPOEK0n3FkG7UZyeOvG94jaEukm5wBeF3DHYTpEg29ORtfCOGeWtBuGN3dpIQIpExHK4ReJOgkBIStJyqw=
X-Received: by 2002:a19:fc06:: with SMTP id a6mr12183695lfi.529.1612294917425;
 Tue, 02 Feb 2021 11:41:57 -0800 (PST)
MIME-Version: 1.0
References: <20210130181014.161457-1-marex@denx.de>
In-Reply-To: <20210130181014.161457-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Feb 2021 20:41:46 +0100
Message-ID: <CACRpkdYYufzSo4+PkTuN0vD0PBK8-sKx20x2GgNOkw+QAbYKsg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 bindings
To:     Marek Vasut <marex@denx.de>
Cc:     "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Douglas Anderson <dianders@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 30, 2021 at 7:10 PM Marek Vasut <marex@denx.de> wrote:

> Add DT binding document for TI SN65DSI83 DSI to LVDS bridge.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org

This looks correct to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
