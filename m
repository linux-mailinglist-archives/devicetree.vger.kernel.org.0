Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 848425A23F6
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 11:17:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245701AbiHZJRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 05:17:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245632AbiHZJRT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 05:17:19 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 657B6D7412
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 02:17:17 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id s6so1197542lfo.11
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 02:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=kWwbtT/54FyUEO6wWPpRIwL8GLUA5z0zpRQ+oeLgI4Q=;
        b=uJjezohYlWYNbj23GA51zYTVzXsn8I7264i22VBOIJep8GJraT5Hxo5M2oUcFlo9t8
         miozsWwpM3suEEtBt/XymJNCw64FRkiKlXgLuk+td0iSoBnLuR3IjxKDuSMEg1oOIAx2
         YaYjoRrDhOf1VkNfbMKgnBkwWrze5ZOktyz2+9aItoZaAoCq3E50LjaR4Vd7q3llBgek
         uymRe4/ctK+sj5GKuRojGTMF93WUrWkgQ+kaPtPbme2aSJoAJvPusqJ8rkCY3JZDJVRD
         mD23zRydF7fb5y61iBYTCxjfz2nhqt9YuXXWADe6g2P+GZhJGHmj6S8qeAZ9UvB/QttY
         masg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=kWwbtT/54FyUEO6wWPpRIwL8GLUA5z0zpRQ+oeLgI4Q=;
        b=wtkWLjVH5ezVBfW8v8U6LdjTWjAEEi7DBIDTGFNqJ7QbCZsR8GKxEZhqlpce3xzQYz
         1AHIpg9W4i2Vt4LTbb8iP2RMePTxUdTevtDNhCQ0H/z+4kNb87/loWEHYfLIytWLqd8F
         Tva28Vo5KQO1xemU9DHJWJQo73jYJRcAgCUqs4ISPgU9idySAlgBbjEzWWhXdB4alyRa
         qesvcbYKB/WG85M/CXz7Ay29+wNtsjtfPtBeTN1jOJksXDDb6BANQ+FaWUQ9pHM7YEyc
         gp1GOQ5C3tks+SGOTv25MUtcr5QvGL/BbZzuhhyo873s7OM1nBoCplaryTurSB56DeHG
         gDAg==
X-Gm-Message-State: ACgBeo0UzOxPJJyZ6HdtApCyeJtWA772tW4NzcCd0zirTNIw5uUGfSyW
        AZvquB0SxLlNsfL+YBsPDfYowoMeXw6RtCwhkMTFsw==
X-Google-Smtp-Source: AA6agR6c3bAZ3/2TopOviym18sXnze1yRcZBfeJcwIh55DYHGT4eqQP86GgpcX4QIr2GKajCvRrr7MX6kWdrKaBnJ2o=
X-Received: by 2002:a05:6512:6ca:b0:492:ef21:c085 with SMTP id
 u10-20020a05651206ca00b00492ef21c085mr2340299lff.71.1661505435752; Fri, 26
 Aug 2022 02:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220819190729.32358-1-a-nandan@ti.com> <20220819190729.32358-3-a-nandan@ti.com>
In-Reply-To: <20220819190729.32358-3-a-nandan@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 26 Aug 2022 11:16:38 +0200
Message-ID: <CAPDyKFpn+3MUA-Vp9cnY8a=rpg0kLQk0_c5+4=FgF0FbW7mxLg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: mmc: Fix 'dma-coherent' was unexpected
To:     Apurva Nandan <a-nandan@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        Hari Nagalla <hnagalla@ti.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Aug 2022 at 21:07, Apurva Nandan <a-nandan@ti.com> wrote:
>
> dma-coherent is mentioned in almost all TI K3 platform mmc
> nodes. Fix warning generated due to its missing match in
> yaml schema.
>
> Signed-off-by: Apurva Nandan <a-nandan@ti.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-am654.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> index 0ab07759b472..ea9121fb188d 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.yaml
> @@ -51,6 +51,9 @@ properties:
>
>    sdhci-caps-mask: true
>
> +  dma-coherent:
> +    type: boolean
> +
>    # PHY output tap delays:
>    # Used to delay the data valid window and align it to the sampling clock.
>    # Binding needs to be provided for each supported speed mode otherwise the
> --
> 2.17.1
>
