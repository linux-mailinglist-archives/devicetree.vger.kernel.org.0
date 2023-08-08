Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2B97745F5
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:49:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231717AbjHHStk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233122AbjHHStX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:49:23 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C78419ACC
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:01:10 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-d05a63946e0so5856059276.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691514069; x=1692118869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EyDtqRMa+XeuHmfOHzoFQ2EBCRcPgUdz7VrLow00vho=;
        b=v7+keYpeLmzS82nSRxoyllUb/p1fHZmr2sZOF363fKLTd32cMEindgpz9V7AVNU/r9
         iUXhv1dc3yKfm3EglfrqCuAxbqL+kgcZg1GcRlfEuG4SKxIdZmMyeNvH1KwyPEuW295P
         ANVoBed68VNwzpt78vG8RY4flCVVx+f3ynjGrtAR/OFYLIkR+DUjJn8BVFn5L6Mzzw/p
         qfcpepXIWoTfz4TtQsN8mfnjGsmwuwIcfmiQncYvrV8mTlGbL90RnjT89FWNhczkK9Xy
         W7F6UbmVuAfA4+e60e6xa6Xb8p5MS2vWz/E56o3fqgs4T22YGr0K+oAGsQ7Gnome5rMB
         6QNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691514069; x=1692118869;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyDtqRMa+XeuHmfOHzoFQ2EBCRcPgUdz7VrLow00vho=;
        b=bSm+xX5cvYiZnexO1cuS8k81SNlD09hOzi8KS1SanxHxN1VBYgW6NSEDZ102JTfEbQ
         pMbjLEhDa+GOXMlzLRrD+uGdmpWJXWM9cJ0mvN6R0DYDgISrj7xZuytVQ0PWpIBebvx2
         djAN0sgPIFwE7GrzjKpVRAoKQFzIY7+AIcc9UmoOVeiDZ1fy93u6BaLKm421HvJz6XYw
         QuDNXZrM/bkQuAIGroIC5KeCwIaxsPI9MBT1TE7bScNsrwQnjlPdn2Ha5t+77Pdq0vP6
         mQUz7tayBOITS54kByUhW2XQ8WTfNl07of3GQL/qBpVnOemvQcHVkcmHZtKifYm/g7JX
         mA/Q==
X-Gm-Message-State: AOJu0YwHAanukcxM6yyN1oNsFETxtlevjqorzY6QqcY9MONALLTEiQNF
        NbO/mXlF6HZyH50eDpcHaqn8XZjbqXjQoLfuSeP7xByVLOItFY3p
X-Google-Smtp-Source: AGHT+IEyc7HHsMlkF2r9nll2T0yEWZZ5v0pKzIcru7d42nj6cqrIRE36KBIE7qFz1IaWZ2c38uHVZnZYbGIn7T2NF0c=
X-Received: by 2002:a25:8d12:0:b0:d1d:514e:27c6 with SMTP id
 n18-20020a258d12000000b00d1d514e27c6mr10881786ybl.6.1691492001963; Tue, 08
 Aug 2023 03:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <bf912d5f5e74b43903a84262565f564bfe0fed7e.1691047370.git.michal.simek@amd.com>
In-Reply-To: <bf912d5f5e74b43903a84262565f564bfe0fed7e.1691047370.git.michal.simek@amd.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 8 Aug 2023 12:52:46 +0200
Message-ID: <CAPDyKFoQk+ETga2za3=pLdN+btKsy6tx70o3wsZGZFQ0XWmEVg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: arasan,sdci: Add power-domains and
 iommus properties
To:     Michal Simek <michal.simek@amd.com>
Cc:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Adrian Hunter <adrian.hunter@intel.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 3 Aug 2023 at 09:23, Michal Simek <michal.simek@amd.com> wrote:
>
> ZynqMP SDHCI Arasan IP core has own power domain and also iommu ID that's
> why describe optional power-domains and iommus properties.
>
> Signed-off-by: Michal Simek <michal.simek@amd.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index a6c19a6cc99e..3e99801f77d2 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -160,6 +160,12 @@ properties:
>      description:
>        The MIO bank number in which the command and data lines are configured.
>
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
>  dependencies:
>    '#clock-cells': [ clock-output-names ]
>
> --
> 2.36.1
>
