Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 331D86878D6
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 10:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231688AbjBBJ3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 04:29:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231339AbjBBJ3g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 04:29:36 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FBF3761F8
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 01:29:19 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id br9so2080277lfb.4
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 01:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hF1FP9uSu/iok1i0gg8stAHISdJKJxpXWFpnnPM01bY=;
        b=TCYiT2ou6sYOivmaPUJ1gwQvaOAlwLO6UihiPY8n6SiszSxUadNii1IqN5eHEVSIMn
         CACMWWQwcavwuA7eMAclq3FouMwHIjqba6ZlbATn0C8XUEIz1O18hnoRxUHyMYIXGtmw
         MXZy2H3VhdMTjzWNx/VMMGhqx0dTT4i3d2/GR0knAd2LD67dTTdncA0RoaMuG3FFBgJ4
         tQKjVHu6xeOwjwET0BDoygvMuGPAGxExN4A+s7j2lR89zV+lhQ/r5NQJOqVO5s3yOCSW
         U2or+M1xhhY6WL95dvIrzdwj27KTaurc3Lts7Xsrrh5eNAHUB1Q1eMPrCvEkXNaauBmb
         oOOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hF1FP9uSu/iok1i0gg8stAHISdJKJxpXWFpnnPM01bY=;
        b=40TbfAPIujRCVa3v+2wsDHUOVLECSZzuU+cIRVlbyHe60X6NsAngZV2/r8L/EI0cXk
         1lx3QoSDaPLKcg/w8cBzSaZbVUMDukHt/mKLvbrrswjTq/QezIGZ2eGrqOHHSt3vFwKH
         VCxon/GTyVYwoJ2Y5Ng+Ty4RAg/ObdzQ10LKOXICYcIdER4//LS6t4SgXvvjyuZXCu/A
         xk+WK6/iPWlr/ghXyB/yEDe8Q8Xu9LIVVO3PaBzY+8ZQtaXWEjJUtdkg36Glly77T1US
         rklryPEWxlR8ppUvwTHlhLkO2ur/Q3oRPLmOFqN2bJG0qFH1faQ6S1u+MdMvMGUzPASH
         ixDw==
X-Gm-Message-State: AO0yUKW3uz9/IPSgJj6R0YY99YLTmsiELjjJ/0cqmOs2wTa3OD+CR9Ws
        cuiXghcCo/pZMhTOT8U8NEXXzRVWiqmuGnXQ8epdsg==
X-Google-Smtp-Source: AK7set/U6c2t7aCZeIxVjttv08cAYzl5rIui1u4wZg2P32IfHGX10jGlEQUkCyHyHL5hE/viRgutm4dUbeSvVaUzK+Q=
X-Received: by 2002:a05:6512:12c9:b0:4d4:fcdb:6376 with SMTP id
 p9-20020a05651212c900b004d4fcdb6376mr1412014lfg.218.1675330157397; Thu, 02
 Feb 2023 01:29:17 -0800 (PST)
MIME-Version: 1.0
References: <20230201080227.473547-1-jun.nie@linaro.org> <9ab7383b-f3ed-3e48-d275-3c8933be5f2f@kernel.org>
In-Reply-To: <9ab7383b-f3ed-3e48-d275-3c8933be5f2f@kernel.org>
From:   Jun Nie <jun.nie@linaro.org>
Date:   Thu, 2 Feb 2023 17:29:13 +0800
Message-ID: <CABymUCNKvm9+_ascdcWAgA1xGYKPhyO5C97-+rTTK739v+UEew@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: Add Qualcomm CCI dt-bindings
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, bryan.odonoghue@linaro.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
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

> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,msm8939-cci
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  operating-points-v2: true
> > +  opp-table:
> > +    type: object
> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +  - operating-points-v2
> > +  - nvmem-cells
>
> ?? You cannot require properties which are not present.
>
> > +  - power-domains
>
> Same here.
>

So the properties should be added later, after cpr and fuse nodes are
available in mainline, right?

- Jun
