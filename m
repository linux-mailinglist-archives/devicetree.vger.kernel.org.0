Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98BFC78DEDE
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 22:13:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234024AbjH3UJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 16:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238581AbjH3UJA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 16:09:00 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5CFC3A75A
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 12:57:55 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id e9e14a558f8ab-34df2a961a0so468355ab.2
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 12:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693425399; x=1694030199; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1KOegy06ogcAjmdzAViYXl4NQcN+91FD3LEAsWAkUdY=;
        b=RKA0IsaGvoPko2kIu3fm6Pq+4n6hqnnFS5LgJ26A2jlTr3fLJEVTFb3y01S+tr3+2F
         9BA59rtZZqEzhpHAwYNNl0zpWkQW/h3CPsHcTLRe57SmTFFXuBjlpHpjcq9JKQVF2SOA
         Xo/SzX3PCgbZg03kihnZFx6w3o6KdI+O3nqPpVIrAcNHE3MXrirB0zutoyG/VYESuUPy
         xAeGpfJtRNO40q1wQLl8+Yio+RlecYlLYllFdHU35lcIEKW2fDxiE9fW0Dq17REexgm+
         XcQqljoHby7qjCgmqJ676D2/iFCpDPwsiPb8cETY9ZMAI6jQ0Po5fHv8g8Ms1WZqxWqk
         1WmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693425399; x=1694030199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1KOegy06ogcAjmdzAViYXl4NQcN+91FD3LEAsWAkUdY=;
        b=juy+DkRqGq4+Yi2Rg6oYV8NEW6c9PFVuxfiuT4E9SfF3ReFOjO1vkq+MSU8DLAq5Rw
         /VjRrTX4ygq2PHU9yFf7mLJ707Wd2kWav3GA7eWZZ79v+8zzWuouY5XdGAGmDBEP0obq
         MNd/ZMIov9k3GqLWvGtn0g7Y6p81atCAjN4fNavl9aOgoEVjKU5pBieHdcE17XcuOCqa
         rihBaChWndNAqhwQdwCiPjtpfLJzMFWGuKOt028cViSg6j9PgXxYR4aMYIqmKRGp+HXC
         SUzP495cLlkToq/0eFS8fq+jU5Z9s8FL9JSyBsS/rH1/9jbayrhvK01MP4UJxWNnLu+8
         B98g==
X-Gm-Message-State: AOJu0YzhORNAgjxjwtGFyc5/4Crr266u4d+QIZH9Pw/XF4fpkHhLLVpA
        gbbWwMHR8Zj5pWH0CS7OKJH9m2OD/VpzUona75zSJ5M4nHg+fN1D
X-Google-Smtp-Source: AGHT+IG7TvoHuWNPaDhyhT+X0ymvRmY9e9DoTJccBmV6ELNz8an6E/b58h/EKFxkyXSfq0zQ3gZSQX9I0Ytk/qlKz3w=
X-Received: by 2002:a5b:41:0:b0:d7a:8e37:6d4d with SMTP id e1-20020a5b0041000000b00d7a8e376d4dmr3133168ybp.43.1693424561021;
 Wed, 30 Aug 2023 12:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230829095423.760641-1-quic_gokulsri@quicinc.com>
 <20230829095423.760641-4-quic_gokulsri@quicinc.com> <f457ee94-81d0-bd28-1432-ba2828dabb79@linaro.org>
 <efe09cb6-7b67-9307-28e7-99e238a3672b@gmail.com> <0941e2f4-6b58-a4e7-3dda-c1723f5503ac@linaro.org>
 <CAOX2RU4j57H51ceYdKk9K-2ZNO7N4MDA6BOKrP2N3DNbphQAow@mail.gmail.com> <f7a350a9-5580-c3b9-a917-69a9b16dbf41@quicinc.com>
In-Reply-To: <f7a350a9-5580-c3b9-a917-69a9b16dbf41@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 30 Aug 2023 22:42:29 +0300
Message-ID: <CAA8EJpoE=oF86piKCnt-7-Nw8xa9nYg-TqSOaP1V-vb=Oxwwng@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: ipq5018: enable the CPUFreq support
To:     Gokul Sriram P <quic_gokulsri@quicinc.com>
Cc:     Robert Marko <robimarko@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_varada@quicinc.com, quic_srichara@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 30 Aug 2023 at 21:32, Gokul Sriram P <quic_gokulsri@quicinc.com> wrote:
>
>
> >>>>>    #include <dt-bindings/interrupt-controller/arm-gic.h>
> >>>>>    #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
> >>>>>    #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
> >>>>> +#include <dt-bindings/clock/qcom,apss-ipq.h>
> >>>> c is before r.
>   Sure, will update.
>
> [...]
> >>>>
> >>>>> +   cpu_opp_table: opp-table-cpu {
> >>>>> +           compatible = "operating-points-v2";
> >>>>> +           opp-shared;
> >>>>> +
> >>>>> +           opp-1008000000 {
> >>>>> +                   opp-hz = /bits/ 64 <1008000000>;
> >>>>> +                   opp-microvolt = <1100000>;
> >>>>> +                   clock-latency-ns = <200000>;
> >>>> And the rest of OPPs?
> >>> Hi Krzysztof,
> >>> IPQ5018 only supports running at 1.1GHz, but its running at 800MHz
> >>> by default from the bootloader so there is only one OPP.
> >> Isn't this contradictory? If it is running at 800 initially, then it
> >> supports running at 800...
> > I can only guess that it's not validated at 800MHz.
> As per the h/w design team, there is negligible power or thermal benefit
> by lowering to 800MHz clock.
> Hence, 800MHz opp wasn't included here.

Just my 2c. If 800 MHz is supported, it should be included. Even if
just to prevent the kernel from throwing a warning about the CPU
running at the unsupported frequency. Then one can use scheduler
tunings to prevent the CPU from going to 800 MHz state.


-- 
With best wishes
Dmitry
