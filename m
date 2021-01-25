Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 684D4302C8C
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 21:32:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732202AbhAYUaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 15:30:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732309AbhAYU3t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 15:29:49 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEBEFC061573
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 12:29:08 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id h15so5888616pli.8
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 12:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=L7hcJowvgJK8XV5T2kSWijbbIn+FH0xsHHJJGhXiQE0=;
        b=O0ld6mWRMFPALAbHEFHcpFb3ogYdK765/sIFvWxcavPzvG3UvEenEJG/4gDiZpQxp3
         dKdkzZEU1UiaGk3ow1+GBrlKcORtjunc2W2f+ouEhzj0sVyZp+sHgSv5dzqdgwEmk1Fr
         TXufxTyI0yW8X5HVP7fhfvH7h0DHQKCtx8zZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=L7hcJowvgJK8XV5T2kSWijbbIn+FH0xsHHJJGhXiQE0=;
        b=hmbqcXFZMuFZspWkrEyf++omPlyAvmgJztHIJZJiAJAD7t6NhWCieGdFYnsVoriZBt
         C27lOlW53soNkegA0UtV7LjTyehwdAT/oQCSL/57ZfPgg57UiXE1Szi5U1Hs0yMQRWDy
         MrhIBFbA+B3yCMTIaNrXhoODEJoAIUUmRTwiwZIUqNovQEChQcYGImhcVzB0UlgWeZm0
         V6KJC7YMk73zjybM+p+CS12bvU6y5nQ+sOFXA1f4U72+HbDqfjK0fE2wtgQkVeZ9QLFA
         S3ww3jmAcYRUyZ7H5htF6iyHA8JzqGyS4mLSDGWyiEzDz8iWCH/cqkqPTYUGr7MVR9oQ
         7Mfg==
X-Gm-Message-State: AOAM533YY7GdspbohwnLmI8wJjwhssv/Wd0mB4GsuAoy1TocaOiqBJpx
        xOQ7DdDtdWJRnYOu9AUHBk/5ew==
X-Google-Smtp-Source: ABdhPJxsTjN0zorpk0zOXXWw8UDdJVB06DcpY582k8+LI0wqcMj42Yy6RVlk3j+kBGaTZOz/Ysc8AA==
X-Received: by 2002:a17:90a:4dc1:: with SMTP id r1mr2045991pjl.12.1611606548517;
        Mon, 25 Jan 2021 12:29:08 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:1066:b437:97cd:2278])
        by smtp.gmail.com with ESMTPSA id i62sm14073923pfe.84.2021.01.25.12.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 12:29:08 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210115144345.v2.4.I6889e21811df6adaff5c5b8a8c80fda0669ab3a5@changeid>
References: <20210115224420.1635017-1-dianders@chromium.org> <20210115144345.v2.4.I6889e21811df6adaff5c5b8a8c80fda0669ab3a5@changeid>
Subject: Re: [PATCH v2 4/5] dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
To:     Douglas Anderson <dianders@chromium.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Date:   Mon, 25 Jan 2021 12:29:06 -0800
Message-ID: <161160654656.76967.8777176702304883328@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-01-15 14:44:19)
> Another simple eDP panel.
>=20
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

With subject fixed

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
