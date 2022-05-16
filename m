Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E54BD5287F9
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:06:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244972AbiEPPGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232483AbiEPPG2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:06:28 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C163B020
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:06:27 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id j6so29226212ejc.13
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X3adrsX+uhZAXoth7knDMjvKgEG3AVzl2RqEOStCFFU=;
        b=WUC5Xg+4w97H+b3njqlusYipF4b7Bqzncvyv3eg4yB93mgKI/DfXQo99MRIvkX7ysm
         UbxSikcZHAC7DZafAgPC0PmJIZzdAlQ4kZlG1mvRtBK4iw/VAKUpEYYK7q1asUPtmc1H
         2sDcNSDhZsnI80IGowjrZiyMN0Dy8GI6NTfK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X3adrsX+uhZAXoth7knDMjvKgEG3AVzl2RqEOStCFFU=;
        b=cIHztbY/ZjUImXzxcPiOeVBwBC4vIfDVQAHKl68zy056SSfjeS6KHUP9ucPZM1zgln
         7okS8nznGqBlj+zGw5nYtgzH6+zcQ3BHZ1Uqx20UBLNDm6JaDT4mQmdoFvG05NEed4nJ
         C+4E5P05q2EixfX/5abO+AJk2V5rCn5ygfMxexxib4YAkS0HKFS2YnZ7ouOFjB0oxSqI
         vfbyiHJ13cKkFQSGyCPN8xS269qAsHZOBxz4NuMA/uFXWQzEblEFSE5hyd1qD27R6CfR
         9WkXL5nJDNVk/NSDs1z2D2aAfAFXK7/gb0zns0hFhtdm7mk4RVu9dfRhRcKNlgj1RxyV
         ffjQ==
X-Gm-Message-State: AOAM531/lMhzgejq1utQm4gSdUkDlXwfYL87lQbFcsPnKzI1oB47/0vG
        Xu1t9l3rXoGi5ZXEMu8cso6r3AbqoCMNeMJE
X-Google-Smtp-Source: ABdhPJxj8X3DjQGbLB44uS2uJmvRnsTgN5FaSBllqttxHyt+Yc/7mCJg0eNAssRjd2Ut0qYUww/7Lg==
X-Received: by 2002:a17:907:7247:b0:6f4:ed49:cd3f with SMTP id ds7-20020a170907724700b006f4ed49cd3fmr16297210ejc.172.1652713585351;
        Mon, 16 May 2022 08:06:25 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id b18-20020a056402279200b0042617ba63b1sm5488068ede.59.2022.05.16.08.06.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 May 2022 08:06:24 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id r188-20020a1c44c5000000b003946c466c17so8453694wma.4
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:06:24 -0700 (PDT)
X-Received: by 2002:a7b:c4c8:0:b0:394:26c5:b79e with SMTP id
 g8-20020a7bc4c8000000b0039426c5b79emr17514279wmk.15.1652713583816; Mon, 16
 May 2022 08:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220513095722.v2.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
 <d5438d2e-f387-170a-cea1-d5936cc8e15a@linaro.org>
In-Reply-To: <d5438d2e-f387-170a-cea1-d5936cc8e15a@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 16 May 2022 08:06:11 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VNGS+H8biOOigt=drUCYCWY1VBKN=ZFD74T-3RSeWBxA@mail.gmail.com>
Message-ID: <CAD=FV=VNGS+H8biOOigt=drUCYCWY1VBKN=ZFD74T-3RSeWBxA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: Document how Chromebooks with
 depthcharge boot
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Alexandru M Stan <amstan@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, May 15, 2022 at 11:57 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 13/05/2022 18:59, Douglas Anderson wrote:
> > This documents how many Chromebooks pick the device tree that will be
> > passed to the OS and can help understand the revisions / skus listed
> > as the top-level "compatible" in many Chromebooks.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> > Changes in v2:
> > - ("Document how Chromebooks with depthcharge boot") new for v2.
> >
> >  .../devicetree/chromebook-boot-flow.rst       | 63 +++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >  create mode 100644 Documentation/devicetree/chromebook-boot-flow.rst
>
> This is not a Devicetree (generic) document, so it is not the best place
> for it. Maybe regular vendor place, e.g . Documentation/arm/google/ ?

I can put it there. ...but taking your two pieces of advice together,
you're saying:

1. Don't add this under the devicetree directory.

2. Don't refer to this by URL but instead by a relative file path.

I can do both of those two things, but I always had it in my mind that
the device tree was supposed to be "Linux agnostic". In other words,
you could refer to Linux as one OS that boots with device tree, but I
thought that the device tree docs were supposed to stand on their own.
With the above two suggestions, it seems like an extra piece tieing
the two together and assuming that both Linux and device tree docs are
living in the same place.

In any case, I'm happy to do what you request but I just want to double-check.

-Doug
