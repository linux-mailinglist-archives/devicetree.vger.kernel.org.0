Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D19A93EF28E
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 21:15:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233496AbhHQTPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 15:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233316AbhHQTPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 15:15:37 -0400
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E776FC0613C1
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 12:15:03 -0700 (PDT)
Received: by mail-oi1-x22d.google.com with SMTP id be20so638470oib.8
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 12:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=KFTOiiBq/i4eSyKUuBBCOrK5YrcBCGqoZIsvDnPwCmQ=;
        b=dDv55Sq0NepVjbP8eQOG+c53lWGpvT/E9TBwXp9tw/atDkrfWmrCPRAtYTC6Juzb4c
         IibJpQNW9RIsJThgXIApFzJYQHZiJVcWYvn/Fj2DKyWDo9vikLoAh3RNuVvjEZJOfweP
         L9aGnn9hacGzXpZDwfy1MTzTlZPTLzl4Yt0F0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=KFTOiiBq/i4eSyKUuBBCOrK5YrcBCGqoZIsvDnPwCmQ=;
        b=Ku4vkZf69FwEntpTdlcNzMzt6IkRPT3WmBVrFJCAbJHfcbgt+QkInavvF0yArzekmX
         HoAj5V9HHnduLnN4PosnmDV7cvnAM/V9woLsGdsH35miJ7tWq9HKLkplzX7M94ai0ddq
         plRHAVjXQxOYUQL1DjyuWio8/ZO8tMhXMS0L7543elBg8+foH3rJs7StLf93txkrzIY8
         bFdIA11qxc7B0Ez4ecg1J2a5THDSAvM0tv9yYROFbEYjGdm93fn/MC5xyB6iVfaIIPnU
         i79FSXcgQDNQMuSKhvK68K2Oq8SyHmabPUwsBVr7imOzvW17Dfgh8vq+9xTdGadNRtFC
         3cHQ==
X-Gm-Message-State: AOAM5324uijD5VPWyq/vKH9YwLBpswgThx2I1zJeyQ9tBbHkoIM1W5Zw
        lsqjh/w65GdbMsM8UkyBPw0clfXCeqcYjTgdk0q39g==
X-Google-Smtp-Source: ABdhPJymHV6XIIMjmhu1B0BILFHppR8MabxVv36jfWJrt4mpADtpVMbr1VtWDXt9com4oT325ElJSNHT6tiBTn1vZdA=
X-Received: by 2002:a54:468d:: with SMTP id k13mr3881507oic.125.1629227703326;
 Tue, 17 Aug 2021 12:15:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 17 Aug 2021 15:15:02 -0400
MIME-Version: 1.0
In-Reply-To: <6801879ddd0edf9a8d0e3605f3868e79@codeaurora.org>
References: <1628830531-14648-1-git-send-email-skakit@codeaurora.org>
 <1628830531-14648-2-git-send-email-skakit@codeaurora.org> <CACRpkdZteWY6X+prHeAF0rtPVbCk+X9=ZYgpjgAMH24LhOjhaQ@mail.gmail.com>
 <4af8171aefd6f0387438225666ec1ccc@codeaurora.org> <CAE-0n53sR12fEa_cNPeT5eGcQVzzL57pd-tYnJbpP0NXkHMTsw@mail.gmail.com>
 <6801879ddd0edf9a8d0e3605f3868e79@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 17 Aug 2021 15:15:02 -0400
Message-ID: <CAE-0n52Ki2tA6qy6ADym3r4UQ0tkvgz3bpif_Mm2q3Y+N=huGg@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: qcom: spmi-gpio: correct parent irqspec translation
To:     skakit@codeaurora.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        David Collins <collinsd@codeaurora.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        linux-gpio@vger.kernel.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting skakit@codeaurora.org (2021-08-17 02:06:42)
> On 2021-08-17 02:38, Stephen Boyd wrote:
> >
> > Are there any boards supported upstream that have a gpio block that
> > isn't at 0xc000?
>
> yes, all the pmics used in sm8350-mtp.dts board have gpio block at
> addresses different than 0xc000.
>

So maybe

Fixes: f67cc6a91d88 ("arm64: dts: qcom: sm8350-mtp: Add PMICs")

is appropriate then?
