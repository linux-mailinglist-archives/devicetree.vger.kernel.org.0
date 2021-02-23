Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5D8322672
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 08:38:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbhBWHiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 02:38:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbhBWHiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 02:38:21 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BADFC06174A
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:37:41 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id u11so9290112plg.13
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 23:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=u2B3IIIwkE3tgEdHTrqZs1u7oe4Q82f/4lKWEp4CuHk=;
        b=YG/IfjbXpTPsLkY//1Oq66u1FSpP8z6m6pLikJX/OBt2hLZFSnbhCOwKPzH9kHYpWk
         8Lulk03729p0ljUjIArcVFp7KKXyYs5PDtqmigRavM4Lef5Gna0DHqRvpFys+SBZzHJh
         UnqdD9exrv2WshbPxk0NU2X6/gg7Qv8Xuzltw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=u2B3IIIwkE3tgEdHTrqZs1u7oe4Q82f/4lKWEp4CuHk=;
        b=NrdcWjDDpYY/d3pgHrOKTUXid755MDJi7EJuSg3Z4rOQ6ufxj0cbtz/kv/UoGWuhas
         mO+gnm2u0+jBz/ffqsZKlLUbtTbHVJ2KRd5bK0GIp2MfoPn1CjUvNKdojDheidX5AIf1
         y9XJvZaq7YVTNBDCCdIq/A/rx3rNMgScPyBhSXyTU6ejHiOvZXIA/l8ceTMZDrlT7tFi
         II6MtnCSMc1K10/GMTJaHqQj9gLpVNSwlPFaCumP7JcYybDsBlKM7sQ1Ixo5YINMSExF
         1FuAS1TT8Liz93XLfhSII09G2olLIeUhsKZ5/5cOX+OiBWHh7FfCeuLOVGuTbiGY6XlJ
         u/mw==
X-Gm-Message-State: AOAM531QQDzdYFJIiXmSRoA54cl1tZR1yNEW22wHMkr2Al7qkNGx9SPo
        rix5LdIK3gf02duTM9YiuZROEelso9RXHg==
X-Google-Smtp-Source: ABdhPJwq6E7Y5lLL0pkr+fRs1hZCScUZO3u6xiQIT8tahHLwG7WQlsyJtQniukFlG4b2jpQGya0PYA==
X-Received: by 2002:a17:902:68:b029:e3:c8ea:a562 with SMTP id 95-20020a1709020068b02900e3c8eaa562mr18463103pla.23.1614065860847;
        Mon, 22 Feb 2021 23:37:40 -0800 (PST)
Received: from chromium.org ([2620:15c:202:201:68e6:d68b:3887:f216])
        by smtp.gmail.com with ESMTPSA id 25sm22560084pfh.199.2021.02.22.23.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 23:37:40 -0800 (PST)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1613114930-1661-4-git-send-email-rnayak@codeaurora.org>
References: <1613114930-1661-1-git-send-email-rnayak@codeaurora.org> <1613114930-1661-4-git-send-email-rnayak@codeaurora.org>
Subject: Re: [PATCH 03/13] arm64: dts: sc7280: Add basic dts/dtsi files for SC7280 soc
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Date:   Mon, 22 Feb 2021 23:37:38 -0800
Message-ID: <161406585892.1254594.9748953968478715173@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-02-11 23:28:40)
> Add initial device tree support for the SC7280 SoC and the IDP
> boards based on this SoC
>=20
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dt=
s/qcom/sc7280-idp.dts
> new file mode 100644
> index 0000000..428f863
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -0,0 +1,47 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * sc7280 IDP board device tree source

Is it capitalized or not capitalized for SC?

> + *
> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7280.dtsi"
> +
> +/ {
> +       model =3D "Qualcomm Technologies, Inc. SC7280 IDP platform";

Because it is capitalized here.
