Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53E0146E2E9
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 08:07:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233470AbhLIHLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 02:11:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231572AbhLIHLS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 02:11:18 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71BC3C061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 23:07:45 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id z5so16385991edd.3
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 23:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NW4Te5KT8RywZLAuo2ZfeBAFffXT3U9YKMlaGLK1mhI=;
        b=Q88N14t0tBnLbGIq3e/NPlPtuFANXa6rJURj0gRGgPqfSaOB7tSEOPqld30GzxDv81
         aBOxp2GhUcyBkaqNfZNn4E6drFm2t1GtRxN4Ms78Qz0eaoptMOVuJYloQZg0F+bI77ZF
         N94SB4kUcC8W86uXarfk90mwFfhHVQIWH5CuU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NW4Te5KT8RywZLAuo2ZfeBAFffXT3U9YKMlaGLK1mhI=;
        b=lfNiewXp4OJubkvLo779V2tRMWV/oOmUJkPE3DmB6SpSzgWX2CVKcAhj8B+1S5UwhI
         zejW1OmJe7jKpawYcWFIaw8fCAofM98zHBQGZcWv12vEUnitEAg6VvL2KX8OYqnvMbJq
         y9KIPjw9NPHnv2rALyCn08EvRVvG8OFaGf52pm0jH4eviOQZY6aJ/cJcgnqFZpwU4+mZ
         Iwxi8VgG4Btx2vScaZyhrLygPS+aSnHkvUsa6J/M6ZFvrDCFSiIDbe4mRQlmKDbYw76F
         mS2GfRS81qZ0tjSmSqUrzYmeyiVOfAqhpZp65rsdEk/+Qoi5rGNe0/uNfOOV3HGnUEaF
         plJQ==
X-Gm-Message-State: AOAM531BcbkjdEXjoDUag/VqjmH9cRoiWhQgTeIVJURBZCUK6rOyvqnP
        wUf2MR4l0IxMJdtG500RjQ+srgQYUcEtabk9WD0rTg==
X-Google-Smtp-Source: ABdhPJwY+75DQZYXB+oeBio1GxAeI2nXtnrDaL/tLtJd3UFELFDSODnnKe8N0hbncOE9M1IDExKcWekXwrLqDw3e358=
X-Received: by 2002:a05:6402:1768:: with SMTP id da8mr27012500edb.252.1639033663999;
 Wed, 08 Dec 2021 23:07:43 -0800 (PST)
MIME-Version: 1.0
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com> <20211118091955.3009900-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211118091955.3009900-2-alexander.stein@ew.tq-group.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 9 Dec 2021 12:37:33 +0530
Message-ID: <CAMty3ZA7d9bSvmG4nGd9Lncw9wm6wiAq1pKSOFX03h_BU7JR-A@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: display: bridge: sn65dsi83: Make
 enable GPIO optional
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>
> The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled by
> means not available to the kernel. Make the GPIO optional.

Sorry, I couldn't understand what it means. Does it mean VCC enabled
designs no need to enable GPIO? I've a design that do support both EN
and VCC.

Jagan.
