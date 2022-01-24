Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6164499CC0
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 23:13:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1449126AbiAXWIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 17:08:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1457309AbiAXVzE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 16:55:04 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DA8C07E29B
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 12:36:15 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id n6-20020a9d6f06000000b005a0750019a7so2284652otq.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 12:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=PkiyCREFdDaGIz9ootXkRn4vBH0SG43WzFjcqohSdxE=;
        b=biOqTlThtS/kKRPHpFYqWrxAwuQaMZI15zc24si1Wm+TD/mrKND7TxExKoLi2+9kp0
         FcdKYe5w1fL/KrNuHAszHjMF5cLUTcYTjpC3AhiqtQBy2K9FJa2FroQF7dtYyh2lJjIs
         h/KYnGpCPUjgUVSn7HLCzgEVPJlCyZqISWZsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=PkiyCREFdDaGIz9ootXkRn4vBH0SG43WzFjcqohSdxE=;
        b=h6o5keOw53Txa5xFbZn3J2hDcDh9o8Yagn52gMSKetdMqQZogmZbq84fAIKaFbz0DU
         nf3udWOqmd848C3l2dmXFhn1EZZ9s354Us+5OmG7Dj2aisJ7Gj7q5KBB9CnVtHNfSk6P
         84vecZXa9QvJey9ZgKcM6pgX0BZNyl77w4NCwGXgWXTlkdca0mLbiIlszl2qptf42PQT
         DzpxZS41WnOz/u2gNFK6g20w2g+IcpBDH9OGfGGh9ouBpc4zfJ0cKRzr2reXj4FTgMaO
         bC8nMtMBb1OUOMlB7XCJis7O7WNiTBusZUl3mv0PdsH8WnvepQPAXLTfZtmosSgqyJmI
         tQ5A==
X-Gm-Message-State: AOAM530p1jxCsweAwNXBeA9YKAzsu29kWe/6pd+X+3JLA5HDQ847oIJ7
        6bGmp0LQRGDnQD6DyzNf5xLiGt3YuwtwMWv/N/SIig==
X-Google-Smtp-Source: ABdhPJyxhFIp4/kCVNQxrNu/5xh5KN6eRGvC7N5UC82evKraUAWIo6YaGg5L86kMXzG26rnOtUUc/TxoeGmN9iLqz7o=
X-Received: by 2002:a05:6830:30ba:: with SMTP id g26mr6147866ots.159.1643056574994;
 Mon, 24 Jan 2022 12:36:14 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 24 Jan 2022 12:36:14 -0800
MIME-Version: 1.0
In-Reply-To: <CAD=FV=X3+MDOMEidLbdgvcHVSObO=_x3KSLe31hr-TP6B2jCEg@mail.gmail.com>
References: <20220124165745.16277-1-tdas@codeaurora.org> <CAD=FV=X3+MDOMEidLbdgvcHVSObO=_x3KSLe31hr-TP6B2jCEg@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 24 Jan 2022 12:36:14 -0800
Message-ID: <CAE-0n50aF9tvYFy+_zV1R00KG1T4oKsrNt6LLL5Hi_uiLFVCNA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio
 clock controllers
To:     Doug Anderson <dianders@chromium.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2022-01-24 12:33:06)
> Hi,
>
> On Mon, Jan 24, 2022 at 8:58 AM Taniya Das <tdas@codeaurora.org> wrote:
> >
> > Add the low pass audio clock controller device nodes.
> >
> > Signed-off-by: Taniya Das <tdas@codeaurora.org>
> > ---
> > Dependent onLPASS clock controller change: https://lkml.org/lkml/2022/1/24/772
> >
> >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 43 ++++++++++++++++++++++++++++
> >  1 file changed, 43 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > index 937c2e0e93eb..0aa834ce6b61 100644
> > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > @@ -8,6 +8,8 @@
> >  #include <dt-bindings/clock/qcom,dispcc-sc7280.h>
> >  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
> >  #include <dt-bindings/clock/qcom,gpucc-sc7280.h>
> > +#include <dt-bindings/clock/qcom,lpassaudiocc-sc7280.h>
> > +#include <dt-bindings/clock/qcom,lpasscorecc-sc7280.h>
>
> Presumably using these two include files means a dependency on things
> landing in the clk tree [1]. Unless Stephen and Bjorn want to work
> something out, I'd guess you'll need to re-post with just hardcoded
> numbers for now?
>

Bjorn will apply both patches so the dts patch can live atop the clk
one.
