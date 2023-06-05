Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1AA5721DC5
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 08:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjFEGD3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 02:03:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbjFEGD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 02:03:27 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 628B2DA
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 23:03:25 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6af81142b6dso4239460a34.2
        for <devicetree@vger.kernel.org>; Sun, 04 Jun 2023 23:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1685945004; x=1688537004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/0Yw8elYtiYzWozkgNSpagrAOBmH8kfH6Po7gRfewsU=;
        b=i/qC4qKsUwZmrc2NzHVzDh8VkEzPd/VXd2RimZKN9QjIW6o6os0oYTSMuJVfUacGJA
         grbddwKihXgQLZdlyKC+5YnGdOylIiihLnlVtHykNFc74wKTO1GipRyRNX7CHKpVTUUY
         32W847l1id4x6Tr4SyDInCqMRP0iYJLKct64JUYngYU7KKVRhti2D8nKL6FP2my2MI0R
         tFMPl/94oqSMC682QUUtOhowDoouMohjyWYPD5rBDTahFxTpgPOCOmPhdtJaWhAKSMUI
         CCwWkGWO8VBykjWVaUNYVy5xbFRaJAT4CYx18826w51ahz1/6GQ1GHdqI86fd+MF9Pq8
         JDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685945004; x=1688537004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/0Yw8elYtiYzWozkgNSpagrAOBmH8kfH6Po7gRfewsU=;
        b=LOFTMX4KCYagc0o3TcYugHwcGwhbbIuXErFugooegy2rAspg+gBfqxEXDFKQxlk8/I
         IC4U8oUHOH5s0izmAj56iwDD4paiAfihj9NkkXdhlecZATC6VkJLSFrnUq332znjXjtE
         ssbNNHL/REdna/mFNmziZEPSPUNqb2b4jAJ83cwk4yo83rif1oUNbZ7qDjDbf0IBK5jd
         mfmUzyN8iBy1eeQR/Mu9IugHzxTnm4m1Sdb34u2icmu6F4nT7jwntN6Tt/cgUAeC0MZn
         e+4tI0dFClSAej+Na6t2g3mH7pXjcbLJ1NhfhdkTAlviipRrcjrJqls8mlkSXmSh4pL8
         3phw==
X-Gm-Message-State: AC+VfDxddW8BL4jIpZrek8Vou1ttzyYGA0GXI5oxPsv2jMKtVefsdMj2
        y+ZAQmea43gclVvTntth7q+h7iw9Iz/ufPR5NC7deg==
X-Google-Smtp-Source: ACHHUZ5NwiNSYQpTUWHSbja4IK0c8lNse+oq4gdAeGBmoacQoR3HGcVWbLZofoaZtDubqLWpihVJfknO+G/vPzNMQUs=
X-Received: by 2002:a05:6359:2e90:b0:129:bf30:3ee with SMTP id
 rp16-20020a0563592e9000b00129bf3003eemr5325673rwb.7.1685945004606; Sun, 04
 Jun 2023 23:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230602140948.2138668-1-yangcong5@huaqin.corp-partner.google.com>
 <20230602140948.2138668-2-yangcong5@huaqin.corp-partner.google.com> <afd610cf-954f-afc2-00da-86da9fe4192d@linaro.org>
In-Reply-To: <afd610cf-954f-afc2-00da-86da9fe4192d@linaro.org>
From:   cong yang <yangcong5@huaqin.corp-partner.google.com>
Date:   Mon, 5 Jun 2023 14:03:13 +0800
Message-ID: <CAHwB_NLHsbxayS+Y9au7WqBM6rXdnoqUdemNFqBCmaLVkiTr9Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: input: touchscreen: Add ilitek 9882T
 touchscreen chip
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, dianders@chromium.org,
        hsinyi@google.com, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,Krzysztof,
   Thanks for Krzysztof.Sorry, I didn't run `make dt_binding_check. I
will check before sending V2 patch.

On Fri, Jun 2, 2023 at 10:19=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 02/06/2023 16:09, Cong Yang wrote:
> > Add an ilitek touch screen chip ili9882t.
> >
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
>
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.
>
> There is no way this would work and if you test you will see error msg.
> Feel free to ping if message is unclear.
>
> > ---
> >  .../bindings/input/elan,ekth6915.yaml         | 36 ++++++++++++++-----
> >  1 file changed, 27 insertions(+), 9 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml=
 b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> > index 05e6f2df604c..73e94cb6c4e0 100644
> > --- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> > +++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
> > @@ -15,11 +15,15 @@ description:
> >
> >  properties:
> >    compatible:
> > -    items:
> > -      - const: elan,ekth6915
> > +    oneOf:
>
> It's not oneOf. Just enum

Done,thanks.

>
> > +      - enum:
> > +        - elan,ekth6915
> > +        - ilitek,ili9882t
> >
> >    reg:
> > -    const: 0x10
> > +    enum:
> > +      - 0x10
> > +      - 0x41
> >
> >    interrupts:
> >      maxItems: 1
> > @@ -29,17 +33,31 @@ properties:
> >
> >    vcc33-supply:
> >      description: The 3.3V supply to the touchscreen.
> > +                 If using ili9882t then this supply will not be needed=
.
>
> Are you sure these are compatible devices then? What does it mean "not
> needed"? Is the pin there or is not?

Yes,ili9882t this touch ic not needed 3.3V supply,this pin does not exist.

>
> >
> >    vccio-supply:
> >      description:
> >        The IO supply to the touchscreen. Need not be specified if this =
is the
> >        same as the 3.3V supply.
> > -
> > -required:
> > -  - compatible
> > -  - reg
> > -  - interrupts
> > -  - vcc33-supply
> > +      If using ili9882t, the IO supply is required.
> > +
> > +  required:
>
> NAK. Really. Test patches before sending.
>
> Best regards,
> Krzysztof
>
