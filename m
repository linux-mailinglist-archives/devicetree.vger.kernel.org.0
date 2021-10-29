Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67BB24402B4
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 21:01:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230517AbhJ2TEN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 15:04:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbhJ2TEL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 15:04:11 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 231A9C061203
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:01:41 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id t4so14696013oie.5
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=TVdi6Fl/MB/KZRsgDzQbukqjgZZAtYkijpdGcF4lmLs=;
        b=MzXdmS/4QiP7cYNzBGEEG80o+PYN5LU/WzOdNbM7Wmsq/moQK7lgMJNg2Lg+WE6JVB
         DmmMtuKqDZP9s6K4K6Wb48SjzZ1WpFD69doHDWGMe2Oi2McGvNwu7A5Kr2Wbze9/wVzp
         tWo8uMFP7Docoe5tO62X0zga0xREye+jI222Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=TVdi6Fl/MB/KZRsgDzQbukqjgZZAtYkijpdGcF4lmLs=;
        b=veq6o9Vn5tB8ZPlOYEKBojXTJ1pnAYJtliYwFFUafiXZgL2jDwsEEDEHj9PIp8dnHg
         BzvYSE3oWPCZ6f8PNYUAX9MTIm820dmFKM8j5D8Y4oblJFj6g7bg1vCMiW+majObuGAy
         YtWZw89PMUSl0C/+Ki5AxDd2TkNMkRevHaxP8btuC9sshuqlWZOBcUrm8m48lNFJYHCk
         +j+WpeEgKVcj6178oSZI1glnHuiAApidt1NSQCWDPGWu14U84VMC3u23G4K03S035TDl
         coaGd4bWmYAftmkeOhV58ANg2yU3u+VTx7ERNEM/9cmorXkQ5ISy1HSYA2r5pvxgAywr
         tnRA==
X-Gm-Message-State: AOAM533d8k6AWx03HqP49Dtg0m5AgvjqRtH4Fn388fiWzhWk79A9z+l6
        x8DkV6G0ukOx9qlcWVQDqgP+8ewsNqeMOSR2BrJ3Aw==
X-Google-Smtp-Source: ABdhPJwQlGvsBPbd7Afpn6FwkrBTZ1o9iZWKjlIZ/CCM3AABnc3sMrHfvoL9Q2sTgQvJLiS+2ORNuI2alq53l5/KmWw=
X-Received: by 2002:a05:6808:2307:: with SMTP id bn7mr1203456oib.32.1635534100470;
 Fri, 29 Oct 2021 12:01:40 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 29 Oct 2021 14:01:39 -0500
MIME-Version: 1.0
In-Reply-To: <1635507893-25490-3-git-send-email-quic_c_skakit@quicinc.com>
References: <1635507893-25490-1-git-send-email-quic_c_skakit@quicinc.com> <1635507893-25490-3-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 29 Oct 2021 14:01:39 -0500
Message-ID: <CAE-0n50MZAYkQs4=wmq0oBb3KxFGa9pKevEEtkOtjZ=35PV15Q@mail.gmail.com>
Subject: Re: [PATCH V3 2/4] leds: Add pm8350c support to Qualcomm LPG driver
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     mka@chromium.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, satya priya <skakit@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-10-29 04:44:51)
> From: satya priya <skakit@codeaurora.org>
>
> Add pm8350c compatible and lpg_data to the driver.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
