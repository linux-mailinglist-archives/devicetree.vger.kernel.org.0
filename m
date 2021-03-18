Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18D85340B06
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 18:07:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232242AbhCRRHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 13:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232256AbhCRRG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 13:06:59 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95495C06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:06:59 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so5862194ote.6
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 10:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EDdfsUwbPl0ZGq8W3pDbYPnirHDxA/3J0stRMcNF0Dg=;
        b=oRJZAS68b40yb38sZtyOpRDHIksYzLVy02oabfn866Hs3YyRLMQ9eN3F7H+eY0+1Si
         xCNuv9BRJuSWAX8FMGVN2YO/5LzbL5M3F9mNn94CX3IsnpwkRC91dUMM4eU1lcpeQRzU
         ryLxuwQAoXMty9V2zSAI9n+OhKSq4ivq17r+Xs1rJaRL03lmqDVpR2GrrTzv/MQbFa76
         ButnbScHf0u3fC1ijw9uXSTkbw3sEM6mlkIXHbWfnZPif/ZStTwOuez4xbh2xq8bIoAC
         6knnnPcg5PruVshvHdHl8sW5xcMtTFBYRI8a+LweNz/rgKlJd6FK7z1ueSqfo2VquKpr
         jDYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EDdfsUwbPl0ZGq8W3pDbYPnirHDxA/3J0stRMcNF0Dg=;
        b=bi5+nn3A+MSJhjVI16tv5vLdYZKqpEaIb6pYamtXc+vb1nq1DjGnHAJAvZ6DwQmItL
         VgYLPCXNHzlFary0DMF/WceRnvlHeJRBNfRaigdQBuNdLBSEli/Wwr1eaYZHzkxjZWtq
         Lg3eW7UtIbHNbXgFqYhdfpafaMO6c7LnDvQZku6BqaHdbE65hWL5yQh/H3ZcPjKjR6JJ
         5GD07uu3yYAYQ+cIjrAxhfYNEFbLJjWFHC3QkZB1N8Vmqq4KfxyrMJDJoGbbT8CZYCqW
         1flvb8v1V1gQFiOhMpb4xH+iCuUvxsi1sTfZB2RMNUIjduXKpHEA41pq0/BlINvbqevi
         I20Q==
X-Gm-Message-State: AOAM531T+3prKLta9cP8OGH7v0eZQNYtxlnHrZalMU85mVOmcsDV/eEZ
        cV1IigYRsS4TySLmVRyM/rbXvw==
X-Google-Smtp-Source: ABdhPJzf/Rw1E3Gk1SXd4/sFwfQABV43qXhdPVCJWAOiKt5jrh4jvCA4u7gzetMyoiT+LKNKiE2KlA==
X-Received: by 2002:a9d:5e89:: with SMTP id f9mr8268359otl.241.1616087218543;
        Thu, 18 Mar 2021 10:06:58 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s3sm657086ool.36.2021.03.18.10.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 10:06:58 -0700 (PDT)
Date:   Thu, 18 Mar 2021 12:06:56 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Kalle Valo <kvalo@codeaurora.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, wcn36xx@lists.infradead.org,
        "open list:NETWORKING DRIVERS (WIRELESS)" 
        <linux-wireless@vger.kernel.org>,
        "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>
Subject: Re: [PATCH 0/5] qcom: wcnss: Allow overriding firmware form DT
Message-ID: <YFOIsIxIC2mgzhZ1@builder.lan>
References: <20210312003318.3273536-1-bjorn.andersson@linaro.org>
 <CAOCk7Nq5B=TKh40wseAdnjGufcXuMRkc-e1GMsKDvZ-T7NfPGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCk7Nq5B=TKh40wseAdnjGufcXuMRkc-e1GMsKDvZ-T7NfPGg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 18 Mar 11:56 CDT 2021, Jeffrey Hugo wrote:

> form -> from in the subject?
> 

Seems like I only failed in the cover letter, right?

Regards,
Bjorn

> On Thu, Mar 11, 2021 at 5:34 PM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > The wireless subsystem found in Qualcomm MSM8974 and MSM8916 among others needs
> > platform-, and perhaps even board-, specific firmware. Add support for
> > providing this in devicetree.
