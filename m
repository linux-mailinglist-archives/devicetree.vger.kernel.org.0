Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30BC9402F54
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 22:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346134AbhIGUCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 16:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346102AbhIGUCd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 16:02:33 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0883EC061757
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 13:01:26 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 107-20020a9d0bf4000000b0051b8be1192fso564278oth.7
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 13:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=9Zw+ENmJBvtIj3INdZqSWHDc9XknMQ4poMiOqfGky9k=;
        b=N6kpr1y3WSumLzx9C+Q1Xl9F7ehngVdHOqu4nbZN30ggzXpYYeILncVCU3G0Le1aBF
         mtuP33EFdSOC7tJe6uW/VL2w9XgEcFrEfhB9j0J1AinEe1/LG2agZh2xqxDO7faseCft
         ppH5DeKIdxLZ7oM6qaxA4MOGLInnyiLWDqLGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=9Zw+ENmJBvtIj3INdZqSWHDc9XknMQ4poMiOqfGky9k=;
        b=qmb5cQA3fTY8iskm65/jjEUoJGxdBFaw7TuWwLEJ+i7Sdmfl9PCwizHrEJdWSQyo0N
         rZg/OP0/A7ZqGtRNWOC2VMpNy1dMLEm2CLPHgnN6wqKLd1qWcSHeFYydPfuGoqMV3dl7
         JAeZ+ONQKtnAL54PVu73SKsFH+AAKPZIpJpQuv8HhbRqqxHLOR5E0SKKwHnB3DasWqj5
         dWmSIXsu2lwJg8kt3aQHjmZonVpMzx8n+bDXKAQlBRGHcio8IL0NrSks2ltKOmjuu0Y9
         s8VXg4ZktqfPzGzjbUxXg4js8ArCnVIjtSZk6yfJBo1BjwrCgKSy/vFdR5Jw3boFZFHZ
         tLug==
X-Gm-Message-State: AOAM531oMs7ZaJ/GwiBNO4nQIMCCcEureGOSFRg4566U+o1pJSNHa2z5
        Mtnr23cL5y/0fXNwYvp1gZWMW2UmsKVNbhkz28hRHg==
X-Google-Smtp-Source: ABdhPJw6kZGLqVVN2awlrCBOX28FZkbtM+22KzHFlQj9SR7EoCtFKrTWdARqtlf13fI6bZedxgJFZTkj9lPeBVK2G7g=
X-Received: by 2002:a05:6830:18c7:: with SMTP id v7mr128559ote.126.1631044886290;
 Tue, 07 Sep 2021 13:01:26 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 7 Sep 2021 20:01:25 +0000
MIME-Version: 1.0
In-Reply-To: <1630918485-15052-6-git-send-email-sibis@codeaurora.org>
References: <1630918485-15052-1-git-send-email-sibis@codeaurora.org> <1630918485-15052-6-git-send-email-sibis@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 7 Sep 2021 20:01:25 +0000
Message-ID: <CAE-0n53LwrC=fL2_p-KQXpCP_1+rwteQbb9m0ejFHYz7G8Dvbw@mail.gmail.com>
Subject: Re: [PATCH v4 05/10] remoteproc: mss: q6v5-mss: Add modem support on SC7280
To:     Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
        mka@chromium.org, robh+dt@kernel.org,
        saiprakash.ranjan@codeaurora.org, will@kernel.org
Cc:     ohad@wizery.com, agross@kernel.org, mathieu.poirier@linaro.org,
        robin.murphy@arm.com, joro@8bytes.org, p.zabel@pengutronix.de,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, evgreen@chromium.org,
        dianders@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sibi Sankar (2021-09-06 01:54:40)
> Add out of reset sequence support for modem sub-system on SC7280 SoCs.
> It requires access to an additional set of qaccept registers, external
> power/clk control registers and halt vq6 register to put the modem back
> into reset.
>
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
