Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 098F35A2731
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 13:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229676AbiHZLzb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 07:55:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237130AbiHZLzW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 07:55:22 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB9971EAD0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 04:55:20 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id fy31so2291028ejc.6
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 04:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=5yLmlM5a0lCWnrqWFlSAX5x1rjAV5Ted/ih8zQMe5Fo=;
        b=JAUs/5LD47E31LCcQ9Fh59tvVky8Tbf/lX0mQNsLKpTb7scp6fA4vv1lV9UimyQd5v
         L6WOsrYEjNJaTs67JdKJUJs0G9ee431Mw6mhyvFLZC62sW9P7O31VSIYaq70TzkpSAaN
         QQZNZWQSIbOo0E5xDk0bvJPjN3dH1JG+KHdDEd2YvMOvFD9mLSuT8S+297YBYNBh0vHQ
         9+mpGu2kgwcrcbsl+2UiYXuzIJyvdKNnSFFGbT1zkSLLbjingo1FcECNQqdGFP3NBcmS
         U96ErBe7fcYNoqSPF8Ku3rCsH1orkpVSsvGuUWmay9sLuwq3TeI2G8N2omgp+kFZ0vzO
         tYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=5yLmlM5a0lCWnrqWFlSAX5x1rjAV5Ted/ih8zQMe5Fo=;
        b=FaMn0Dwex0R2n1Z5GaAmHjmoErCBVQbAkQ8kKqsh5o/bt59xGeE1RRrdzb43bSGSNw
         YJPnLlyTxdYPmBxqnYxX+9nZ9QfS7533HVd+gZzGBP1z4hvk4v2bVQa0RlFjLbpmujwT
         eX/P8HpCK5QQYTKKQrN8MoZuHHkiSq25ngT5nc6yrUFzCpWTZU6kXPjQWgnw6Qe9jlO4
         6QFgroXHJvR81+paV0ES6/PeAWLPL1QDbSNOeRTokPWRzmD39F5LxjD7MMmGOfBHm3xf
         l4iWZfiu265rGsMh9F3V5s94pNEs8Xp4cAhgBpbVp/KFoDaVjtEtqxNacEFFdGA7BLMR
         VTQA==
X-Gm-Message-State: ACgBeo22YStgq6nYcSC5sh4P4QIT+9U8eBn7FAv32ILrXYDRo6hULERm
        jLw9WdZw4utN6dNn1mMjM+QWYz0jo+386gWleFfF+w==
X-Google-Smtp-Source: AA6agR5/2xj1A2GyA+S/8nuqSZRbDrzPs+kNA+Zo/LaGk8vUA6H1kefIJca+SmKHxq4rX68xo/BmsWLIoyRDe3t2X3w=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr5397024ejs.190.1661514919301; Fri, 26
 Aug 2022 04:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220801131747.183041-1-marex@denx.de>
In-Reply-To: <20220801131747.183041-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Aug 2022 13:55:08 +0200
Message-ID: <CACRpkdawb3faeFda17pDL+zEpbuPh0rmtXevenbO5EZgb4-V2Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Add support
 for external REFCLK
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 1, 2022 at 3:18 PM Marek Vasut <marex@denx.de> wrote:

> The ICN6211 is capable of deriving its internal PLL clock from either
> MIPI DSI HS clock, external REFCLK clock, or even internal oscillator.
> Currently supported is only the first option. Document support for
> external REFCLK clock input in addition to that.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org

Fixed up Rob's comment and applied both patches.

Yours,
Linus Walleij
