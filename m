Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11455424198
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 17:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232031AbhJFPqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 11:46:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230014AbhJFPqn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 11:46:43 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D91DEC061753
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 08:44:50 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id x27so12229573lfa.9
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 08:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fLrVITo26Q9Q7weH2zRlnHSrkqoVRNsgF3IljUMw/5c=;
        b=Vg8DOLDKNftBf2yy9dK6Xu1rxd/66jDMb60w1wudX13vfZa0M/6yuZ2L3Ygm2csCZ3
         jLcbL9E56EllkroBLM9jukgbbcSyD1QMRyBjepsQeTuJLlPrYsriP7jtOFmPy0sZmnJS
         7eWPrpin7ou2GbkMqFD0a4eoIoqGEczu4GoHJMi69TvCg9o3UqvP9klBSN/f7/JFChpI
         n3TyNm3ZH5czD+YCJExOTWay2kXUR2LaX6C4IijpAUGGMd4OJpGUFSAM/CA8LvYuL6kp
         /2X1gfVLCMCX6sI6icXWPlpWYyO737tRElmxRwaVexZ9D8+1CvERswsdnwx4UsrB6XK6
         j4Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fLrVITo26Q9Q7weH2zRlnHSrkqoVRNsgF3IljUMw/5c=;
        b=1tX87PYrAG/p5l8a+JPgbS4jQYAaZMHRCm5TLDR8ileq/p75C2FYwh5FdlUczJ29ro
         I/zEbFBMkYIP3XgyjNLLxuR8LxU7Q4o5Z+l47eAFtBDqh0o1mFR5eXOuUKQDvEb2I61U
         E5AL1FfkA8mbnoJZWD4r9NoFlJ5unN/MM1nQnFT8SKW0C6j1vuu5MMKbJjvX+AconxpP
         AfhGCTjkHCfyVpqrw/BJduRAHPmJvJmkyFVFpOZxqdjmSbcVx0svDqy95+/L4vCq3AEW
         SfaKAkP8ljXCNGOdYcBHNd7jfcEgWP816+G9NrM7kRiumZwnmYlMJzUDVj5ekzEV1W7g
         Fm3Q==
X-Gm-Message-State: AOAM530YvmBpXr5WrgByENoRyeYtTzR8qOZIxZm9kZHiZY8BvkasG5OT
        5kLMZnKIS8zikIt3ZuieCnSWFL0sNxoW0YxNi5+w+g==
X-Google-Smtp-Source: ABdhPJzIWAUgQf7sZffi7dUYnaY6L0kMYXgI0e/0GVYqQBe6gtEhMBe5NQ6q+RSowbWaMfSxH4GzmhM9Xk70+dvXHcg=
X-Received: by 2002:a05:651c:4c9:: with SMTP id e9mr29848643lji.229.1633535089235;
 Wed, 06 Oct 2021 08:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20211004151646.73599-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211004151646.73599-1-krzysztof.kozlowski@canonical.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 6 Oct 2021 17:44:12 +0200
Message-ID: <CAPDyKFoACP79Zt4DuJJEyRPRb0yXhcNmfDJwVk-yBZt61Z88MA@mail.gmail.com>
Subject: Re: [PATCH next] dt-bindings: mmc: arasan,sdci: bring back
 requirement of clock-output-names
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 4 Oct 2021 at 17:17, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> The schema defines dependency only of clock-output-names on #clock-cells.
> The dependency in opposite direction - requirement of clock-output-names
> if #clock-cells is defined - should be explicitly included in the
> bindings.
>
> Reported-by: Rob Herring <robh@kernel.org>
> Fixes: 22ea8ab0dcc4 ("dt-bindings: mmc: arasan,sdci: drop unneeded clock-cells dependency")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>

Applied for next, thanks!

I took the liberty to squash this into the previous commit, and move
the reported-by tag into a reviewed-by tag from Rob.

Feel free to yell at me if there is something you don't like with the
squashed commit.

Kind regards
Uffe


> ---
>
> Fixes tag from the linux-next
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index dd70431df0b7..de6f076e0ece 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -158,6 +158,9 @@ properties:
>      description:
>        The MIO bank number in which the command and data lines are configured.
>
> +dependencies:
> +  '#clock-cells': [ clock-output-names ]
> +
>  required:
>    - compatible
>    - reg
> --
> 2.30.2
>
