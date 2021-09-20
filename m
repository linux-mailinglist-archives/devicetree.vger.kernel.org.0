Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C24A1412A62
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:39:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232482AbhIUBki (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:40:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232184AbhIUBjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:39:20 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15E56C03D748
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:43:47 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id b5-20020a4ac285000000b0029038344c3dso6247055ooq.8
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=jZilAWTtlxib5UiTFHrd1oo5lANOqZ4zGoC3s+xI1Z0=;
        b=c8K6bBkASy9LhBdg5fqDar23fZZpMZq79/5LTgHDq0MLd2uRbU0gbK7LGcsxQnXsKs
         DHHQxTM+/VXWQmDr7vewoXfZj97vgARrJ9JYUl3Kjzn7wuTRkl+ivmsKoYbFZPmVMdI1
         hNM/YX3sLKFUaqWXfXhprJgjEHUAVuGR7J2/k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=jZilAWTtlxib5UiTFHrd1oo5lANOqZ4zGoC3s+xI1Z0=;
        b=CzIX3e+30VGfEgTbdkNM707l4PoUGKMUiAwvJ+QSYOdUyR6xI8CokSg/H3hUzhzhKP
         MdfjauaAQwGVwHveDlXn44rdcaD6XqMLPHV1vCk2oEcbtZyOcbJxEAGzipetDE4lnINw
         0wLYvey7rBUoKsbsMBkjAffn6mlX0dZlFDd2udygRR+Hhmj5sulRb43NbJUyr6ta8aib
         l7tmAH3EQR4dHVnyj9t7qMRe7gG2UZUYHVFYXJTA6mpJFqNEwrgO4jMTeY6YOW/4DbpN
         rQNy74lChjBNGOfC8Oaseu28Wu/DxGXScI7spMHnH1zlPhJBhWHYA+TnYB4wfWFIlZfO
         GCfg==
X-Gm-Message-State: AOAM533i1jnbx3UCqb3K4Pd1MWmITGcVtSqt8m+rJoEwinFs6ivB6FNg
        wR35TpYdjyomnQKC2FR1+Hn8wNNc3pVn9FSzCTu9BA==
X-Google-Smtp-Source: ABdhPJzJzusg5DvAffEXijW//YgVgAEw7k66hAc3zmtsDWl6cUtcCwqNtXZvRricLpDqAodbFZtg27A4gNFf88jXZM0=
X-Received: by 2002:a4a:c3c2:: with SMTP id e2mr8183815ooq.8.1632167026504;
 Mon, 20 Sep 2021 12:43:46 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 12:43:45 -0700
MIME-Version: 1.0
In-Reply-To: <1631872087-24416-6-git-send-email-rajpat@codeaurora.org>
References: <1631872087-24416-1-git-send-email-rajpat@codeaurora.org> <1631872087-24416-6-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 12:43:45 -0700
Message-ID: <CAE-0n53fVzeAo9ch60_BcfHUvqSRA2SEE-2c8zQhPJwcY7or6g@mail.gmail.com>
Subject: Re: [PATCH V8 5/8] arm64: dts: sc7280: Update QUPv3 UART5 DT node
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-09-17 02:48:04)
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
>
> Uart5 is treated as dedicated debug uart.Change the
> compatible as "qcom,geni-uart" in SoC DT to make it generic
> and later update it as "qcom,geni-debug-uart" in sc7280-idp
> Add interconnects and power-domains. Split the pinctrl
> functions and correct the gpio pins.
>
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
