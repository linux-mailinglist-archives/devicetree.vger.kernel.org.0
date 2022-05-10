Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45D0952266F
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 23:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbiEJVnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 17:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229678AbiEJVnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 17:43:41 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 295B924F0D0
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 14:43:40 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id g6so460044ejw.1
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 14:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JE1ryK3sFFaZpqLHuF4NT4pM8/q2oJCkuMH2NRrxWwk=;
        b=UMCjE/GJyeRlpXcLvxAjSgAKgcgANfb//EG2WUd71BZf+62ZGEjKPE+xFJHNrgi25q
         f/nnP8NBmQAIYJOomN7He1W39UCjnMwXBbwlO4gflTisczQg9XlhUlyVT4rvsCLdU2zp
         qnyPa9oPLPuPspS+y0RzhTOQVDFihYiyLymU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JE1ryK3sFFaZpqLHuF4NT4pM8/q2oJCkuMH2NRrxWwk=;
        b=n23rC+Dygc3OqOAg5l56tpM+Sc85l53AUAZg3oFmRxUt7LUiTWC00x43KGHZPZUEZb
         Q2UZcQkhZHeBg3sWwXKugX4sLUf8MYtd7Vkuzt57lVZxVwl91uZk8WFml3uWp3YXd4gz
         7x3YBDdxdokARF/lPZgHHJUw8Xy3wWV+heaw+/cCGynwoGjlH0n2dPyJdnkk9sJn4ggw
         SunuJlmmgzXMGgeRGHXMzxPiuScLzJY5k8FFRj1NO8CEdkNs2E9JymbppbVdAbzWCq00
         3svBQKDWLQvXUNogRH89fOzvodWuEL0QXkOou7qnzb8K4TDupEOMJBLPZf1PqtPHBR58
         TvDw==
X-Gm-Message-State: AOAM531mwtjqSt8PQCehjHMkwJmW/uf8WQkolLjmTtAgL+SLurypKTnJ
        Q/xdH5h0RkaJ6Ab0DC4HEdCUl+fbZM0R9PmCZsA=
X-Google-Smtp-Source: ABdhPJwCtdE2yLV7wQigx+Zf+ais+2eMj4lSnZ+HlFe2GCAxLCgipYS4IA6O7XSHw//s6YiMUV3HQw==
X-Received: by 2002:a17:907:3fa2:b0:6f4:b2a6:4992 with SMTP id hr34-20020a1709073fa200b006f4b2a64992mr22410572ejc.224.1652219018263;
        Tue, 10 May 2022 14:43:38 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id eg56-20020a05640228b800b00427ae00972dsm167682edb.12.2022.05.10.14.43.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 14:43:37 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id bg25so120984wmb.4
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 14:43:37 -0700 (PDT)
X-Received: by 2002:a05:600c:4f13:b0:394:8978:7707 with SMTP id
 l19-20020a05600c4f1300b0039489787707mr1887184wmq.34.1652219016683; Tue, 10
 May 2022 14:43:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220510104656.1.Id98b473e08c950f9a461826dde187ef7705a928c@changeid>
 <CAD=FV=U33QSjnD7ERdVBb+hk4yooGU5=C0FtnhFsDME_MePR0w@mail.gmail.com> <YnrZQ4ggqxjlacL1@google.com>
In-Reply-To: <YnrZQ4ggqxjlacL1@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 10 May 2022 14:43:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNNP0k_xS=qDUrO2jyNG3r=HB4nz+C0uRZLDBiBuCYZg@mail.gmail.com>
Message-ID: <CAD=FV=VNNP0k_xS=qDUrO2jyNG3r=HB4nz+C0uRZLDBiBuCYZg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Set modem FW path for Chrome OS boards
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 10, 2022 at 2:29 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Tue, May 10, 2022 at 12:49:30PM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, May 10, 2022 at 10:47 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> > >
> > > Specify the path of the modem FW for SC7280 Chrome OS boards in
> > > the 'remoteproc_mpss' node.
> > >
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > >
> > >  arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > index 9f4a9c263c35..995c5bd12549 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
> > > @@ -89,6 +89,8 @@ &remoteproc_mpss {
> > >         compatible = "qcom,sc7280-mss-pil";
> > >         iommus = <&apps_smmu 0x124 0x0>, <&apps_smmu 0x488 0x7>;
> > >         memory-region = <&mba_mem>, <&mpss_mem>;
> > > +       firmware-name = "qcom/sc7280-herobrine/modem/mba.mbn",
> > > +                       "qcom/sc7280-herobrine/modem/qdsp6sw.mbn";
> >
> > We don't necessarily need to change anything, but a few thoughts:
> >
> > 1. I guess technically we don't actually need the "modem" subdirectory
> > for herobrine, right? WiFi works differently on sc7280 so we won't
> > have a "no modem" modem firmware. ...but I guess it doesn't hurt to
> > have it and it's nice to keep it symmetric.
>
> Yeah, it seems nice to keep it symmetric and also indicate for what
> kind of device the firmware is for. 'sc7280-herobrine' (or
> 'sc7280-chrome') doesn't reveal that.
>
> > 2. Whenever we're ready to support WiFi only SKUs then I guess it'll
> > still be OK to specify the firmware name. We'll just set the status of
> > "&mdss_dp" to "disabled".
>
> Yes, specifying the FW name is not a problem. Either we'll set the
> status of 'remoteproc_mpss' to 'disabled' or have a DT snippet for
> the modem that is only included for SKUs with a modem.
>
> > 3. It's slightly weird that we're using the name "herobrine" but
> > putting the change in the "chrome-common.dtsi" file. Should it be
> > "sc7280-chrome" instead?
>
> Currently OS images have the FW in 'qcom/sc7280-herobrine', but we
> could change that if desired. If we change the path we could also
> consider to change it to 'qcom/sc7280-q6v5' or 'qcom/sc7280-mpss'
> instead of 'qcom/sc7280-chrome/modem'.

OK. I'm OK w/ it being "qcom/sc7280-herobrine". So I guess:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
