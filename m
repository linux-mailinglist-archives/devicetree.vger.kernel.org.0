Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 868FD513E98
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 00:38:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352929AbiD1WlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 18:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352923AbiD1WlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 18:41:24 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D10C12ED
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:38:07 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id s30so11553592ybi.8
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lzpqH+bPwCQ3BZ5vkfL3WpFI3/PgCR+LoqqokgB1e5M=;
        b=fBo6YWXiEjfkMWVKJ3lK3W+5MQA+hV9i+52b8YLW2xMOSX0nHdeqPPE2oHVtNBHSd1
         vDbxs8aP2Wu+AiTYbSdzZ7x21Q9stQiBDwjN4T8dB1HLNn0jpIOy6F8GVl2cxG6HWJ1e
         FRIG2ulO8dTjSV7k8ATsr9XT5q+TBIcBsLfcJhDoKNsPBcPtCAbBZ/1mFRr4EgnyvFFS
         itrYouRvBu4TISJLnyW6oKOqAX3b3dWmplVWGo6KcpZTSgpFFPdGcJ4xuJJzoXcL1Ltf
         UHp7+M+0mzNjm+rXGo33MxQvfiBSGf0HHotM+uQMPbYnKY9H1/LtQ7oKLC/HQm3AeqNB
         nTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lzpqH+bPwCQ3BZ5vkfL3WpFI3/PgCR+LoqqokgB1e5M=;
        b=fZ4Vj91RIpq7tjEOJBbWWHj+OgX3zPKiKHUngds94V4912hslhJYqHU+8GQ70EEgoc
         hJL9TlyfKQguY/RaG0GI1LI+Mm648dCxGwq1c0BTEEXL8nALe0LpnuIalt6ODvqfFOKx
         7dz1ssxZ1wfp6WbLJWmzYP1fPNpWiu7OWGdgzgG7WD7xMQqEEZGrjwcDWmLF66XyvBeS
         0x7GLd/6CrtSMugLwgq9OfR3j0pDz1k504Kuvx6E3LKMca4rZfzoy/HMVqmXDfNMF895
         hOz2r6YZR9HLA2CXcGzsEk3RgfjE/asuj+2EZmdmZMWaEOlHcLF7hN2Ar0338rraXsL8
         ez+Q==
X-Gm-Message-State: AOAM5331LsSZWSfdhxWbk8DMizRXTSKJgN8mBjsypkTE2qgJHx37EKYy
        0w4XIy8qWjRcYjSOZ9I1OZ5iJXdOu+j3NfMnLwZw5g==
X-Google-Smtp-Source: ABdhPJyo66PN+0fuXvbreCg1vnWd1EXrYXd+dOkelV6EbGP6i6kxlBCFEHvzfOCS9YOQc9d912EmjH1/6QuGSn+Za/0=
X-Received: by 2002:a25:a12a:0:b0:644:e94e:5844 with SMTP id
 z39-20020a25a12a000000b00644e94e5844mr32512542ybh.492.1651185487108; Thu, 28
 Apr 2022 15:38:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220419230324.3221779-1-michael@walle.cc>
In-Reply-To: <20220419230324.3221779-1-michael@walle.cc>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 29 Apr 2022 00:37:56 +0200
Message-ID: <CACRpkdbbYv06KJ05Gi5ThSSE-qpNaFUsErjBL8WWfMAOKoDikw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: ocelot: add shared reset
To:     Michael Walle <michael@walle.cc>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Horatiu Vultur <horatiu.vultur@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 20, 2022 at 1:03 AM Michael Walle <michael@walle.cc> wrote:

> On LAN966x SoCs, there is an internal reset which is used to reset the
> switch core. But this will also reset the GPIO and the SGPIO. Thus add
> support for this shared reset line.
>
> changes since v1:
>  - rebased onto linus' devel tree, former patch was still based on
>    v1 of the YAML conversion patch

Patches applied!

Yours,
Linus Walleij
