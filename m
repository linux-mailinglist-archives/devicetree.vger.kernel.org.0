Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C62277D47D
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 22:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238270AbjHOUnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 16:43:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239383AbjHOUnX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 16:43:23 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F682125
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:42:58 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-76ad8892d49so473300185a.1
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692132121; x=1692736921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OkRDDoNPzSLjlacKlxL+E41IsOW/ULTgctVKXf9RjXA=;
        b=AhSm8P7U3wggkUiQ1aaVWbX2RO2zZQu6I7XM+0id9rRXqNK30NyILpRvymyoE254/8
         7ngaGCxkQerCw/badBXjo6F2P5nmY556IGIltrRW3XqFaOjvMzjx5N9stoBbos9pdpct
         XHoydlaSBUGh8Dh2RhT2YH7SjiX1J45Y69R4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692132121; x=1692736921;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OkRDDoNPzSLjlacKlxL+E41IsOW/ULTgctVKXf9RjXA=;
        b=Am0z/KR20CuV7BZgYZeiZS8vzC61xNHHb2o/DsbeTDbHE7yJcDJptt8tYuJaeDBizM
         +/aqqoC5qFiJB8+bG5cuWasfE9oClSOl1CYuhWEeABZqiW1yG4168h2RVTfyFzy/ggTM
         3kGIMNXzfR5mhcMYBgHJGPjrwsf0LXAdudDIQpso7Wvc8ekqF2Y2QNd/g2NYQIcQI/tt
         FQYWYt+5RN762D76fAFFDR61UoGoCwt9jjLeKBzGYEICRBTnpFFaVA+FNLLj9pPFnA98
         xUe+z+ixVtRlGBy/DlpqrWNqAWRD48Snt9571tHuskJL0giA1JlmNEfw33IHQQkV+N8q
         u17A==
X-Gm-Message-State: AOJu0YwOv88LuB/6nFoEJMjiKilFZasadr/Z8nHVFUD284jHkDOLnq6I
        sKg1E8xMQlbi2EiwipecmN8yKi0UKXoSoe2EMop3yG/5
X-Google-Smtp-Source: AGHT+IHp+wSD4eKZ4LgNqUN4x6y1vsTwY8r49GjsZFvhnHWVNoU8jG51Kl0Rc9ZjraJsuvXxvTw5GA==
X-Received: by 2002:a37:ef19:0:b0:76c:cb21:179f with SMTP id j25-20020a37ef19000000b0076ccb21179fmr15692873qkk.29.1692132121255;
        Tue, 15 Aug 2023 13:42:01 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id g3-20020a05620a13c300b0075cd80fde9esm3987727qkl.89.2023.08.15.13.42.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 13:42:00 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-4036bd4fff1so94951cf.0
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:42:00 -0700 (PDT)
X-Received: by 2002:a05:622a:491:b0:403:aa88:cf7e with SMTP id
 p17-20020a05622a049100b00403aa88cf7emr21591qtx.29.1692132120085; Tue, 15 Aug
 2023 13:42:00 -0700 (PDT)
MIME-Version: 1.0
References: <20230804095836.39551-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230804175734.v2.1.I7a950de49ec24b957e90d7fe7abd5f2f5f2e24c3@changeid> <3ed8a34b-5f7d-6547-7e34-35e4d0994bba@linaro.org>
In-Reply-To: <3ed8a34b-5f7d-6547-7e34-35e4d0994bba@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 15 Aug 2023 13:41:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WqFo5PFB7+7ZOQtsTLYojjTn1VkaAQpMkqvWUFPOmBQg@mail.gmail.com>
Message-ID: <CAD=FV=WqFo5PFB7+7ZOQtsTLYojjTn1VkaAQpMkqvWUFPOmBQg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: qcom: add sc7180-lazor board bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, Aug 6, 2023 at 11:32=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 04/08/2023 11:58, Sheng-Liang Pan wrote:
> > Introduce more sc7180-lazor sku and board version configuration,
> > add no-eSIM SKU 10 for Lazor, no-eSIM SKU 15 and 18 for Limozeen,
> > add new board version 10 for audio codec ALC5682i-VS.
> >
> > Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.goo=
gle.com>
> > ---
> >
> > Changes in v2:
> > - add new entry rev9 with Parade bridge chip
> >
> >  .../devicetree/bindings/arm/qcom.yaml         | 55 +++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Document=
ation/devicetree/bindings/arm/qcom.yaml
> > index 450f616774e0..dce7b771a280 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -470,6 +470,11 @@ properties:
> >            - const: google,lazor-rev8
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook Spin 513 Parade bridge chip (rev9=
)
> > +        items:
> > +          - const: google,lazor-rev9
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook Spin 513 (newest rev)
> >          items:
> >            - const: google,lazor
> > @@ -491,6 +496,11 @@ properties:
> >            - const: google,lazor-rev8-sku2
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook Spin 513 Parade bridge chip with =
KB Backlight (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku2
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook Spin 513 with KB Backlight (newes=
t rev)
> >          items:
> >            - const: google,lazor-sku2
> > @@ -512,11 +522,26 @@ properties:
> >            - const: google,lazor-rev8-sku0
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook Spin 513 Parade bridge chip with =
LTE (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku0
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook Spin 513 with LTE (newest rev)
> >          items:
> >            - const: google,lazor-sku0
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook Spin 513 Parade bridge chip with =
LTE no-esim (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku10
> > +          - const: qcom,sc7180
> > +
> > +      - description: Acer Chromebook Spin 513 with LTE no-esim (newest=
 rev)
> > +        items:
> > +          - const: google,lazor-sku10
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook 511 (rev4 - rev8)
> >          items:
> >            - const: google,lazor-rev4-sku4
> > @@ -526,6 +551,11 @@ properties:
> >            - const: google,lazor-rev8-sku4
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook 511 Parade bridge chip (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku4
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook 511 (newest rev)
> >          items:
> >            - const: google,lazor-sku4
> > @@ -545,11 +575,36 @@ properties:
> >            - const: google,lazor-rev8-sku6
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook 511 Parade bridge chip without To=
uchscreen (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku6
> > +          - const: qcom,sc7180
> > +
> >        - description: Acer Chromebook 511 without Touchscreen (newest r=
ev)
> >          items:
> >            - const: google,lazor-sku6
> >            - const: qcom,sc7180
> >
> > +      - description: Acer Chromebook 511 Parade bridge chip no-esim (r=
ev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku15
> > +          - const: qcom,sc7180
> > +
> > +      - description: Acer Chromebook 511 no-esim (newest rev)
> > +        items:
> > +          - const: google,lazor-sku15
> > +          - const: qcom,sc7180
> > +
> > +      - description: Acer Chromebook 511 Parade bridge chip without To=
uchscreen no-esim (rev9)
> > +        items:
> > +          - const: google,lazor-rev9-sku18
> > +          - const: qcom,sc7180
> > +
> > +      - description: Acer Chromebook 511 without Touchscreen no-esim (=
newest rev)
> > +        items:
> > +          - const: google,lazor-sku18
>
> All of these entries (existing and new) should be just one entry with:
>  - enum:
>      - ....
>      - ....
>  - const: qcom,sc7180

I believe we've had this discussion before. At least twice. Here's a
link to the last time you said "Ah, OK, I guess this is fine".

https://lore.kernel.org/r/d3d4d90b-85b5-5ad9-78e6-5a074c21af4f@linaro.org
