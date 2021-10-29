Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FD814402EB
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 21:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbhJ2TMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 15:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbhJ2TMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 15:12:46 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45458C061714
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:10:17 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id n13-20020a9d710d000000b005558709b70fso8433262otj.10
        for <devicetree@vger.kernel.org>; Fri, 29 Oct 2021 12:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=6E8vcYJD1fKDP3XaD/ycH8JYuUdwy86+ns+dWhU9gv0=;
        b=RocDwXFrDGO/UvAZFqVuRg/v72xtGyOM9Lk5I2qYuyt1+h8yABESCofSInZzYjJ7g5
         cOTtJivWVwprgwt3Q5LXiAJYIEl+sdyNTcBH1qmMMZJlh1QmB9bHBS76g/C8pElZQDuB
         q4l3oiqhf6zDfV9HFpik4L4/j1+eP7S6z4164=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=6E8vcYJD1fKDP3XaD/ycH8JYuUdwy86+ns+dWhU9gv0=;
        b=Mi5d1DgegHjvhFzC6HZD/Z+bk/QTZcjmJfWuudf+v+wNxQkfITwRIU+PQOFDC58mIq
         GK3UpM6HiEDUIZIMU7+xEw9EYVuakpuBRga4A59dDLi+IuR4DiPRXsWzveU0XT+pNszG
         It9AAM3j6+NXFShbWzkMRkupFydcpl2e7VzhwGd4ndQZSn6tgqwR2NdLaocT6jETrsH3
         zI5ABQrYd8nMxdbWzhU2VfPpCcI4LwwAp6am+6aRMeAf2TnY4MQ4Sb7vA0WV7lctDR6/
         uTbwy1NZ6OGvpWHrCr7JWASuXr9C0+O2u4nk91i93hrNYHJuS19wqXRKf9qNOQmXT625
         hhmQ==
X-Gm-Message-State: AOAM532B019co2fFQoZm77cJoktE9DepWcZzF9dithgcNonof+WRzbrV
        91kaqKhvIhPKzjucgT8rCUY90k0NpLClYoHti3oO2u02akk=
X-Google-Smtp-Source: ABdhPJxCk6IMb59lyzYez87DGQZ6Gc3q17oYBRmUQDgX/ynDSJlazwQKn7ZL0Q43BMkQWirfnUQPme8eEHyOBDDqfXA=
X-Received: by 2002:a05:6830:1290:: with SMTP id z16mr2825771otp.159.1635534616693;
 Fri, 29 Oct 2021 12:10:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 29 Oct 2021 14:10:16 -0500
MIME-Version: 1.0
In-Reply-To: <1635510619-6715-1-git-send-email-quic_kalyant@quicinc.com>
References: <y> <1635510619-6715-1-git-send-email-quic_kalyant@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 29 Oct 2021 14:10:16 -0500
Message-ID: <CAE-0n51eW3kkeW+3vJyqVTUF-R5G38SF2VjXi4SksuFbz=zcQg@mail.gmail.com>
Subject: Re: [v2] drm/msm/disp/dpu1: set default group ID for CTL.
To:     Kalyan Thota <quic_kalyant@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        y@qualcomm.com
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, mkrishn@codeaurora.org,
        abhinavk@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kalyan Thota (2021-10-29 05:30:19)
> New required programming in CTL for SC7280. Group ID informs
> HW of which VM owns that CTL. Force this group ID to
> default/disabled until virtualization support is enabled in SW.
>
> Changes in v1:
>  - Fix documentation and add descritpion for the change (Stephen)
>
> Signed-off-by: Kalyan Thota <quic_kalyant@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
