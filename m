Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E15CE16AA52
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2020 16:40:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727815AbgBXPk0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Feb 2020 10:40:26 -0500
Received: from mail-qt1-f193.google.com ([209.85.160.193]:33537 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727756AbgBXPk0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Feb 2020 10:40:26 -0500
Received: by mail-qt1-f193.google.com with SMTP id d5so6830667qto.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2020 07:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=47iOhlCxIvZW9+7in9WkfHrD8gQa04rmWy1vaJpQmm8=;
        b=nhpCMmzXTP06oIMPXsOHP8cFVxa1GG8y12r+Ag708ugAvcaNc1HNpRByNhzKiKtz25
         iqtHyBrf4+Mq+54u/EILLssOQ0vRy0IHvGnFZ8b3DBoxnMzpEJIIpq8ppa80poQOQIvi
         P2aDlp5bc9yP07NnbS/vldnoi0BlVPSMNx9c/9Cvs6fmmtwjaXzZp4ON6f2EyNs678YX
         BvJDQTD7rAmAjLiBcsI+ofRB9N0wS57qObL0bDOzIpp+nnPxia9Nm/CZabjRasZ1GvGC
         LCPxSLehfHOuhzEfRrFWXew7AH+v6Vc+bvlzpf9AKt/TpssJN8F4MlK02CUo76ITop7p
         DUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=47iOhlCxIvZW9+7in9WkfHrD8gQa04rmWy1vaJpQmm8=;
        b=nlZknxtwKLHe1S9qmZMq/1s2SC74c8wcirere2qN8DfClLF1sSS0IF60y9vXxN2T3c
         WeVyJgJ+FJrU5ls2PMpH/qub5DvQZvWnv2HS0qnfXvsMCNOZ5wq3qFV9/4dFFZDmhmeh
         qYGSMj1yf9MKoEabWjVhpMFf4uaHyWH/xUuqCGz+pMDcHtahmaKMPuYUz9hxk05IF1qU
         Qe+aNw73hHADf2Qe0lcbFf9T/TWkW0BbblQ+tThQ2MdCS5LpoejK2v01v0I/k60IfawN
         sVh0WT+FyKoEg5ZTEZK6bIBaveUWt1TIAOguqOTOig0945NJDjEjXYqGFFEiF5FuVsvz
         LCpQ==
X-Gm-Message-State: APjAAAUHN4RpIMgvnw0Gktk/XkkhnWQEWP0cAbmlU3ybaaR/SvgcqsGL
        51FqBswDN8waKXSE26tekrYsgN48OG0vuEcR3KyFmQ==
X-Google-Smtp-Source: APXvYqypr/EHRObXYlvHETGtzj9Nrz0S5jxVaSq/bq+nfO+UkQmRqi7ndvJs/03ecGTxNZWDkmiAir9tfqItTHtW58I=
X-Received: by 2002:aed:36a5:: with SMTP id f34mr47141247qtb.57.1582558823797;
 Mon, 24 Feb 2020 07:40:23 -0800 (PST)
MIME-Version: 1.0
References: <20200221222711.15973-1-robh@kernel.org>
In-Reply-To: <20200221222711.15973-1-robh@kernel.org>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 24 Feb 2020 16:40:13 +0100
Message-ID: <CAMpxmJWzPu2DWmVK4e08+0o9HwyXqpQ_i=i0MxAo+6v3-q0YAg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Fix dtc warnings in examples
To:     Rob Herring <robh@kernel.org>
Cc:     linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, Vinod Koul <vkoul@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Kukjin Kim <kgene@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pt., 21 lut 2020 o 23:27 Rob Herring <robh@kernel.org> napisa=C5=82(a):
>
> Fix all the warnings in the DT binding schema examples when built with
> 'W=3D1'. This is in preparation to make that the default for examples.
>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

For MAX77650:

Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
