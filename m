Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0702646E2F6
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 08:08:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233488AbhLIHMU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 02:12:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231664AbhLIHMU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 02:12:20 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2904AC061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 23:08:47 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id v1so16432611edx.2
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 23:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ChkLI7VHoNsJE7+WbzM7VYIiW7/FpdqY5JZPm/p6Dmc=;
        b=daTWLOGbyL3rDlqt3K4wAXwAZt2Zi2ok6anQj7AyGgNeQUo4LTgluX2VGbGdADqTSZ
         9ddk0KKdJFzlVehfl//nIz7ABiBdz+T+ucbdU86cYfS3v1GMKZdzZp8ro3osfvcQAw7x
         ZpN76qldh9iqlT9Y6ifBZ/6nSE1MNNRYhkg0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ChkLI7VHoNsJE7+WbzM7VYIiW7/FpdqY5JZPm/p6Dmc=;
        b=idnnJl9u8dpLn7S001pGARdazC+oD3IeLT7oGvjt1ZcHwJmfl9QEozqISsJ28AfeIn
         Hf6NqLErJ8+sSLmfMny2U4tS75y3YkO6m2mddp+Aa9dhIyOSem7kWTihDKlkI417N0Sd
         XGqhnWtxo5bN4nWwLaQT6lkv4px0tq64kgosTF+XOTeyXpDvp/QEhlvwfzVfv2ZIWULA
         BNt5IeBKGmAbis2bJ2MVtZn3gTAUvlB7szp0g2qQ1dL/UJ/ZtWpAUBYHkGrERNrlJRpI
         lqcW3PJypkuag/+2Y/RhgDZZxMRuf83POCzIO/bJUmqeZV+hmLwl/3dprG3bB/3FVSYI
         7nUw==
X-Gm-Message-State: AOAM533e592K92SITGQ0mtAgyHKftDY0SY+usCnONh4JZWsSjbnFYkAc
        sEnt0aDlLaVhQojjsez5W8NwEyJ47WyPc029s1f6hg==
X-Google-Smtp-Source: ABdhPJwG2HgYsRmsj5taDUlEFH2BHNT+lWwQqNutrBbXxZR42AkgPINsP7gCluVxlLuxTi6J3/cJLZZGfthDxgLzcEs=
X-Received: by 2002:a17:906:e115:: with SMTP id gj21mr13603496ejb.348.1639033725556;
 Wed, 08 Dec 2021 23:08:45 -0800 (PST)
MIME-Version: 1.0
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com> <20211118091955.3009900-4-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211118091955.3009900-4-alexander.stein@ew.tq-group.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 9 Dec 2021 12:38:34 +0530
Message-ID: <CAMty3ZCffJ=Oi6_mc1b5bpWbD8WAm2scU7gW_xthLZq8qbN8ww@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc
 supply bindings
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Add a VCC regulator which needs to be enabled before the EN pin is
> released.
>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> index c3f3e73f740a..48a97bb3e2e0 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -32,6 +32,9 @@ properties:
>      maxItems: 1
>      description: GPIO specifier for bridge_en pin (active high).
>
> +  vcc-supply:
> +    description: A 1.8V power supply (see regulator/regulator.yaml).

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
