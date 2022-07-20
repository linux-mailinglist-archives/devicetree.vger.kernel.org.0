Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EBC057B92C
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 17:07:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232429AbiGTPHe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 11:07:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240385AbiGTPHd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 11:07:33 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B15DB237D6
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 08:07:32 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id x91so24176496ede.1
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 08:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QLkLqL61DDqJ9IAVUdmTVDocJg5pLEqlAURJ5AHPPUk=;
        b=jwiuRcsVxReYTQwzNleS0OK+pJTpyysxB+6naxh1/qIV3RDFn0d/Gah6qlvxG7mYR0
         +Ae6/nMY7OPLolxegD4LWlydgrTVuRzzVTAiuQHwCiE+AkUiVyb3/6ZBLWYAN2A6T8iR
         nsCrclsH10l+1H/sy8X2ZWmsfqB6oGWuSZZdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QLkLqL61DDqJ9IAVUdmTVDocJg5pLEqlAURJ5AHPPUk=;
        b=kEas6oBuinKYkO38u9lgLxxHhvOsFskGpVLDxo4I4TWYZ5Yd5CUe9pRLhzi5UNNgdG
         plAkRWABzNp18jLJcVAyS2z+UW6wUAtlxYWQp7J5d75a/9z61Nx4z9Koj8L9wx2fj4be
         xFMZN9QyvTRLe2tGXIwZBFuuXdUYkK/stU3b0HVh7TpH1ilDMjz/ijHxjrSDbeHF3dT5
         Wp0QocWUe5VsgxjZbqcc911MfKOOfKBTKvCpBcF25ic/wHIsPYygUh8gFWjor7ngQtm2
         pNx/yu8exwaE3+MVVMl5AEdvjl5R48aDGSIe5otNfEyPGV//1+alnes0aK8ym/3UIlqb
         gWRA==
X-Gm-Message-State: AJIora9oAzJU/WdhQwTBUM0I3jIAfI9SRXsrv066FZt01JfjQvBbpyZ9
        RBkBBnWE0TguUVixlOyPAxA9lArlkMP5A+mU128=
X-Google-Smtp-Source: AGRyM1snARHX7a5YibuzLgOrsTpdQPQKCBbHXz5OeTVTfDgJED6L0D3hzNpu7KPvpS2AP9/Qj7UNaw==
X-Received: by 2002:a50:ec99:0:b0:43b:b6ca:ba13 with SMTP id e25-20020a50ec99000000b0043bb6caba13mr6199398edr.360.1658329651163;
        Wed, 20 Jul 2022 08:07:31 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id ee55-20020a056402293700b0043ba51a84f2sm2194968edb.14.2022.07.20.08.07.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 08:07:29 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id a11so4912663wmq.3
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 08:07:28 -0700 (PDT)
X-Received: by 2002:a05:600c:1549:b0:3a3:2aa2:6f60 with SMTP id
 f9-20020a05600c154900b003a32aa26f60mr2807595wmg.57.1658329648175; Wed, 20 Jul
 2022 08:07:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220720073755.1.Ifab936517646b3876dd31b6e9b1b58a858529e57@changeid>
 <4cc6a276-4cbe-506a-6425-677c56469645@linaro.org>
In-Reply-To: <4cc6a276-4cbe-506a-6425-677c56469645@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 20 Jul 2022 08:07:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WP22g2ZhyeGeYJcGtQTBeKjinxQRCXicHxeVh-ziC8iA@mail.gmail.com>
Message-ID: <CAD=FV=WP22g2ZhyeGeYJcGtQTBeKjinxQRCXicHxeVh-ziC8iA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom: Document additional sku6 for
 sc7180 pazquel
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 20, 2022 at 12:46 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/07/2022 09:38, Yunlong Jia wrote:
> > The difference between sku6 and sku4 is that there is no esim
> >
> > Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> > ---
> >
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > index 4dd18fbf20b6..aebeefdab27f 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -410,6 +410,7 @@ properties:
> >        - description: Google Pazquel with LTE and Parade (newest rev)
> >          items:
> >            - const: google,pazquel-sku4
> > +          - const: google,pazquel-sku6
>
> This looks wrong, did you test it?

Why do you think it's wrong? This patch is adding a second compatible
string to an existing dts. The only difference between SKU4 and SKU6
is that one of them has the eSIM component stuffed and the other one
doesn't. This need not be represented in the dts since the eSIM is
automatically detected, but it was still stuffed as a SKU strapping so
the factory could tell whether the missing eSIM was an error or
intentional.

This is just like the SKU0 vs. SKU2 difference.

Other than the fact that this should be together in one series with
the dts patch:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
