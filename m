Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F37E5AE915
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 15:08:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240332AbiIFNIQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 09:08:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240035AbiIFNIO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 09:08:14 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5268758B44
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 06:08:13 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id m1so15064770edb.7
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 06:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=pmIp3UU7gjm3NZJhc2Tia9NiJ9p2MvdeXl6JkzY1omI=;
        b=cYalGkxwT9oVIPq949EPepQxvuKKZ4255Ukt4GTPcTVRMNtf81SXeSOV8lBdM9V5TZ
         4kyqsu9OpGyoGFFjH6CoB5XJsVNMa72I09YAEg4vmHSccD66gFMa/EV2EhsL325AhxFO
         MPxZgcwIs+5VTcmXZvNJMeBfiaxRJ99QvaRnpm75XFy5yx/ddSPuvhYgUlcan53fDeC7
         NBFA/IqTWWSy+AjILXG4bL+3y4L0WeSznMqy2RnaHd0Gh9AMoNcje+SdLjONGB3ODcCs
         t6ivHwiPWn3bJkob3F/72s4WYAnxtsM1XudLwcQRTtpx2O45W1CZ/zLXpGlxcmFIV2+5
         go2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=pmIp3UU7gjm3NZJhc2Tia9NiJ9p2MvdeXl6JkzY1omI=;
        b=RoRg6roh4TwQrecnKW0iHI95Mpa7kCMNIpRkgunY7iOA0ip8IDEv0tPDgnWAn45LaY
         MsnUmGq2yCH1PjHq3Wt3kO/HlfgT2QsEFrabSDoa1q3GHhcEcBU2uvf8uPpHmdp9u8jN
         TQ2zUyt1IK7ivSe43K3tZJtYHU17KuyuExPY2BxZpjEafpsBD4/82SJeae6yWF3fRikK
         AiiFEXh5BYxWzJiRnFK9LPj/MGcC25XQ34ZUpmP90LZcqEQ7g/wdTdUv4xXQqPrOygr/
         NvSKXe4S67kt5gLdPfhRGjlbg98PLSw6Gr08XCDqOigBofGkZ8YLx9cKaphuhfQjnq4j
         Lj3w==
X-Gm-Message-State: ACgBeo0OsxXJFuxrd6Y97rIna5ypMZcjWLj7e0g8KZ6TC4mgVKlp0W8w
        Bgc9k/Udppsuuy/KEbdWoflg3XnHwoP8+NQhW0EwKg==
X-Google-Smtp-Source: AA6agR4W5ASdL40tjGKHYVNHqZ4SrzWB68wk56ZFao/XcWslDGqmL4caxI+vRCacz+8k50G5zb+kQJQWODULR428hEA=
X-Received: by 2002:a05:6402:2691:b0:43d:ba10:854b with SMTP id
 w17-20020a056402269100b0043dba10854bmr45661307edd.158.1662469691869; Tue, 06
 Sep 2022 06:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220906082820.4030401-1-martyn.welch@collabora.co.uk>
 <20220906082820.4030401-2-martyn.welch@collabora.co.uk> <Yxc6zptiJEf2TzP5@smile.fi.intel.com>
In-Reply-To: <Yxc6zptiJEf2TzP5@smile.fi.intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 6 Sep 2022 15:08:00 +0200
Message-ID: <CACRpkdZHKEW+WJAdCCf2DN7gN+ZM7pFpeSXfccB508N4=-LkoQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: gpio: pca95xx: add entry for pcal6534
 and PI4IOE5V6534Q
To:     Andy Shevchenko <andriy.shevchenko@intel.com>
Cc:     Martyn Welch <martyn.welch@collabora.co.uk>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martyn Welch <martyn.welch@collabora.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 6, 2022 at 2:19 PM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
> On Tue, Sep 06, 2022 at 09:28:16AM +0100, Martyn Welch wrote:
> > From: Martyn Welch <martyn.welch@collabora.com>
> >
> > The NXP PCAL6534 is a 34-bit I2C I/O expander similar to the PCAL6524. The
> > Diodes PI4IOE5V6534Q is a functionally identical chip provided by Diodes
> > Inc.
>
> ...
>
> > +    oneOf:
> > +      - items:
> > +        - const: diodes,pi4ioe5v6534q
> > +        - const: nxp,pcal6534
>
> ^^^
>
> > +      - items:
> > +        - enum:
>
> > +          - nxp,pcal6534
>
> ^^^
>
> Not sure why is this dup?

No that is how DT compatibles work. One version of the component,
bought from NXP will look like this:

compatible = "nxp,pcal6534";

Another version bought from diodes will look like this:

compatible = "diodes,pi4ioe5v6534q", "nxp,pcal6534";

Then the drivers are probed matching from left to right,
with the "most compatible" matching first.

This also answers your question on the implementation.

Yours,
Linus Walleij
