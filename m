Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C90661B464
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 13:01:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728109AbfEMLBc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 07:01:32 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:32969 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728093AbfEMLBc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 07:01:32 -0400
Received: by mail-vs1-f67.google.com with SMTP id y6so7725482vsb.0
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 04:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3laysTfG58br9ekvMftLCflS2bw8W4QgtgThoJczg/k=;
        b=OhBo05KGmUf9v7pWQWG2ym5VzciK3m8PAY7OCLMPlu6ajuOvl8hsdIR4ktGO+tfwZl
         PjR20rgtE7om7EPFacQai80QmP6uZk5pby1EEaVmUXxjTt6Mz7+zzZ5iu8wW80qi5I9o
         foT1oVXlmX9+sq/K74dm7TbFBOxgihNI3wwntlPd2t+8D5fEEMzj8h4LAzIy4n4C8WpB
         Pkk6j/6qoX6yN6HEH/HV3Gq8tAJFDAHkw8W4a4a5qBsCHltyw120WKfvXocYBD+axxPZ
         o6qfEGMerK6xUutpokiJ7Us7JSqUb3okCaB091vvHdYlJhe5MA/L98Zis5GlgN21VfPC
         wEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3laysTfG58br9ekvMftLCflS2bw8W4QgtgThoJczg/k=;
        b=TBEKuG04i7Pk4hseoidDM+QsK5plpDfNJAg2YZR7p/+n+fymDHGk+CdydDMK/RdHhS
         zPr0QjDS/oF8mrN+uMKSuQNYknJkjjAeHnFyjh5Qg1EYQIdmzZCb7u8Cg7kzjmTb/fIK
         FKppnF736gqq6B68jTiBTaS9cq9hMJF8m12EKUqFsfxXMIwjEH5MKh+J/uAsTjRrVPPL
         iZiTDuK66GeN+ey6etGZgN8Z//yQiOnbZsl77uRSuL2yZLnaBzfecTIshVX7nQR8qdKI
         +EPHUXb8gq3r6F+W6Mbj0oMt/wJEhWSFzBXxiSrk0/ofLF2qsDHOEABbBdUZ6mfG5dyc
         d3yA==
X-Gm-Message-State: APjAAAVILlPd72+6bkEOc/RVDkzAa9TT8MvEsoGlVM3jXqJLhRJwj7zx
        Tx0NlzSkTso508v+g10Ff/FX/f6mMcU1vzS+dvQQqw==
X-Google-Smtp-Source: APXvYqwV2DWLvk1wJJw3pvk0vpggagApxSMhez6K6Oy7eHi1sUKyejPrVUYCo8vRQVFz+4/5mCLluau/NDUjAhelBM0=
X-Received: by 2002:a67:f48b:: with SMTP id o11mr4801333vsn.9.1557745291516;
 Mon, 13 May 2019 04:01:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190114184255.258318-1-mka@chromium.org>
In-Reply-To: <20190114184255.258318-1-mka@chromium.org>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Mon, 13 May 2019 16:31:20 +0530
Message-ID: <CAHLCerP+F9AP97+qVCMqwu-OMJXRhwZrXd33Wk-vj5eyyw-KyA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sdm845: Add CPU topology
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <andy.gross@linaro.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 15, 2019 at 12:13 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The 8 CPU cores of the SDM845 are organized in two clusters of 4 big
> ("gold") and 4 little ("silver") cores. Add a cpu-map node to the DT
> that describes this topology.

This is partly true. There are two groups of gold and silver cores,
but AFAICT they are in a single cluster, not two separate ones. SDM845
is one of the early examples of ARM's Dynamiq architecture.

> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

I noticed that this patch sneaked through for this merge window but
perhaps we can whip up a quick fix for -rc2?

> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 38 ++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index c27cbd3bcb0a6..f6c0d87e663f3 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -192,6 +192,44 @@
>                                 next-level-cache = <&L3_0>;
>                         };
>                 };
> +
> +               cpu-map {
> +                       cluster0 {
> +                               core0 {
> +                                       cpu = <&CPU0>;
> +                               };
> +
> +                               core1 {
> +                                       cpu = <&CPU1>;
> +                               };
> +
> +                               core2 {
> +                                       cpu = <&CPU2>;
> +                               };
> +
> +                               core3 {
> +                                       cpu = <&CPU3>;
> +                               };
> +                       };
> +
> +                       cluster1 {

This shouldn't exist.

> +                               core0 {

Rename to core4, 5, etc...

> +                                       cpu = <&CPU4>;
> +                               };
> +
> +                               core1 {
> +                                       cpu = <&CPU5>;
> +                               };
> +
> +                               core2 {
> +                                       cpu = <&CPU6>;
> +                               };
> +
> +                               core3 {
> +                                       cpu = <&CPU7>;
> +                               };
> +                       };
> +               };
>         };
>
>         pmu {
> --
> 2.20.1.97.g81188d93c3-goog
>
