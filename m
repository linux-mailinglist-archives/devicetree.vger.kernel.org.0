Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8F1940056F
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:01:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350504AbhICTCy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235938AbhICTCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:02:54 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3D17C061757
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 12:01:53 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id s20so379630oiw.3
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=SAzTnDcToUqmXsOS2Uqx6HjGpLJFdTeJaBGrr8ePieg=;
        b=fSkxncCTXR86TbzQCb1xW3s3xdTOMGyzfpctNNQvoRpmZfwq31/TpHnE/hSrh4lTKc
         u/GXxXKV+drF9Ekhf3KgE/0m/nVdmc3bhnB4f+1uGv/0b1bm6BzpYJQX4KVSDguVznhC
         pJsvND2WcJlJQ6YF6Dh/K2w26+jRkJwihxwys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=SAzTnDcToUqmXsOS2Uqx6HjGpLJFdTeJaBGrr8ePieg=;
        b=QIETg+kKvI9npC91nXHilCwaITHQOjzr2Xc9s/54JsoNUC6tqyCeRbiLaSPSv9X1j8
         kjD5nacKX0WnM+MmMOUZujVUFYX8j5vH9ru/KW2oFwPb2r3asV4CaRn35rwZoOHDUg0i
         /tip1Vakwj919o73RT6a4bcpfWMKFzuvOCpw0ox6Z6SwK2+RrX9hfwTDrv1H32tz9uEb
         baqGnSgVWqfIXnh0o/MsYsaCfPg3iM7GUmmIMj5/dQhZmvT8igwEG0cUNKkzQGWFpcak
         iO+e/QST/YTRDq3ltEODHYxb5bI9x/1aW8ePJg9bBlhZg4oZYxJX/IvSYUd/Wn2l16DN
         4h3A==
X-Gm-Message-State: AOAM532hmuL9d8l4OAD+coMCikQc8qHXQYh7Ohe/HMTn1UMFwJFjWW15
        fU6jm/2u2/ZZzur+GMO+cze3XSOrho1km0W7kuOsOWKCpvU=
X-Google-Smtp-Source: ABdhPJxnKzQ5AS2ZUhj+PB1HcygTeTEtePAdA7QZT6VkdQnPumBdxHtQCjSp+nbjz+D1bTV6KWEe4wqRrA61V8sjjoM=
X-Received: by 2002:a05:6808:909:: with SMTP id w9mr244302oih.164.1630695713356;
 Fri, 03 Sep 2021 12:01:53 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Sep 2021 15:01:52 -0400
MIME-Version: 1.0
In-Reply-To: <1630643340-10373-8-git-send-email-rajpat@codeaurora.org>
References: <1630643340-10373-1-git-send-email-rajpat@codeaurora.org> <1630643340-10373-8-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 3 Sep 2021 15:01:52 -0400
Message-ID: <CAE-0n51c1TdO3tw6dDd9Ai=j_0rvc_H6uTm5nQ1RoibF8+PcPw@mail.gmail.com>
Subject: Re: [PATCH V7 7/7] arm64: dts: sc7280: Add aliases for I2C and SPI
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, mka@chromium.org, dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-09-02 21:29:00)
> Add aliases for i2c and spi for sc7280 soc.
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
