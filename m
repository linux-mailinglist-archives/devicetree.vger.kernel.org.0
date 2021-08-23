Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 324563F51F3
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 22:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232459AbhHWUTB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 16:19:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbhHWUTB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 16:19:01 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DC48C061575
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:18:18 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so31168147otg.11
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 13:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=e+9/i7ql0JBP0axXyyLhXNf4AItySuPk82qcEXlXd5g=;
        b=fQrasVro5N3cZEnqPgBuX2YdB8zrxp3HHRfMlva8FJEkdLOEbBQirnmkqa04Oe+dnX
         IS8z5u8Wjdsu2ToHGuX11ef42nmkeC+KkgzGKhdb9HCwVkztQRVqJWXcW+L0OV1+6XsN
         FV/0Xckk73dNW8LW7WsYqjP2iP7Lw1YCKD++A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=e+9/i7ql0JBP0axXyyLhXNf4AItySuPk82qcEXlXd5g=;
        b=VZ3ET6oZ7IkuAt27ty4tz2WCgURvD9eR96n5Y8+jwacueyQ+UNuLRCtBTAYJkqQk40
         MaXsYXoBUU10vlWmorTJdBRK1/H5KDYhhndKv7mHY/GhhCqPxCaYutXFGBuyTuWJVbT5
         APH8Ep1PPm4DVj6/gFvjOsdJvm1tYLzt73yTKZdroaFppzYJFxcSEWZ7/hdPcZaymxbz
         dpw6PgEY/+vDSXUDn4rX6zBq0EyY2gvsqCd8SPBm/JPmH4pTaWIgcu02piGhnzmoXht6
         ZWNmkjHflE+zdkSvmTliDYSjP2QYaBVDYw7oMt93hc/0x4fXB1wPL/ML+FwfmE2XWXop
         nvCQ==
X-Gm-Message-State: AOAM530dKo4LrthHIy2vxAKBKANd4u1aPQmMfXFkwFKyGQaenXvWe9pV
        z/F1Cem8zrjRS7zdljE2zAfBVA+LsZUnmsanXRiSSA==
X-Google-Smtp-Source: ABdhPJz9EiIOtyDS5NnRoJX3EMQljO9+XE46gP4QRLRbWTE3xA90fnZY61ZeGvuqz4V7mlfd/oCvObFvauiBVAqP6kM=
X-Received: by 2002:a05:6830:88:: with SMTP id a8mr29462620oto.233.1629749897488;
 Mon, 23 Aug 2021 13:18:17 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 23 Aug 2021 15:18:17 -0500
MIME-Version: 1.0
In-Reply-To: <5848670f513187734d7625f242bbf67b@codeaurora.org>
References: <1629342136-3667-1-git-send-email-sibis@codeaurora.org>
 <1629342136-3667-3-git-send-email-sibis@codeaurora.org> <CAE-0n531EgLx-gGJswmmNAFmy-P9z=Hh1N=fkLw_uemoeQnYVg@mail.gmail.com>
 <d733d47bc6a86fe28302943e50d02bd5@codeaurora.org> <CAE-0n50z=MaEZhXRSQpN6Jo8m7nyQSS6MqikAgT5cfkH1ZvL_g@mail.gmail.com>
 <5848670f513187734d7625f242bbf67b@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 23 Aug 2021 15:18:16 -0500
Message-ID: <CAE-0n514NRg6SkvPCC4hAyQVp4MX9ubHGvsTT14FuaB_d1QsEQ@mail.gmail.com>
Subject: Re: [PATCH v5 02/13] dt-bindings: remoteproc: qcom: pas: Add QMP property
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, mka@chromium.org, robh+dt@kernel.org,
        ulf.hansson@linaro.org, rjw@rjwysocki.net, agross@kernel.org,
        ohad@wizery.com, mathieu.poirier@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, rishabhb@codeaurora.org,
        sidgup@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-08-23 09:19:08)
> On 2021-08-21 23:47, Stephen Boyd wrote:
> > Quoting Sibi Sankar (2021-08-20 07:24:02)
> >> On 2021-08-20 00:25, Stephen Boyd wrote:
> >> > Quoting Sibi Sankar (2021-08-18 20:02:05)
> >> >> The load state power-domain, used by the co-processors to notify the
> >> >> Always on Subsystem (AOSS) that a particular co-processor is up/down,
> >> >> suffers from the side-effect of changing states during suspend/resume.
> >> >> However the co-processors enter low-power modes independent to that of
> >> >> the application processor and their states are expected to remain
> >> >> unaltered across system suspend/resume cycles. To achieve this
> >> >> behavior
> >> >> let's drop the load state power-domain and replace them with the qmp
> >> >> property for all SoCs supporting low power mode signalling.
> >> >>
> >> >
> >> > How do we drop the load state property without breaking existing DTBs?
> >> > Maybe we need to leave it there and then somehow make it optional? Or
> >> > do
> >> > we not care about this problem as the driver will start ignoring it?
> >>
> >> We can afford to break the bindings
> >> because of the following reason:
> >>
> >> * Load state in mainline is currently
> >>    broken i.e. it doesn't serve its
> >>    main purpose of signalling AOP of
> >>    the correct state of Q6 during
> >>    system suspend/resume. Thus we
> >>    can maintain current functionality
> >>    even without the load state votes
> >>    i.e. when a new kernel with load
> >>    state removed is used with an older
> >>    dtb the remoteproc functionality
> >>    will remain the same.
> >>
> >
> > Alright. Is that reflected somewhere in the commit text? I must have
> > missed it. Can you please add it?
>
> Commit message throughout the series
> mention that the current load state
> implementation is broken but it is
> never mentioned explicitly that it
> is the reason why bindings can be
> broken. I'll wait for a couple of
> days to see if I get any more
> comments and will re-word it in the
> next re-spin.
>

Ok. You can add my Reviewed-by tag with that text updated.
