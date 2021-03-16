Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3B5133DD5B
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 20:23:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240366AbhCPTXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 15:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240363AbhCPTW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 15:22:59 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3C99C06175F
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 12:22:58 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id ga23-20020a17090b0397b02900c0b81bbcd4so1914551pjb.0
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 12:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0VC+p+Z8Uz6RVI2DpAr2wRVpa/92FQmj4xytfLON9UI=;
        b=HS1C5XOvmd7BrynnHitq9flEQ41kZu/HfhVJrdM3Wag4PbJl62PxYlebxiLibkwUKR
         pZFdNKA8aEYWSE0WSRB+4maz698wfg0hDEdbjwqF9dfuXA1ws+CxuULIX2yUaQU8HSSL
         REPwHgG8frFMCQ/afNc57BYh41MpfZDvj+3i0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0VC+p+Z8Uz6RVI2DpAr2wRVpa/92FQmj4xytfLON9UI=;
        b=UuFWumLB0xCw72qnAHbQl9RFUtI/JZLzpqBGMPaUIJlEOJwIx1Yix631WLydylraJw
         9SqTq3C/pU4bOK4ptx21X8RV4DwD6pCuNvjtJjvZqVlrlniH05dRQ3nYjZlrBYd6eCYw
         symkywbrQwr9I1FjgYsiKdN2FaZOQamaUowmMqvzjw52y1TEkcqAkatApzXs8ZMJnDZi
         n0891eOIYyYf495ILAK/stsDamzta0tciIrvIW3zDQw+8FhQDHLY2IwIdyLwOgSdBNyH
         IaGmd6lY9PzLl0fS3qK8bzS6MvVWgi2Lycq+uBY3KTU0F2UewSNElnHO0bHrtpecfTdJ
         wklQ==
X-Gm-Message-State: AOAM532g6reJQaGD5iwnr19b0ZWafsKObZqc6cG8QResOjZ5txhOsEDF
        o8IQGG7L75W61NAnvYrda41h2Q==
X-Google-Smtp-Source: ABdhPJwNZFJvq1N7CeA4f6y4eYd3t9RW1It3cXNIU2ootejNNuW75dc2bfD+qv1tMWCU9H6/P13mCw==
X-Received: by 2002:a17:90a:5889:: with SMTP id j9mr584736pji.69.1615922578251;
        Tue, 16 Mar 2021 12:22:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:b471:7d:bf21:d7dd])
        by smtp.gmail.com with UTF8SMTPSA id y22sm17073992pfn.32.2021.03.16.12.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 12:22:57 -0700 (PDT)
Date:   Tue, 16 Mar 2021 12:22:56 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, rnayak@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org,
        David Collins <collinsd@codeaurora.org>
Subject: Re: [PATCH V2 1/5] regulator: qcom-rpmh: Add pmic5_ftsmps520 buck
Message-ID: <YFEFkNi9JCr3lDlN@google.com>
References: <1615816454-1733-1-git-send-email-skakit@codeaurora.org>
 <1615816454-1733-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1615816454-1733-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 07:24:10PM +0530, satya priya wrote:
> Add pmic5_ftsmps520 buck as this is required for PM7325
> and PMR735A PMICs.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
