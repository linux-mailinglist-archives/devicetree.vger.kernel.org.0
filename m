Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AAF941DDF1
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 17:47:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345203AbhI3PtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 11:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346273AbhI3PtI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 11:49:08 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2DDEC06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 08:47:25 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id h20so7338825ilj.13
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 08:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ukJ8UdRAzd7VtHSG6snSf8AUrJFYkThG12qKfJkt93s=;
        b=KHQ+XS/wHzQMF8hxQILBr6I5RH0LLHNIqRTK46hcDUprihlf/AgVCh/Sw5Fb+4CSxZ
         hhg3Fb7YS//HumuLCDxYnrfLttqXQI3nlysMibZw0+9a86UkLtqA1eLwB4vbt5H5Jak3
         2FSP4zTBTlGarUuj+EE8Vy6oq7mI3TPGsXyNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ukJ8UdRAzd7VtHSG6snSf8AUrJFYkThG12qKfJkt93s=;
        b=TZpgF2B7OLwTQ2F1dgDJK+aM54FMJxy/FsmfMcjdLWswdp72gofeicjKAcg6VnLwRz
         oRWXYoIBvj7lG4iAt0V7lomJ8q66NHLsj6dhEC7HcWf/e2YMLDkM05PaFEAv2kUwXc0z
         +OwsoFm5yS2x2pqHew+QevgCDTHLabfGs6fzpse/yLSqigckqjoXjeet0w3alck1LAmn
         7dL/c7sSD/DALNd8H+lEJAL1i11MeA8+hRJ3FDLzwg8LoBbpEkCKtU93+OFW4pG/HrN+
         BAYDUkq6WcpBNw88ZZHORf7zwfwH7DhtVM2ZXMXJ3s+de7fe/8p8AZfNU2oB+Me9HNHQ
         brAQ==
X-Gm-Message-State: AOAM530SjU64asX2IOyppi89XZ2apm7UunhnAhJ07UlQXW/BKRp977HR
        qRJ/QvSTaWNLFzR84LBiEZ+HZt+e9J872g==
X-Google-Smtp-Source: ABdhPJxYpQPYSa0PcDWnzIAYuSUC3hySU7schrQI3oMqVfXl7Rt7XWhoi0Jehn2OO7wY4xi5U1o68Q==
X-Received: by 2002:a05:6e02:18ce:: with SMTP id s14mr4887134ilu.69.1633016845041;
        Thu, 30 Sep 2021 08:47:25 -0700 (PDT)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com. [209.85.166.173])
        by smtp.gmail.com with ESMTPSA id y30sm1945499iox.54.2021.09.30.08.47.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 08:47:24 -0700 (PDT)
Received: by mail-il1-f173.google.com with SMTP id b6so7429890ilv.0
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 08:47:23 -0700 (PDT)
X-Received: by 2002:a05:6e02:1bad:: with SMTP id n13mr4681374ili.142.1633016843140;
 Thu, 30 Sep 2021 08:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
 <20210929173343.v2.2.I6050ba184b24d887e92692a72ee3054d643d6091@changeid>
In-Reply-To: <20210929173343.v2.2.I6050ba184b24d887e92692a72ee3054d643d6091@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Sep 2021 08:47:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V2gf6jJuLaX+4fDjJ0QKmdZgD-HvL+OJ-NxyY5WOna2A@mail.gmail.com>
Message-ID: <CAD=FV=V2gf6jJuLaX+4fDjJ0QKmdZgD-HvL+OJ-NxyY5WOna2A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: drm/bridge: ps8640: Add aux-bus child
To:     Philip Chen <philipchen@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Sep 29, 2021 at 5:35 PM Philip Chen <philipchen@chromium.org> wrote:
>
> dp-aux-bus.yaml says we can list an eDP panel as a child of
> an eDP controller node to represent the fact that the panel
> is connected to the controller's DP AUX bus.
>
> Let's add it to the ps8640 bindings.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>
> (no changes since v1)
>
>  .../bindings/display/bridge/ps8640.yaml       | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
