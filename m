Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6AC42B0A2
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 01:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235105AbhJLX5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 19:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233903AbhJLX5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 19:57:00 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06100C061745
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 16:54:57 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id p13so2821975edw.0
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 16:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JsDhOlqzhOapvl8qxZ/zkHGlh54hY6Kt5vSuddjS2m8=;
        b=jNR2hBGDsozEooWWvO9GWItqGjJUZg4h7ASntvUqvgN263KyNqEKuIkQ+9JwuLlHJC
         rmMLJRkNYZtc+mINxh1zuZgPeE1Y4VHbmk5J0p2QfEeWGRRVHfTTtkVfOwrQiQhSrjuC
         wXLlSvn688W0u9euPEq04KXD994cwEft8X/wUu06OvI4u8Gb8GqvFos8PCsl6d0SEvhM
         9VX55ChOyMd28ZGMxsrOEwLfTO5YnsL4LipilL3VlmJxj5khEcDbb2+84Lqk1ixZucX5
         tEPLqip+3aX6X/FIve2FBOCF0p0gtx1yFx+m6jHuel+Nzt7P6GFO+uHVzcBN85JYvbLI
         MQWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JsDhOlqzhOapvl8qxZ/zkHGlh54hY6Kt5vSuddjS2m8=;
        b=CzIjlNMg9KPrN2UIMvGDnATCThEUqn6+GAsYTOWs5lrBd/Ikorb8FJLBF/pWq+T1+v
         pfVcVnn/tVec0LFhzcMHetc+lgZ47qh9jmWl303pU0e+hY+zKgTVz22bZR5h/2N4gWrg
         KUTIMvia//qpFzhlGhzPK5g7vA6lcc5NcARxCqRmXGtZzrPfMeP+JaGb9Z9GOdt5N2Od
         rfyu1T8z/iro+3iEp+oc26ujzL8F6WoOVjbi/CuUbDdcfc/JCAUApnrC5M4SIcOI9Pqu
         ta5iLD2gZzdxfKGZT+07HHgLzDIdPkGy6EtegDmyjM/0lI6wrpJQst6hZFSSqaIOpyKJ
         W7bw==
X-Gm-Message-State: AOAM532VqVGy8hHnB1Zvl9Yq/tsSGoLvI8VLWj5VAqkOzzT/aPcadixm
        egGaT8coIXQaZi704XdN/2U9GWJ+AJsKp44GV+EEww==
X-Google-Smtp-Source: ABdhPJy0Ta/y0E0vjs17iI7GLoMijAuqH+qD48WZvbHmNnsvA0FTaJkHEiqVaJJ7O8N7vTMtkohDE4idInHyytpVcjc=
X-Received: by 2002:a17:907:118d:: with SMTP id uz13mr38510164ejb.382.1634082896509;
 Tue, 12 Oct 2021 16:54:56 -0700 (PDT)
MIME-Version: 1.0
References: <20211008012524.481877-1-dmitry.baryshkov@linaro.org> <20211008012524.481877-4-dmitry.baryshkov@linaro.org>
In-Reply-To: <20211008012524.481877-4-dmitry.baryshkov@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 13 Oct 2021 01:54:45 +0200
Message-ID: <CACRpkdZEdJU9sjV2VPejSPc7Rpth3JFrtYihuT9P0VJVnqLqyA@mail.gmail.com>
Subject: Re: [PATCH v3 03/25] ARM: dts: qcom-apq8064: add gpio-ranges to mpps nodes
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 8, 2021 at 3:25 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> Add gpio-ranges property to mpps device tree nodes, adding the mapping between
> pinctrl and GPIO pins.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
