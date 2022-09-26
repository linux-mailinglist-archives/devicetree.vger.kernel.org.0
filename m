Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 236BD5EA6CE
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 15:04:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235034AbiIZNEg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 09:04:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235103AbiIZNEJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 09:04:09 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AB101B869A
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:36:07 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id z18-20020a9d65d2000000b0065c3705f7beso5313oth.9
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=WvDse09bmVqe1v4bAMTxO1zF42M4yNVVMYmxZQhWitQ=;
        b=xdf57XKzjdyAQ9JfIDTR4dZFijfC7ZSxuluOmfABDC/fyCasGGVkK0noDxxxMT1bYs
         eNd6miXruXqog21Vm8KOZGauYAKx1TCMmnvIBVFNx+tLH9svmLyr6KOc20Sy0H2vAy02
         Mx0zddjMpJBKfG7Z/0yWkrMMgb0fngqUytR6U8Wa5SXKt268V8Ntd28P/BpIRClN+lD7
         ya2jDOizOmDkWhU9Q38TO+O1P/3pyY4MKUdAEgNNbbZAz0ypEykROEhdjSGa11AxUhpZ
         6i/0mWtyMzvrS9QcZs0bSYJ1DQnhNyZppq0yfCXExyPnUxedti+OfULym6lLY2NHipky
         60KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=WvDse09bmVqe1v4bAMTxO1zF42M4yNVVMYmxZQhWitQ=;
        b=khUacb0UPeIr10E5i/ulxgPDLS0nY5ojWDymXAQlfLfhFRp9W+31q+UYaBW7YtvPnI
         WVq/oB5Y17uCiIAioZfX5tjsr9/dNxh7A0CrFxH3lzkNdYpwwaCsEnXv/sKbpC9GiI5D
         N6NVF/qyeKtjBzMniqTyZvo8qy3P5vlcIeQ/BebDGAvJ4zhSxp5vfjXNfls6E255tAVj
         UP6ZjmppLbhseiTMtexUCulw+kNYWbHqjR1PhzFos3iB7uwE8In25OA4v/siGJ1k8KY/
         nHAHTaFOnGojzVD+bCl3OT1zKGKmth7zaAmOZK0ZUl7vWLXnuUskjuWvrbJhGBSn03rx
         lqKg==
X-Gm-Message-State: ACrzQf2RMPmBsE1Ql2nzozJtxL70+6EBHjdU3Gr6uFLM+MtHl/eL3NtJ
        4AubJCHND4JHJFKGVywmTdbNbtW7PF3tTQVNstIDT8G2wfk=
X-Google-Smtp-Source: AMsMyM5Tz7DUFDW33OpYyhT8+unBKHG5TNYkQGqQQnVd2QORmiiOiYZshfL+0/MqqJBQPrposOqCWQOY4K7zjY7ltNg=
X-Received: by 2002:a0d:d68a:0:b0:350:a7f0:7b69 with SMTP id
 y132-20020a0dd68a000000b00350a7f07b69mr8231573ywd.132.1664190989438; Mon, 26
 Sep 2022 04:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220720073326.19591-1-krzysztof.kozlowski@linaro.org> <7fdcff6a-9db9-a9d0-4013-7d3ff5fd5d8c@linaro.org>
In-Reply-To: <7fdcff6a-9db9-a9d0-4013-7d3ff5fd5d8c@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 26 Sep 2022 14:16:18 +0300
Message-ID: <CAA8EJprom=CfxPQke5JjZi0CSSvvB=cw1RxOO8StLThpASG3ew@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: qcom: document preferred compatible naming
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Alex Elder <elder@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 26 Sept 2022 at 12:30, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/07/2022 09:33, Krzysztof Kozlowski wrote:
> > Compatibles can come in two formats.  Either "vendor,ip-soc" or
> > "vendor,soc-ip".  Qualcomm bindings were mixing both of usages, so add a
> > DT schema file documenting preferred policy and enforcing it for all new
> > compatibles, except few existing patterns.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >
>
> Guys,
>
> This is waiting for two months. If you do not like it, please respond
> with some comments.

I'd say, this is good, it documents what was agreed before.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
