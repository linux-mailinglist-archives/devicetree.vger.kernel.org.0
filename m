Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0074C50858F
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 12:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377515AbiDTKPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 06:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242267AbiDTKP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 06:15:29 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 577EB3EF24
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:12:44 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id w127so1458772oig.10
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 03:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6wZ+4pKrmHJwpUUu4l5jtPhnvXnFHouHTTmh77H8NpQ=;
        b=Gpt2jcMhUfRLgM4GbbBFh3KyEhv7n/JxzJkYWtTx/JDPWtSWg8aRKbZcXcYFjp2paX
         YiAzYdjmAHm0iB/QsKaKu3+PWztNGYNC9pjGbfC+NwOkWamV+ZWpmLeDM9DvOZAqUcZl
         ftqL/LArBLVe7mWnFsxu/wGR8AOGKIpIwy89q2tG5ePjbMZ/mBahAMoqiNdL75KlAiHo
         R7NYqBpwJqmFhW7SlnSYpD3bbPHp5vsrUYxMsIap1qjxBItLjYb1dU5sjw3TSeUBwpIc
         jEfm61ORtlTPQh1XLejrrcNSG6YXSUA+MRCsPiMlQGhYL+1Mwu7+OyoMo0pCpTyZu3lF
         EjLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6wZ+4pKrmHJwpUUu4l5jtPhnvXnFHouHTTmh77H8NpQ=;
        b=ddQ17tMu4MYwoeN5VpfYP5dhVN0nPS4qO3ocyt97JIytCoPcxUgW1T8VMiygrVKtna
         1Tflm33EevLA3CiRuPEnyL8NwqA3HeTaXof/P/7m3qXj8Ufg1sdd2siAIfbylJSQFeVX
         3t4ZGPZ/mL07ZaaatIux07xf3TF8NCkQQXqD5fb0e/bQhV6FcEPZapq2TjuGxzwwSEU6
         oP/udmfuqgCWCSqmgh6zONMhVrFGUmhM0mOxoJNwgce8JVsVqsKWWRKEGMpz+9CzEqWJ
         uO4seZUPkXMI3eg7jYjZOud7afgipyMc3QIeh8VtWDAxRdnGjanmCZwE11P2med0HJxy
         vE4g==
X-Gm-Message-State: AOAM5324kAY/02sMfcNcRUFyovQa4RQIGjILwtz7eexJMTpubkEweKgh
        umsbeJeihpfnI4qn3688RfJfuyE2W35ug7GtZQdGvQ==
X-Google-Smtp-Source: ABdhPJzVYB2U5wZWBRjgGJzh2IUmc86UhzcrURR1L78nzvvI8crMcsB3StaRJYs0yIwJyj3npiphWaJml1F+nRk7Sn4=
X-Received: by 2002:a05:6808:e8c:b0:322:4b82:d33d with SMTP id
 k12-20020a0568080e8c00b003224b82d33dmr1277297oil.21.1650449563672; Wed, 20
 Apr 2022 03:12:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-3-bryan.odonoghue@linaro.org> <Yl8ADY3D+GvV7MZ2@gerhold.net>
In-Reply-To: <Yl8ADY3D+GvV7MZ2@gerhold.net>
From:   Jun Nie <jun.nie@linaro.org>
Date:   Wed, 20 Apr 2022 18:12:32 +0800
Message-ID: <CABymUCPRh0eP4tHu8RGXgdj=g_Jqhxt_0Fihm29FhLg+yi_3DA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: Add msm8939 SoC
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org, benl@squareup.com, jwillcox@squareup.com,
        jgates@squareup.com, mchen@squareup.com, zac@squareup.com,
        Leo Yan <leo.yan@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>
> > + [...]
> > +     soc: soc {
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             ranges = <0 0 0 0xffffffff>;
> > +             compatible = "simple-bus";
> > +
> > +             qfprom_cpr: qfprom_cpr@58000 {
> > +                     compatible = "qcom,qfprom";
> > +                     reg = <0x00058000 0x1000>;
>
> It's quite confusing that the qfprom is once defined on 0x58000 ("raw
> region") and then again later on 0x5c000 ("corrected region"). The
> APQ8016E TRM is quite clear that the "corrected" one should be used for
> reading, and the raw region is just for programming and verification.
>
> I think when I tried setting up CPR on MSM8916 I simply added the nodes
> to the existing qfprom@5c000 and it worked just fine (all the values
> were correct).
>

Hi Stephan,

Thanks for the reminder! I just followed device tree from QCOM's Linux
3.10 as I have no msm8939 doc.
Will have a try on the corrected area when I have a device.

Regards,
Jun
