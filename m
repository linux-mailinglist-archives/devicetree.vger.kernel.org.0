Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F358F373105
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 21:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232580AbhEDTtA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 15:49:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232456AbhEDTs7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 15:48:59 -0400
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FCBEC061574
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 12:48:03 -0700 (PDT)
Received: by mail-qv1-xf2b.google.com with SMTP id jm10so66289qvb.5
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 12:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dLRKtbyO50ZwLbGZ3RGT/lGz35DJJd92L3sxN1YsG2k=;
        b=laSCr644OH3wrJ6rLbeSdBIYes8vO3VEwMCv+BerwVh5PMGVlK4rSZhtFDngmFMKgb
         jQ4U1Vdqq5qHLpzHYR0T+qBvogRxh5xcqorNf2qL7f7J7An22P2JA3wMWzEP7CT0G00c
         pvFBnSmuf7bR3zp+CdBeEbVr//XxFhekeVjM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dLRKtbyO50ZwLbGZ3RGT/lGz35DJJd92L3sxN1YsG2k=;
        b=YmOuwdeuALhZPvcBn2O8vsPyRGbzoLCYEH4feZU4RNBERC+IKU/mPuG63AzHRGVV5q
         FVLYfdaEqh72Wy8ZkbklyTShdSMkveMzxlb7/OAR/4i09sTKjytvJsfBrnvQBi57+La9
         Iyur6zAJPSg6OC1ic+bOJ8OWbZVsxvUAiSatYJz7jbPrNHtdbDh5ECQ0H2UIFQyWJysP
         i5bA3A0oT+IxX6OUvLs2XTmbnLdLruv1006ZOoQI9oYPcJiq1RHCcmmtz06e1R4aEPe9
         UbI81lX05GnmLXHoyag9N8s8El51UZ2uuaPaJCnpJia9WI5LK1eUPFP3mZlGESF+4WOe
         O4Ng==
X-Gm-Message-State: AOAM532PU+tqQ7foWttlGOdVnjuSL8B/Z7S7cS9HLKuvYD3HZyx4n2hF
        801I1A9uvtBBIVkLqv9AzMO+P4+PGDEisg==
X-Google-Smtp-Source: ABdhPJxpgDUpp0cGmQMz+s9QfWmwblqV4FG/TTwVlCaa8KNBJmicen46J69xG/xQMLHIKNEev5zZ8Q==
X-Received: by 2002:a0c:da8d:: with SMTP id z13mr27214048qvj.17.1620157682345;
        Tue, 04 May 2021 12:48:02 -0700 (PDT)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com. [209.85.219.171])
        by smtp.gmail.com with ESMTPSA id l188sm11929685qkd.77.2021.05.04.12.48.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 12:48:01 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id 15so13815385ybc.0
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 12:48:01 -0700 (PDT)
X-Received: by 2002:a25:9c86:: with SMTP id y6mr36946496ybo.405.1620157681041;
 Tue, 04 May 2021 12:48:01 -0700 (PDT)
MIME-Version: 1.0
References: <1620111510-31455-1-git-send-email-sibis@codeaurora.org> <1620111510-31455-2-git-send-email-sibis@codeaurora.org>
In-Reply-To: <1620111510-31455-2-git-send-email-sibis@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 4 May 2021 12:47:49 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XNh63TTtCEO4gbRm3s6mJ0C9jiN=B58f5+5n1KZeAOng@mail.gmail.com>
Message-ID: <CAD=FV=XNh63TTtCEO4gbRm3s6mJ0C9jiN=B58f5+5n1KZeAOng@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] cpufreq: blacklist SC7280 in cpufreq-dt-platdev
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, May 3, 2021 at 11:58 PM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> Add SC7280 to cpufreq-dt-platdev blacklist since the actual scaling is
> handled by the 'qcom-cpufreq-hw' driver.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
