Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51B8B6C67E6
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 13:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231364AbjCWMPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 08:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbjCWMOe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 08:14:34 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12400252A1
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 05:14:06 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id p204so13383957ybc.12
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 05:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679573644;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BblPANZjqA7wQOrQWqZUuSoux+eP/PZ5C5O715+EVfs=;
        b=pLQeB1LB5bE9yn2Blg4HQ/e5b161vpKYwJOanB+jqJjmB71hGXdcA3onsRb7tKAJ07
         LhJWQeJVnNalIoQiLoLaTE2gLjxbi8naVzTq4P39Zin/0d2HGrSsls58YWiYzqezxR07
         LGeRO3X0zmEvJAVoXY8A5JuMaA7hXW3YI1E0Lf8puVxU2Y5kRkgGzqpM4O6q8ObcuNG7
         nnWvMHpDlUtAqLHTvqS/FF2m420mHrS/LsX1VciG8rAM9v0fCa0syAkbsMJ0MTuZVbnx
         zEBkDYs+k6nBLPeodoAs/tDrIoxF8m914owO75sVFfhoRB7WDbC2ZinBczeqeOReCb9E
         K6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679573644;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BblPANZjqA7wQOrQWqZUuSoux+eP/PZ5C5O715+EVfs=;
        b=qBfSaMIlxgzW8hp7G+vpNv4pQJ7THwyvXWGtuKcU/prMkVa+nyIKYfZ83KBSVb9Bi0
         eshSsTpANSFsJFXMdQUDWcZ2edw2TNw87wKd5Xw0XksqnP0xIDkFx/ath+7J2hdcXYen
         N8FRz6J6r7I3buOcxO9oTHAffNK5OM3r7ma4E+Z3aabqyFxGQ2kdp43dz/8LbZFaLLrI
         2FtvXfBSNfOKV+1FI5piAh2P2gmdBUCOk3sJQfu2SfYtsAEhInWftIxveRvy8Nv0J0nj
         cuJw/DtX2Wid7YqCtaO/j3zaysyuDv//pHSydVqoOJq/KjPPfuMeKw4UUc0kCTwMBBqw
         gEfw==
X-Gm-Message-State: AAQBX9eLPArQo2YNKPPTcse4/AT1tdeg+jSPbDzx8PJZHpZcEmM70xTu
        Lf8bB6QD80q6BNRN3l2j1y3wOYaADpqMk1AlzNWwNg==
X-Google-Smtp-Source: AKy350YMS4DKKbzOJ1NaznFTshAbP8PVkuBNSowg2uyFogxyMYHXQw8ASfzfJpKHhm1OLyjqQOUELhjS30llPxzCZ5U=
X-Received: by 2002:a25:bb44:0:b0:b6e:b924:b96f with SMTP id
 b4-20020a25bb44000000b00b6eb924b96fmr1930276ybk.3.1679573644543; Thu, 23 Mar
 2023 05:14:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230319173006.30455-1-robh@kernel.org>
In-Reply-To: <20230319173006.30455-1-robh@kernel.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 23 Mar 2023 13:13:28 +0100
Message-ID: <CAPDyKFqFkNNVMvYShNGQkC4S3KEMDPR2pTHxRCuzjtpW1Joe+w@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: fujitsu: Add Socionext Synquacer
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 19 Mar 2023 at 18:30, Rob Herring <robh@kernel.org> wrote:
>
> Add support for Socionext Synquacer SDHCI. This binding has been in use for
> some time.
>
> The interrupts were not documented. The driver only uses the first
> interrupt, but the DT and example have 2 interrupts. The 2nd one is
> unknown. "dma-coherent" was also not documented, but is used on Synquacer.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
> v2:
>  - Rebase on conversion done by Kunihiko
> ---
>  .../bindings/mmc/fujitsu,sdhci-fujitsu.yaml       | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/fujitsu,sdhci-fujitsu.yaml b/Documentation/devicetree/bindings/mmc/fujitsu,sdhci-fujitsu.yaml
> index 73d747e917f3..430b62899397 100644
> --- a/Documentation/devicetree/bindings/mmc/fujitsu,sdhci-fujitsu.yaml
> +++ b/Documentation/devicetree/bindings/mmc/fujitsu,sdhci-fujitsu.yaml
> @@ -14,9 +14,13 @@ allOf:
>
>  properties:
>    compatible:
> -    enum:
> -      - fujitsu,mb86s70-sdhci-3.0
> -      - socionext,f-sdh30-e51-mmc
> +    oneOf:
> +      - items:
> +          - const: socionext,synquacer-sdhci
> +          - const: fujitsu,mb86s70-sdhci-3.0
> +      - enum:
> +          - fujitsu,mb86s70-sdhci-3.0
> +          - socionext,f-sdh30-e51-mmc
>
>    reg:
>      maxItems: 1
> @@ -29,6 +33,11 @@ properties:
>        - const: iface
>        - const: core
>
> +  dma-coherent: true
> +
> +  interrupts:
> +    maxItems: 2
> +
>    resets:
>      maxItems: 1
>
> --
> 2.39.2
>
