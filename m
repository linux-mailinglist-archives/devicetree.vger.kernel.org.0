Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF60A6C596D
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 23:29:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjCVW3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 18:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbjCVW3I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 18:29:08 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 062748A5F
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 15:29:08 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id p204so11709419ybc.12
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 15:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679524147;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bBHWvMJsWqZ9ugEE7zal8FR6mI+XljGhpniMAzWRfuQ=;
        b=rcUNnocBQ6+8Z1CHCYO9tahnnruR87B872YINxlKjH2OFD8ODY3pwdy0VXgr9kafT7
         601HY1Jf9dQ6RlpP2Alxe93svY7Hw7PmMczudLjnoREA9oGYrMjCqkeiBAhWtA2Cvkf2
         OTt3lLh1nuWnbuQxQjDshzmIEhPN19VAgapeKAl6ww3CNtGKkr3xEEUmhaWnh1y3xIGh
         B43Ddv4tDXZL4kD18PGxfNFmosSyQxKfFcZtdnqp/QwWstEASF6rEykRfoEFEjU/Kd4W
         OsswRL+B4JK6wgnDR1FW4WCAGFN9dBjpY1GYIigjX5522qyfSweOKYNqC+11U5v5w1J/
         4KDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679524147;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bBHWvMJsWqZ9ugEE7zal8FR6mI+XljGhpniMAzWRfuQ=;
        b=mQyeJaUJJFfAv5KpOXwic/fDc3cv5iDltlz/ZNCbw3EcpxFzy7MIGd9T15DyTMZXN9
         YI/lAF69Zd+oBvdaUaXvAbT7b1tLX4wd4FEv9xSFomcW2I3Oi1OrkQju3x+gb0NQW8ZT
         le8FTiSnwa6QvmX/lRzYSS7Y83Dq+NCUOgG33co9G0tmd7eKB+nS/bVQuq5HtTfPQu+/
         L/eftHeppMvWHrC3CCEMFW/+GlQ9J3eIE/9TlfOg/4u62zkpsSGCh975y4n/HApCeYe2
         yW5pfR1UHJiA9N4qec1qHmT788j7x7vLHzzlyF0R2xp+71fyyC4qWFoqKjsqy0chaJj7
         pMCA==
X-Gm-Message-State: AAQBX9e7PRQ5TKtE/csWS/dEfV+6FIY3B6rSAbefup/cnuQZkFl0FLE+
        TIwQoV9V0+ZLPDnIckF7QCYf2vCamdDKgYUVhsnOfg==
X-Google-Smtp-Source: AKy350aRhjzfdPTMr6v/xzQ2fyevdeCE9ghmdEGpJRaR1kvd5aSjdq5MOMySA5C+ZO/UQm3E7zglfl/W2BqirJikB4g=
X-Received: by 2002:a25:7456:0:b0:b6b:79a2:8cff with SMTP id
 p83-20020a257456000000b00b6b79a28cffmr719682ybc.9.1679524147243; Wed, 22 Mar
 2023 15:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
 <c35fd641-12ff-beba-341c-4d0305bcaa40@linaro.org> <290b9b19-a320-38a1-4426-51f5725dd54f@linaro.org>
 <59a6ef88-758f-4ec4-f663-47e4caa552c5@linaro.org>
In-Reply-To: <59a6ef88-758f-4ec4-f663-47e4caa552c5@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 23 Mar 2023 00:28:55 +0200
Message-ID: <CAA8EJprqXVrXdBD6eBHoDGhvST2hViZUbMgdaeKEBohpv5_V3w@mail.gmail.com>
Subject: Re: [PATCH v2 00/13] mailbox/arm64/ qcom: rework compatibles for fallback
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Mar 2023 at 19:37, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 16/03/2023 07:52, Krzysztof Kozlowski wrote:
> > On 14/03/2023 13:16, Dmitry Baryshkov wrote:
> >> On 14/03/2023 10:09, Krzysztof Kozlowski wrote:
> >>> Hi,
> >>>
> >>> Changes since v1
> >>> ================
> >>> 1. Rebase
> >>> 2. Make msm8994 fallback for several variants, not msm8953, because the latter
> >>>     actually might take some clocks.
> >>
> >> Although the approach looks correct, I think that in some cases it tries
> >> to mark devices compatible judging from the current driver, not from the
> >> hardware itself.
> >
> > Which is what compatibility is about...

Well, I was trying to say that once we update the driver, the devices
will not be compatible. But probably our definitions of being
compatible differ.

> >
> >>
> >> For the reference, on msm8994 the apcs is a clock controller for the l2
> >> clocks (which we do not support yet). If I'm not mistaken, on msm8976
> >> the apcs region contains a mux for the cluster1 clocks. On sdm630/660
> >> the apcs region also seems to be involved in CPU clocks scaling.
> >
> > The question is this means they are incompatible?
>
> Since there are no more comments I assume they are actually compatible
> in the terms of SW interface.

-- 
With best wishes
Dmitry
