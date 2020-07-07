Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2A2216D0E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2020 14:45:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727995AbgGGMpK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jul 2020 08:45:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726839AbgGGMpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jul 2020 08:45:09 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C3ACC08C5E0
        for <devicetree@vger.kernel.org>; Tue,  7 Jul 2020 05:45:09 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id e4so49742475ljn.4
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2020 05:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fooIhEUiYPxjoHoMyR+PFyZJIbQwLBjN11Yr/87du4s=;
        b=rqiIeOLs875lqDNxwTUlqaegx4nsAGswnpeoxHUMotLTA5A4ypsBKKEOMFkTWPJ5RO
         2OkNwUjXlGYgHdlYJFmx7vZNtnOY0PclwIkt001sA7DfzpTp+7ulli+onvAbPNx6kmvP
         HbZpL5nQsvOdwiw8aBlh/xUG/K0tFtqEl9tVI+4M0dYHtF8tJFU5iUvjLijyA9Z3HTZI
         P2qyyVzo+pVF/Ca6WWYHV0pUek8Sq8asQJStVUVSym5/1WURTbncTw0jd/fJFCJ5vfcU
         zqP154Mf804/kv6zpfaEq6EHDPo/qAmPcYXvhWe6Hi+qCn1rbFAl8oNzAkIain0FkYlg
         nwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fooIhEUiYPxjoHoMyR+PFyZJIbQwLBjN11Yr/87du4s=;
        b=HZd6cU6rzEuN1I0s4UMuVM8hH/AF4lUMwFiJk5ffv+9FwEDm0NzORt+WF3RBgQWYEt
         Dsrn89i5V/ztckjw4/aUTsJy9E83M24z8+RMTZxFb3Q/fuImbDe6qILS4MhdRzvjyJ7z
         bau8qTyPcDEpyX7pvyvZ40g0x6O2CcVuAbWPpaxVrlmZx3k0Q/j7TW3M6aglPOQlscsz
         H5RzxaI84PFWCb3KG+xPydWb+WOuU4zqmCvUyuoueBkUjMDLDXAr9wAkqA7aX7uXWkyF
         mt/EUh54HO+DRQ3G3S9UjXUSJqDRm9kQ4PoZMkN7F1iNhT8A17SbVfXMyWkmJxmrXNfK
         MTNg==
X-Gm-Message-State: AOAM531PznS64Q9o8/6izDAkWTEzbQX/KQecQAqRMLWuPGn3/urjyoEM
        9ky9FaRQCzhgt0SNyDZWtegWMjP7hlSa0r/XRH2Dntx2wEM=
X-Google-Smtp-Source: ABdhPJyMckwSQi9mXx5CxgXNMcWanlLzmxPVptNWIQ1fiNs52f37k1+RWDxKgd5meI2kXXmz0AsXGXmeK7Z3CGENI4U=
X-Received: by 2002:a2e:8046:: with SMTP id p6mr16128429ljg.100.1594125907780;
 Tue, 07 Jul 2020 05:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200626080534.3400-1-krzk@kernel.org>
In-Reply-To: <20200626080534.3400-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Jul 2020 14:44:56 +0200
Message-ID: <CACRpkdbXb3nmFGJySoDoCR+H9TVZh+PJMV40BXmaTaaWMmQFrA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: arm-realview: Align L2 cache-controller
 nodename with dtschema
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 26, 2020 at 10:05 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Fix dtschema validator warnings like:
>     l2-cache: $nodename:0: 'l2-cache' does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Patch applied!

Yours,
Linus Walleij
