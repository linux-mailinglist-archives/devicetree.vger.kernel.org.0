Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5666E34D83F
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 21:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231876AbhC2T3c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 15:29:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231871AbhC2T3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 15:29:16 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2618C061756
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 12:29:16 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id x126so10482465pfc.13
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 12:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=jeFzlMEdccDF7Qt+dm5jLoV1df3/X2IPz/2VrJ7mbME=;
        b=exFMnH8xjMUVUgVY66V5i8Xn2XL/uVytTE4/F2QC6Zkj1C4L9IMkrfDC9lUIeYVXnH
         3Q6Pd6FNYahec4OyqemEPfopKmlc/FDAuAMJnugE7Ep7/3vkDqyUwGa3cJHU6OoNz2kQ
         iw6itbkxz42n3XnWBr8lPI+OX2BrNamXfHL2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=jeFzlMEdccDF7Qt+dm5jLoV1df3/X2IPz/2VrJ7mbME=;
        b=dHIuG8Q8CswCBmh3dKvZTQDVYzY/QXCVGBzHOT/JBej8pEwJimn59+3SRXes6VmPHJ
         hbvT4IuQDYBZAgtQ1rz/wNJs69rpRRsP0NNxqf9C70L9BfGjvzNfWngVpI0Y/+wvnEc1
         zLTyPmwgm2gEX/QL80/p7g7to8+4b4mmycIFNIQPz4A8ExbiVllIuKQtGLWLRvuFUnzO
         b5Ipibq9xo0nxUZIOKGmvdXbVBdZiIqVAsFpSg+VqYts6NUidFYrrkVSkZyn1BWEcQcE
         oQbh/rNmG1ToL/UY54ezrUA0nPZnIjlGI1xy0htKg78K8fbyiXPu62RKgxNZ6lWVhlnV
         mbxQ==
X-Gm-Message-State: AOAM531fN2dSJ8ua/XC7OkNL0Wi18jpg5+Y7YVfDBu1XbpIYfRM/Y9YA
        ivMlkis6WgS+ZC5Zn49Dp/J8FA==
X-Google-Smtp-Source: ABdhPJzpjW4LArmS0MewXwBVMlVp8N5xROEOFLhzj8Opd36ePYrxamWZ2tpcFs23OIFdquryams5Iw==
X-Received: by 2002:a65:61a4:: with SMTP id i4mr25471889pgv.39.1617046156268;
        Mon, 29 Mar 2021 12:29:16 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:4091:2b37:966b:1fca])
        by smtp.gmail.com with ESMTPSA id 205sm18073002pfc.201.2021.03.29.12.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 12:29:15 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210329120051.3401567-5-dmitry.baryshkov@linaro.org>
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org> <20210329120051.3401567-5-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: sm8250: fix display nodes
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
Date:   Mon, 29 Mar 2021 12:29:14 -0700
Message-ID: <161704615451.3012082.15618069383141056363@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2021-03-29 05:00:51)
> From: Jonathan Marek <jonathan@marek.ca>
>=20
>  - Use sm8250 compatibles instead of sdm845 compatibles
>=20

Does it need the " - " prefix?

> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
