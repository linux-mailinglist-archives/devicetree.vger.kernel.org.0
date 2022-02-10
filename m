Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4963F4B0300
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 03:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiBJCBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 21:01:38 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:60030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234263AbiBJCAP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 21:00:15 -0500
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68572BB16
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:50:39 -0800 (PST)
Received: by mail-ua1-x930.google.com with SMTP id r8so2295058uaj.0
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=0jP63mve8H7yBEGolFIfscf414Fuk0ZZChDlzPkF8fg=;
        b=FK4YaRssCrYX/rQURcgTQV1W9baUIrKwtFGR4CVDIH672hMCO35bwfWKPKDo8tLtVL
         04faMa/bqsL8ivTGG7yNy3ilyPX8CtsauYYehwEHEZkZ2L/g5CetNv4fKEtRS8m1mgWq
         qHBqDa11EblbK+mJYR8WWjxh2YvLpRD9NtzPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=0jP63mve8H7yBEGolFIfscf414Fuk0ZZChDlzPkF8fg=;
        b=vQ8YX/+I/as28lGrP078F6j2Fd3SD61mhvt019T1ATbTg1WcC4AUGSoE0W8SJaV5K4
         tTM2yUENJPgC38rLkaEPOckCS5ileK8CEYm0TklDwuN39ZOBs2TRxjwYD9YQ3iaTTtbi
         2fRwbSf4/ThfLvvhAXDMJAst0vufdTaw8zjwWR3b8R7X0kkxVRNy8IougkizchvEF0BI
         xwJ0FvNz1ChXq9ZDlcGfMrN1hd03EYE2DAo68TVaR5D6xWwkFLihuT9Tg2Xh8bkZFVo/
         kCTzQAMPV7PYRxIg9bJyNyfgOkXhlPkqh1XMnm/RCYyB62YD6yZoSm8JwKocWUxqoSju
         idOg==
X-Gm-Message-State: AOAM530qOCJmHOPfpVtKKPbFQmJUcsp5ioROQ7U13Ta+L8BKr/0xjNHh
        iSZ6mMt9o07Av1XxZ9o0PiMbm88LNv7IZDitsFCm/mWddnw=
X-Google-Smtp-Source: ABdhPJxBNYckVAU5af+ocW3WmiCXFblNyx2pqrI/7GNXk2TZNNX8HLoZNfZLakpxuuOxommIU6+LK22M5EfyBLvATMw=
X-Received: by 2002:a05:6830:1489:: with SMTP id s9mr2002170otq.126.1644451654382;
 Wed, 09 Feb 2022 16:07:34 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 9 Feb 2022 16:07:33 -0800
MIME-Version: 1.0
In-Reply-To: <30805a84-b523-842c-d223-bc0d2043fa00@quicinc.com>
References: <1644334454-16719-1-git-send-email-quic_srivasam@quicinc.com>
 <1644334454-16719-2-git-send-email-quic_srivasam@quicinc.com>
 <CAE-0n50PAtGfvHXjNrvQYe6edNEfJvEc1uYZFUeW2KHxn6fsBA@mail.gmail.com> <30805a84-b523-842c-d223-bc0d2043fa00@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 9 Feb 2022 16:07:33 -0800
Message-ID: <CAE-0n538CdY3a64jG556se=AhgJpXr_oENG_spGM29c5gdQRYQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7280: Add pinmux for I2S
 speaker and Headset
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-02-09 05:42:40)
>
> On 2/9/2022 2:38 AM, Stephen Boyd wrote:
> > Quoting Srinivasa Rao Mandadapu (2022-02-08 07:34:12)
> >>   &qspi_cs0 {
> >>          bias-disable;
> >> @@ -491,6 +524,13 @@
> >>   };
> >>
> >>   &tlmm {
> >> +       amp_en: amp-en {
> >> +               pins = "gpio63";
> >> +               function = "gpio";
> >> +               bias-disable;
> > Is there an external pull?
> I think no external pull. In trogdor mentioned bias-pull-down but you
> suggested to remove it.

Maybe on trogdor there was an external pull inside the amp that this pin
is connected to? Usually we have a comment like /* Has external
pull-{up,down} */ so please add that here depending on which way the
pull goes.
