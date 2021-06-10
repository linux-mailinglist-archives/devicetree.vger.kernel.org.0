Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 917483A346D
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 22:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230001AbhFJUEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 16:04:45 -0400
Received: from mail-lj1-f169.google.com ([209.85.208.169]:39905 "EHLO
        mail-lj1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229963AbhFJUEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Jun 2021 16:04:44 -0400
Received: by mail-lj1-f169.google.com with SMTP id c11so6562478ljd.6
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 13:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rBF1ecKF7JlsPFL7Sz3+yfYV/lvszqVqUz+uZm1W3S8=;
        b=SIPZCzvpRYGqYRWxFp/7oaBjN58zCP6aW9zS7pLE9tz3ipTky20e6iC+iYHCVG+D1T
         Ne7Vy1PSqT4HAdgqqeqTBRrSQPjOCU6gIoqzeKo8ukICSahA8RatjyWm+xHVKAp7gn/l
         RHv83KpaN7j7/xwdmNp3q2ia8l8lGi9BcyxdbklZpRUjhpi5hdD3PXfPfqnXvY1PJHB9
         OvWswrFnBmrCfrtxjUaHK0C/4KbLf3D4m0nntwE6pVoy8dEZn0BM0ZOWl7zL4tZmJbzR
         18EvrXHmahyt97skoAI0rpbZUNISNPq+ECRF4IER67yuDwPapsdNdSQ7e98t5cZX9NCd
         rt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rBF1ecKF7JlsPFL7Sz3+yfYV/lvszqVqUz+uZm1W3S8=;
        b=RKNu72k26Xwhz05u7zxOU/aWST+eLXXAYhQcL3ak0Hb+Z99nVCtHvgZDoQKlB7wbsT
         Hcb8qssElfw/tAymBFeHyzDXuyH/eugHgdDY3l6o/jX7/1GwQbiioqdvQYLVBo5fjsc9
         mjT+iiXR8fPTY8eeBSFYYd/sVAxIGgaXYOeDJN1k5bXr3hPGkoy2K4yA3qIlcZHIy/cX
         QlO8xgdbr7tWdE4mzKdbjZ1ohS4J0+uuq8dUFY4VBK2xy//myHeg4qrlE+ZfUv361k+7
         b+2IlMcxfmyYOHcgJSIrrJdPBg0qIlu4VUuH2PHLWpvhEkhTi2aBwhK8ds764q7r2w6x
         oQOg==
X-Gm-Message-State: AOAM532Ea8HkFnewWGteokMR7zGpukscMaep8T9URFHPWjFeWZBXTLYX
        tp1L/MTduWG7Rki+U9vbvAQlvVXOIV0uzF1ixdLyKQ==
X-Google-Smtp-Source: ABdhPJwP4CHd9Mc/Hi/GpvDtjmX0rXkkQINdgXkOb4GRdELlJee3Y7fKssK/PF0AZAakqudJMuBI4gqbSrhCOy+MwP8=
X-Received: by 2002:a05:651c:4c6:: with SMTP id e6mr220460lji.326.1623355307252;
 Thu, 10 Jun 2021 13:01:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210610135717.2782793-1-sudeep.holla@arm.com>
In-Reply-To: <20210610135717.2782793-1-sudeep.holla@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Jun 2021 22:01:35 +0200
Message-ID: <CACRpkdZrdY5Of_m_cwsL5YjrKrdYV9DPYoNmbXsySfC0gDzBhA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Convert ARM VIC to json-schema
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sudeep,

thanks for looking into this!

On Thu, Jun 10, 2021 at 3:57 PM Sudeep Holla <sudeep.holla@arm.com> wrote:

> Convert the ARM VIC binding document to DT schema format using
> json-schema.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: arm,pl190-vic
> +      - const: arm,pl192-vic

Please also add the legacy compatible arm,versatile-vic
used in arch/arm/boot/dts/versatile-ab.dts
(Missing in the old bindings, but used in DTS and drivers.)

With that added:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
