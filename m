Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1128F550503
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 15:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230146AbiFRNLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Jun 2022 09:11:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbiFRNLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Jun 2022 09:11:08 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD80217A80
        for <devicetree@vger.kernel.org>; Sat, 18 Jun 2022 06:11:04 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id l192so4936908qke.13
        for <devicetree@vger.kernel.org>; Sat, 18 Jun 2022 06:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wquY7m+5u8zDvkgq8g44qdh5YB1CQChX80XVZX2MZ80=;
        b=y8/TAgYKS+Q5inWVBs2qbDR8MhtvK4bYbt0oMqYXbnfgxJmfrtnJpq2hPuYuxTjZwG
         IGgS0lUwm9xIx+rluQP8w4JAFzcj66osBUWz9vMZK0NX/1fNJPI2/wxUCjit8uHIXKaJ
         L9EuFJKZiOB5WpXR9JXxjYWTGvoUvTDiqvZZVUz9ks/SyoYQnCBc835CXwQI2w3lNkwm
         7ezsyhwCxuypfjvqtgO47BxBo9HfARyHhIs4NTkHwwr+EDZ9KU+15WcmcJ7vI/h5kIhH
         S1GyCoEJHWI2bxsfU+1orNDRdiaG/sZDwhzn3CjfLnnxNXadtgdO1k2WBa9C1HgkgzzR
         VVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wquY7m+5u8zDvkgq8g44qdh5YB1CQChX80XVZX2MZ80=;
        b=yh8lkUqkK51wRNzvJzI3amJh9o+GTCsisGidHsf6msUE2SkMWV1RgH4e5B+ISDi59N
         odaESvdE4Wh/x1mPVhB4cYAVMiDOc58U9FBWxyPsekxaBv33qDbuiWKV5xEmw9HDSqhK
         Tmogfco/tg20qaF09E9Ho/MDYrunC434x/s4SOIMB7loir/oCf2drboRJJZ7pcKElHP1
         8LYQzdoohgXRl9NLyKnkpLqyZzJ56LP53e0ba8/3vVRpguRJQkrTMHlwv/+kfE7pltXV
         AFcEJZCS/jaQWHmF2CPqdDOQVAwl4HTgW/wZs6BFP1OJOKh7GoHoKhk9xBd2ijubfFij
         0wlg==
X-Gm-Message-State: AJIora8UBZOHms8JBUj/3z6bZhkLMHU1ofk00uj31jljKJEJ68xlABxE
        H4mbt3aXHZHMgLFHSF52scgNLXzFKm9WmkwNQnElSQ==
X-Google-Smtp-Source: AGRyM1uGZlGNgP9v6/NOxAXr3c9+0O1rleQKWgObtCmYBXh2b+WfMrw9eplCBeMl7qB7irZGPnqWSZKagEMtatzc/Xg=
X-Received: by 2002:a37:a83:0:b0:6a6:7e4d:41dc with SMTP id
 125-20020a370a83000000b006a67e4d41dcmr10567239qkk.59.1655557863865; Sat, 18
 Jun 2022 06:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220617144714.817765-1-dmitry.baryshkov@linaro.org>
 <20220617144714.817765-8-dmitry.baryshkov@linaro.org> <Yqy2YHpl93kEQRYU@gerhold.net>
 <CAA8EJpozu6PoWC-kOpFB9OSZLVZaZt6ZkUpYo=bOr0zhErkWqA@mail.gmail.com> <Yq3MzJ58d0fbsb3L@gerhold.net>
In-Reply-To: <Yq3MzJ58d0fbsb3L@gerhold.net>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 18 Jun 2022 16:10:52 +0300
Message-ID: <CAA8EJpqeCqD32QioE8SHR=D0acA6FGGTtQ0qRtGp4FDTv5bD7A@mail.gmail.com>
Subject: Re: [PATCH 7/7] arm64: dts: qcom: msm8916: add clocks to the GCC
 device node
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
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

On Sat, 18 Jun 2022 at 16:02, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Fri, Jun 17, 2022 at 11:34:24PM +0300, Dmitry Baryshkov wrote:
> > On Fri, 17 Jun 2022 at 20:14, Stephan Gerhold <stephan@gerhold.net> wrote:
> > >
> > > If we want to change this to the actual votable clock later this should
> > > probably be <&rpmcc RPM_SMD_XO_CLK_SRC>. AFAIK that clock exists in RPM
> > > on MSM8916 but was never added to the clk-smd-rpm driver (for MSM8916).
> > >
> > > Not sure where the pin-controlled BB_CLK1 is coming from here. :)
> >
> > It came from the schematics I had at hand (db410c). It uses the
> > BB_CLK1 together with the enable pin. I'll probably use xo_board for
> > now and postpone changing this to rpmcc clock until the next attempt
> > to read msm-3.x code.
> >
>
> Hmm, you're right - BB_CLK1 goes to CXO on most MSM8916+PM8916 devices.
> I think the msm-3.10 kernel still controls it via the RPM_SMD_XO_CLK_SRC
> though. Quite confusing. :)

I will take a look. Thank you for noticing this.

-- 
With best wishes
Dmitry
