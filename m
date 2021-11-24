Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB9E45CD0C
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 20:17:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242614AbhKXTUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 14:20:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241789AbhKXTUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 14:20:13 -0500
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13C27C061574
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 11:17:03 -0800 (PST)
Received: by mail-vk1-xa32.google.com with SMTP id m16so1351119vkl.13
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 11:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ggEL9HUUpm+JbkKDLEjpku9ZfkI+413TqoZLSa6ibks=;
        b=mcA5PAUKbEWRimVWCrK5Zc1ePyEWUvQyUbkim4OI+Ysv6+wcUIgRCWoIYptRPoZwZS
         QdmbYTP56FrYu5szsXxS/zqUvwh4BJLr8rM2zkxchJh0mkPjabMexk1GTJYVTXCjWzRc
         nOzl6X+SAo44cLFLgLH62z3WypN2QCxeO82zORcscZmqBoyzycibCW5KfGJ/pbzmq/HD
         0r9JBUlXaUkCMFqDQs7merpmlEETUfoCrIWgBxfN4atCrgNc61zqnWCkhwyjFwEpdfFc
         d9WPYEGaGwyilqF5/6FHRpWErnStxB7bBaD7I+EMhyQSXfM3VUAerLUGsBuh2Eq47WKT
         dQ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ggEL9HUUpm+JbkKDLEjpku9ZfkI+413TqoZLSa6ibks=;
        b=IIXsD/TnGYBzEzjYYAnzXCD8gt1prNt8/7Sluy/PdZGUfJ2ngSvAwEz5gRp1nhbDpM
         l2eYSfKT9gFzI+rptx5NudvfoW6dz79uNeMDIp/ZTbpblbGVi5YTvIM4FjLv/9JaW9OV
         Zo0T9oyqHxJ6w4Ldk/PcBSRduBgmTl1uqpA9ibiz5sDf0XC7qxdJKCwUJQoEoVEu1SCa
         n2sEC/RbgGa7jkzTHTs1tRJYb37GhUcsP9GKRys90qTH5mHYNj2D43G4tPRQ6+P1C38E
         fuH5+1CgVvry3jCFGX+a49ZO3Tz+Py6bRrQcI00lJQQPF1IMFSL1Q7Ri4zuqKHyy7y/w
         3HJA==
X-Gm-Message-State: AOAM531fFEgbO3uUmptregqTdm3TR26sMMhBMTM2lYkGDP4HJlpE3dLI
        Pa7S/Igzf8DigVKHDyOOP5f7DMUJ0AG56hM6HyA=
X-Google-Smtp-Source: ABdhPJzzyMSVlilRU7Hm7IxeZfRV28vGA+3VsvN5ZAzUeV3DyzOEvSPetk/tin/1U79iBQKeiKTDCXRWjvAtmYNHb7I=
X-Received: by 2002:a1f:2591:: with SMTP id l139mr31963933vkl.5.1637781422283;
 Wed, 24 Nov 2021 11:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20211124172553.519309-1-jagan@amarulasolutions.com>
In-Reply-To: <20211124172553.519309-1-jagan@amarulasolutions.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 24 Nov 2021 16:16:51 -0300
Message-ID: <CAOMZO5C9LhoKKW_TapKtqgAEq2h3dqe97dU9-11ezs+Cx+zr3g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: Add TI DLPC3433 bindings
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Christopher Vollo <chris@renewoutreach.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        DRI mailing list <dri-devel@lists.freedesktop.org>,
        Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On Wed, Nov 24, 2021 at 2:26 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> TI DLPC3433 is a MIPI DSI based display controller bridge
> for processing high resolution DMD based projectors.
>
> It has a flexible configuration of MIPI DSI signal input
> produces RGB565, RGB666, RGB888 output format with maximum
> of 720p resolution in 60 and 120 Hz refresh rates.
>
> Add dt-bingings for it.
>
> Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../bindings/display/bridge/ti,dlpc3433.yaml  | 112 ++++++++++++++++++
>  MAINTAINERS                                   |   6 +

Shouldn't the MAINTAINERS change be part of patch 2/2 instead?
