Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 767A041D8A4
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 13:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350436AbhI3L1M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 07:27:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350427AbhI3L1J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 07:27:09 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6B80C061770
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 04:25:26 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id i19so20861267lfu.0
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 04:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fQ6FUBIM9thJqbhUS63FKjztr/wXj8cgKR4tXqEtQ7s=;
        b=M8ozWpEVoGJuI2AqrfnJ8grrWDDy3hICF7yDn5elT2VNODPrJYZq/1dUel6ac/46xP
         zEa4ct8ihuroQLVWvo/qmmiMqiX2DggNre9oKvXc0vf24Ebz0M/HbGz3afSH4J1u6rq1
         LyhocEM49mPnbbAhmz7moVfZIjEkUNcoD8waWv58fPfoTi9DLf8ARV+yVPP84jkM673V
         a7SKJ6LbWZg+qLSc4LiPoVIEpr2ItJFRHI+diEDfYRfSylO8ZIfFfFZI7yW55YzYx7qB
         ubm3BkG7OWuXVr/J/RAsf20oczo8MMbv3w6DZSbx+LpER/VdzfgPMcX47k/RzsPVfrhY
         X/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fQ6FUBIM9thJqbhUS63FKjztr/wXj8cgKR4tXqEtQ7s=;
        b=S8ue8tj35kjtrGxkIhV+hS3J1JwTLveHvcVMyQhl5AMGgJsMaPNEjASGBiv3W5wugc
         LAKYYNZzJACgkMpFPLO3KJMEpWw0HGI5/w10OJhSRC2lIjvCo4zeaf+JjRkU8Z9E/PR4
         D8/I/J8VO3snjDd4tRn2xJk2B4a5nCk1mCv9ylXGn8MdDnzBwiBQz07Lo04X3Fxe5lfl
         OscdQq0Slba8RqRXaRKM4hgwxEXLNOaz3Q739ulHBftxcDAvk71HwEcnp+J5CDX46EhY
         2KNpygC6rDrOKwDb50TYX9Phm+lBa0+WyOiRry/Dt4zPtaCVCD+a6rtQBIhfRwZPqevw
         9byA==
X-Gm-Message-State: AOAM531eRYoidJAZQoEyPqy3LbgPFslQCyIwLHhoP/7mHYzaLig8sV7n
        gCJL2hGVm51OfIc48UAEh3joTcP4mzznBjVxuF7KNA==
X-Google-Smtp-Source: ABdhPJyMnk07HkEmQ5T4dxMeflUqucQ/Q/tgaQvW78ey2NbZe+7L8S68QtEOQeKSrxWS+FGbmyyMpqTTZw1YJPCMLqM=
X-Received: by 2002:a05:6512:3fa5:: with SMTP id x37mr5618301lfa.233.1633001124808;
 Thu, 30 Sep 2021 04:25:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210928082346.22398-1-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20210928082346.22398-1-krzysztof.kozlowski@canonical.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 30 Sep 2021 13:24:48 +0200
Message-ID: <CAPDyKFrWTDe83Thbf_JGLGmfKbJvFyCLEXgoOgg-=ROvV8yJrw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: arasan,sdci: drop unneeded clock-cells dependency
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 28 Sept 2021 at 10:23, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> The meta-schema already defines dependency between clock-cells and
> clock-output-names.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 23abb7e8b9d8..dd70431df0b7 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -158,10 +158,6 @@ properties:
>      description:
>        The MIO bank number in which the command and data lines are configured.
>
> -dependencies:
> -  clock-output-names: [ '#clock-cells' ]
> -  '#clock-cells': [ clock-output-names ]
> -
>  required:
>    - compatible
>    - reg
> --
> 2.30.2
>
