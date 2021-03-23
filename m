Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E1CD346ACF
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 22:09:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233461AbhCWVJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 17:09:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233439AbhCWVIh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 17:08:37 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11DD2C061763
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 14:08:37 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id a11so16088771qto.2
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 14:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fGp9OGhSFYep+wgICuctJHe6AunYvp6GoDFbNEb/8TM=;
        b=j+5PaN95fKfswhdgD662vrvF8rN4CfNwG0kwHV81OlkvM8XS2H8sc20+r4YTghNet/
         V0wWg+nF1W9hUBEZeCgYjjcdqHm1Fy539xa2f7uEmeWZ7IkAJ/1lPspWn7yLuI81nwHf
         o3jILhpzIInb7kSAYo3jc2GypXixenKdS/mqU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fGp9OGhSFYep+wgICuctJHe6AunYvp6GoDFbNEb/8TM=;
        b=CSpNiGck+nZgBvYW36OAAU/xcXh4V2EPMYQbS9P6Sc1xZ0B/yFYPaEVxltrg6SXa0G
         Pb0TCnkXUo8QkWfU2yP7c6GQ4D/tcG3KNjXTwYey1hFnZCK9D1CUEXDT1fi3yoek6Amk
         HrH37Hkx8MXzYkKK//5yYfljULhBADt/vlCfI9Ln/3cDSnNcqa04AKXQ7GdJslb9q2Cq
         oUPvjq98PDtzxwD4A9vWD9FpuyrAtCP+Luhcpn2G3UNMKQxxwnbfgNR+1QfmNv52MbDc
         hWH0KEY+VsLRg1kYnnvwy28NIc/BwfaajOyAjuTCjZPQVxnX2139DpApQhJy446iqiWv
         VmNg==
X-Gm-Message-State: AOAM530R6Tf2kMzkiqdv9sBBYktHStkJ3A70ZGOh0Y8XHD4tsGt6rbpd
        IklYXGAut6CEygAzjBmgkafVhvbqr5f7jg==
X-Google-Smtp-Source: ABdhPJyLJK9ZlWLqe5wxKVIZB7Yy9bqp8pjM+Fa2YkQ+HfHfRwUA4qe1ySmFzE6ntIDWypIUxwp8Qg==
X-Received: by 2002:ac8:6c3b:: with SMTP id k27mr249929qtu.354.1616533715882;
        Tue, 23 Mar 2021 14:08:35 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id r35sm48612qtd.95.2021.03.23.14.08.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 14:08:35 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id x189so4498251ybg.5
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 14:08:34 -0700 (PDT)
X-Received: by 2002:a25:b443:: with SMTP id c3mr300894ybg.32.1616533714574;
 Tue, 23 Mar 2021 14:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210322030128.2283-1-laurent.pinchart+renesas@ideasonboard.com> <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
In-Reply-To: <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 23 Mar 2021 14:08:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xak21bi5zcoKv9o7aLcJpWsm67U9NzYZ6zJD+UnOOtfw@mail.gmail.com>
Message-ID: <CAD=FV=Xak21bi5zcoKv9o7aLcJpWsm67U9NzYZ6zJD+UnOOtfw@mail.gmail.com>
Subject: Re: [RFC PATCH 01/11] dt-bindings: drm/bridge: ti-sn65dsi8: Make
 enable GPIO optional
To:     Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-renesas-soc@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Mar 21, 2021 at 8:02 PM Laurent Pinchart
<laurent.pinchart+renesas@ideasonboard.com> wrote:
>
> The SN65DSI86 EN pin can be hardwired to a high level, or connected to a
> global reset signal, not controllable by the kernel. Make it optional in
> those cases.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml         | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
