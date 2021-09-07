Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4920C402DF1
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 19:48:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344308AbhIGRtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 13:49:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345260AbhIGRtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 13:49:21 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C53FFC0613C1
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 10:48:14 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id x7so7837468pfa.8
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 10:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tlcos91zBbCY3ADL8GJyLeddK+6RZ2RnTWrnb/tvp3Y=;
        b=MmrTm2r+15KdX0nopH9HOAGBe57S4oTePNBCsfNwe0sDF/H/enavdbJxJVU2K+sHcS
         PRrQNI+nm1agMwzuX7G1gZ3EXvaHxWYtFR57/FJCfOvdzWgxdK3Iq3mQtjVhQvWeyRwS
         AwtpZPDHBVuRX7Z9aMkbFNkmYR0Xh86eitxeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tlcos91zBbCY3ADL8GJyLeddK+6RZ2RnTWrnb/tvp3Y=;
        b=InvlsqNDQRdyVRQqqV0TOyBCMXbtDhU4qrFhzEhT4KEc43WGvVp2FfYiy27n4SKPvC
         avF+YDvK7fvwv/84MGy9P2lCu9UnNU7FPElaVyFMLN/YlMxdk7eugb0QpLufMgQuRWet
         GG7wNg6SiKmNIxgY7JEKIDIEA6aQesOk1BdVUQ9PyRSnnzRqOyhUHk3NS3VcJMY61mjU
         4/EE/aI/T5Hh5362MIGMeKkpWo3voUBSgmjn54QaPa48lN/th/f0JWYVtCrjuvscmEq/
         R6ucqSPryqshjP8zRCvv0cOea6VHmlc9QaDoIXHcdz7nm1bTJDgC/G4FBFrTk9EmZPJe
         AvqQ==
X-Gm-Message-State: AOAM532CxrNXyoyPu8IphDFrUNf1oOKIimIbtNZy80or7qlDvVEvMOQn
        II8Gvi0KnkGG1ysd/2pSqUxvTA==
X-Google-Smtp-Source: ABdhPJzGkWqHMr6e4hfqWzVna21dN/+KfF8K4n8syUGpq8dAo62kw4og++aEOJetEgk8zhAc4ijo3Q==
X-Received: by 2002:aa7:984b:0:b0:404:fd28:1aca with SMTP id n11-20020aa7984b000000b00404fd281acamr17509107pfq.34.1631036894326;
        Tue, 07 Sep 2021 10:48:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c6b2:7ae:474d:36f6])
        by smtp.gmail.com with UTF8SMTPSA id r15sm11812922pfh.45.2021.09.07.10.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Sep 2021 10:48:13 -0700 (PDT)
Date:   Tue, 7 Sep 2021 10:48:11 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        swboyd@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: leds: Add pm8350c pmic support
Message-ID: <YTel2zNSxDbERwH6@google.com>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org>
 <1630924867-4663-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1630924867-4663-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 06, 2021 at 04:11:05PM +0530, satya priya wrote:
> Add pm8350c pmic pwm support.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
