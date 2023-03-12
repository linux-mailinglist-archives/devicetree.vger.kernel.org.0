Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6A096B68C6
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 18:26:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjCLR0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 13:26:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCLR0N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 13:26:13 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E730360AE
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:26:12 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id d36so12885027lfv.8
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 10:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678641970;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JtCwiValjsr2h1P8SRv71t+eIe5q6n+42gVTAnSj95M=;
        b=jwAImpv5C1Ul25lVTnv+YccK0g30OMGwguwqcVf6CLqqzAfSWsa0Pu07FbPaRb4cwu
         K8tT5Tlr6X8Bi+Q+PsaWXft67UzAKMLVDNE2DEPvAKA4wXjxKmItGw+ZSxpD2aHBgReK
         MQjl9RmrHLwxCMzQLoxDERnmrCxAMej99nMVel7Hu9of2p5DMwA9gP7fEHYwZHyNAZMK
         24hQ7RkFsN5qO6+OI9Lcr5WgMcCjwl+2fP1HYtuB6SU+oqdEc+lK1towvhrYGCFcnsnc
         X95VNmbtZusx3dONw9rV7DbsFPFA7XzOv1RKJrxWZLfMj0FCAFquDWV410zHh8BcMgMA
         bCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678641970;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JtCwiValjsr2h1P8SRv71t+eIe5q6n+42gVTAnSj95M=;
        b=0OqSjqOcyaVFfDAQnNijtvU4h5HXFfcGvG8cNIQ/+Pui9nOGxzWlaOftIxjcN1i59A
         oM+H7uBMCtj6/5Ko36DuuJRK3aMVGV7N6seyoVdqrsrvDmxBpiwAxvyMrV4OA6Bzh0c2
         /vVyTJCE3PUepNuK7MFGgueyvq21t1c/Fh8Aesduwsaeg/61JsK96Cqxm3RJn7/CoAtH
         qE3znax0uYp6Pvk2M9/UhBRWpZsUzEzPG6nmfPgv6JaCv6OUcJ+wXSOt/didJSt37a14
         zEp6jlISYo7oHxEatdn4Vcz43cTD8G87kGS6pxEe2meRfNGWDIzmzxYAowZXBZsxh7T+
         MPvA==
X-Gm-Message-State: AO0yUKVsC/ozlsJYU5q/dYqhBi0AW/Hy62Df1AJFw4h6zpZGeGsbk9vK
        04aboeKxIjdkcnlqXoPYMhVeBpG7/zU3jkEa
X-Google-Smtp-Source: AK7set+JvNXcL3XfDaUdqQroIZ4R6cnFtoEhtmR8ZLBPkUAuBFgoNDncAfGjx+8fNr16UWybiriK+w==
X-Received: by 2002:ac2:598b:0:b0:4db:513b:6ef4 with SMTP id w11-20020ac2598b000000b004db513b6ef4mr9432336lfn.11.1678641970585;
        Sun, 12 Mar 2023 10:26:10 -0700 (PDT)
Received: from letter7.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id y13-20020a19750d000000b004cb1e2f8f4dsm701873lfe.152.2023.03.12.10.26.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:26:10 -0700 (PDT)
Message-ID: <640e0b32.190a0220.e2264.1998@mx.google.com>
Date:   Sun, 12 Mar 2023 10:26:10 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <f34ba6e5-4a8d-0812-c334-ea47de7b1d21@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: exynos-dw-mshc-common: add exynos78xx
 variants
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Thanks for letting me know.
> 
> https://elixir.bootlin.com/linux/v6.1-rc1/source/Documentation/devicetree/bindings/writing-bindings.rst#L42

OK, at least its codified somewhere. Still, this results in the opposite
effect: DTBs written for one SoC, using compatibles from other SoCs just
because "they are the same anyway". And doing this properly, well, results
in essentially duplicate compatibles.

And "fallback compatibles" won't solve this case anyway, as there is no
common compatible that denotes "Exynos7 DW-MMC that has the bug".

>>> That's non-bisectable change (also breaking other users of DTS), so you
>>> need to explain in commit msg rationale - devices were never compatible
>>> and using exynos7 does not work in certain cases.

Probably it makes sense to put this patch after the actual implementation,
so that git bisect always gives a working setup.

> BTW, this rationale was only example - you need to come with something real.

Pretty much the only thing that is broken are SDIO cards, because they run
very short transfers (below the DMA threshold) over the data lines. That's
exactly what I stated.

