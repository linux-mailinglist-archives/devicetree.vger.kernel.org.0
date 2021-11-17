Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3458545417B
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 07:56:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234015AbhKQG71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 01:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234023AbhKQG70 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 01:59:26 -0500
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38DFAC0613B9
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 22:56:28 -0800 (PST)
Received: by mail-oo1-xc31.google.com with SMTP id v19-20020a4a2453000000b002bb88bfb594so718586oov.4
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 22:56:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=5hi0dTQ0bgJng2njz1mkZU8B/uJ8AXVykozTffCQIl0=;
        b=DoPQGzC3AwQ3lZGT0z8n7xkQIZ/96SpIBYiAAoS8/08iSCgP/MTeyiNjdXhsD4Abc3
         V/7lOvSQM6gUAQaCWlor2YpdmiyMBSYoEM+xw+jYIM0OX2zwi3XjQPM9iyLHO2JYDUCH
         wInLzssZNqpcKYrIyf3jCVHIP7hkLHUPppMzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=5hi0dTQ0bgJng2njz1mkZU8B/uJ8AXVykozTffCQIl0=;
        b=LZvdcG/dTHXV+kiOAETC5mnJremYhWG7p5idyMAZX9rrZ3nTs2/syrmjN6o+gkpSnM
         HVu2A6CJqLn1JKQPiixdkKb6ylwgR773SyvbQ9zJMUjMeEQK9lTvnKrRx8olgu89zCd3
         lLpZFhi5v9DwN8YaByWFDVUADEG7UCPbl1FKdrk1Xk/6xsiwFdP6nEnbgtQMHjKbxpUg
         xD+sJugmE3lpoi99E+t2ObDzlciHBZKUrMfKuD6r4iKpfYStevkCpFkZPfXR1TUp4Ek+
         FpGbZOA0Zce3XX+6JKfq9wV7FeiYS0nug6hbjjko5LrqV90KrCztERy3r8B4qjpy9Dhs
         6wYg==
X-Gm-Message-State: AOAM531bDWOpQES5DVKODLgrD6mCw8M2H8NYxOaKc3Ib+vTeyB0oZk+R
        Xqb5v3Lc/jzZ6Elho3OIuwv6IGj6upuySqOfez1+bg==
X-Google-Smtp-Source: ABdhPJxzyge8aVq3hI6xK651KJ3Q1dzB7runhpnnjZrY9z9YA8THzH/yCh0x36cT4HihmUGUR9uaFSNfvjLXcJrSIEM=
X-Received: by 2002:a4a:cf12:: with SMTP id l18mr2689044oos.25.1637132187071;
 Tue, 16 Nov 2021 22:56:27 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 16 Nov 2021 22:56:26 -0800
MIME-Version: 1.0
In-Reply-To: <20211114012940.112864-1-konrad.dybcio@somainline.org>
References: <20211114012940.112864-1-konrad.dybcio@somainline.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 16 Nov 2021 22:56:26 -0800
Message-ID: <CAE-0n52MkOx8KC4jSmEHMhmk8sDDf0YNMWhvH-g=Y=OJvA-+1w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: llcc-qcom: Add SM8350
 compatible and defines
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Souradeep Chowdhury <schowdhu@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Konrad Dybcio (2021-11-13 17:29:38)
> Document the compatible string for SM8350 and add required defines to the
> binding.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  Documentation/devicetree/bindings/arm/msm/qcom,llcc.yaml | 1 +
>  include/linux/soc/qcom/llcc-qcom.h                       | 4 ++++

Why is this include file part of this patch. Shouldn't it be in the next
patch?

>  2 files changed, 5 insertions(+)
>
