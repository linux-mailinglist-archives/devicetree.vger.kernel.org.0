Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B032A14F173
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2020 18:41:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727095AbgAaRlP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jan 2020 12:41:15 -0500
Received: from mail.kernel.org ([198.145.29.99]:50838 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726749AbgAaRlP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 31 Jan 2020 12:41:15 -0500
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B71132253D
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2020 17:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1580492474;
        bh=Vc4SiOJHxWuzUZxXFKK57A91sKVKRu2n+XwrsjrC9cY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=l5D6OfKKUgkBuUel5VMLzQsE61+ur26x2amPU4jozcTqHtvSg614PueqSBBoPmro6
         c42mgQCWp54qTYHARHr2sg9yvPNxKzBIo57B3CJlqmtn2kHGsRZo1BGRZsGKHLPuba
         X2N/FYY8tKGHYjsG/TXkTzwMpbRJVtyssk1gcU7c=
Received: by mail-qv1-f54.google.com with SMTP id y2so3598761qvu.13
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2020 09:41:14 -0800 (PST)
X-Gm-Message-State: APjAAAWRvvhnwbYmtHsoBgS2IWvsz/R8tv6tyPYDmEzZI2WtephLKakw
        MuTrIiHzEQRPsnjTuoQZVXCrqtXTd1T2k6M/7w==
X-Google-Smtp-Source: APXvYqymOXuPQlCKGanKbWjWi5whel3UBjEZf1RL275OqNT9/9EQXyLkDL8EqglFNzzDWhiObUdqxzRS8fg/R1CrqIo=
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr11119378qvn.79.1580492473869;
 Fri, 31 Jan 2020 09:41:13 -0800 (PST)
MIME-Version: 1.0
References: <20200125203454.7450-1-sam@ravnborg.org> <20200125203454.7450-2-sam@ravnborg.org>
In-Reply-To: <20200125203454.7450-2-sam@ravnborg.org>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 31 Jan 2020 11:41:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKcbZ2y0kqSsxc4CV27S-Wk+D0RYuVYr_MbQ6_Xex4K9A@mail.gmail.com>
Message-ID: <CAL_JsqKcbZ2y0kqSsxc4CV27S-Wk+D0RYuVYr_MbQ6_Xex4K9A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: add panel-timing.yaml
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 25, 2020 at 2:35 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Add meta-schema variant of panel-timing and
> reference it from panel-common.yaml.
>
> Part of this came form other files with other
> licenses - original commits:
>
> cc3f414cf2e4 ("video: add of helper for display timings/videomode")
> 86f46565dff3 ("dt-bindings: display: display-timing: Add property to configure sync drive edge")
> 9cad9c95d7e8 ("Documentation: DocBook DRM framework documentation")
>
> The original authors acked the license change to:
> (GPL-2.0-only OR BSD-2-Clause)
>
> v2:
>   - Got OK from original authors for re-license
>     Huge thanks for the quick replies!
>   - Typo fixes (Oleksandr)
>   - Drop -array variant when not needed (Maxime)
>   - Replace oneOf:... with enum (Maxime)
>   - Drop type from clock-frequency (Rob)
>   - Drop "|" when not needed (Rob)
>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Acked-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Acked-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  .../bindings/display/panel/panel-common.yaml  |   7 +-
>  .../bindings/display/panel/panel-timing.yaml  | 227 ++++++++++++++++++
>  2 files changed, 230 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-timing.yaml

Reviewed-by: Rob Herring <robh@kernel.org>
