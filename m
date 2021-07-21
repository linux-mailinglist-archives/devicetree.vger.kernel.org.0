Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF4A43D1A4F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 01:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231142AbhGUWcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:32:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231131AbhGUWcP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:32:15 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1853C0613CF
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:12:50 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id w194so4661173oie.5
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 16:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=8FOspe8EXemmdftQmdCKjMGD4GlMF6TNjn5qZ/urTzA=;
        b=JujPltrXTID9FgcLmXYI1ZWisQEd6ZPMsqsoPqZyr7ByJev91/mrJXSOPpUzIFVaKE
         sDc5C8Kjx4s+efZM9Ew06IwrZD3n4dxPvTft6hlBLyHNMwG3wNn8QCGxYoZImVhSZ8s8
         mAi7lBCzi0ZZhb9aqLajQ/WYt3yCX6XhXF4wg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=8FOspe8EXemmdftQmdCKjMGD4GlMF6TNjn5qZ/urTzA=;
        b=AWFkm2iccCaIEbEP96bGuMfJyAVY1v8rEwD44PbqaFnp2QJq5T0qh+wIKV7+RwQOPT
         LhBGnfn6iRxHOpafixcJxf5w+S10nDP+AQOae5h/yH74i3xBsDpMtz90ZX2ZB5A1Mc/x
         Q7IKhI85NsVWnv0dpY0/Gz70AR2w9aQcr+bPQNyrP4YaCkJGCoDk2nYziUymvteEGkKW
         tH9cwaGQb0JaU5sT9mGlLxySztFMZWN8ffNXiCnO/N7YMPZ01+dXiU2dxPQjHHu/Ovkj
         bypet5Sylr+JZ2ZQj3fak/bnO/1UobrslRKs8EUdYZRm7zbWrgCiYDZyIduELKbiTfaK
         EJ8w==
X-Gm-Message-State: AOAM532jxIPaq9FZMjI8vvMtsTYFvf5C5+byKlFm0tZ8StC4wFHFescX
        eAthcU2m6SM1XQ+keD+NrdTIY5dAagilHAgT28LiXQ==
X-Google-Smtp-Source: ABdhPJy8NuPRrw9bVuQcemTROc6i7a8wJv5B/r/uEFXnRHvKBvk6Hgu9VOi3NYL0M63QrdqC5paifG36zjJYN4het0A=
X-Received: by 2002:aca:4dc6:: with SMTP id a189mr4207788oib.166.1626909170104;
 Wed, 21 Jul 2021 16:12:50 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 23:12:49 +0000
MIME-Version: 1.0
In-Reply-To: <1620800053-26405-6-git-send-email-skakit@codeaurora.org>
References: <1620800053-26405-1-git-send-email-skakit@codeaurora.org> <1620800053-26405-6-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 23:12:49 +0000
Message-ID: <CAE-0n52T0fOcZxn-ZoLyw-VHvjC0mR7J24O+0DynkcTsRNoi6g@mail.gmail.com>
Subject: Re: [PATCH V4 5/5] dt-bindings: power: reset: qcom-pon: Convert qcom
 PON binding to yaml
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        satya priya <skakit@codeaurora.org>
Cc:     David Collins <collinsd@codeaurora.org>, kgunda@codeaurora.org,
        linux-input@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting satya priya (2021-05-11 23:14:13)
> Convert qcom PON binding from .txt to .yaml format.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
