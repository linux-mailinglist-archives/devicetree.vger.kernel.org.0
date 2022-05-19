Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09EA552D417
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 15:32:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238876AbiESNcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 09:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238846AbiESNbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 09:31:41 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678265FF1D
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:31:31 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-2ff155c239bso57129207b3.2
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3XnxyHbIe0ZBmAsG2JuG+QltijPeIqWVypBFknCicxo=;
        b=kYS0JcMgRcmEu9/JY4wcwmH4dMjbm8Sf+jBzLXPbQ2DcKYa61Hid4c/wSQNc3/gHuz
         ZTcY91PpEZjRTvp4ZqgVzZFWsgZJSX3+HsEtmhs8h1lp1/Vx2e2uX6nx5k5DUts9zJ0/
         O00Y0LTUX/XUt8KCH5mgUqvnIevZHRj+qYEzW0UlpWqgrOSJRDPqno42UHCD6T5dgrzl
         WeFvMzyhjzW5WTTeTtbDfMC/G18YXDdRqdvzCOO7A5A0Vrh3gf5Q7Oc4Jrd22FDVNuBp
         Urt0pvnWFqYh3+CkqcrhmtgP3zMDwbNO2z7dilq1bLcoZDSaM9DlI7K9iaJLEy0en/pU
         J/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3XnxyHbIe0ZBmAsG2JuG+QltijPeIqWVypBFknCicxo=;
        b=i1sKCwF57f7pwfr3OgJRExl25nnoUz65LMoScxKdYNDsvzF3FQG8gabyvyweXNUViF
         49zz259FVHmpQQnS8HTZYVbStQehbJdzTRcrgthFmTI/g2Jw0c8Ve1g1W1fN7Aj0rrYG
         /oOd4jFSgcveztcgDhdGuF8NqLF+D79tstDb7FbVdnDHJ9kdswYKH7TIXJwfGPBqh9bf
         Z3MZWMB1zo6PeFD2gQNuwFnyXnCJpqIdDyryAGYgN6DYg1lzkJ1BcA/V0ktxRchHI6rr
         xRlxHI19lYdimfchjZCNgeYpnxfkiQsDThUJIy65Qny96dJ498u2SYVy16Rt/S6gYQrr
         zdiA==
X-Gm-Message-State: AOAM532o28UNy0XtrQhLov+J/LVWh0FHQOAun+HPCTRlTHe7t615FB4u
        AtA0IBkNoL2ZspHxfhZcIt8cfwl43/ryUHavcheLQg==
X-Google-Smtp-Source: ABdhPJxC5VgcYmjV4j7I0ElLpLTURx5L6cjrFDYuPYN61Od2Uz1HdmgBoQB10B6ZS0hGShCFD2W6W/brwNh3bVK/s7c=
X-Received: by 2002:a81:1d48:0:b0:2f1:8ebf:25f3 with SMTP id
 d69-20020a811d48000000b002f18ebf25f3mr4695844ywd.118.1652967090590; Thu, 19
 May 2022 06:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220519011210.170022-1-robh@kernel.org>
In-Reply-To: <20220519011210.170022-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 19 May 2022 15:31:19 +0200
Message-ID: <CACRpkdZtUj=_X-uC46CO97GGqKBJR28h1Hoj60iSmMWUYc1LRA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom: Drop 'maxItems' on 'wakeup-parent'
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 19, 2022 at 3:12 AM Rob Herring <robh@kernel.org> wrote:

> 'wakeup-parent' is a single phandle and not an array, so 'maxItems' is
> wrong. Drop it.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij
