Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9523644CB4
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 20:57:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbiLFT5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 14:57:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbiLFT47 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 14:56:59 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8852C3AC17
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 11:56:58 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id l8so18446866ljh.13
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 11:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z12XSHbkIyhRwR1xB0ozjoUOqhmL/r0GvyBlAyN5Dy8=;
        b=iRhh+08HE7iUXmOCaD5Y6IrvZxV2GXR6tYKYDo9nas7lOnWs/QTc054PThx/adMJa3
         gLnuMjscG5DTks1wt+OAdoLuzg7eDhnqY7WOzZJK8gEBeTTt1DF+ktO8E7kS1UDhstkA
         /VY+jJl7bZ1/AcGbtfh4wW3LyUMKRgeU1FEbAvmFQwStJ0Bba0tamY3+W2qaLY+8cXwN
         TWEfjJb6Fz6njxlSrDBfYTpfpOcHZdH6xSrW7IWmZbLgkCmq0sBvdYYSRhsf8UcXle/E
         16rr4sP0KbL4viAAsxu7WbNz9aTbDZDCAiQR+dxmW/CwMpaK7MbZY0q8wX3EPoskt3ww
         9ppw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z12XSHbkIyhRwR1xB0ozjoUOqhmL/r0GvyBlAyN5Dy8=;
        b=R8ipxdP7TbOyPNXeYnz4BYVIi3eaV27fHVfU9lnBx9u8d+W/Ttj5Tv8HpCwbpDwFXN
         hMypLQsYCTKKcslupiHYdTsv0Pry6PkKB2BN3MzWkAvM3Cx/yssNRWczmKwhXqi8iKr4
         +ZdiOY38BuWiiNAXkzaxmXqXNe8/5RL2BA3dEA+Ntm9dS+cfDV4CH0yXOrGi4uJI51yx
         QPVepSDHrfNQMhFR55GJjSlkExYhJuOd+uH7i4CqZ7EZybdy86yEg3yMYgJxlw7ua4/L
         0tqpujzIspIG3rbx4O/5/PiKiCYnzq/We4743Vth6ROMH5+NmgHdzz+iuvY/d6reZRVj
         poNw==
X-Gm-Message-State: ANoB5plr2sxdQXGF8Y48cH2VIQjhFIDcONYHUobiNIewv03LPbm5nG+Y
        WMvhMo+h8JpBoJw8/pXeg93K1Ub66XwFNAeiGXA+BA==
X-Google-Smtp-Source: AA0mqf6sDwGpop0xvYcmpkisV5S1MJWTd4uhn6gTUO7awUAIcrdeZdrazR4Zpz7tNnfz1Vz4RuTsmsQ2G12umueX4Qw=
X-Received: by 2002:a2e:2201:0:b0:279:fadf:11f6 with SMTP id
 i1-20020a2e2201000000b00279fadf11f6mr3407265lji.96.1670356616874; Tue, 06 Dec
 2022 11:56:56 -0800 (PST)
MIME-Version: 1.0
References: <20221127112204.1486337-1-bhupesh.sharma@linaro.org>
 <167035076344.3155086.2883117402843264050.b4-ty@kernel.org> <c338d813-dbcd-776b-3c46-d3779bfea522@linaro.org>
In-Reply-To: <c338d813-dbcd-776b-3c46-d3779bfea522@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 7 Dec 2022 01:26:45 +0530
Message-ID: <CAH=2NtzTzNVOTw+ibcNqzCT-eRQF8Ntm2zpNrvCcdJQnssRb=g@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add SM4250 RPM power domain support
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        rnayak@codeaurora.org, bhupesh.linux@gmail.com, agross@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 7 Dec 2022 at 01:05, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 06/12/2022 19:18, Bjorn Andersson wrote:
> > On Sun, 27 Nov 2022 16:52:02 +0530, Bhupesh Sharma wrote:
> >> Add RPM power domain support for SM4250.
> >>
> >> Cc: Bjorn Andersson <andersson@kernel.org>
> >> Cc: Rajendra Nayak <rnayak@codeaurora.org>
> >> Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
> >> Cc: Rob Herring <robh+dt@kernel.org>
> >> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> >>
> >> [...]
> >
> > Applied, thanks!
> >
> > [1/2] dt-bindings: power: rpmpd: Add SM4250 support
> >        commit: 45ac44ed10e58cf9b510e6552317ed7d2602346f
> > [2/2] soc: qcom: rpmpd: Add SM4250 support
> >        commit: 5b617b1b10c1c6a4365d8f956032e95c53b8e388
> >
> > Best regards,
> This may deserve a revert.. it's a 1:1 copy of 6115, which, well..
> is the same SoC, lower binned. And they share a common dts.

I agree with Konrad here. Sorry, I was waiting for official
confirmation from Qualcomm, but these are indeed similar SoCs which
should share the common dts.

Thanks,
Bhupesh
