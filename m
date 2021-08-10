Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 964D83E5A4A
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 14:45:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240779AbhHJMpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 08:45:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240766AbhHJMpr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 08:45:47 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D47FBC06179B
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:45:24 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id b6so24881311lff.10
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=p4fA30UmsVxbBBxabVfhDHH9C11jyZ20WTjP74m8fKs=;
        b=AK4sZ/xcdeynrPd0HoK9VrAa56Ppasl+7IUeUdRIyd53PKhm+G8CK7yd7RM6qm1FWQ
         P0hhWbl16qzyOVC4C6rQL1+y16s2AcqBp2R5QtNa7Nu6fydfvjHSLTGayNX4sfGsstN9
         Fca8gk6BV0uI2mBMqNl+iWBzxDsoHR4UFVNmOL8C8tPhfyCH1vMuUbbfgKACeSTBUjtF
         hU17EbETZFHmolBSxIXzAdEqfW2II7k+6rwdazTQI8WOQO5Ivc1sJpL2csNDHLEO4/q5
         B5ohuZng+tP1eArePVamNoCUkNl/A+ql27xsXujzS0v+50Vf9ehPBjNWwyUgSLBIce+5
         DFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=p4fA30UmsVxbBBxabVfhDHH9C11jyZ20WTjP74m8fKs=;
        b=XoiDotJs9uDxoprxNPxp3mUbFkG58uGjDGxClGx19oVq6l5yiGWsyMS4jIr0mxYEIb
         +BpglHlgSpB6IcP4lFBm9hme1skNS3ViESTPLiEXt1+s9ZupbzXFBlTr80t2boo6erNZ
         VIo8kr+vWKVxiXN1x4Emigsu35/PvExQvU/pqb1tDpLCwFCbXwEx7YBlEn/mGyHTpd6s
         zJhrXOhePLMzwurQozWqthSlDvEFxI/UP/7kDClrjNHwqQ97RpPH9/D8e+moE1Zib1tu
         Jsiml0ffLp/+X5e7l6y/3gu4rBLgyQTS34R7XTgHDZvqWKEPl4pcJSHJF4bFhu9Tj3zo
         gneg==
X-Gm-Message-State: AOAM532iNhI7gnQS51SefbWiC1XFzxwLsKNOmtNZwqnE0CsEkhIM9Sn+
        Bb1cWlXpN0wCxp1hZPAXl25M0KsQ919cjljN9OpxEg==
X-Google-Smtp-Source: ABdhPJxdOTFsL9Ec9pZR+uNkqzgGHrc7A/wQl1VbkWLUWhvC904yI+SM3mADlRMM+ZuroqFnn+tC+w5vpOPhWgdRecw=
X-Received: by 2002:a19:ac04:: with SMTP id g4mr5316722lfc.29.1628599523238;
 Tue, 10 Aug 2021 05:45:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210723132810.25728-1-alexandre.torgue@foss.st.com> <20210723132810.25728-2-alexandre.torgue@foss.st.com>
In-Reply-To: <20210723132810.25728-2-alexandre.torgue@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Aug 2021 14:45:12 +0200
Message-ID: <CACRpkdZKU7zA-SiV8n=wtaD1iqYMUocncvQB6NdAmYSn4xN7LA@mail.gmail.com>
Subject: Re: [PATCH 1/7] dt-bindings: pinctrl: stm32: add new compatible for
 STM32MP135 SoC
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Jonathan Corbet <corbet@lwn.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 3:28 PM Alexandre Torgue
<alexandre.torgue@foss.st.com> wrote:

> New compatible to manage ball out and pin muxing of STM32MP135 SoC.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>

Patch applied!

Yours,
Linus Walleij
