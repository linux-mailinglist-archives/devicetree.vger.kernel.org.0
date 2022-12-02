Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAD19640896
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 15:38:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231518AbiLBOi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 09:38:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232111AbiLBOi3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 09:38:29 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF0C05AE32
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 06:38:27 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id c66so453054edf.5
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 06:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qGY6WkT4lRuXaZzdlQnZdGGZzLB2sng4XfKDkywn0jw=;
        b=FpCfeMTD2EZbG+mTWjfqX3lVMRGEWAZfQorccOoXyuf8d2BQchQ7uk5E07hW/9GL07
         SKyA3TwOxE7I5E0WFP4wLPF6M4oX4RBIQtoSyYHmUgCiSZGN97onFVIfLRUzEOmHT8OB
         3nUePhQjN7eie9jW0mEXtJShB0YsHewywd9Ok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qGY6WkT4lRuXaZzdlQnZdGGZzLB2sng4XfKDkywn0jw=;
        b=Vo2Xe805jztKTH8LmF5EQDaODFHl5R+XQSibeLa97zh7kH5yIqK8XEcVJkSbhs67xP
         S1BX27wZeVbKPBY+tj9xtxz3NEstaLGGNM4lKMLnG5x0Yg0ZkaoA7n+KQLmllRpDBUY3
         QSi6fXnQQ5x46v5pM+7YZ3Klwt4VYdeVLR1ZNvucgferuDVdBs0BXaMC0zOQDnHvKPzb
         owdf3ev8HXrbRY+AMyLnyRHUW0yqiqTjHvwZDp8f0zsoAzpfefxzZLcOydYxq6EtgJGg
         FXmt6O9AcMJmx743yCngZuk98vfWbJRFo4n71tqAcKHeJPOShevde1MvAdeOD6pKSHjZ
         hWZA==
X-Gm-Message-State: ANoB5plgfHURYsKPvd58Hi1IoakJdrpan1J5pC9wyf4zs6TpLa6MolfJ
        qxEPMhGO4B920nkR/jUWh+QP6QHvyoU/pZOQuU0=
X-Google-Smtp-Source: AA0mqf5OHn/bLQkF+m2zX7BD4v3x1YLO6bd749OHrYbiasMdFLFizm7KJtLTgAseDwQh1hLIxqOyZQ==
X-Received: by 2002:a05:6402:294b:b0:458:cd82:91a with SMTP id ed11-20020a056402294b00b00458cd82091amr63933118edb.15.1669991906316;
        Fri, 02 Dec 2022 06:38:26 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id b23-20020a1709062b5700b007c0991735c0sm3071132ejg.79.2022.12.02.06.38.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 06:38:25 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id bx10so8155330wrb.0
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 06:38:25 -0800 (PST)
X-Received: by 2002:adf:fb4c:0:b0:236:5270:735e with SMTP id
 c12-20020adffb4c000000b002365270735emr32762102wrs.659.1669991904737; Fri, 02
 Dec 2022 06:38:24 -0800 (PST)
MIME-Version: 1.0
References: <20221118164201.321147-1-krzysztof.kozlowski@linaro.org>
 <CAD=FV=Vo9zbsjgYEn0eBkC8eKRceg6v4u1g=w6nSYHNctFQWxg@mail.gmail.com> <ca4693a5-e941-a2c9-b023-42a91589dad6@linaro.org>
In-Reply-To: <ca4693a5-e941-a2c9-b023-42a91589dad6@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Dec 2022 06:38:12 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VCJA0v-EpT9YyCRZg07QzGeH9PGcNcO=j=x0e9XeHtHQ@mail.gmail.com>
Message-ID: <CAD=FV=VCJA0v-EpT9YyCRZg07QzGeH9PGcNcO=j=x0e9XeHtHQ@mail.gmail.com>
Subject: Re: [RFT PATCH v2 1/2] arm64: dts: qcom: sdm845-db845c: drop unneeded qup_spi0_default
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Dec 2, 2022 at 12:17 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 02/12/2022 01:49, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Nov 18, 2022 at 8:42 AM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> The qup_spi0_default pin override is exactly the same as one already in
> >> sdm845.dtsi.
> >>
> >> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>
> >> ---
> >>
> >> Cc: Doug Anderson <dianders@chromium.org>
> >>
> >> Changes since v1:
> >> 1. New patch.
> >> ---
> >>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 8 --------
> >>  1 file changed, 8 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> >> index 02dcf75c0745..56a7afb697ed 100644
> >> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> >> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> >> @@ -1274,11 +1274,3 @@ ov7251_ep: endpoint {
> >>                 };
> >>         };
> >>  };
> >> -
> >> -/* PINCTRL - additions to nodes defined in sdm845.dtsi */
> >> -&qup_spi0_default {
> >> -       config {
> >> -               drive-strength = <6>;
> >> -               bias-disable;
> >> -       };
> >> -};
> >
> > I guess it's more of a question for what Bjorn thinks, but I view the
> > fact that the drive-strength / bias are in the dtsi file to begin with
> > as more as a bug in commit 8f6e20adaaf3 ("arm64: dts: qcom: sdm845:
> > enable dma for spi"), which is where these properties were introduced
> > to sdm845.dtsi.
> >
> > The historical guidance from Bjorn was that things like
> > "drive-strength" and "bias" didn't belong in the SoC dtsi file. Later
> > we came to an agreement that it could be OK to put drive-strength in
> > the SoC dtsi file but that bias was still problematic because it meant
> > ugly "/delete-property/" stuff in the board dtsi files [1].
>
> So let's move it from DTSI to all boards? Although what if the board
> does not use SPI0?

You'd look for boards that set spi0's status to "okay" and those
boards would be the ones to have it in their dtsi.

-Doug
