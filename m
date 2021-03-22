Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8247343DE2
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 11:31:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbhCVKaa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 06:30:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbhCVK35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 06:29:57 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498D2C061756
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:29:56 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id r12so20340090ejr.5
        for <devicetree@vger.kernel.org>; Mon, 22 Mar 2021 03:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S6xuF+xvy/1OeP+r1oWkPTjodWuYCgRma3tgYNyZ6UA=;
        b=F6jWpydB6AlIY1GvLRpNSU3YTfPY7nS9CheJIsq5dvQAJCLxfACC7/Ms8eXjeAcgsY
         molw3Iiy9kjbYktZ+zJRolAmplpPDkB1SC7VZ59Z7ZoPNCsRmII9eZ20a5Q2CYJqx30c
         b6LQpv5mGUMJoEdhLJSs+4puxa3SszSx019dQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S6xuF+xvy/1OeP+r1oWkPTjodWuYCgRma3tgYNyZ6UA=;
        b=FkbSgWE0yumk6oc1gdqF/KlE/pjEUiq6HW57Dta79Zv1x/7asY6bWe1zFaDhz0TCbr
         5Ur0koRgHcxyaR84X+W1Bw5ctva+jxVaGnwIOTEfz5nyhni3uBBeoVcDMcQsk5RmTYT3
         skgs8FX4TFYiuybFqDNxASNBTlNe1HWgoh+L8ov6J0/de3ubD1QwYIeGmz4tB+u/g/PY
         kKoDT3nCvCdeyeD+V/iZQavSHmtojBBSHJE4dNZwrgsdM4Veby3VnkuczWuOv5l6fV9I
         MXmHrGeOJ0mRRu+pabXvT7D5887r7+HLe6vhFyggVOrRDuGWAvSiUjWslaFKjN9rh+Qg
         Odfg==
X-Gm-Message-State: AOAM533la5vTlKD+28XNIYvbPQ7V3A6CLlGbqrhbJS881iDD5xCHgQqC
        gPH5d7wjKq8kzbkcYWJVQvzqTOHNJgMCbEU5oJtuRvcA/0AEK0/u
X-Google-Smtp-Source: ABdhPJzFITwipwiUuIsCPLxRHKPpBq8+cjpPujK+kqZNNG835CwFf8f9D30pqauBb17ZvcfpdMlv84HvQasbHmIv8pM=
X-Received: by 2002:a17:907:37a:: with SMTP id rs26mr18461737ejb.336.1616408994986;
 Mon, 22 Mar 2021 03:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210322030128.2283-1-laurent.pinchart+renesas@ideasonboard.com> <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
In-Reply-To: <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 22 Mar 2021 15:59:43 +0530
Message-ID: <CAMty3ZCm42aQh+c2bdmj==Uc0KuEvTTBb_+8efvp8G+Oyem9Bw@mail.gmail.com>
Subject: Re: [RFC PATCH 01/11] dt-bindings: drm/bridge: ti-sn65dsi8: Make
 enable GPIO optional
To:     Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-renesas-soc@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 22, 2021 at 8:32 AM Laurent Pinchart
<laurent.pinchart+renesas@ideasonboard.com> wrote:
>
> The SN65DSI86 EN pin can be hardwired to a high level, or connected to a
> global reset signal, not controllable by the kernel. Make it optional in
> those cases.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
