Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECACF5937CB
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 21:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244005AbiHOSu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 14:50:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244006AbiHOSsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 14:48:41 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48D5D42AE8
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:28:42 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id j5so9424888oih.6
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 11:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=xr6JHD6AFlrXJM6hu6thcV+Az5D3BSvwhjamyNOLK2U=;
        b=ZL6j2aZKnPT9BzOcJXtmGblq+Cr4dfi/Nv9LSagWsbWX1e4NdbYHodjiedJL70lrR9
         IQQap1hMa3NR0CwTrdB1Wf42NhJ/kfhJcATdkjdgjcruyhjVBaHrXyaNcQppJ1Li2kQb
         JE0ye0LdvPw69kByyeqX4ASHgTEnred0IXglQPommePBsHtGhcL4e2s8ro5YPmvxmN3/
         D2V9b+2BA4s5wGQyfKgceRV9sjm3k9MBN1lWTI/q4jk3HNlYxsmutp55rRKkPa51qQ/0
         Uu5yMgpCmDioN8eDLnwDa4mRm5ld+CdNaYNUkjSdAKj2mBs4dEaBNx6p8Akae0KHGEY7
         kgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=xr6JHD6AFlrXJM6hu6thcV+Az5D3BSvwhjamyNOLK2U=;
        b=gDakPn2kL5SX8AVt0VJpPin7TPMZ3hZ4hM/t9FKijMWJBeVFdgl9zBZBPZViabz9vU
         nWjJXXqA9Ecz9hsdVFUzXAC9VkcLLN9JdqY1u0zEwGT7mT61WrgIBSqFcvt0CwbP/6IX
         yoIPxOwA3822hXtTwMbCTcK4LDz4yQeDwv4p6lvCKpzp50iSPCmwTLJ4YFzTx3tEivhO
         AFfsvWj9uldDR+KHoPXKsfyudvvrbe9GXSRqpCrWKIgMQI4T0WVfXEkdXjASxggithU4
         /9AsJtJkpT0BEbP75lErQO649F1wz+pGhc5eIdGytyQFgV4Gpsu5ydibkE/u3jqlzztJ
         Xh0w==
X-Gm-Message-State: ACgBeo1pmYb4gmA7ldeT2P2BgpBH63MLJfv+D3aRWfSLo7t3hk+eY7vH
        jymtfLVm4EG5+4wao62EsjqL4in7mFK7X8SH9DE85w==
X-Google-Smtp-Source: AA6agR4v3x1WhnxjKeasF3bXPDPg2zd7s5kes2dQkr2E98b6hUIgSzGyPCj88i2ddzks+sDf7pzB6zRpG9Hi7SrPdxs=
X-Received: by 2002:a05:6808:1c06:b0:33a:9b3b:b3ce with SMTP id
 ch6-20020a0568081c0600b0033a9b3bb3cemr7429087oib.53.1660588120827; Mon, 15
 Aug 2022 11:28:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220727164202.385531-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220727164202.385531-1-krzysztof.kozlowski@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 15 Aug 2022 20:27:58 +0200
Message-ID: <CAPDyKFoDNkLk_FLuYRSdGVmCK809v8m_R_tLbgTTRP5tfaz08A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: mmc-spi-slot: drop unneeded spi-max-frequency
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
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

On Wed, 27 Jul 2022 at 18:42, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> spi-max-frequency comes from spi-peripheral-props.yaml.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml b/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
> index c45b91099325..c0662ce9946d 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-spi-slot.yaml
> @@ -23,8 +23,6 @@ properties:
>    reg:
>      maxItems: 1
>
> -  spi-max-frequency: true
> -
>    interrupts:
>      maxItems: 1
>
> --
> 2.34.1
>
