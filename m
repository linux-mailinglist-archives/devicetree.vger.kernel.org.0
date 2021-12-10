Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0437346F8C5
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 02:48:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235480AbhLJBve (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 20:51:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235446AbhLJBvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 20:51:33 -0500
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE5F5C0617A1
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 17:47:59 -0800 (PST)
Received: by mail-oo1-xc33.google.com with SMTP id b1-20020a4a8101000000b002c659ab1342so2106526oog.1
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 17:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dWvOVPA+0MutOijnBAzIthRTqxnFtgjBuBRS6tbJOwk=;
        b=NXTU4DRG5dLcqScl6jn+eTL5mRPkjBm0U/xvSTVJev04tL3knDXUh7objzJFXLwIwp
         wmqbpnVfSXAoUrNSTIGpac5hKVh6OFmlYaicwppftkMp+Vk+fbkcdgqb1XjMUgS28PMm
         d6pA/ybeqaFu8D2G2UGDqtOcJUifbrk1HNYJ1QYYB/k4DGffSAJ75r3rQitJmXu8d0hx
         t8IEO5jRCJKj88o1c77kg/CGIsRN6pXXuqdI8YgV3ZY0tabX2VZQeYkshNbTDvtFXezI
         HtqL0dM5msGCFsTeR28m5heeJ1pQeGOZpWD2+fEjPT5sl37pHhLTeX4jcWC3LVDHmBbV
         Buzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dWvOVPA+0MutOijnBAzIthRTqxnFtgjBuBRS6tbJOwk=;
        b=yXUbVQk5yaEU8MXLKu6vsw9pY+OKdo9ZBYfV/g5f5ASjphRbTqr8CHoNiJ5RnmdOPq
         tK0ZlkSxYpIV8cr4fSM84hRsXuXx0KcVgM59N4J622hS6zQgb18VwX1YhLMvVwcir7Ao
         1JnzFcWL4cqT5GqFV9u3VBl+9zUGrYnpk5GwHCH1xnwGvYU/6e/Z9sJZ77K2+nxCX91Q
         5JIaWDEqx92Oy1yhKB3dAsByVNTKKKG2cE181zk9ueuFxByCYlpP3Z1EknWQYwea9KST
         ezIx2E0IsFIHASUHqbFIkbJYm1OTS5W6DE3e5MqEX1wGBSo4of2CCb+JTYmDClYuO0ni
         QUjw==
X-Gm-Message-State: AOAM531NwMLAvrRqS0teyEXd0xFrxBvaWZZSu9Yv2xgPzspCBeDukGyU
        jrxni6z5n0dsJ2tv7IwOW1nZ2tfHBJ43qdJp82bbew==
X-Google-Smtp-Source: ABdhPJyK1lCVKvNMNsh+WgVmhUJ4WT5uOWiT1wYz7KCpW8moYEMiX4Nhq9m5pyo4rROuaVnz+As/SAXaT7aGq89V/Po=
X-Received: by 2002:a4a:aa8f:: with SMTP id d15mr6635657oon.86.1639100878996;
 Thu, 09 Dec 2021 17:47:58 -0800 (PST)
MIME-Version: 1.0
References: <20211208173047.558108-1-thierry.reding@gmail.com> <20211208173047.558108-2-thierry.reding@gmail.com>
In-Reply-To: <20211208173047.558108-2-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 02:47:47 +0100
Message-ID: <CACRpkdbDj=2FtC=FLwAknc+zPJML8-8iZsB3Oz+4mdUmWpQxTQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: gpio: tegra186: Convert to json-schema
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        linux-gpio@vger.kernel.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 8, 2021 at 6:30 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
>
> Convert the Tegra186 GPIO controller device tree bindings from free-form
> text format to json-schema.
>
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
