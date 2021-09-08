Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DBF94032F8
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 05:39:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237954AbhIHDlA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 23:41:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234496AbhIHDlA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 23:41:00 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010A4C0613C1
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 20:39:52 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id w144so1319437oie.13
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 20:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=GZ0a+q1qXF7MfrjInrLnr5HFObJ3ogMjBmTjbogeVrw=;
        b=dX9mbpXkrmh1LTKr1u17bTeswHB33lW+3ok9Bgv+zTTgo6UDGp6SKIJhxNX2bOS042
         +1ue2wyoNZ9z4Z1lfeJCE3nRIJACi/onP6pdf/H8tGud4qRyk3Mflb3Axqqav7vVAP7B
         6fPs9wFc6pOED/0ZtVJwISqOuYyc6kwk8eEgc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=GZ0a+q1qXF7MfrjInrLnr5HFObJ3ogMjBmTjbogeVrw=;
        b=16+u/ZMhv3NKo1bBywzXBPQGbkj2lrU1pIIcyVtPE7I0XOGDH+C0Y2F0KAx8xf0epN
         nURi2Voa+Z7Rms5ZzY+HN5VtPjJW8bVhOavBi0zzT+bOCMD1Msea7X3MRmxD4yg6BCTs
         UbfQWgTpipn1SrvRk43zL26sbTbspkzvxGvYmEBWA0l1L9J6uJTXNimyV/RQ/RdgAIHM
         W0NapUnWCMbuuwFZlAAALjsHPlFu9x7mq3uCXZQb16C+vNI1S8VhiUxoY83HwrvvcoN7
         ShyRTLMSpCCFbcFdDQKnb4gQZGqysgd/uOsMJMe1PVs2guhOZFusHFKJBqKx6x4mhnNS
         3jbA==
X-Gm-Message-State: AOAM5315ROcv/T9Sjcs4aH20IuCqnlK/wLwB0kEj9vefAwQCGcCvLISA
        i2+7C0Y1vWnbbXJzFy7mVq7jdRo+K//qKSnj8eOHgg==
X-Google-Smtp-Source: ABdhPJxdiiGjJ10TgqGvBQ1/7Lm6AUVwtj/VpCWil2bU6pYVcRN9bsCnM/aq8sDCvKEppqWfKKHKcnIE0NCcnfAWF34=
X-Received: by 2002:a54:4419:: with SMTP id k25mr1090071oiw.32.1631072392333;
 Tue, 07 Sep 2021 20:39:52 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Sep 2021 03:39:51 +0000
MIME-Version: 1.0
In-Reply-To: <20210623035039.772660-1-bjorn.andersson@linaro.org>
References: <20210623035039.772660-1-bjorn.andersson@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 8 Sep 2021 03:39:51 +0000
Message-ID: <CAE-0n53SLqmXhJBPROeQj2HzShgYoFzDqsi-KCj3dgVHdDWUTA@mail.gmail.com>
Subject: Re: [PATCH v9 1/2] dt-bindings: leds: Add Qualcomm Light Pulse
 Generator binding
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-pwm@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Luca Weiss <luca@z3ntu.xyz>,
        Subbaraman Narayanamurthy <subbaram@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Bjorn Andersson (2021-06-22 20:50:38)
> diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
> new file mode 100644
> index 000000000000..10aee61a7ffc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
> @@ -0,0 +1,164 @@
[....]
> +examples:
> +  - |
> +    #include <dt-bindings/leds/common.h>
> +
> +    lpg {

Should the node name be led or leds?

> +      compatible = "qcom,pmi8994-lpg";

Shouldn't there be a reg property? I see the driver has them hardcoded
but if this is a child of the spmi node then it should have a reg
property (or many reg properties).
