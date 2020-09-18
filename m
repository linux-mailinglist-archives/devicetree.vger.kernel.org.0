Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAFF2270127
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 17:36:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726130AbgIRPgJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 11:36:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726044AbgIRPgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 11:36:09 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 679BFC0613CE
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 08:36:09 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id a12so6433235eds.13
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 08:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WveLPwxte8BNoxoMIlXLIgv/Aiiq1ZIY8kNPvPeIDoE=;
        b=k1by4YA7dTBFe8ff3zdpPES5vmi76Q13ceAuL5wGpkdRC7yHm1/HwVo5r1/G0h556H
         fJACyD/EKYHPZO0Ic/VVrlgtk5StadM5g4X/eGJHSTX9G3CYZC9IWhTxcnY0Xauu9WEn
         cEJtyMnFUJGMB/R1o9CkM3VHbfVH2BSzZh70M8ZJsdt9HDie+zYv5QmYeRefIVKTWsLm
         BsGDTaG0qJoCNaqyAyzNSyahT8lZpn2bWSK9I6YaiR2mwoueFNdHl1At0PH2+ILODcZL
         tW5cvaoRc9bCqfbLP/pFEY5cTY4FGwAYAyLfKG/LDI5d7mkUwx+W0/RJZMuE+ZNrADHm
         yNHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WveLPwxte8BNoxoMIlXLIgv/Aiiq1ZIY8kNPvPeIDoE=;
        b=n/Ir48+qTg7CS/oWmYlCpmrIChhBToWd78IDZDb5NfMBXbPy/GOd6mBw32B/CQbeMe
         OJxNTtbvwI2VeilF4gCEgzg4u2SlBUFqpubSOHBXJ0rg42sNWMy9Cu559Q2qVqaUjOTO
         G3FQGeZwuYlOGtqfaosGHu1VlXul0RzQCObCzZavAQqHlYKT22mnimP6yeZ3UALXxB+r
         bbhD2/5xHWlyJNSV3VEhgjXqqTfzK7Q3Guip1ghOzHkGfeoEgACcldmnBMLwQdeOqfz8
         5dK5Jc3vUgnnb5TfVjnKz7aQmkt41jNElm0Y5qoqCdd5+JGrzM3UBsAT7TASswwKxhIJ
         CmcQ==
X-Gm-Message-State: AOAM5323fGUwwLaS+teNCoJbUYzMb+COxaeOEimFz4cdhXZzu+3Oasty
        QNBckQcUQAy4L2W1xNZH0D9p9NUcdUmO0GevUf+zpA==
X-Google-Smtp-Source: ABdhPJzZuAxRQfefmN/3K7ZkWHJ9XCjJmxI8la6kJ+kuLqddcjt57Pvxb9Ni+59rXoZeMqL3jjADNrFwaSEi2bf+hWU=
X-Received: by 2002:aa7:d403:: with SMTP id z3mr38253584edq.310.1600443367977;
 Fri, 18 Sep 2020 08:36:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200911084119.1080694-1-suzuki.poulose@arm.com> <20200911084119.1080694-20-suzuki.poulose@arm.com>
In-Reply-To: <20200911084119.1080694-20-suzuki.poulose@arm.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Fri, 18 Sep 2020 16:35:57 +0100
Message-ID: <CAJ9a7ViGcasXU2e8HV2RzzobQ7YBHE=YQSqQkCqcb7OyDk_aKA@mail.gmail.com>
Subject: Re: [PATCH 19/19] dts: bindings: coresight: ETMv4.4 system register
 access only units
To:     Suzuki K Poulose <suzuki.poulose@arm.com>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Coresight ML <coresight@lists.linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linaro.org>, Anshuman.Khandual@arm.com,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Sep 2020 at 09:41, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Document the bindings for ETMv4.4 and later with only system register
> access.
>
> Cc: devicetree@vger.kernel.org
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index d711676b4a51..cfe47bdda728 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -34,9 +34,13 @@ its hardware characteristcs.
>                                         Program Flow Trace Macrocell:
>                         "arm,coresight-etm3x", "arm,primecell";
>
> -               - Embedded Trace Macrocell (version 4.x):
> +               - Embedded Trace Macrocell (version 4.x), with memory mapped access.
>                         "arm,coresight-etm4x", "arm,primecell";
>
> +               - Embedded Trace Macrocell (version 4.4 and later) with system
> +                 register access only.
> +                       "arm,coresight-etm-v4.4";

Any version of ETM can implement register access - including those pre
ETM 4.4. Perhaps the new name should simply reflect sys reg access
rather than a version.

Given that the two compatibility strings should be mutually exclusive
for a given device, should the bindings doc (or at least the etm4x
component part) be re-written into the .yaml format so that this can
be enforced?

Regards

Mike


> +
>                 - Coresight programmable Replicator :
>                         "arm,coresight-dynamic-replicator", "arm,primecell";
>
> --
> 2.24.1
>


--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
