Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2D614315E6
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 12:22:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbhJRKYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 06:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231808AbhJRKYJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 06:24:09 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA568C061770
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 03:21:58 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id i5so4653088pla.5
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 03:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/TZLehJ/hDMRtkj0rrB2dSWebDz1FDgoJGvlylziczE=;
        b=WYdQNbKeD3mhKTaZ3XkNhbgTsqQlEsqtsHNlVi7Ro7ccexyI/SmcepJOGoe6kNcKFH
         6keQCwh9qlw+HeYlDTkixvjCfcGC60VNk5HFkO4vLV9J2txIX2JSs1NbSnIfUn6f2w0P
         iv79GvV5OiLvvN7Nt3GcHY++EW+0BUZPORRMaRHHN9KkBGN5Pb4qZMNSatkGeD2Z4yet
         LnPbAsEmyP0neXoOdfjP7N5TDLEiWut8gRgk6Z61x1fEUhAPpJIPOIQhnOejZX+zssDX
         HRl+hABwhd/zVSR1hHTufYpicT5yj6TgjbZzGl3d9dOzmMf6zIGThY66t/Bb5GmImp1/
         Yf+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/TZLehJ/hDMRtkj0rrB2dSWebDz1FDgoJGvlylziczE=;
        b=IzLEREyzOcVFy1HtDumPHQ/jxqlcWhJWSJdsmlOS19HlzVBOq+qJWbeqRLkTBkdSu4
         z9WXZIRLk4iA8dnSdh9HjyWwPl5zWuP/F9IjQSNb1Fc7bPzL2RwiA4d2ptRWsZKqMBaQ
         6InGubJUDVfE7ZIfiZwdih/9p0i9yuDE6s/sjmp4++tcxJzsYXscdrMkdSk3qeMQ8A06
         S5GPZbe8WMJLjVkupnVttAGWM8q/mc9md5MycQXh1VJWtYDwOo5L7fUg2EXawvhlThfH
         ATYWmit4RYrzzkmU2iH8pjudUbrr1j0rSW/o/DRlURxSRPq3zPMF9nc3DAwAsGAkg1OD
         KWOw==
X-Gm-Message-State: AOAM532QduYhyjwdAGW6tGlIkibmaRiQvbESvYrvMdOfLpDk8h7vLbIz
        oWYLRy3l5hMq/uVVfBVKxsLXoIR1nXEKWs23/dTTMw==
X-Google-Smtp-Source: ABdhPJxSQvcSPtF8mkOmZlSZeFJ2met+as1mLMT6yIqDnKm+G6lJAdALnr4C9K1Hb2fHbtOLJPghlRaV27YLvBptm2s=
X-Received: by 2002:a17:90b:4f4c:: with SMTP id pj12mr10698062pjb.231.1634552518107;
 Mon, 18 Oct 2021 03:21:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210914091204.2204278-1-tzungbi@google.com> <CAL_JsqL7QbCJrqLZtRX9eNJC39kJWwbva2ZQeD+Azb+pKHzJ=Q@mail.gmail.com>
In-Reply-To: <CAL_JsqL7QbCJrqLZtRX9eNJC39kJWwbva2ZQeD+Azb+pKHzJ=Q@mail.gmail.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Mon, 18 Oct 2021 18:21:47 +0800
Message-ID: <CA+Px+wV-1adVEm-iB7ow0JG5=p50X=xV1KJT5V9_7n-Ao63zBQ@mail.gmail.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 16, 2021 at 8:41 PM Rob Herring <robh+dt@kernel.org> wrote:
> Sigh. What's the status of
> dt-bindings/reset-controller/mt8192-resets.h? Because now this is
> applied again and has an error in linux-next since the header is
> missing.

It was moved by [1] and applied in [2].

[1]: https://lore.kernel.org/all/20210930103105.v4.1.I514d9aafff3a062f751b37d3fea7402f67595b86@changeid/
[2]: https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/commit/?h=for-next&id=f07c776f6d7ed5f8423863efd2445016e690aba1

Have proposed a patch[3] for fixing the issue in linux-next.  But it
would be still broken in ASoC tree for now.

[3]: https://mailman.alsa-project.org/pipermail/alsa-devel/2021-October/191317.html
