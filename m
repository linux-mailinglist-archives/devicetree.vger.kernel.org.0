Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9001B28EF95
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 11:50:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388950AbgJOJum (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 05:50:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388789AbgJOJul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 05:50:41 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22867C061755
        for <devicetree@vger.kernel.org>; Thu, 15 Oct 2020 02:50:41 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id k25so3498472ioh.7
        for <devicetree@vger.kernel.org>; Thu, 15 Oct 2020 02:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=eyPaX2b9uTYVGrtyPDuPm14hycYxtLDObdNRJPIyRpw=;
        b=jtdq6EG2wsKadhfznfV8r/EcUV2XOgNjT1I93DQFSz1Oz/eJ7LaPgyuRwKi6JgE1bK
         aY5W4idEybloz3ZeCI9VsljBwY1qc8/zDcB9s0Y8j2WapTxK/2MB5uPbA1T2cXjkXUBp
         t+JWEFimyis2xQT9RPANYDnnnQXF0TA/YT0Om72TjPI7UPNOE1UTYazBUQxH+U3MDvm+
         YHId2TAz6udNZ8cKNf622jbCrcaTZ2jkLF3hA8sxAkgWqqokUMcD3s21oqGR0GRswawK
         9M/4wtBWTlIOMnBma0tewm/lyH9zft6RyeXH0NBAvQMl/+MVXdtyJI9rVcBReqJFOf2Z
         kJLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=eyPaX2b9uTYVGrtyPDuPm14hycYxtLDObdNRJPIyRpw=;
        b=f5gt+ZOomoq5LxHlLfKmP9csvO1r9xIP5lcotrAMy0OZDFODfwNcczMCCVpEaVS3gs
         FqCr7bAIw5Ryu9EdedXM5T9ZrhBG3ovRJ0ty+gdmCHyjF/GbU6ta+zsh16w7mF4yoKE5
         kdK10pZkTC1qgjMUEBFPsVvj0i5xnRXQnPsGH5/DeqaQ1AT/Qw0FY0KKT3hlky+mMZlT
         kWP+4rA/9S+9stuAIYSKgBG4OvQCMid0uFpK6Z1LfjL59hjz+qtWh2TKv/Vs6JKL5fI6
         ZUn63D04E/sg9Bfxudlc7uSuPacX2kjtvbSgLDDv/tm5oJRJViK7HDANKILyWrsT2Zh7
         WX5Q==
X-Gm-Message-State: AOAM530pMvvOc58EXSUcLcCDd1Yz6+Y4IlktfSs9pRuBanpFjgjKzTCq
        fwdb4s4jvqBoyHUeAkmx3FXVYJE7M8sTV2/e84lnKw==
X-Google-Smtp-Source: ABdhPJyw2pIRR+lWqu3FkHjg7REr+w3Uz/yk3r2sIyav02NyK2tLfM1poUD08cQ1GzxKnrzlemKonwc48O/w/13/ltY=
X-Received: by 2002:a02:ca03:: with SMTP id i3mr2795870jak.50.1602755440128;
 Thu, 15 Oct 2020 02:50:40 -0700 (PDT)
MIME-Version: 1.0
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com> <20201008183818.GB2395464@bogus>
 <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360> <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
 <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360> <CA+Px+wXwEm+j2AZcaXHtoFUhe9GqaaxMRecQ7X0vu49E2OKH=A@mail.gmail.com>
 <0578a7e56430da42daee95aabc05850da3dcc294.camel@collabora.com> <8c5c7a2b-667b-cb15-1fbd-c7015f5b97dd@collabora.com>
In-Reply-To: <8c5c7a2b-667b-cb15-1fbd-c7015f5b97dd@collabora.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Thu, 15 Oct 2020 17:50:29 +0800
Message-ID: <CA+Px+wXOA6bTUNjVWBORuPaxy0e+g=3ozKG6QYx=wXh-uaoT5A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     =?UTF-8?Q?Ricardo_Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>,
        Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 15, 2020 at 4:25 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
> On 15/10/20 8:52, Ricardo Ca=C3=B1uelo wrote:
> > On Wed, 2020-10-14 at 10:18 +0800, Tzung-Bi Shih wrote:
> >> The intermediate layer (i.e. codecs { ... }) breaks current code as
> >> you already discussed about that in previous threads:
> >> - of_platform_populate only creates immediate child devices.
> >> - the codec driver expects its parent is EC node.
> >
> > Thanks for your input, I'll try to address these issues in the drivers =
in v3.
> >
>
> Can you remind us which platforms support cros-ec-codec and why there is =
no an
> EC_FEATURE for that?

I failed to connect the question to this discussion thread.

But:
- Originally, MT8183 (arm64-based) chromebooks aimed to use
cros-ec-codec.  However, we realized the RAM size is insufficient.
For some reason, the cros-ec-codec feature was not enabled.
- Currently, we have some AMD Picasso chromebooks that use cros-ec-codec.
- It used to have EC_FEATURE_AUDIO_CODEC.  But I removed it in
https://patchwork.kernel.org/project/alsa-devel/patch/20191017213539.01.I37=
4c311eaca0d47944a37b07acbe48fdb74f734d@changeid/.
Because we don't rely on the EC_FEATURE to do anything specifically.
As long as there is a corresponding node in DTS or ACPI table, the
cros-ec-codec gets probed.
