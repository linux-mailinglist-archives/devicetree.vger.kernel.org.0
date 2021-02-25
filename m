Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8B163259A4
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 23:27:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbhBYW07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 17:26:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232372AbhBYW0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 17:26:38 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C09DC06178C
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:25:58 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id b14so7345376qkk.0
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Me2HC60f89+mn3gIrURmnveAllc/VNfG/ARjgNilBjU=;
        b=O+YTgENdNKlhUO4AF61qqfAJWicWg0RCmp9Q0lQaYoFhKk0sKvX6Cd9+Eabc+3yiU9
         RTto+/seiFf8c3gPNU+wn99b7nasmetXy5qZ2Oyten1aB0zj8oIHLvH0jYWiw4buYNHp
         smusLla9tdxLJE15JC2IyiEKkR/PImG4oxte4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Me2HC60f89+mn3gIrURmnveAllc/VNfG/ARjgNilBjU=;
        b=J737m718bs2LtCyMohb4ubxhX7LNXWVYKV+vUvnOBbrYQAHBQFZp6AF+6CK8pV1NAz
         3ooI/TpE4XSSo66PVtxHoMLwYuca6m3Jt6BMOoUKsjZULNkRXgDtlyPvQ2EDQv1vf4Ik
         FdN4ylwt3LDkCiaMNtFXd0aNiaCuL/Mzrluq3QqCEbt3jMiURj1BC/joc9WP7lVmk5mZ
         GSGqf8j04A/K1Lv8LN9YNq/hmekDzXHRxJ4rv8B9nlfJ1Wf9mrAUWTO0SdrBNw2Z3YHz
         kE0/Pf2AYGDVsk1WD/QablclqjHLa44uVFRw7YPOiN24uqbBd/1nvrl8pBraify6RsFV
         12Mw==
X-Gm-Message-State: AOAM533SgyYYoL/t3ajln9GduiMUFnSs110VvuwSjfXCxWt892jur3qX
        lmH+uOm+I8IRWG0skdy8sWlwma2bVWdBoQ==
X-Google-Smtp-Source: ABdhPJyh6TzL5cOsUYH1qCuCADj42VtY76XJYvs6bMXxPGwGeByWbdRni4w1XAgJPX+KtJz4j5vLYA==
X-Received: by 2002:a05:620a:23d:: with SMTP id u29mr4722664qkm.411.1614291957259;
        Thu, 25 Feb 2021 14:25:57 -0800 (PST)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id q11sm4498139qtr.31.2021.02.25.14.25.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 14:25:56 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id x19so7042512ybe.0
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 14:25:55 -0800 (PST)
X-Received: by 2002:a25:cf88:: with SMTP id f130mr116461ybg.476.1614291955422;
 Thu, 25 Feb 2021 14:25:55 -0800 (PST)
MIME-Version: 1.0
References: <20210225221310.1939599-1-dianders@chromium.org> <20210225141022.12.If93a01b30d20dccacbad4be8ddc519dc20a51a1e@changeid>
In-Reply-To: <20210225141022.12.If93a01b30d20dccacbad4be8ddc519dc20a51a1e@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Feb 2021 14:25:44 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WGoSv13Rpa+e3Z+u3mQRoe1a7OnS=e2GsFn5fzHHL2Qg@mail.gmail.com>
Message-ID: <CAD=FV=WGoSv13Rpa+e3Z+u3mQRoe1a7OnS=e2GsFn5fzHHL2Qg@mail.gmail.com>
Subject: Re: [PATCH 12/13] arm64: dts: qcom: Add sc7180-lazor-pompom skus
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        Philip Chen <philipchen@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Feb 25, 2021 at 2:13 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> This is a trogdor variant.  This is mostly a grab from the downstream
> tree with notable exceptions:
> - I skip -rev0.  This was a super early build and there's no advantage
>   of long term support.
> - In -rev1 I translate the handling of the USB hub like is done for
>   similar boards.  See the difference between the downstream and
>   upstream 'sc7180-trogdor-lazor-r0.dts' for an example.  This will
>   need to be resolved when proper support for the USB hub is figured
>   out upstream.
> - I remove sound node since sound hasn't landed upstream yet.
> - In incorporate the pending <https://crrev.com/c/2719075> for the
>   keyboard.
>
> Cc: Philip Chen <philipchen@google.com>
> Cc: Matthias Kaehlcke <mka@chromium.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: Tzung-Bi Shih <tzungbi@chromium.org>
> Cc: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../dts/qcom/sc7180-trogdor-pompom-r1-lte.dts |  14 +
>  .../dts/qcom/sc7180-trogdor-pompom-r1.dts     |  26 ++
>  .../dts/qcom/sc7180-trogdor-pompom-r2-lte.dts |  14 +
>  .../dts/qcom/sc7180-trogdor-pompom-r2.dts     |  44 +++
>  .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  | 288 ++++++++++++++++++
>  6 files changed, 390 insertions(+)

As always I see a typo right after I hit send.  ${SUBJECT} should be
"trogdor-pompom", not "lazor-pompom" for this and the next patch.  I
copy/pastad from the previous patch (limozeen _is_ actually a lazor)
and didn't adjust properly.

I'm happy with any:
* to spin a -r2
* for Bjorn to fix when landing
* for this just to land since it's a harmless typo.

In any case I won't spin for now but I wanted to reply so if I do spin
for another reason I'll won't forget.  ;-)

-Doug
