Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3B45E373C95
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 15:41:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232949AbhEENmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 09:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233340AbhEENmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 09:42:09 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC0EC06174A
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 06:41:12 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id k19so2017585pfu.5
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 06:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LvAhCgtUw7Hhr1tXS7DhiAKfCYCLt/FOGUyMtLSYxOI=;
        b=aPpqzCJkwTT9710KNxqM20TsKpE/Bz1oEwLIynCse6Kk6EZ4YyElTcbROymZjjaLSO
         stgYkbvWfp8eELXvsookgOyMvrxUbJ8Dubb+WhRP+0ytalCco0+JcTYufEkSVGnru1qU
         dwGmffCJF4AKk7XZFukpAmWv7qWuJ5+LoqRAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LvAhCgtUw7Hhr1tXS7DhiAKfCYCLt/FOGUyMtLSYxOI=;
        b=BdUEz0wvT1f/AUK4cFjN8vmmQheePADJvHnPcWTjqLUA/xnAc1hK0y5OzAfwHoKvD8
         VLqeYiTgGkaFacMiC1yvzlo1mRg0hDJ70yeadC8Pp++l7paWYdB6CvliQMSTKYVoPvlG
         RF3Zzrs7GMzVAKKjq93ddjx+WPKOdVJ8BTFPpenmtpV762Ji1ENDQwpae27l/LVT7j8a
         kP1pKXQDE5bpPcIw1qPRVlIpZSgXfSa8oqwJYTNXTioYiwTmxSSKLcqkUKxAtnDlyYNA
         SXABhiN/dUDK8T5yX8FfEufH/7dvJqkuxo87gG1EC626qErUx6Pj89wfAav1lSmucfPO
         B67w==
X-Gm-Message-State: AOAM532CbSCehMtwziriGDS6qAdbSix7dvBunr8qc34Bp8qRs+J6fXvS
        L42kHJYNB8Nc48IVxLj5saHpHA==
X-Google-Smtp-Source: ABdhPJwlouJAoO/xkva4XHpCRR1HtaP540+oIE3e9nJ1WehVXwq4RYFg+UZVQoVNIEJD3B+fbETctg==
X-Received: by 2002:aa7:8c17:0:b029:27c:e3ae:ee8a with SMTP id c23-20020aa78c170000b029027ce3aeee8amr28932339pfd.41.1620222072443;
        Wed, 05 May 2021 06:41:12 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:8770:f856:b2ff:e5e4])
        by smtp.gmail.com with UTF8SMTPSA id d199sm15761735pfd.187.2021.05.05.06.41.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 06:41:12 -0700 (PDT)
Date:   Wed, 5 May 2021 06:41:10 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
Subject: Re: [PATCH V4 2/8] arm64: dts: qcom: sc7280: Add thermal-zones node
Message-ID: <YJKgdjpXEE83gY0/@google.com>
References: <1620197726-23802-1-git-send-email-skakit@codeaurora.org>
 <1620197726-23802-3-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1620197726-23802-3-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 05, 2021 at 12:25:20PM +0530, satya priya wrote:
> Add thermal-zones node for SC7280 SoC.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>

The patch won't be needed after 'arm64: dts: qcom: SC7280: Add thermal zone
support' (https://patchwork.kernel.org/project/linux-arm-msm/patch/1619778592-8112-4-git-send-email-rkambl@codeaurora.org/)
lands, but looks good for now.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
