Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A439348FC87
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 13:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235042AbiAPMJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jan 2022 07:09:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232972AbiAPMJT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jan 2022 07:09:19 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F58DC06161C
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 04:09:18 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id i5-20020a05683033e500b0057a369ac614so16163653otu.10
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 04:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nzQepfLL+SGjYE7/8X4gZEz0wVEIHbxydae1Vjcfelg=;
        b=li4eNDHzmKQPKXQH9EPaZqkg3ZKafq+S1WNXBl3larEL7wbJLhx1iOgVLhJe5+whhW
         OIrZ2I4haacmN/3uAP8Z+Mut0w9Vhfkw5m1nPc99SKrZTx1xG0aoJVm/cLQ3e87lnZ5M
         sNCasYAPmabIQgdb0WZwoqslm11l0s1jXFEw6SKs5pOw3tQqNWEKaBX4RpyoBe+AqTd6
         2RHoNLI7t35r9z+5UZLLqSSRJQh45vK+9aQ+DI/ws9+dDnPEkYnr6yh9EhwPcSc4S/jR
         ZGbrEdSUbUFFEC1IWfPqt5VozKeCJopfPE0wZWxmyE57gHz7LD+3WoOKDdEaGZe4Avfg
         +/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nzQepfLL+SGjYE7/8X4gZEz0wVEIHbxydae1Vjcfelg=;
        b=vbn6MYB8UFHl4/An24vQkNFEm1ZsEjzTFVvfc4sUjDZXGxx0a7XDjVJLKAek0fUxQa
         allRTRWHEe7r5QVBzZ7+Amf3h+XK0U8YUDu2H3PFdZkr6cqZ9v/l09wwauN94oWGgGEc
         gOr7Mbm3aMe4Gjj1436kmXWSZ1y0TQImDLHZF6LnxG1APz4SjaZN4kzJY+MxZQLbrd0a
         7yZepNXl0WcTsEbMeoLycsRrM//coEspnjW+3nnZ9rFsf6xP3qvfEzq4l+2WDZXIqJED
         sQmgl14JQDVYCGctzlLYRrjE6oV7JsSPh2TrhtFZiidpX71l4WtFWOjN/lDLEdG9fn/7
         mqHQ==
X-Gm-Message-State: AOAM533068TIJ6jikiSwpyTmaY639ObMv3SlfAa1gKgcvRsc6H9yDC18
        11Jq5nd4s8eZBbowzCb3V6aNEaB0167pp18DIQka5w==
X-Google-Smtp-Source: ABdhPJwa04h4sD14vv2Z/CGZajhxLfFbKVOadbmybRdvY888f4W2fEZ/uIH7hFe02AlyoMGqWsll6X2tNHCd6NvGZqo=
X-Received: by 2002:a05:6830:4:: with SMTP id c4mr1427187otp.237.1642334957532;
 Sun, 16 Jan 2022 04:09:17 -0800 (PST)
MIME-Version: 1.0
References: <CGME20220113122404epcas5p4aa1c3ac09510eb55cce5fdd0791993a6@epcas5p4.samsung.com>
 <20220113121143.22280-1-alim.akhtar@samsung.com> <20220113121143.22280-13-alim.akhtar@samsung.com>
In-Reply-To: <20220113121143.22280-13-alim.akhtar@samsung.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 16 Jan 2022 13:09:05 +0100
Message-ID: <CACRpkdZkc9ShabhKoVnXMfQp3M7siYUYirBFVBP8y3dLEw5azA@mail.gmail.com>
Subject: Re: [PATCH 12/23] dt-bindings: add vendor prefix for Tesla
To:     Alim Akhtar <alim.akhtar@samsung.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        catalin.marinas@arm.com, robh+dt@kernel.org,
        krzysztof.kozlowski@canonical.com, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 13, 2022 at 1:24 PM Alim Akhtar <alim.akhtar@samsung.com> wrote:

> Add vendor prefix for the Tesla (https://www.tesla.com)
>
> Cc: linux-fsd@tesla.com
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>

That's an interesting new SoC vendor...
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
