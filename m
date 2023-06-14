Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8098872FE3D
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:17:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244102AbjFNMRo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:17:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243896AbjFNMRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:17:43 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0FD01BFB
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:17:41 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-bd5f59fb71dso611682276.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686745061; x=1689337061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bwFHPYhlT3RfthlTjpPS85ddabPhpew1qG/qUrIvT/E=;
        b=ZE7z0PBOhTN7OCLEZIYRfVxCFCP7jG7T5T8l+rJ9PWQ9FnIaqiMIQYrUHb0OS7jD5B
         XOOz90b2gjuTDdRo5Nuxv3QNpBX19NxZAlEKkee6NhTOj3+owBXQLBKDQuKePHVIqHWH
         Zr5cIMCeDt3B8/1TsIrIj6TJYAGcoJGmKXOCWdf1Cvx6830cJiJxOS3SzH1ydfcLAXWw
         lrI7XOfbmOhRloHyBDgHy+iyWFCJeCZ1WmUG3UII6zFBjFJsthXvv+TGBjQ2Qr4fpV39
         D05laDWul/NKId+FKRUgIrvvzMzs+qb1vAal5rERfMpdfxTnfpBS4rOlN5x1D5BbaMCv
         dhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686745061; x=1689337061;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bwFHPYhlT3RfthlTjpPS85ddabPhpew1qG/qUrIvT/E=;
        b=VZePVpHaxBuTiow3GBlCNn+rhccvdA/5l0oVWkC5U3RyYvQt+hfssYs9FnWkXu4RaY
         EQg04gTPX0M/2JBFj9EMqASMxT53oZDeU7ff5U/5HIbKPyK6/2F9Uoo9keVa14ZPuEfV
         R2zWeRPoJ8ZmBVSktUX621vH1zafeaag3V8mLCOKRdjY+mPWXG+dR217w6ULYKcV0Xkk
         gh5tnANZYS7mJxFCe2QotGFD7u+1jHNlndwFGUZS04O7saJZ5yr58Q1IEy0dSsa9Lkyd
         WIVO9qokbFINk8yRFPJuYTaGFksipvVjk4EfsR3IafimU9lg2u/5WMQvFBLV+tZ6+J4d
         fbqg==
X-Gm-Message-State: AC+VfDx0j0lsPSjsp5SMc6z+BwdhMlqCvkEE/LoSN8njQBI2cwfC3SIk
        b9YACLyvY8XtlQ9AtBb3gV1jkP8ZNKNfU1YkPMQp5A==
X-Google-Smtp-Source: ACHHUZ7BbfR2gwme9IAt2E/2MfRJmNQkjtnOv8ERZreRKQ3CY+OoH6bRLuIYMYRdkWELrelaMW6I2ZCXGS5utx7/bSk=
X-Received: by 2002:a25:44c3:0:b0:bad:bb0:4d37 with SMTP id
 r186-20020a2544c3000000b00bad0bb04d37mr1968881yba.31.1686745060842; Wed, 14
 Jun 2023 05:17:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230609115058.9059-1-quic_jkona@quicinc.com> <88b41c0f-e515-ce94-e4fd-befbeef53781@linaro.org>
 <65fd51f1-56d9-7b7b-7757-229cbb65051d@quicinc.com>
In-Reply-To: <65fd51f1-56d9-7b7b-7757-229cbb65051d@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 14 Jun 2023 15:17:30 +0300
Message-ID: <CAA8EJpoLWm4=1J2QTfh9N55U-FjuYA7CwJeoG=Zv4mOhC1nytQ@mail.gmail.com>
Subject: Re: [PATCH V4 0/4] Add camera clock controller support for SM8550
To:     Jagadeesh Kona <quic_jkona@quicinc.com>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>
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

On Wed, 14 Jun 2023 at 14:58, Jagadeesh Kona <quic_jkona@quicinc.com> wrote:
>
>
>
> On 6/9/2023 6:24 PM, Konrad Dybcio wrote:
> >
> >
> > On 9.06.2023 13:50, Jagadeesh Kona wrote:
> >> Add bindings, driver and devicetree node for camera clock controller on
> >> SM8550.
> >>
> >> Jagadeesh Kona (4):
> >>    dt-bindings: clock: qcom: Add SM8550 camera clock controller
> >>    clk: qcom: camcc-sm8550: Add camera clock controller driver for SM8550
> >>    clk: qcom: camcc-sm8550: Add support for qdss, sleep and xo clocks
> >>    arm64: dts: qcom: sm8550: Add camera clock controller
> > What's the final verdict on RINGOSC_L etc.?
> >
> > Konrad
>
> We would like to pass RINGOSC_CAL_L field directly in config->l value
> itself and reuse existing code rather than adding a separate function
> for lucid ole pll configure.

As I wrote in another email, it doesn't sound like a good approach.

>
> Thanks,
> Jagadeesh
>
> >>
> >>   .../bindings/clock/qcom,sm8450-camcc.yaml     |    8 +-
> >>   arch/arm64/boot/dts/qcom/sm8550.dtsi          |   15 +
> >>   drivers/clk/qcom/Kconfig                      |    7 +
> >>   drivers/clk/qcom/Makefile                     |    1 +
> >>   drivers/clk/qcom/camcc-sm8550.c               | 3585 +++++++++++++++++
> >>   include/dt-bindings/clock/qcom,sm8550-camcc.h |  187 +
> >>   6 files changed, 3801 insertions(+), 2 deletions(-)
> >>   create mode 100644 drivers/clk/qcom/camcc-sm8550.c
> >>   create mode 100644 include/dt-bindings/clock/qcom,sm8550-camcc.h
> >>



-- 
With best wishes
Dmitry
