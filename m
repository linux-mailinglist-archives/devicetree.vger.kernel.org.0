Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 801FC4A8FC1
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:24:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354752AbiBCVYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:24:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354726AbiBCVYC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:24:02 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60E3C06173B
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:24:02 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id s185so6167004oie.3
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=mFCoCNzXJqQmBPGmpGLMQ/uDTw/arZ60RPDkmkAmvcM=;
        b=X9B+VWIM+Ueb2wMTtVcqXGBXMsJvg92EaCbJS5Lrb8sY0n7o30x+gUx+Q6cvRrxjfh
         4RFW7XwAz8boyhMLjyTEYSZWuEQDta0bt/3Cvl4Cck1g8VEKzwJq1CISOmCeTuFYHIyb
         EkOB1WN1V7lWrYfL5CP9zFHTMbOq8icSYgmUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=mFCoCNzXJqQmBPGmpGLMQ/uDTw/arZ60RPDkmkAmvcM=;
        b=h26wbldRUWM6uNpe2XRfM/ydd+9kBIxoHQ7nyQ6Kk4xn1MbnELFD/yL/P8PWFOCxgk
         LzfxjR+NGkBXzxlOkxEx920leOdeYguABl7sTk2TPdxF6inS8WcgpjtNHQQkfuUoXEA7
         H3dr4dzbk2fco8JSknCjE0gtM6SiWK/YeGsEt6cuhVg1idymtMJZGJem1zXsDWWI7eEM
         ExiENDbJ7U9CfAM0lJd2/CQhMZKSzwJLNF1Kg19b/0c+t9gYiof7MtHqjv6Jb7Ynee3X
         Kn4nvjWqg2jUiRBUHKekGa0D5+3GEknZlNW942iqxWtS5JrnHxXIP2hv3SqhjCdO+dP3
         PX2A==
X-Gm-Message-State: AOAM532TQGmLB+uw11CA+J7qHP6L4CHC5zX9RgNPUeCzB+78tEbR9vDI
        SX2qDAVyx8X9CCwUDgf4UF+gr6dvPDbE24z8gCqpbQ==
X-Google-Smtp-Source: ABdhPJxOyWKbVr8mR+7m+pTrPwUwsXvdE1QAEYRkR9DKBNuxJ6lIKEDLx782mJcqVTw8QOn4+56Rzvr1UzlZz8BO8Z8=
X-Received: by 2002:a05:6808:190f:: with SMTP id bf15mr8697745oib.40.1643923441665;
 Thu, 03 Feb 2022 13:24:01 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:24:01 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.1.I7b284531f1c992932f7eef8abaf7cc5548064f33@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:24:01 +0000
Message-ID: <CAE-0n52tvHrr-Mj+RssP_OpxZv9m3puUcwhtQxd9PjTsZ==K6w@mail.gmail.com>
Subject: Re: [PATCH v3 01/14] arm64: dts: qcom: sc7180-trogdor: Add
 "-regulator" suffix to pp3300_hub
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-02-02 13:23:35)
> All of the other fixed regulators have the "-regulator" suffix. Add it
> to pp3300_hub to match.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
