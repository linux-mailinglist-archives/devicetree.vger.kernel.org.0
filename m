Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67656641DB3
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 16:44:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbiLDPoL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 10:44:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbiLDPoK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 10:44:10 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D3F660E3
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 07:44:09 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id d128so11670017ybf.10
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 07:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Krqz0gztCgfshA/5BVbNzvghLRKl8impaiGjHsH2Zy4=;
        b=pph5OCBwEmWrbf6VaobaKj1L9oT8lMiq4kIl4kHEEQggsonvIHM9fj0pIIyPqOjuTB
         yOt/e8ISmr60iMONl0nnA//fw6P7WmM317GsJ64vezzFYU2xgDyNyQkZ6Jjdl8scah12
         b6RdBuCoSiTPZj5ZK9FpD8Moec/e+jgL97RKLaec1qeY11cdDyavNTkanykmWiRxMwuT
         amy40hpDqkXOvJt+k+nSEpDr2kfUqNWwJ1Mz7p8WZdEqkFujVBgCkBYdoatISl1tzGsI
         uF0lyfBTM5QwQ5bMNuKanBOxMFTIsX7rOi2/OLE2jpiky3+YsFCRACzOhO79P4GaBIX3
         Rm3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Krqz0gztCgfshA/5BVbNzvghLRKl8impaiGjHsH2Zy4=;
        b=tfqQbeSnUzmvMv5FxN7GktPREx38WuMOHXtTms6ZpzOPOg5+fZSTuZylh6fAZyJdAI
         Kk0CHdsO65R9FTuDVYjWwY8eRIWy8vRRO6QCzdoqUH1pFKBkefappJWxO5JqXifv3ZFi
         fqMSwMaVfZRfIULFLjJvAgdgT6ZVItErbctxS6NSkMxvNSafjHIF3U0wfOin3fhrjAWr
         oQq6IN44QiX47ihsOmQ3us2VIDFSFt+3tFebxmgxM4cTK3tRGC6YEImPf4/rC0TOq7LG
         7Gs9Sd8uop1nbokwo3I15iZGiggoqFfEHKEBwOyruXsMmCNRtaZce5HbmEAhp2vKYW3p
         Hznw==
X-Gm-Message-State: ANoB5pkJja1IW2SPM7XxQzmTb4CtD4yY0CsA09eZFUwDLlzZ14edfR8x
        l8v1n2QYlW6DIF5nmwpS7DsHOia09R2SYI247k69KQ==
X-Google-Smtp-Source: AA0mqf4w63L6rotcuUr/RKWrLsu/hmBo1nAUaAZch8Huvbe0yTiNcxIaHxsbDQC+TBGNiSY54CZpZkwoVdNrfQFkT+U=
X-Received: by 2002:a25:8c9:0:b0:6f8:9c91:4503 with SMTP id
 192-20020a2508c9000000b006f89c914503mr24861496ybi.15.1670168648603; Sun, 04
 Dec 2022 07:44:08 -0800 (PST)
MIME-Version: 1.0
References: <20221204061555.1355453-1-dmitry.baryshkov@linaro.org>
 <20221204061555.1355453-4-dmitry.baryshkov@linaro.org> <20221204153736.610c49ed@jic23-huawei>
In-Reply-To: <20221204153736.610c49ed@jic23-huawei>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 4 Dec 2022 17:43:57 +0200
Message-ID: <CAA8EJpqeSF25y3K3gk0Z=q19==byKOqR4NbR78e=1D28o8yp9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: adc: qcom,pm8018-adc: allow
 specifying MPP channels
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 4 Dec 2022 at 17:24, Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Sun,  4 Dec 2022 08:15:54 +0200
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
>
> > Several ADC channels are bound to the Multi Purpose Pins (MPPs). Allow
> > specifying such channels using the mppN device node (as used on apq8060
> > dragonboard).
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> So I understand this more, why do the node names have to have anything to
> do with the particular pin? I'm assuming the reg value provides that
> relationship.

Yes, the reg provides this relationship. If I understand correctly,
the dts authors (see arch/arm/boot/dts/qcom-apq8060-dragonboard.dts)
wanted to point out that these channels are connected to MPP pins
rather than raw adc channels (e.g. vcoin, vbat, etc).

>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
> > index d186b713d6a7..fee30e6ddd62 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/qcom,pm8018-adc.yaml
> > @@ -64,7 +64,7 @@ required:
> >    - adc-channel@f
> >
> >  patternProperties:
> > -  "^(adc-channel@)[0-9a-f]$":
> > +  "^(adc-channel|mpp[0-9]+)@[0-9a-f]$":
> >      type: object
> >      description: |
> >        ADC channel specific configuration.
>


-- 
With best wishes
Dmitry
