Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EEF334D81F
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 21:28:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231358AbhC2T14 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 15:27:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230213AbhC2T1l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 15:27:41 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E542CC061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 12:27:40 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id x7-20020a17090a2b07b02900c0ea793940so8202961pjc.2
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 12:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=KLlTAo4el/DFnNk+LNHJMO2kyu5BygdFuXHahiqxgP8=;
        b=VG9vKllJLEVGDoxMzgj9Ca/pHGciCQYIlbDtMvtq/UxPIoZJ7ECu6spWARntl5zsf/
         A8CFT16NL16g6h6qu6ZLx46tgg/KuMMZjqPKuBS6XcMnfxNXsZM1MfytkYVabIG6ZKDm
         PR3r01+kpuLeiEDca5bMktPktb/vRqeV0WdlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=KLlTAo4el/DFnNk+LNHJMO2kyu5BygdFuXHahiqxgP8=;
        b=BgHd0ulVLdXCpyMduWqYz5hCZybQB4ZLVzd7Kfd2dXL7hxB2Nhoc38tIO5t4+kdB+g
         SdhT3dnPF1xpW9Af8Ca7IDidce7dqNF9ShIQVR5xhaOUIZnnS0wb2F1GSywQYvIEe5Kk
         vkzN2FfpGXQBqgnYbhSzA8eqRcauZ93bjvQyUeOnLvyUCJ3NjRhoBLz5Boy3YvygOl2u
         +3RmHhDJCEC5iPPVgkIdZ84r3MSNcCZCQrOqYLq8IEAdclEMqMtxqmUMB6b4IGvK8qOQ
         RY+bfBtNRPiK3zYaRZ8p5AXjrSG5EJOqCGM0gAVgGj3fjW27F/CciDou6zZBfqgPZ0Ak
         XrTA==
X-Gm-Message-State: AOAM532bae0s6TQDGBp7QgsXb9a47CALCn6l7Lez1IA1L4fhHwFfIjkS
        53UPbDKLUk4sRJDHPsSYx8Rm/V2EF1GqeA==
X-Google-Smtp-Source: ABdhPJw1DhTcHAq11BdM7UZT1sQLUgR3VEzIOVIqTPbRMpjGdU3juswhlMA73YA6oU55nTpMohAISA==
X-Received: by 2002:a17:90b:4b08:: with SMTP id lx8mr616674pjb.135.1617046060512;
        Mon, 29 Mar 2021 12:27:40 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:4091:2b37:966b:1fca])
        by smtp.gmail.com with ESMTPSA id j3sm305291pjf.36.2021.03.29.12.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 12:27:40 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210329120051.3401567-4-dmitry.baryshkov@linaro.org>
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org> <20210329120051.3401567-4-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 3/4] drm/msm: add compatibles for sm8150/sm8250 display
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Date:   Mon, 29 Mar 2021 12:27:38 -0700
Message-ID: <161704605849.3012082.9945764472677336582@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2021-03-29 05:00:50)
> From: Jonathan Marek <jonathan@marek.ca>
>=20
> The driver already has support for sm8150/sm8250, but the compatibles were
> never added.
>=20
> Also inverse the non-mdp4 condition in add_display_components() to avoid
> having to check every new compatible in the condition.
>=20
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
