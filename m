Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC8273DF621
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 22:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240403AbhHCUNW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 16:13:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239100AbhHCUNW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 16:13:22 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 080DCC06175F
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 13:13:11 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 21so160700oin.8
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 13:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=mL66p7hWwJs0uODfuoDP6bwn2OF6cA0CzfTBUWUkGg4=;
        b=XS7RdH1UoHVjTZIVBMtzi7boDGmgd74mV5qkzXfTgWhhlsz3FFJTEDA96jM66q0qkf
         tnVqs4HREXO3oXmdzKpEJ5QPLD/vrXJKcTd6Abto1Wzs2Ai81iJHcmfPEb236VbvNpzy
         yXHQfuIRGFlXCLBAiYSqYmJ9UCVCi1qrG8OYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=mL66p7hWwJs0uODfuoDP6bwn2OF6cA0CzfTBUWUkGg4=;
        b=ODMhxUttGkFvnt3Cx1Vl+iLyh2keYtwgVF/b4ykAb3MJTPmHRQxXX7MpuHB2Fbbdem
         addCcaHIy7ybnYjU0A/wAFYo7LbFWiRc80BM9nwE9PdVUYJjQkiTuWdO7OmbpaEVt0u1
         7HXUeEJidWqrHvE1O8P7HErRyZbmI+K3vtGdBB7qTS5ZmO3+rD5WGOCY0G1yVBeUlkHX
         dr2maTGn9zVoHPu7CN9Kp9QQrejNLIYn4EzHVuuSHoB8Hf04zcu16758wMeQssZ9feuO
         t5/lM0+rV/6Oq3U1lG54jeTqOBUmQMj9XG+Z41Ptmu8WyaKV6A2GP3m6bCN22tdhQNbc
         WkwA==
X-Gm-Message-State: AOAM5331oNvE1W7ixd+xLhGlvzU0qhsHgfwCqdwyQKguaJw0XQ8bo+Fy
        cD3VjTwIezyobMuSiD4YyjkMLTqDu7gVw3PM9cHAdw==
X-Google-Smtp-Source: ABdhPJwHzCEof57wa5MwJlj+OLIE4A4DUTjhh66InjV2cvQnN4ABaOQLvHRfB7a7K2brpMYq1WkI3dr6mVq+wsZF35c=
X-Received: by 2002:a05:6808:114a:: with SMTP id u10mr16109374oiu.19.1628021590448;
 Tue, 03 Aug 2021 13:13:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 Aug 2021 15:13:10 -0500
MIME-Version: 1.0
In-Reply-To: <1627987307-29347-1-git-send-email-kalyan_t@codeaurora.org>
References: <1627987307-29347-1-git-send-email-kalyan_t@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 3 Aug 2021 15:13:10 -0500
Message-ID: <CAE-0n52+PvNpz5uqf3O_NsfQ4q2taeZmdSdoM3fGDLp5aQVj-A@mail.gmail.com>
Subject: Re: [v2] drm/msm/disp/dpu1: add safe lut config in dpu driver
To:     Kalyan Thota <kalyan_t@codeaurora.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, mkrishn@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, rnayak@codeaurora.org,
        stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kalyan Thota (2021-08-03 03:41:47)
> Add safe lut configuration for all the targets in dpu
> driver as per QOS recommendation.
>
> Issue reported on SC7280:
>
> With wait-for-safe feature in smmu enabled, RT client
> buffer levels are checked to be safe before smmu invalidation.
> Since display was always set to unsafe it was delaying the
> invalidaiton process thus impacting the performance on NRT clients
> such as eMMC and NVMe.
>
> Validated this change on SC7280, With this change eMMC performance
> has improved significantly.
>
> Changes in v1:
> - Add fixes tag (Sai)
> - CC stable kernel (Dimtry)
>
> Fixes: cfacf946a464d4(drm/msm/disp/dpu1: add support for display for SC7280 target)

This is wrong format and commit hash

Fixes: 591e34a091d1 ("drm/msm/disp/dpu1: add support for display for
SC7280 target")

> Signed-off-by: Kalyan Thota <kalyan_t@codeaurora.org>
> Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org> (sc7280, sc7180)
