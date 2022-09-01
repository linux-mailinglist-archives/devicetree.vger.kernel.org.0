Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB2275A9B2D
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 17:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233216AbiIAPGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 11:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232448AbiIAPGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 11:06:36 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B96AE74343
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 08:06:34 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id kk26so35286714ejc.11
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 08:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=IlxL6IIaFuuRNDQjytli2ml/vYALP5M5BTyWKS8IYmo=;
        b=fluYmR7isgbi0UhdGPH/rCcV8CVSTZzQ30EzUf2S4tWpVa3KRnRW8EGTlC2qUoG5FQ
         agPIsAeoq0IlNJWDEreDvHhRiyr1/OZyStPUBDfXY6sp4T6SMQigQU4J5t1KNJOHTNip
         boANLPHMu02BcLK1PKFeQa0VvnUhAVO6DyaOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=IlxL6IIaFuuRNDQjytli2ml/vYALP5M5BTyWKS8IYmo=;
        b=yNNZsQpQDzZfJaaiAwjSZ1Av8ttJkWVHiRo/27hvgWgQPBAdge+Nc/SPEoPpneCB31
         tHACBGKUOGZX63vywJDOUbktFWM7IUiRgvqVdVAcxs8Hdm1XjIWuDS7z7NAUlciRdE3k
         gdD40kZRwZjnzNMBmZ+kgBq3ihTaQphbmWUVww9NjRtu7mf4olOQavXJ2HsUnajinA/f
         hWxmr2MOh/CoRiOmumeTprjn2hLQzP+Z88io8bbRH3YnZIMaar07Wkhy6zGunLJ5U1BH
         P/diiBb09wrOcoaqud1LYHs6Z8ypmDthUGKgeAdCnbPhOBM26VUAJonf//Rn8WD3d2F9
         NuHA==
X-Gm-Message-State: ACgBeo2R4KQGo0o0+lFEOan0zGfQ2mHWO5Kl3YLA4evAAS8dTAgbEn68
        88uG+8B1Jllmc68jlYkGuhvTA2eReQS9V4je
X-Google-Smtp-Source: AA6agR4NIPUSkUmzpaVQEfl/YRVzbwhH5bSKSjUc2ablwdvZ/UihVaQLLqxHPMAWtlTUCCs61wALkw==
X-Received: by 2002:a17:907:2c48:b0:741:8ae4:f79c with SMTP id hf8-20020a1709072c4800b007418ae4f79cmr13923949ejc.102.1662044792998;
        Thu, 01 Sep 2022 08:06:32 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id b2-20020a1709063ca200b0074a8293424esm506350ejh.53.2022.09.01.08.06.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 08:06:31 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id k9so22802218wri.0
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 08:06:30 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr15009507wrr.583.1662044789962; Thu, 01
 Sep 2022 08:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220901091253.93333-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220901170958.1.I7dd7a79c4cc5fe91c3feb004473feb3b34b7b2d8@changeid> <cae05f4d-57af-7923-58e5-c4bf06a8a3c8@linaro.org>
In-Reply-To: <cae05f4d-57af-7923-58e5-c4bf06a8a3c8@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 1 Sep 2022 08:06:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VUCQSOe0Wr4UJ6TZkPA3xD_jsDp-gQTYMrh1QOM5b4QQ@mail.gmail.com>
Message-ID: <CAD=FV=VUCQSOe0Wr4UJ6TZkPA3xD_jsDp-gQTYMrh1QOM5b4QQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc7280: Add device tree for
 herobrine evoker
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 1, 2022 at 3:01 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 01/09/2022 12:12, Sheng-Liang Pan wrote:
> > Add a basic device tree for the herobrine evoker board.
> >
> > Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> > ---
>
> And this is third v1? At least this is what your subject is suggesting.
> Patches should be properly versioned. Git format-patch helps in that,
> but you can use any other tools if you wish.

Just to make it clear, what Krzysztof is pointing at is the subject
line of your email. Based on your email headers it looks like you're
using "patman" to send out your emails. That means you can get what
Krzysztof wants by putting a "Series-version" in one of your patches.
Given that you had three v1 posts, maybe call the next version "v4"?
That means that one of the patches should have:

Series-version: 4

Then in each patch you'll have details about what changed in each
version. I guess we could sorta call the one where you added the
bindings "v2". So in the bindings patch you could add:

Series-changes: 2
- Bindings patch added

...and in both patches you could add:

Series-changes: 4
- Got the version number correct


You've already got a cover letter setup, so in that you should attempt
to explain some of this mess, like saying:

Sorry about getting mixed up with version numbers. Here are links to
previous postings and what I'll assume the version number is:

v1: https://lore.kernel.org/r/20220830053307.3997495-1-sheng-liang.pan@quanta.corp-partner.google.com/
v2: https://lore.kernel.org/r/20220901061336.61386-1-sheng-liang.pan@quanta.corp-partner.google.com/
v3: https://lore.kernel.org/r/20220901091253.93333-1-sheng-liang.pan@quanta.corp-partner.google.com/


As an extra note: the bindings patch should be patch #1 and the device
tree should be patch #2. That means you should reorder your patches.

-Doug

>
> I pointed you to documentation you must read before posting. You can
> keep ignoring it, so we keep ignoring your patch.
>
> That's a NAK :(
>
> Best regards,
> Krzysztof
