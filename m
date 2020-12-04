Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF4692CEFDB
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 15:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387851AbgLDOkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 09:40:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387597AbgLDOkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 09:40:17 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D998DC08E864
        for <devicetree@vger.kernel.org>; Fri,  4 Dec 2020 06:39:06 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id u9so2400026lfm.1
        for <devicetree@vger.kernel.org>; Fri, 04 Dec 2020 06:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gCvgf9SsePfgxYMuD1WNMKjq/viyendYVg7MdniZolA=;
        b=VeTyCc9cXxNLbp1W4GPY73r1xI0NKKLDr84XjBcpHqLokqbvULGt9MwbbkPly0tSu6
         29+65aa8KGh0MGS5C+EZdKq33GMRLQKua8u3yLZAKNEUGogjVYeHaaSfAfWN6h1aRUqh
         lG6q4IIMR//hI1DZKGIvDJXWtYDBhq5fAxvENZVaFRFzWpuHGK7ce6beir0KJuXcEJ90
         YwSI4aZJpkdQ41QXopHfLQGWz1c3Il9UrRXfmaPSbfsizkF9AxPz7dEPHon37TaJ4K2v
         dnLkWZpWyLGYC4OhbPg5YfQ7SvGXZxL3dhbd5IfoW3LbjOAnwoQWv+UmcTcJu+RnrprB
         m5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gCvgf9SsePfgxYMuD1WNMKjq/viyendYVg7MdniZolA=;
        b=nMg6w9Z/t2bUGblNyxUgpmlEplsM0pzVguHDrFjsqCvjpSYfHl6Xomswy8GAnmpbxO
         KAsIuc+f4z2TfOdCu1T7mA66DR+7QNRHHVR/5hTYzW/fcdz8sU/9z76M30CZd+6ElcI+
         lUers6JI9b+2V5JxBYCrYuBCV9pg74krdIOL537OMN9jAjhrp5V75qsjj5sZLkpWPoW0
         yzeLtyaLMq5tSppSLGmdO0dEa7yBiYOGHCpKVDv1K65YsEqsR2tV5YCAq3//Eb1c6oVh
         EhgejS8Mny2T0LnoXwi3sNqKsR//QoD6Eiaqnj/0/hUpyojx+UjAqHBQrwWEZcFge0RZ
         YEIw==
X-Gm-Message-State: AOAM532aaeRWjEpfmZ+A5ZerF/RYruD+GIk56d/5mbb6TegOO2Kcefa2
        DNpD8Qz1BE6cw3wLObEqUxVqO4kVogXoZD/J6sAj5g==
X-Google-Smtp-Source: ABdhPJyXme2sn852/oSVQ2LSWRFUTlW9YLFL6WModQ4nu/BipCDYdbPjNCrjJI2L4cpLI/5sXGDNK7CadH2SUm1+x7I=
X-Received: by 2002:ac2:498e:: with SMTP id f14mr3229359lfl.59.1607092745405;
 Fri, 04 Dec 2020 06:39:05 -0800 (PST)
MIME-Version: 1.0
References: <5fa17dfe4b42abefd84b4cbb7b8bcd4d31398f40.1606914986.git.michal.simek@xilinx.com>
In-Reply-To: <5fa17dfe4b42abefd84b4cbb7b8bcd4d31398f40.1606914986.git.michal.simek@xilinx.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 4 Dec 2020 15:38:17 +0100
Message-ID: <CAPDyKFqTqKeV0kjqddQVQkdJg4iu04Yq+aT=4A6_bVxMZzwYeg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: Fix xlnx,mio-bank property values for
 arasan driver
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git@xilinx.com,
        Adrian Hunter <adrian.hunter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Dec 2020 at 14:16, Michal Simek <michal.simek@xilinx.com> wrote:
>
> Xilinx ZynqMP has 3 mio banks and all of them are valid. That's why also
> list the first one which is missing. Property is enumeration not range.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 58fe9d02a781..8958e54e522d 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -147,7 +147,7 @@ properties:
>
>    xlnx,mio-bank:
>      $ref: /schemas/types.yaml#/definitions/uint32
> -    enum: [0, 2]
> +    enum: [0, 1, 2]
>      default: 0
>      description:
>        The MIO bank number in which the command and data lines are configured.
> --
> 2.29.2
>
