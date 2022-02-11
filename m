Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB33E4B277C
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 15:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238757AbiBKOAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 09:00:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:38278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350680AbiBKOAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 09:00:30 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B41385
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:00:26 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 43641402B8
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644588023;
        bh=rjkrR5XxQmo1qZPV6d9L8Q/uhIi2chbUs/Ji4gNgrnM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=K+7vkFjSnKZhiWcq71LCVDU1hL3AkY5/hy3XhHYdVRcLINLGrV/vOLlO0QBM+eMtt
         +xDKmaPi7fVWtu2w/L76WkXTGy8MRApDPsOl0R9pZudknfIQGBLU8vWcjHJiElPOqW
         KYeN4a3wemnrpYsd9I4HwOBxLPMXdJRoOyxtQjRoEhpWFb3/k734Vgx08v5cmLpaLj
         CoN3fEXUoIoRF6sTYSHQNr9FcEcXURnXVQaaAo8MNeyiir7t/fPlLp1kgtWSERvSto
         ysgES3rjcpuVJOUn1GumxIfRaqtHk/TxLjHU2R2CoNYmB9n9fNekFeuqcPuBEOE4I+
         nP60AJENk9KSQ==
Received: by mail-ej1-f69.google.com with SMTP id h22-20020a1709060f5600b006b11a2d3dcfso4138643ejj.4
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 06:00:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rjkrR5XxQmo1qZPV6d9L8Q/uhIi2chbUs/Ji4gNgrnM=;
        b=i+901OsDWd/Z+bSH32DGLurYChZ7ZxPmH8arBL4UGqonufO3OjogS+pvn2nRbnFrJp
         9ZsPvh/j/BIJa8i22OLRCLJRfbtg/R4g/l2Yd+lRs9AMfT+/nCbjc+rc1cLks7tW6pVE
         AtDEmJepVMjgEgqDpS2qJso3JqH3nYknSvKuoX40zS+c2goMHOLwl1eFxK6y+mfydJ4j
         C4B7Mcx9blRs4DH+BTGxAdzviCZNXJ4AjV6gMo8WK+zkSGIhBmYQ064yEWQdhLDLfOeo
         e6BseZueSmbkdO7swdkZRt8svOOrm1nIvV71G6R4AhusbUvBW3D/wzacERQ8z2stJWMW
         bnRQ==
X-Gm-Message-State: AOAM531MYYyRnWTQ29wP+MKIwsHQTGHo26Yq8sI170ieNhPvpjAdKshp
        NphAA2nnxlIKxJ81wuGmTa6Lxv+oOwjvs3KY8BqMwt/JH9Vnhb5DjLF2AOD+HhzvIqMdVrjFVcL
        dgvjrzTkkOVuC9IlT1of7d6v32iq9qPDBwRHHu4Y=
X-Received: by 2002:a05:6402:1e92:: with SMTP id f18mr2057082edf.34.1644588021768;
        Fri, 11 Feb 2022 06:00:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxoDFT2IewBAOG7RwMtyfmdbeVK3CsUUz2cYaWSNoDO7/urcw7AqVZHVuv6xEDECsV7hFGFcg==
X-Received: by 2002:a05:6402:1e92:: with SMTP id f18mr2057060edf.34.1644588021570;
        Fri, 11 Feb 2022 06:00:21 -0800 (PST)
Received: from [192.168.0.99] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h8sm6188496ejy.31.2022.02.11.06.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 06:00:20 -0800 (PST)
Message-ID: <830af6d3-ba5a-d085-ddcb-772d16f56085@canonical.com>
Date:   Fri, 11 Feb 2022 15:00:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v4] dt-bindings: watchdog: convert faraday,ftwdt010 to
 yaml
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, linux@roeck-us.net,
        robh+dt@kernel.org, wim@linux-watchdog.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
References: <20220211115528.3382374-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220211115528.3382374-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2022 12:55, Corentin Labbe wrote:
> Converts watchdog/faraday,ftwdt010.txt to yaml.
> This permits to detect missing properties like clocks and resets or
> compatible like moxa,moxart-watchdog.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Changes since v1:
> - Added myself as maintainer as requested by Linus
> - Added $ref to watchdog.yaml
> - Removed useless quotes
> - Added blank lines between properties
> - Removed timeout-secs as already provided by watchdog.yaml
> 
> Change since v2:
> - rewrite compatible section
> 
> Changes since v3:
> - Fix indent errors reported by yamllint
> - Change additionalProperties to unevaluatedProperties
> - Added timeout-secs in example
> 
>  .../bindings/watchdog/faraday,ftwdt010.txt    | 22 ------
>  .../bindings/watchdog/faraday,ftwdt010.yaml   | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/faraday,ftwdt010.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
