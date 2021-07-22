Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7DF93D2D7D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 22:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbhGVTfw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 15:35:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbhGVTfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 15:35:52 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03AE1C06175F
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 13:16:26 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id f12-20020a056830204cb029048bcf4c6bd9so6462840otp.8
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 13:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=xXB6CY1/hyqIZ/vyf1haNoHbt4KWUoYy6vvZAmH1D+w=;
        b=oFGsQ0TKjSPUvmDJ+Ww7NKCOnlaH9mPPhQ8V1uT5yAbwlHkzi7XKHOwbKCdjsDCiFx
         yq1IJgMOZiLe6uDTqRaVUXxdZCoQJu8ag7Ir6ZFU8nUwgn7Znd4ZLaNh5xPaNp+azumy
         J/HSCBwivCGfPaDdx08xhc/6xnh7lVWGgPxdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=xXB6CY1/hyqIZ/vyf1haNoHbt4KWUoYy6vvZAmH1D+w=;
        b=RR5EMKt9OTW/NG43td9qzN4dxJCCF9eTfqZwNUe/hmOSSiZL0B3Bd6KismxZNHeNju
         2Ymy/jtdy4TyCJLeO0BmwgCW1cfX+GCG6bMYjQHD1IeNGlyGeFzpXUclaTsixa5+nVbg
         7fp3Ergd29m0I3AfzQa34yggcUkoq6DExHfhZ++Cbc9wAEHmQ4Pp413TkzgQ9+P1h8K5
         RYi94/11tP+yigkb4rxH5iFOCG0MFZi4HEuJ04wv6WJwlO4PVIjJUzx8SpXzoZJenXcn
         WR3bQOlAX+pnjzhu/x52qO6j58Dx85oeFkAGQJy0ram8DhK0UI9vlWskGMDjCd8nnjgQ
         AGlQ==
X-Gm-Message-State: AOAM530tgaH8edDMY0E/7sDMEamk1ODF+qNGMaK2k9VewDxPnjAqwEJR
        lbIeKIhdKuJjTf90b4rlrKY7Z4x161Pd7AZ6is/dfw==
X-Google-Smtp-Source: ABdhPJx9tD8Po38Bpw7rs+mj+04e7lSnkyOtBucxpHE2LeWBu5SLBnaseuHcQzXabjdCy3cHqU3feQ+K8Kq30uLlLb0=
X-Received: by 2002:a9d:650e:: with SMTP id i14mr984428otl.233.1626984986325;
 Thu, 22 Jul 2021 13:16:26 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 22 Jul 2021 20:16:25 +0000
MIME-Version: 1.0
In-Reply-To: <20210722024227.3313096-6-bjorn.andersson@linaro.org>
References: <20210722024227.3313096-1-bjorn.andersson@linaro.org> <20210722024227.3313096-6-bjorn.andersson@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 22 Jul 2021 20:16:25 +0000
Message-ID: <CAE-0n51ftru=ap2PvKiXDTVoQGA1drzU-C29b_KXTN=r=uC78w@mail.gmail.com>
Subject: Re: [PATCH 5/5] drm/msm/dp: Allow sub-regions to be specified in DT
To:     Abhinav Kumar <abhinavk@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     Kuogee Hsieh <khsieh@codeaurora.org>,
        Tanmay Shah <tanmay@codeaurora.org>,
        Chandan Uddaraju <chandanu@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2021-07-21 19:42:27)
> Not all platforms has P0 at an offset of 0x1000 from the base address,
> so add support for specifying each sub-region in DT. The code falls back
> to the predefined offsets in the case that only a single reg is
> specified, in order to support existing DT.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
