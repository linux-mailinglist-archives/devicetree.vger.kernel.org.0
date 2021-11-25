Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA27245D3FE
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 05:47:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238412AbhKYEu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 23:50:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238444AbhKYEsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 23:48:55 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3277DC061756
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 20:44:19 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id e3so20020911edu.4
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 20:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JTm5yftESs3lfpIAJt/PY1fspStWK+nQ5o7JPoENxFI=;
        b=XCZmHmmW+GDrIdKpT6KaqHodSGM8A0TOe5C+OJ/iQtnsfTB2GlFFgVPzu7GB4qn8lV
         3tzDEOkvdy2u9tMkcsIhn4Uqtht+G+zDnLy+MG3bHBKt98UUDojdTDKYx7aXT77Oz8xQ
         kyEBZLrGlsAfMyeQCyHTYmX0YfFuOiBFSB760=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JTm5yftESs3lfpIAJt/PY1fspStWK+nQ5o7JPoENxFI=;
        b=d5CwA1BP1as68NnnCHRB7pOvuUFfzAkb8enTEa8XEfuehE4Pf6EH5SaizFL5Iy6ODp
         XMzpDmwsLcZfHdp/CuJTrJjWeufv8m9J4zVqpFBgXgM+/fw9V16TlIn9t+mD03X79Di6
         D+M2Q8ASA6NfEFgIlZUrbQDA1qnlcPt+YUy5TuMP3KiZVZddsgVW5wrkatZtO5x9P5sm
         xssaUt6J/UDBg6xMmSdIS7NhOBvVV+XCpfx30Gby5+mm4r/Fs7Cq9uKLC5Y92gDZP9nw
         NQPUw0CXsPv+osrXVBEIpfKoLrysYrzlVpZtMUaTxbkZxuYqvPqaFk3TYahzqYc9W4ud
         SlzQ==
X-Gm-Message-State: AOAM531RRkjeZIuVpCw0lA+ptXwOVQH8XhrUzGYzGTZVVFUVKaM1JX4M
        CkTX7Xa/KAVwspukGOj5BxIb4pZIHqkOQ4TTj15/MA==
X-Google-Smtp-Source: ABdhPJylsL2uCDsedR2Pcz5H55x/Cxlul8iQdQOZWYIASibEl8UyleGTNZnusQKrNvtsMJ0mqVcNpd5dJI2S1lQozlQ=
X-Received: by 2002:a17:907:7664:: with SMTP id kk4mr27143961ejc.319.1637815457819;
 Wed, 24 Nov 2021 20:44:17 -0800 (PST)
MIME-Version: 1.0
References: <20211124172553.519309-1-jagan@amarulasolutions.com> <CAOMZO5C9LhoKKW_TapKtqgAEq2h3dqe97dU9-11ezs+Cx+zr3g@mail.gmail.com>
In-Reply-To: <CAOMZO5C9LhoKKW_TapKtqgAEq2h3dqe97dU9-11ezs+Cx+zr3g@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 25 Nov 2021 10:14:07 +0530
Message-ID: <CAMty3ZCuq_eu+tCtqXLz+Km5-U4s3qk8EsbhbTfOGkJm-eU6CA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: Add TI DLPC3433 bindings
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
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

Hi Fabio,

On Thu, Nov 25, 2021 at 12:47 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Jagan,
>
> On Wed, Nov 24, 2021 at 2:26 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > TI DLPC3433 is a MIPI DSI based display controller bridge
> > for processing high resolution DMD based projectors.
> >
> > It has a flexible configuration of MIPI DSI signal input
> > produces RGB565, RGB666, RGB888 output format with maximum
> > of 720p resolution in 60 and 120 Hz refresh rates.
> >
> > Add dt-bingings for it.
> >
> > Signed-off-by: Christopher Vollo <chris@renewoutreach.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../bindings/display/bridge/ti,dlpc3433.yaml  | 112 ++++++++++++++++++
> >  MAINTAINERS                                   |   6 +
>
> Shouldn't the MAINTAINERS change be part of patch 2/2 instead?

I usually go the initial entry as part of bindings patch since
checkpatch fires a warning if i added 2/2
WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
#23:
new file mode 100644

Jagan.
