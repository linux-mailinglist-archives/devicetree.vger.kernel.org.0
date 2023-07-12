Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A89B750B1B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 16:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233040AbjGLOfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 10:35:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbjGLOfT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 10:35:19 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA310FB
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 07:35:17 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-c49777d6e7aso8053147276.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 07:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689172517; x=1691764517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tbTllEpx0I78Ic+EXBEuRDRVhQRIepaTuBVKvfQ1Ua0=;
        b=Ea4t93dvufzwmX3xkWz194R62FMWEMLF5hGPXmr+Y8OTIswfM6BhkHA4tXPKbpGZZz
         BpbPiPy+45hZHL5QeCJSPDi5L96WAq+JXo6qe6DnBsrvcDljaT8VnDtuhoysa3YH4MAN
         FCvMUb3pmvSTyhzvx6dUX+rQbdiuknJALnYg4PmGZ4I/s2u8i4sFlr8h8VWyDlb0rr34
         kplTU06AqliDIhK21A/1kQ/6jKyqkrAyMa93dDVzTgSmFFjHQRED64NKu/6fp/G9PGKr
         T/fvmgnCg2juBVFsD5Y/iZGkvVdKQrdvVvEKcOYHtSxGd7Lbu8Ij10I/RWrKtzgzkRSu
         bZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689172517; x=1691764517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tbTllEpx0I78Ic+EXBEuRDRVhQRIepaTuBVKvfQ1Ua0=;
        b=ORrGh42qKwWYX7db9JM482n0PU9BN6eYK4w/Ng7pTL9SmtsksKQLRME0OfI0TV2tV8
         AH7iFk6O/r+ayNz1oStNaeMiCFEvnDNfW4KRKUXGU7m2o3DVAGYaysdocAO2OWldDtj0
         A7q/99lt94tBGEZimuLiefk4S6kKE+l8Y2CZ+P+lsurfocsPNj+gquSjwL277LHuLkUK
         tgqMzVlP6v5Ie7qqDj5l3lXvyF+k9gPesur1c3dkY9jJxThm3GMy26TM1/KaF35OGoPS
         6bpJexhQwGYW2tibMDqL+N1IspEsAMEjqkiZmF8fs7Yf91ij/mcoRQTHs+bueB8mIT+0
         rYhA==
X-Gm-Message-State: ABy/qLb1giSN/JrANnBoIrD21gFsnflMN8/xziXXMRtZyoCqFeQa3lqP
        QFGp1X1wvHkQ9VAQyKmkjlbe4ssNhrNoKfxcTmOsjg==
X-Google-Smtp-Source: APBJJlFOHb2fSETsP1eqkByIGa7pIKNcHsnSCp51EV4sxfvYWl2o5Ta3vmVszePPggalPaZErD7+82N+DHVr7KfUX1A=
X-Received: by 2002:a25:1e55:0:b0:c4f:c0eb:451b with SMTP id
 e82-20020a251e55000000b00c4fc0eb451bmr18583653ybe.25.1689172517157; Wed, 12
 Jul 2023 07:35:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230621185949.2068-1-quic_amelende@quicinc.com>
 <20230621185949.2068-2-quic_amelende@quicinc.com> <20230626135857.GA3118929-robh@kernel.org>
 <2e871e21-a81d-0d7d-993b-9a9d7bd9d962@quicinc.com> <e7298704-5a03-0961-90a3-dab4af60c326@linaro.org>
 <32e9a512-fd74-b2f6-6b8a-fefb9ad5912d@quicinc.com> <431faa87-d152-5f7a-40fd-8b6fe26f0bb9@linaro.org>
 <71e1f36f-8fd8-9d61-d563-577d4fb54f10@quicinc.com> <69c01f0f-4eb0-bb44-a238-5c9ce5beede9@linaro.org>
In-Reply-To: <69c01f0f-4eb0-bb44-a238-5c9ce5beede9@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 12 Jul 2023 17:35:05 +0300
Message-ID: <CAA8EJppCSnEg1GjX8CavxRPiiE19JwVAOTspjWJR-OzdQMcu+g@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: soc: qcom: Add qcom-pbs bindings
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Anjelique Melendez <quic_amelende@quicinc.com>,
        Rob Herring <robh@kernel.org>, pavel@ucw.cz, lee@kernel.org,
        thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, u.kleine-koenig@pengutronix.de,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jul 2023 at 17:22, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 11/07/2023 22:12, Anjelique Melendez wrote:
>
> >>>
> >>> On PMI632, peripherals are partitioned over 2 different SIDs
> >>> (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/pmi632.dtsi?h=v6.5-rc1#n42
> >>> and https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/pmi632.dtsi?h=v6.5-rc1#n149).
> >>> Unfortunately, the pbs peripheral and the lpg peripherals are on different
> >>> PMI632 devices and therefore have different regmaps.
> >>>
> >>> If we get rid of the pbs node we need to get a handle to the proper regmap.
> >>> I see two possible options, we could either introduce a new client property
> >>> which points to a peripheral on the same device as pbs.
> >>>
> >>> i.e.
> >>>     led-controller {
> >>>             compatible = "qcom,pmi632-lpg";
> >>>                     #address-cells = <1>;
> >>>                     #size-cells = <0>;
> >>>                     #pwm-cells = <2>;
> >>>                     nvmem-names = "lpg_chan_sdam";
> >>>                     nvmem = <&pmi632_sdam7>;
> >>>                     qcom,pbs-phandle = <&pmi632_gpios>;
> >>>                     .....
> >>>     };
> >>> Then when client is probing could do something like the following to get the regmap
> >>>
> >>>     dn = of_parse_phandle(node, "qcom,pbs-phandle", 0);
> >>>     pdev = of_find_device_by_node(dn);
> >>>     pbs_regmap = dev_get_regmap(&pdev->dev->parent, NULL);
> >>>
> >>>
> >>>
> >>> Or we could use the nvmem phandle and just have something like this in client's probe
> >>>
> >>>     dn = of_parse_phandle(node, "nvmem", 0);
> >>>     pdev = of_find_device_by_node(dn);
> >>>     pbs_regmap = dev_get_regmap(&pdev->dev->parent, NULL);
> >>>
> >>>
> >>>
> >>> Let me know what your thoughts are on this.
> >>
> >> Rob asked you - "Is there more than 1 instance in a PMIC?" - and you did
> >> not answer positively, just mentioned something about drivers in
> >> downstream, which do not matter. So is the answer for that question:
> >> yes, you have two instances of the same PMIC differing by presence of
> >> PBS and other features"?
> >>
> > Sorry that was a misunderstanding on my part.
> > Yes, answer to Rob's question should have been "We have two instances of PMI632,
> > where one instance holds the pbs peripheral and the other holds the lpg
> > peripherals. The child node for pbs is needed so lpg client can access
> > the PMI632 regmap which contains the pbs peripheral."
>
> I guess I miss here something. What is "LPG client"? I don't understand
> why this LPG client needs existence of PBS node, to be able to get the
> regmap.
>
> PBS is a child of PMIC, so it can get regmap from the parent. What's
> more, which DT property passes the regmap from PMIC to LPG client?

There are some PMICs which claim two SPMI SIDs. For such PMICs, each
SID is a separate device, so it is not directly possible to get the
regmap of the other SID.

-- 
With best wishes
Dmitry
