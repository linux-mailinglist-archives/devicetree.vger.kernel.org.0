Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBE683E82A4
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 20:16:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236770AbhHJSRH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 14:17:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239500AbhHJSPW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 14:15:22 -0400
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BCC8C043CC4
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 10:50:05 -0700 (PDT)
Received: by mail-ua1-x932.google.com with SMTP id t26so8920401uao.12
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 10:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n8NnT+9Uof6uRiwYL8q6ZdxasPN6RvJnAmBwT0HbVyY=;
        b=H+l1xmwQ18K5CXNmDkCE0LNLXpAPnWJdYZA9rsY/mEzsWZj1x/cS1fZSYn73iMUSz3
         mltE03ujZDanRXDcNFdIwKLxn3q/IHFM1/43JndiMHOezAA/NqSTua3z+/tj6bFWigEP
         fhfnzR4GjEL4tefCI7DXQo7+8v0rpqy3lx9NMvVmDaa768w9+JaNS46KTbqAfYHDw1S5
         xsOmgSeFPsPwl0WkaHe18gmVu+7V0U5QW7Ow+VCg3lUTF/NmPwbNFGvLmqPvuBFf93Ad
         UZqmYPSoM6ryBPNL3Dt0xlt/IuG56vZUeIMKFWSv1tJdiR1GHBvocU747WXiCxh+0BlW
         EaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n8NnT+9Uof6uRiwYL8q6ZdxasPN6RvJnAmBwT0HbVyY=;
        b=qmzAsobQT5MSCrx3MXHccHEPMEnKzXtESXn1pjybkbe1nWtL2HqMREma3haKDBJI7E
         qPEHnLTKFPBKbZsXPn0qNbnFmQOQ6eAZo+eESUq4Cq5IdVytgEEyxmWL2exBT0qMyzoE
         CZhNfewW1h6qxOoR68V874JAGOQthNky2OtyrhXBxKgtzMhiBYqRL/HSOPPGcx3zkV7r
         nczvLggt99LoUVNgOvg4ahXPDqiPZiSeBMrnKC8xwa6OStRPv5YCloWlEQc9Xftkb8yS
         diOw/0Ay7XknLfN0rrZLik2govpOjumhYmYAUiCNPfJLtEnGFexddM2FS6/TPL550ec9
         84qQ==
X-Gm-Message-State: AOAM533xNZjBpM0nVNXSzMGO41/fBfforFYZo71lROf6/klKXfiuZOT1
        Uh/n6NpSTYwIED4AA+xsEtApRemXTLqgYnJhfgpUTQ==
X-Google-Smtp-Source: ABdhPJw6Y1Kyo5HEPoPohSS4X1DN2xa+9jW7WH/BO4BIObQiUTUdOewJoelWT5DuTZk5RwiiUThK6skuR78poH9yagQ=
X-Received: by 2002:ab0:7014:: with SMTP id k20mr8457678ual.9.1628617804659;
 Tue, 10 Aug 2021 10:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210810093145.26153-1-krzysztof.kozlowski@canonical.com> <20210810093145.26153-3-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210810093145.26153-3-krzysztof.kozlowski@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Tue, 10 Aug 2021 20:49:52 +0300
Message-ID: <CAPLW+4mKv0Azi4w2S=Ono1gpghmBtfy4QpaRBjtHkgrUGZVW_Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: clock: samsung: add bindings for
 Exynos external clock
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        linux-clk <linux-clk@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 10 Aug 2021 at 12:32, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Document the bindings for Samsung Exynos external to SoC
> (oscclk/XXTI/XusbXTI) clock provided on boards.  The bindings are
> already implemented in most of the Exynos clock drivers and DTS files.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---

Just want to mention that remaining users of such fixed clocks can be
converted to regular fixed-rate-clock, and then this binding can be
removed along with samsung_clk_of_register_fixed_ext() API? Just a
thought.

>  .../clock/samsung,exynos-ext-clock.yaml       | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml
>
> diff --git a/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml b/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml
> new file mode 100644
> index 000000000000..64d027dbe3b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/samsung,exynos-ext-clock.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/samsung,exynos-ext-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SoC external/osc/XXTI/XusbXTI clock
> +
> +maintainers:
> +  - Chanwoo Choi <cw00.choi@samsung.com>
> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> +  - Sylwester Nawrocki <s.nawrocki@samsung.com>
> +  - Tomasz Figa <tomasz.figa@gmail.com>
> +
> +description: |
> +  Samsung SoCs require an external clock supplied through XXTI or XusbXTI pins.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,clock-xxti
> +      - samsung,clock-xusbxti
> +      - samsung,exynos5420-oscclk
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-frequency: true
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - clock-frequency
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    fixed-rate-clocks {
> +        clock {
> +            compatible = "samsung,clock-xxti";
> +            clock-frequency = <24000000>;
> +        };
> +    };
> --
> 2.30.2
>
