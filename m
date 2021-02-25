Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B34EC325A0F
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 00:07:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231815AbhBYXGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 18:06:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231604AbhBYXGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 18:06:35 -0500
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1F9C061574
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 15:05:55 -0800 (PST)
Received: by mail-qt1-x831.google.com with SMTP id a2so5411326qtw.12
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 15:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U1hhikhUfJgUYoJWHOz5mYG43dgdqvD25NKJhwkGGME=;
        b=W1Lg/r85qkEkqlSzP3K7bUkT8hCe1cymIs3mOxfNemlRXXDK1J99kIUqTtEdKHoD5P
         YrOMdAXcg4Y5Vqz8s0EoLdA6z553GS5BJPSOEyq6PKNcVO0NYEqr2XiIXYjyyIDEArGe
         AoKfPOdmJLAqN4FOF2o0ENH1UB6kPJ7E76H+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U1hhikhUfJgUYoJWHOz5mYG43dgdqvD25NKJhwkGGME=;
        b=j2XqBik/qCftSlyi6xbJ5yvQOhJ4PcQTM/CnrOH6LqhUzEm4QOrRZ9GfsVG1biknTq
         YKKgaaoD2wGEWgCPTF8h2OB2l5exe94adaTnc+lnANiAwNfHug7uLWhGJfH8wQRDIGgF
         jNLr8LmNihnb8SwCiCiWxmBKzWvFx9oP5UBBMJPQXGMg0y1iybGs5h80iNbJJESdUoC+
         orrry+XN5sMxA1mz3AyxI6a6TJaLdY/rVm0uaYBCqWE5VDh/2TUVy0dfNvxDjePlrEEF
         ZWChUtdRRZXofyM/yfow+9akIeXDEwKQE2Ka7XHNtEi2qS51S0gdQVPdlfaQdGy8o4e8
         245Q==
X-Gm-Message-State: AOAM531FuZvNhD8ZN4FFMAeG6q2aEvrZ9mE7wVA3sL9TLpVBgXOPW5Yf
        ZNMsp/rXlTUiYa+t2SHuYnDfV9jU4nG/MA==
X-Google-Smtp-Source: ABdhPJzp7BqwPQzm/MyVAFicrH49gqdp3r/Z/FCLxtVGS43va82KErylvHMQNijjycZl+ojYUoTzIw==
X-Received: by 2002:ac8:5ad4:: with SMTP id d20mr462226qtd.224.1614294354763;
        Thu, 25 Feb 2021 15:05:54 -0800 (PST)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id c63sm5275577qkf.8.2021.02.25.15.05.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 15:05:54 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id u3so7097839ybk.6
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 15:05:54 -0800 (PST)
X-Received: by 2002:a25:4e83:: with SMTP id c125mr201182ybb.343.1614293875603;
 Thu, 25 Feb 2021 14:57:55 -0800 (PST)
MIME-Version: 1.0
References: <20210225221310.1939599-1-dianders@chromium.org>
 <20210225141022.2.Id27e7e6f90c29bf623fa4880e18a14ba1dffd2d2@changeid> <a4a83576-9d95-80eb-0090-62526eba9095@somainline.org>
In-Reply-To: <a4a83576-9d95-80eb-0090-62526eba9095@somainline.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Feb 2021 14:57:44 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WhjvqUau_Jz9ZLFukGUxRqGJTJN+sUt=yv2Q81FRzUWQ@mail.gmail.com>
Message-ID: <CAD=FV=WhjvqUau_Jz9ZLFukGUxRqGJTJN+sUt=yv2Q81FRzUWQ@mail.gmail.com>
Subject: Re: [PATCH 02/13] arm64: dts: qcom: Move sc7180 MI2S config to board
 files and make pulldown
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
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

On Thu, Feb 25, 2021 at 2:55 PM Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:
>
> Hi,
>
>
> >
> > +&pri_mi2s_active {
> > +     pinconf {
> > +             pins = "gpio53", "gpio54", "gpio55", "gpio56";
> > +             drive-strength = <2>;
> > +             bias-pull-down;
> > +     };
> > +};
> > +
>
> You can omit pinconf{}, so the outcome would be:
> &pri_mi2s_active {
>
>     pins = ...
>
>     ...
>
> };
>
>
> This makes the DTs ever so shorter and is the style that's currently used for new submissions.
>
> Same goes for the nodes that are being referenced.

Yes, I agree.  That definitely makes sense going forward, but I think
it'll just add to the confusion to switch a dts for a given SoC
mid-stride.  ...or, if we do switch the style it should be done in a
separate (no-op) patch series.  This series is already giant enough...

-Doug
