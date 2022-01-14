Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73ED548E40C
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 07:09:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239264AbiANGJk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 01:09:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239248AbiANGJk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jan 2022 01:09:40 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D50BC06161C
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 22:09:40 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id y14so10964480oia.9
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 22:09:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Bxw/cg1OtfYpehtuOWl6trsS8byV/tCna5bA9Hciq38=;
        b=bJxs/1djYnbWhcDVrtCbCvLdq4ylkObmVM36mvDNzMJ3EUaaOt0StDdjPVO8PwXgpb
         +wo75gEpcrBQaIbQaTwsZZgS9/8XjZAD+PUuf8ejhiZ3/pAgxSrPmdv20O/n1DmEGze9
         vum4qMIl/koJdrhOBQH9apS/aw0lX5Xr4rajk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Bxw/cg1OtfYpehtuOWl6trsS8byV/tCna5bA9Hciq38=;
        b=cjEcbu2vHeWQrMWRNouvOazXcirmQtVuNqY+R2kVDbcW00n1lDb6xfghUl8KofqAYY
         zyd0srozJUAqKTgNPwAhcdm3k1iobI8pPYzvPIQ9SnW41S252vuEFB2JgeVPPUd/heMU
         c8HXWXX5wHQuJvJVrPUxFLS662Dn5MTzJzUSEyJRIwuEdDoLXnnHZPFeJ49eiIQ4RRHl
         SoCafoyIMGHtAF+CiFT0xKJ5RYjpxVK8yDfsyFMnY3u825RTttBeePOfYLm8D56IznAw
         zG4Xt4Qgw01GwZg+HrRga9xUHaH+MFJGCyPkvscK1BJed2UDSX990+71kAGBuBxKA2jp
         W8WQ==
X-Gm-Message-State: AOAM532Q8W8k1tBMEqj6z0pQkS04ZUnjxsT1DLsYDtTdusOskgM2srTL
        oW26v/KyNh44taubiiiydAanvlw6ZyNA7RvsCky9+FG+JI4=
X-Google-Smtp-Source: ABdhPJz0Jj9giCbEUCEvg3JNgG1ETTwqEyTEbOsG01XGsWpBg3J/q9A1AsiRrjiHqN78oAMN2cePdL1TAVKY8amYskI=
X-Received: by 2002:aca:4382:: with SMTP id q124mr6180491oia.64.1642140579551;
 Thu, 13 Jan 2022 22:09:39 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Jan 2022 22:09:39 -0800
MIME-Version: 1.0
In-Reply-To: <20220113164233.2.Id9716db8c133bcb14c9413144048f8d00ae2674f@changeid>
References: <20220114004303.905808-1-dianders@chromium.org> <20220113164233.2.Id9716db8c133bcb14c9413144048f8d00ae2674f@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 13 Jan 2022 22:09:39 -0800
Message-ID: <CAE-0n53YWYKJ+bR_X9QmaO5jyjBPQOfA4cDAYi1zRWj2ip73vQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sc7280: Move herobrine-r0 to its
 own dts
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     quic_rjendra@quicinc.com, sibis@codeaurora.org,
        kgodara1@codeaurora.org, mka@chromium.org, pmaliset@codeaurora.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-01-13 16:43:01)
> The upcoming herobrine-r1 board is really not very similar to
> herobrine-r0. Let's get rid of the "herobrine.dtsi" file and stick all
> the content in the -r0 dts file directly. We'll also rename the dts so
> it's obvious that it's just for -r0.
>
> While renaming, let's actually name the file so it's obvious that
> "herobrine" is both the name of the board and the name of the
> "baseboard". In other words "herobrine" is an actual board but also
> often used as the name of a whole class of similar boards that forked
> from a design. While "herobrine-herobrine" is a bit of mouthful it
> makes it more obvious which things are part of an actual board rather
> than the baseboard.
>
> NOTE: herobrine-rev0's days are likely doomed and this device tree is
> likely to be deleted in the future.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
