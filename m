Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F443405E8D
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 23:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347888AbhIIVGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 17:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347730AbhIIVGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Sep 2021 17:06:13 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE30C0613B6
        for <devicetree@vger.kernel.org>; Thu,  9 Sep 2021 14:03:20 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id q11-20020a9d4b0b000000b0051acbdb2869so4311308otf.2
        for <devicetree@vger.kernel.org>; Thu, 09 Sep 2021 14:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Inuz8zjQpJ8vk0GRKUjv4itxCxxuAm5ggH2rL74CYCo=;
        b=d9PkoVnYvdQBvNX4WHkbuiSrkkvxhgvnV2vCdhmeeozkYSR6EGbZZ6ZUfJOxv/gfcS
         y34dbvibMZcLJIylua/yfIqUF6zWfkxgUayXj+mXiVUyjAu/D55CAsJv/J0DNU4bQpJ5
         tvOr8XKYcak6AFVcY31g0W5ngrW3+11dSwTkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Inuz8zjQpJ8vk0GRKUjv4itxCxxuAm5ggH2rL74CYCo=;
        b=RQAVlhpTWIBCsnwvi3xMxFIGEg55teA6Q805E4WyG9sjIDJQzjIX7KD/W1wOncYf5D
         ZjEvubUaT1FQOf7nnDE3fMxK9mvsUgXMJFmRtMMp4bhmb1WCiyfSPKlQMjwyf/0Bz4/y
         QTcESj7cDcnmQIhb8wnKPyuUB+5tqohbnoosY7vtcNj2NydcvNld0qXwDzS5CdzxIPxp
         RMmRj2usXjXFfh/o7MHy+r5x+/CJit+8PB1kkllsum/7t7nwTRmucHIjNv5fpNy33gaj
         /FyIMiOyO5rRQ0okXGOlaeyKCAEjx6PWurXSZgIz23Pzb0rxQHSJpZ+FX2Bqe9awES0G
         uwXw==
X-Gm-Message-State: AOAM533+HMh/JmgKyQGLnLZhVsEXqbJfT2YORY+UocQ0g3U91QhbbGzq
        24+tiyWnOHspYFquyhc5I8znZDrLERT1i7zn31cuGw==
X-Google-Smtp-Source: ABdhPJxzzYHJmjZxncLWDDGzJ6ALyyZzP3+wJ9In+ibvaJy4YpGmbTqacIrA8T+1HS5SfE/5dxVBYmb1wu2mA1UftOc=
X-Received: by 2002:a05:6830:18c7:: with SMTP id v7mr1700256ote.126.1631221399723;
 Thu, 09 Sep 2021 14:03:19 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Sep 2021 17:03:19 -0400
MIME-Version: 1.0
In-Reply-To: <1631216998-10049-1-git-send-email-khsieh@codeaurora.org>
References: <1631216998-10049-1-git-send-email-khsieh@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 9 Sep 2021 17:03:18 -0400
Message-ID: <CAE-0n505ihV0eYsk2oyeeL8=DSCW-Uq=hVt_8BhVxusRq7R9NA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: fix display port phy reg property
To:     Kuogee Hsieh <khsieh@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     abhinavk@codeaurora.org, aravindh@codeaurora.org,
        mkrishn@codeaurora.org, kalyan_t@codeaurora.org,
        rajeevny@codeaurora.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kuogee Hsieh (2021-09-09 12:49:58)
> Existing display port phy reg property is derived from usb phy which
> map display port phy pcs to wrong address which cause aux init
> with wrong address and prevent both dpcd read and write from working.
> Fix this problem by assigning correct pcs address to display port
> phy reg property.
>
> Changes in V2:
> -- rewording the commit text

This Changes part can be put under the triple dash. This isn't drm tree
material.

>
> Fixes: 9886e8fd8438 ("arm64: dts: qcom: sc7280: Add USB related nodes")
> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
