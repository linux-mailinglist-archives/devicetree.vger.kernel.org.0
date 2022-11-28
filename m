Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0684563A59F
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 11:04:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbiK1KEF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 05:04:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbiK1KEC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 05:04:02 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AC551A206
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 02:04:01 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id w23so9636680ply.12
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 02:04:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/IW5LWVVRI9kkHa5NwPWDaXFbPj7S5Bv6GzAU5EdZjU=;
        b=keSuQkLR1LuBponYgjAFjTjF8JyLLs5E6fzwQSoIquhMstq7nV3WLFgBsIYhttXACY
         mq5u/vf9XjXqdqtlgCh/GzwcGx7qAiHiXsx43HWcvjX9uqXWnNzkW6FTnrqt57rodg3O
         tYKLBh4iEU20FPK8678rDVGN7Ae/S/qyy94si2NFcXGDa1E+nC9CtkeIk/TzeY2N0rpN
         vS7Cr9QuQK+aIiGwyscOGxzvqPRJ1os9DaRs7U9HvT05e3X7nrjevpLhBTFqTTBz5t3Q
         XwLXzTN6vZciOFA416Qj2y4vgCjRcshY8sY2E5qqnzQQrKP4rIqjKbwa9pqoSYzTUWnl
         4drg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/IW5LWVVRI9kkHa5NwPWDaXFbPj7S5Bv6GzAU5EdZjU=;
        b=oZoBDtq5kto6t6zGgLqkwXcsxvQEFOA/EszDa0d0O+ye651qTyeX7BCCtUg0V3k4M0
         64NMgdFUId7hS0MNBtY02/dioCxL9CwqCpWrgFef/BBl/h2LBmfx+7RBoh2AXBd5YjFv
         0fcN/dyeHIIXrK2RtF3rzxfdt49FuYpF1X/X/w3UPXr7h1gkXet5TMsIFY6KVfcx4dR7
         E1k619vX6FtxhbQ6pRqhPwTvTuyHr9rfWxYBuEg1c9hW8fqIHOsmBRGtonZJ0nQrPYmv
         GRIy+70XEPnKt5bjYRdxaCo0KJtmASZ1euD2kaR5xHaVuIhUipo9pku/tnjMrY13+iIp
         Z3OQ==
X-Gm-Message-State: ANoB5pmDIwvDLW8RLyxh+c7CRyp2arRC4jxdSoOW85ELohQKwWb+RXKg
        Q2Fi/IIr13/yuCeqwyKC4NgBdpBHnWYTIHOnWDKsnA==
X-Google-Smtp-Source: AA0mqf4Gp+pVhmwbvUZVt7ZQTkdaSastAOQgb0R9mo3rJRs7Clc2ULqM0v3qxeECp9HvfCvmWVzXF67UrXHYTI6k9xc=
X-Received: by 2002:a17:902:8601:b0:189:7372:144c with SMTP id
 f1-20020a170902860100b001897372144cmr11515722plo.106.1669629840651; Mon, 28
 Nov 2022 02:04:00 -0800 (PST)
MIME-Version: 1.0
References: <20221125112904.48652-1-robert.marko@sartura.hr> <166950120854.13025.2614107746698757914.robh@kernel.org>
In-Reply-To: <166950120854.13025.2614107746698757914.robh@kernel.org>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Mon, 28 Nov 2022 11:03:49 +0100
Message-ID: <CA+HBbNEVbu4DEuazeR4MUGoBDvB==iHFQo=+yXDgs8R7E0C-Kg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: watchdog: Convert GPIO binding to json-schema
To:     Rob Herring <robh@kernel.org>
Cc:     luka.perkov@sartura.hr, linux-kernel@vger.kernel.org,
        linux@roeck-us.net, devicetree@vger.kernel.org,
        wim@linux-watchdog.org, robh+dt@kernel.org,
        linux-watchdog@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org
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

On Sat, Nov 26, 2022 at 11:25 PM Rob Herring <robh@kernel.org> wrote:
>
>
> On Fri, 25 Nov 2022 12:29:04 +0100, Robert Marko wrote:
> > Convert the DT binding for GPIO WDT to JSON schema.
> >
> > Cc: luka.perkov@sartura.hr
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  .../devicetree/bindings/watchdog/gpio-wdt.txt | 28 ----------
> >  .../bindings/watchdog/gpio-wdt.yaml           | 55 +++++++++++++++++++
> >  2 files changed, 55 insertions(+), 28 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/gpio-wdt.txt
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/gpio-wdt.yaml
> >
>
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
>
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
>
> Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221125112904.48652-1-robert.marko@sartura.hr
>
>
> watchdog-gpio: Unevaluated properties are not allowed ('always-enabled' was unexpected)
>         arch/arm64/boot/dts/freescale/imx8mm-data-modul-edm-sbc.dtb


This is expected as always-enabled was not documented in TXT bindings
nor the driver actually parses it,
it is looking for always-running only.

Regards,
Robert
-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
