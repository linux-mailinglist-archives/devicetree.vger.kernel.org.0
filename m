Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6096874AA2C
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 07:09:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232194AbjGGFJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 01:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232108AbjGGFJK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 01:09:10 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B915719B2
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 22:09:08 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-3ff24a193dbso12439501cf.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 22:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688706548; x=1691298548;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T5y/+CDvW4q4nPslYcY1qr6Pi0qBims4XmxOTDD9PnQ=;
        b=jmAZ/s2rnrg58iaLEWp/D0jLfi84pEOPfMtjwV+XM4n35ALR+55gpg6wPtblbqsnHV
         ZczdMxtpywYTugmBaFzxWyTIhBD8cd9vVQOo7lUxaJ2Tx3nvWa4XsWjvvt/1pXJKq7wZ
         FvksSiy5tKxMxWk86f7zeqI5BUWS89/pBvwzh9w7FNPKYyOZKVrH0d7m5xHGU6K7s9jv
         Ku73xa/+z2jKhNv+mMpsFppD+84S0Q+jd2n7ZDOEddAwzh0K35bagqCMxPItgotJ38c6
         NK3p8KZnIWSQgC4rE7rhmvhYvDBDiWdV5mho9/kjajiPvgYuClbbedxPlnG1YUvIPObR
         Mpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688706548; x=1691298548;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T5y/+CDvW4q4nPslYcY1qr6Pi0qBims4XmxOTDD9PnQ=;
        b=VVu9HRUCLRlvP7dZSrSRWGT8ebqUr19aQ/SdyGNUqMFUPzxEb4EUT45eM8gVIDf1BZ
         jUoFWVVUO3wgDzcVKAYMDdHOH288wTVVcsf6FO1k/C0PC4Wu/djvOlq/821zlPFnj2go
         OH+jMqw1AU/MeDZfYI/0zQy1Jmvmw4+Uaz1Mdlhb5xW8modY+K9wscrHMnCjmd3pceyu
         quKh80T45VYj/sWdGiDNFdxuSVfmCeUYSOLS0nzX4Ie05o8ap4MaxCnDTU8igzB0Seyp
         rul98gIPafvgaVxe3wmG2s0/sF2ZCb4hVh7n60VteWmHazyCvHEZl0NuXLHKLpR4bCrJ
         DjOw==
X-Gm-Message-State: ABy/qLbz8CjN4N7OtwdcIlCxktj09/+UAxg9H4cCcD9l8/Jg1+Jsc05F
        NN1q4mAJk3IfmTPSjxXXjABfJo2Rb+r8QlEUTtqfKA==
X-Google-Smtp-Source: APBJJlF9DniBjLUxlR4EaKPZmHlVkNHy2BHSJ9i5UpfchxFNbdvHQG6nSwlT4BUa3GisoOc1ziTcbK3M7xtQx0kap34=
X-Received: by 2002:a05:622a:1115:b0:402:9cff:4573 with SMTP id
 e21-20020a05622a111500b004029cff4573mr5331660qty.39.1688706547765; Thu, 06
 Jul 2023 22:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230602161246.1855448-1-amit.pundir@linaro.org>
 <358c69ad-fa8a-7386-fe75-92369883ee48@leemhuis.info> <0f6c9dcb-b7f6-fff9-6bed-f4585ea8e487@linaro.org>
 <CAD=FV=Xt2KYGY15+f+nHxkzKnwhHzw1A7=o+5kgCDWvHDv0DNg@mail.gmail.com>
 <20230620155902.clspxncyvpodixft@ripper> <5240ce3f-37fa-2747-92ee-23d71619f3ef@leemhuis.info>
 <CAMi1Hd2zunc=WNUE7KT-423RXTiX6LrY2hcWQdV3Dp3o8RdJtg@mail.gmail.com>
In-Reply-To: <CAMi1Hd2zunc=WNUE7KT-423RXTiX6LrY2hcWQdV3Dp3o8RdJtg@mail.gmail.com>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Fri, 7 Jul 2023 10:38:31 +0530
Message-ID: <CAMi1Hd2L-j9GHQH+4O6j6m2+HGy5oEsdMv6Qyp4RaWZDNCj-Bw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-db845c: Move LVS regulator nodes up
To:     Linux regressions mailing list <regressions@lists.linux.dev>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Jun 2023 at 17:18, Amit Pundir <amit.pundir@linaro.org> wrote:
>
> On Thu, 22 Jun 2023 at 13:17, Linux regression tracking (Thorsten
> Leemhuis) <regressions@leemhuis.info> wrote:
> >
> > Hi, Thorsten here, the Linux kernel's regression tracker. Top-posting
> > for once, to make this easily accessible to everyone.
> >
> > As Linus will likely release 6.4 on this or the following Sunday a quick
> > status inquiry so I can brief him appropriately: is there any hope the
> > regression this patch tried to fix will be resolved any time soon?
>
> We are most likely to miss v6.4. I'm trying to reproduce the crash
> with tracing enabled, to share some more debug information.

FWIW, I couldn't reproduce this bug on v6.5 merge window commit
d528014517f2 (Revert ".gitignore: ignore *.cover and *.mbx")
on 100+ boot tests last night.
For the time being I'm keeping an eye on it and will trigger the boot
tests occasionally in the v6.5 development cycle.

>
> Regards,
> Amit Pundir
>
