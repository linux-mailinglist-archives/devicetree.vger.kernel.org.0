Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D070346E0A4
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 03:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229691AbhLICFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 21:05:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbhLICFg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 21:05:36 -0500
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35C85C0617A1
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 18:02:04 -0800 (PST)
Received: by mail-oo1-xc2e.google.com with SMTP id e17-20020a4a8291000000b002c5ee0645e7so1374419oog.2
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 18:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6jF6qRe5SRMSQZX8Z8oZJBZNxo3XePJj0xDc5654/qk=;
        b=wCoIOYuGPwfhnh5mM8AFZxRvgEPnUsc5SsVISnljiYoCtEFEY5OwxVjc2qHSvDoVHl
         5rUPE3/+8tOvWbZXMrYYgorbcYEd6PUoM/KOi8ic4/04344sX2XQlY4rHOGCB0mievKi
         inqa6tXO3P2+P/g4H1Uh4RLYO/DioOGyKOPgxXPGRjlfoxpqMGNxWBY3oQkA6IO1sArM
         6T1q2W4a6EmzJ6yZgOmHkbV7bx3hcM5cDvkM5NnnnZ0GvwwpIjNv+P40xLsrzveaj4Ej
         cE7fWuY+j7j5wtbh6IAtAONqSvAz+mWIIHBfSTnoqdu58vD5zkJWZ2oSXv8KVKkHsbcY
         xJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6jF6qRe5SRMSQZX8Z8oZJBZNxo3XePJj0xDc5654/qk=;
        b=M57lmwrcxtGEUw7+OhuM9/g+a6Wfj2vWfWETmjpanoOvm5MyBGODqPMekol2IaJojU
         x/ykPfUB9m5Xd85Hy4nBbLAXzr2oKOp48XKHLWSsvrhtFWhI0bBLsEdEexfZqtTZE6Tz
         CDeMrxRvssDHH5cLDzvKAYuetk4dzRCBULrs4xO/VK+OeajjbVeEETYVtFAEkgVr9vx9
         B6O+6v5CGbtX4nZRUPMdtt03OoOgLJftB4EyN0ODRZKG6NX/BmvEz5izWWtAPq1VfK6r
         JXUfhzOIUzOYgO/7IuoOaRpFJ6+9dI7+EVobPh8Kswd8XjH4L6V/wW95aH14K1Qm8dqv
         12CA==
X-Gm-Message-State: AOAM531Im9uu3IrxQn4W7sJRKf3p+GG1vZ5Kxb27+EsCtZ8SuAzSdIgn
        XwG3i4WnkhC1O4yqIGnfXgPhXNcFFvE7kSdlGe8zvg==
X-Google-Smtp-Source: ABdhPJwwJMv8SYHU3EkSbYrgYngnVgHQ4AO8cwD1tYGgWSvzZ9StW1TExuN282563HLeY7phJa9zhbYnSnz/V5tFY1k=
X-Received: by 2002:a4a:aa8f:: with SMTP id d15mr2221617oon.86.1639015323501;
 Wed, 08 Dec 2021 18:02:03 -0800 (PST)
MIME-Version: 1.0
References: <20211201072434.3968768-1-vkoul@kernel.org> <20211201072434.3968768-2-vkoul@kernel.org>
In-Reply-To: <20211201072434.3968768-2-vkoul@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 9 Dec 2021 03:01:51 +0100
Message-ID: <CACRpkdZP7Po9JaozB7s7--qoM90a1YBdu0bwTHYPuDi-Cr0sXw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom: Add SM8450 pinctrl bindings
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 1, 2021 at 8:24 AM Vinod Koul <vkoul@kernel.org> wrote:

> Add device tree binding Documentation details for Qualcomm SM8450
> TLMM device
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Patch applied!

Yours,
Linus Walleij
