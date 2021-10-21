Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22346436ACF
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 20:45:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231953AbhJUSrj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 14:47:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231933AbhJUSrj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 14:47:39 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98B6C061348
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 11:45:22 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id s19so604726ljj.11
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 11:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=9MuLW1yfrGnnXorHHuXQXcRAluIurMXU5vrmf/nqkGE=;
        b=FITLZmM/2oE6KZ12z4Oo85YoKei0F42uWLMnZ7ontaKS8PHbrY0Qfaugi2465wnXNJ
         1fFUxxF/tZhW4Jpy10fPp/i8kRij5Z3QLe/WsNl6HLtGtkS1hF7li4+I6pV6tN9PY62O
         zmWUJ18OgEvHA+oSZ3HmZPt7a8MHp05RfAqfo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=9MuLW1yfrGnnXorHHuXQXcRAluIurMXU5vrmf/nqkGE=;
        b=iOLz7xO5CJ3xXSiJ1UiCfRS539aKnzewkpVI4lDApNb0iewAg6QCRlabDm+6/tpEzY
         gVF+hwtQRtymy1Y0wwwn7Ba+WGp99tDhkmqo+oeHuVffNYEJNCZrw97gyeUqYCt/QJVz
         3BmaG9K8yGAWdgu+POwtTbjhzoeJSKoDPmpB0w6X+nCQpT2ZgzgYwFVqRAFQbBfV8UtF
         lQh+t2zDGVaPfEh0/XaW88Sk2lGtHYmbm/QHoGt24d1Xc2wVm9YcXZfP5hGf/TCMIvUo
         aGDK4Wo/w1lQGJrinW5FU+8wV1gftq9GlbGeXcnOz4VzCCdi7853lI25aGZo0dsF6+1L
         a/Kg==
X-Gm-Message-State: AOAM531IqvHKvH7/uDmfkPVBAML5UGZfrPjpGpSUDXyFtAhnp/cT1E2U
        BkHx2/TfvluF9vZgV24shxstqwPV2jAg6g6NCfXO5dHuQKc=
X-Google-Smtp-Source: ABdhPJwpbVQtsFa1/rdGMFSiAHJ/DrNi3DxrP6HwLnRItX7TvhyyMIFGC8yEIl690fJTmadvvpEHD+Ho6z6kxVBZMW4=
X-Received: by 2002:a05:651c:283:: with SMTP id b3mr7755337ljo.459.1634841921121;
 Thu, 21 Oct 2021 11:45:21 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 21 Oct 2021 11:45:20 -0700
MIME-Version: 1.0
In-Reply-To: <1634738333-3916-3-git-send-email-quic_mkrishn@quicinc.com>
References: <1634738333-3916-1-git-send-email-quic_mkrishn@quicinc.com> <1634738333-3916-3-git-send-email-quic_mkrishn@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 21 Oct 2021 11:45:20 -0700
Message-ID: <CAE-0n51Q7Uir5LvmU8MJG-KmNsiYN690xr5svVv8_H=de-EkpA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sc7280: Add DSI display nodes
To:     Krishna Manikandan <quic_mkrishn@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     kalyan_t@codeaurora.org, sbillaka@codeaurora.org,
        abhinavk@codeaurora.org, robdclark@gmail.com,
        bjorn.andersson@linaro.org, khsieh@codeaurora.org,
        rajeevny@codeaurora.org, freedreno@lists.freedesktop.org,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        Rajeev Nandan <quic_rajeevny@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krishna Manikandan (2021-10-20 06:58:52)
> Add DSI controller and PHY nodes for sc7280.
>
> Signed-off-by: Rajeev Nandan <quic_rajeevny@quicinc.com>
> Signed-off-by: Krishna Manikandan <quic_mkrishn@quicinc.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
>
> Changes in v2:
>     - Drop flags from interrupts (Stephen Boyd)
>     - Rename dsi-opp-table (Stephen Boyd)
>     - Rename dsi phy  node (Stephen Boyd)
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
