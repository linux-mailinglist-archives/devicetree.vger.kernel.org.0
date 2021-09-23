Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FE3D416772
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 23:25:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243233AbhIWV11 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 17:27:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243300AbhIWV1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 17:27:25 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A1EC061757
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:25:53 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id x33-20020a9d37a4000000b0054733a85462so10420125otb.10
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Restf9zT8cAaYgA0J31xbfdLMRV0x0h1nlmAtnjCHSU=;
        b=aONsfuO90FUY1hmYf3Ayk6yFCw+fzLOIJfC1MOl152Ufg2DI1SyDtYQ6vQIBFVwsUF
         68jIOowSHXMJk04LY+uDdKrcv+AyToyBRtvmiZosmcr+nE5KuzhhAnbGV2OXySgTOvO0
         WrJx8+PttIlgzlTShRGfJ9IonEOI9TMCLssBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Restf9zT8cAaYgA0J31xbfdLMRV0x0h1nlmAtnjCHSU=;
        b=YXshGzOFOZkOus9rSwhafWL1hsiTpDHn0G5KB9sfr0foVO+hhPZpcq4xg2IXV8cnFD
         7xXmOT/b6epAPVeAH9HjlcQyyWNqd/tIRQ7Ao8BgIjdvSYPFCqxMosoqbOEuHLtNKZoa
         E5jzkuSDuHCUQ75ALgvrTuXW6gMC/9NoKWKmCMDZGAepSLljlkrWc2VPUN/Iyj8V34KK
         UI9/RVSSH/VjNtgEtqNN9BO8+SJktQE/VhPhWrZbKAzGKBhC9qfFxGqp0CwwxhfMZVIG
         whjswfbecu2yXVOuZpZeGPpWwsDmOUCN88kKXC1cx1+yYVgSaS+EZYMQikTSycpMJ70x
         JuoA==
X-Gm-Message-State: AOAM531WhCWhbeOMJ1qztm5NuvPIIuKHot4olCCLjbBQxZEwjlOcxBAo
        nhEOWIK8RUcgocn/QIVJEBRzxacFu/njGLwKkCqdwg==
X-Google-Smtp-Source: ABdhPJxysXYeinQ9CMF70tkcQiTjG55VvRHubq670S5FtDoyjDEGxZN054WTAk46nAOJ4o0qnVXwtvVXqq24hr/gqFU=
X-Received: by 2002:a05:6830:358:: with SMTP id h24mr726841ote.159.1632432352480;
 Thu, 23 Sep 2021 14:25:52 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 23 Sep 2021 14:25:51 -0700
MIME-Version: 1.0
In-Reply-To: <1632399378-12229-5-git-send-email-rajpat@codeaurora.org>
References: <1632399378-12229-1-git-send-email-rajpat@codeaurora.org> <1632399378-12229-5-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 23 Sep 2021 14:25:51 -0700
Message-ID: <CAE-0n50+yU263qVzAVKApCB2EfX=85nrYVkMoLnr4gFvo71Hjw@mail.gmail.com>
Subject: Re: [PATCH V10 4/8] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
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

Quoting Rajesh Patil (2021-09-23 05:16:14)
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
>
> Add QUPv3 wrapper_0 DT nodes for SC7280 SoC.
>
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
