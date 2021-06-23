Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8B073B1735
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 11:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbhFWJuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 05:50:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbhFWJun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 05:50:43 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60627C061574
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 02:48:25 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id r5so3086427lfr.5
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 02:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fKjqUJhszdXpyl10YQ4tIa0Xd7F4iUZDn2xLPlegnEI=;
        b=FE9pvkD16UFCog6pYfw+v3pkk22K4ZVJ0zpA40ZmsTACa8+HUEKertA/5DIJQRH7oZ
         s/mXcY3jEIW+TEtrd4Q/ywwl3JyabAooIGA70VZESqb8GpqY1Dl0WzM2rpBR+iONY1af
         xlfT5kjs6Rz5lX4/gGFffB/Kj9SU8ZuHIo/YI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fKjqUJhszdXpyl10YQ4tIa0Xd7F4iUZDn2xLPlegnEI=;
        b=c9rZCCe8rOgsv/bdHgireZ3Mr0evLiKsKRNKHHGT7zPS+xs3vaTJ5jtQokWWEr/As6
         NYM+8nSVycc2Fv9+2ZeettIjroXSwEl90vIH9asZEm7t8beKZq4d4bCq936hLehjoiP3
         Ii6NQeujC9DOZTSqC3mgCsvAgsja8x4YUJIGM2rtL1ri3dIJwrd9CPPQNRk6qtszW7W7
         HQFj1MwsKqg9XcuwyG0BhI+9Q+xKcZm+RNlN2H/eajftV+E3rxAZaUuDVgbM8XfYn/YB
         zXe0NOLFohDKkVFMQxo2AeqOO7XTZCuQnoctCuVPW2fRH00hEJjbTR6qWPb226l6kcm8
         wZ9w==
X-Gm-Message-State: AOAM532vkLDJOg/0YOyt0W/MAnkxdMmvoLHjRNKycXHQZOcAIXY2Y3lX
        sVgLF7zW2eGsE99+UVYMJJIoItcZJPton7VrPRxMEw==
X-Google-Smtp-Source: ABdhPJwFufLUGkeN2pDvzmj2Ujaq8TRsFGO5abB0KNvd6vttc1EzSYrcmK6EwOHYKsjU7Jyh6LNg/R9FGuatMvavY5U=
X-Received: by 2002:a05:6512:3f13:: with SMTP id y19mr6314168lfa.444.1624441703656;
 Wed, 23 Jun 2021 02:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210623092917.4447-1-Christine.Zhu@mediatek.com> <20210623092917.4447-2-Christine.Zhu@mediatek.com>
In-Reply-To: <20210623092917.4447-2-Christine.Zhu@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 23 Jun 2021 17:48:12 +0800
Message-ID: <CAGXv+5GXfabPk4NV=d8YxQD1UHeqE9M7bgCeG-FT0Ef1n5ECgw@mail.gmail.com>
Subject: Re: [v3,1/3] dt-bindings: mediatek: mt8195: update mtk-wdt document
To:     Christine Zhu <Christine.Zhu@mediatek.com>
Cc:     wim@linux-watchdog.org, linux@roeck-us.net,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        seiya.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 23, 2021 at 5:30 PM Christine Zhu
<Christine.Zhu@mediatek.com> wrote:
>
> From: "christine.zhu" <Christine.Zhu@mediatek.com>
>
> Update mtk-wdt document for MT8195 platform.
>
> Signed-off-by: christine.zhu <Christine.Zhu@mediatek.com>

Please fix your name formatting in your Signed-off-bys and author
for all the patches, and in your overall git setup.

It should read "Christine Zhu", like your sender info on this
email, not "christine.zhu" like an account name.

ChenYu
