Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3D7835EE31
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 09:27:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349583AbhDNHNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 03:13:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbhDNHNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 03:13:30 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1201C061756
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 00:13:09 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id u4so22177886ljo.6
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 00:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qj0MrsT9MP5e9TP+dMw9mmYBXbSrTZPaBuJ5U6SATfM=;
        b=VmhuoHIcOki+zO4haBZBKfw7hojfMB7Nw0INkxjwf/vBzvZ7iYvt6XBll6SNoIle4r
         pB5Gvpj5/rJUHz0zQEV+nlXGMLOAEWJNTOTkWxk60N3fFyJb0tjIbRwiU0RKUGs2fYsQ
         bYYdCOzzmtp2F9hkIu1ANqoKCMSY+0gzbWuKMwwgooJOJQsuTqE9HhJJJ3MQggWOslYd
         9uuB22CtOAjy+7GArD2AA79musxSr5z09NoNhvwBqrVaMmq3KnyhdHhFq6wOlL7tMwL5
         LxivJMkFjmCuQXFQlLVCEUmPDsgf7rrWqJDiZd3cem9W6lzUqytJzaDTBm96gz1fx8Gw
         dDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qj0MrsT9MP5e9TP+dMw9mmYBXbSrTZPaBuJ5U6SATfM=;
        b=rteNd/uUPDsV0M3bgiWD71y/GyO8uUNNCKnTidlny7JkQlMgwbDTYzP/LwxgNJ4kr7
         7KUCMRocoolpDaRGKZEDRHUKx98VhY7MY53GZ8fKNvhP/LtFHL+m5cuWPT6bYJcGA8H1
         vSQwm9O3zOWzmMNp1ri76r4SCe7ugrQn8mWSgikf/dCZ6lVGfrkBJtf8oAvFiySPEnmG
         JCzi58pTdczUkBoN+gohJK7boaMwEBAdpyilqPsUPSq8iyP8jm98J6fsV/I1fuXMInDY
         htyDkuHdeEnWtxHUlOlwJ9xs2qEJAdM5gLnGczg2XNbmJSnEVuQeEi4/kWAu47mwKiU7
         j4dA==
X-Gm-Message-State: AOAM530Pm2TFvghmo/659usXBmH5lnhm7CrlRHyhT08ycUAWDMA/wkIa
        Vqjvw+AL/phYR0GG2drJeWcrgHmrkc0l8rIIAs/C8w==
X-Google-Smtp-Source: ABdhPJzdQYN+OFaEjUwuex2WL91l2G0cQ7jC6a5Gr4VgWvGVniRwFeGdvxQ+vEG70ZSzlMCTweKJjZIDCuUm6uChqLI=
X-Received: by 2002:a2e:7001:: with SMTP id l1mr23239380ljc.200.1618384388240;
 Wed, 14 Apr 2021 00:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-1-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Apr 2021 09:12:57 +0200
Message-ID: <CACRpkdZ-oq4zKt_qOYTNCL7XqvJygRG0gfb9jRGVi2XRiE_3RQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: gpio: add YAML description for rockchip,gpio-bank
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 13, 2021 at 12:36 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Current dts files with "rockchip,gpio-bank" subnodes
> are manually verified. In order to automate this process
> the text that describes the compatible in rockchip,pinctrl.txt
> is removed and converted to YAML in rockchip,gpio-bank.yaml.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changed V2:
>   changed example gpio nodename

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
