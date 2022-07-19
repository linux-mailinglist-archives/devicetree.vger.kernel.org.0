Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 601555796F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 11:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234628AbiGSJ7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 05:59:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236047AbiGSJ7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 05:59:54 -0400
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49FE73138A
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:59:53 -0700 (PDT)
Received: by mail-qk1-x72e.google.com with SMTP id k7so7809576qkj.2
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 02:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HQXArWqN03DD+E6UdPTQJfJ1IjxcXg1RfJYRzgq3uVY=;
        b=D7GDZIQ3qS90bxEQ/HFpcjKEbo9R/8epY00XAu4kDLGHcZStkjfl94KPoyLRTTUl5O
         cKqOAGfnYNxgUV4L9bi1smdNhszvr23eiNdBUvhS/M3A656gpFZswyDuF9nTiOlP1ILg
         jnmtjAnz9KO6jPzoJCfAWsUBVOw+n9hH99DHOzNZ9J0J/0XJWP3YErTHRTNCI8S44tDq
         N0PH1pIOjsQ45UbPvWc5f9hoYxnvdcFdkCv97iCf811BM+CldfA+UHIII46jWjGJ6iGc
         II4X59em+FL1R/yYNK/4SPlBgZQ4xmY1ooCUSqg28QMUYZ9h+2NvJA/Ry9ZRVkFMhaD8
         QHig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HQXArWqN03DD+E6UdPTQJfJ1IjxcXg1RfJYRzgq3uVY=;
        b=gXxyTsrUD2/gNvwyWlqXipsrnBrKi+0cbBVcOuNL/SXB3TTwcqwx00DUE7yYXfd8Qk
         51Zeb3/2U4R2iW+dwX9xzWLarrIGv65XHzborZqwcsSuz1qzlEwcyk57/hNj6cOQa6tQ
         NnN7AR4xBbf3fgbUBHw85nMUHhKMBJBAlXCRkbKYTB99b1wAvUyzoH8021EruO+WTOk2
         iRBecvNJ/o7nmVWu9/fl/lsxLWCht4dBTossVTZ4o/ZlphP6WtXnl3ARu4ka9XRPBjWw
         j9/Vp3Lpf4zS3EU8MOijJQ2WBwNZoSnVfnhVvZiIkjLiiba+NC9Pn9EQ9kMgJ5OH12ma
         INZA==
X-Gm-Message-State: AJIora9qXGp1EMVpeDowd90SxRxZ12a7+/dsNqnzK9SEErfU01bpb55C
        HMa09rwx/6vZclt/KurRMH/1DT2d94T0EvfBi3IZyg==
X-Google-Smtp-Source: AGRyM1tCcBXMV7OQF3X3/OlWbFEk9/SJrMrAlp9TVMQy7Rh79gPpTC8yfeZRttnnQwrF1X5wYHLEQxA7LNhhzeXFwc8=
X-Received: by 2002:a05:620a:d5b:b0:6b5:660b:2939 with SMTP id
 o27-20020a05620a0d5b00b006b5660b2939mr19781431qkl.30.1658224792408; Tue, 19
 Jul 2022 02:59:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220718153815.29414-1-ansuelsmth@gmail.com> <7f2a4f21-5e07-9320-8f7b-573ccc562f43@linaro.org>
In-Reply-To: <7f2a4f21-5e07-9320-8f7b-573ccc562f43@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 19 Jul 2022 12:59:41 +0300
Message-ID: <CAA8EJppCxrcQOtCDZvUX-CThGV7aZXYv__gz3KRBf28TCRTBEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: qcom: ipq8064: reorganize node order and
 sort them
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Tue, 19 Jul 2022 at 12:56, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 18/07/2022 17:38, Christian Marangi wrote:
> > Reorganize node order and sort them by address.
> >
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >
> > This was picked from for-next qcom branch [1]. Reorganize dtsi as requested.
> >
> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/?h=for-next
>
> If this is picked by qcom branch, no need to resend it.
>
> I don't see value in such reshuffle. Reviewing is not possible and you
> did not mention tests (results should be equal).

The value is usual for all the cleanups: make it follow the
established practice.

-- 
With best wishes
Dmitry
