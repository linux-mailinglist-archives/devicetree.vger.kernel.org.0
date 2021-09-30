Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D78141DB32
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:36:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351300AbhI3Nhl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 09:37:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351313AbhI3Nhf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 09:37:35 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 956E8C06176C
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:52 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id y15so6811657ilu.12
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lQTGhwriO5YzGyzUzOATQVEjkGTb234ZmtsCzpyd/Kg=;
        b=msmbF+kJMXVaBBPIZ7DtFOLZqvpdvVOw84Np2bU0lIxPM5InUeihp3fNyY/KfN3bSk
         DlXHiG6I6F7C2Uoa1sKZVFefNbCggPcT/4IGodqER1U+0rrcmMFnyIBvvXWXlk2xTKl4
         0Bw3GGCPq7Q5ah7kNL7pURw8GEcd+qpnB/q54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lQTGhwriO5YzGyzUzOATQVEjkGTb234ZmtsCzpyd/Kg=;
        b=M0GRU+LQawlW5uN+d2covmbgZPtybW/fveqnPeIcYPP4WFP/v8/F1jhLN0WNf3Qs7t
         N3z0dqgAUuQhEjYK+gywihEo8MxJFeosHFbYwn7CkVx+wQQ2jzC/mBckXudZJGdpwDxW
         wkRl9zXIukStTnA5zEWxE+llPbtmUl2xInISAp45XuVj5s9xfuzuQrk2QRz6Tfd6QtA7
         j24DNPn1ht4Vmfvx/jrGYVlfQSZ0CtGfcMPSq71o4er2r8ZfCyBD6pDC4MJNZSrIF+vp
         JsXqgGE8WqEjkTKW9rDIFvJ+MINhtpdrmrzr0LV50zSS+tkomA7M2WjNa9WtJz5Fr2Nd
         vPQg==
X-Gm-Message-State: AOAM533YrwxN56aC7UPHyWMOs8w+oYnjKdEu62DBnJXums2J5xwJ/Zz1
        T03v8pHW4pJVYDL7LzIwqq1O/bkX3Tr8/g==
X-Google-Smtp-Source: ABdhPJwC/IIgrEZt8oYY3+gr3nxXISj4B5d0AIEcI/f6vZIKMIdmhkuB5pS0/oM3sUVQTlhqwZynbA==
X-Received: by 2002:a05:6e02:1d11:: with SMTP id i17mr2165035ila.33.1633008951860;
        Thu, 30 Sep 2021 06:35:51 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id i8sm1661200ioi.29.2021.09.30.06.35.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 06:35:51 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id n71so7628830iod.0
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:51 -0700 (PDT)
X-Received: by 2002:a05:6638:134f:: with SMTP id u15mr4954621jad.82.1633008946179;
 Thu, 30 Sep 2021 06:35:46 -0700 (PDT)
MIME-Version: 1.0
References: <1632997450-32293-1-git-send-email-rajpat@codeaurora.org> <1632997450-32293-3-git-send-email-rajpat@codeaurora.org>
In-Reply-To: <1632997450-32293-3-git-send-email-rajpat@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Sep 2021 06:35:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WUcP1700_cD+k_OTV=p60txTqm3av6JJiO7r9m+ZMU6Q@mail.gmail.com>
Message-ID: <CAD=FV=WUcP1700_cD+k_OTV=p60txTqm3av6JJiO7r9m+ZMU6Q@mail.gmail.com>
Subject: Re: [PATCH V1 2/2] arm64: dts: qcom: sc7180: Add qspi compatible
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 30, 2021 at 3:25 AM Rajesh Patil <rajpat@codeaurora.org> wrote:
>
> Add "qcom,sc7180-qspi" compatible in qspi node
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
