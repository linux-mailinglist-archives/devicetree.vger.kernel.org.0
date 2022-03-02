Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E1B64CAE6C
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 20:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244973AbiCBTQ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 14:16:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245017AbiCBTQY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 14:16:24 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4CE6D8859
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 11:15:31 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 13E973F164
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 19:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646248529;
        bh=EbZm3fCrjAENzWxsC8+mE1eUl2CGmZ7L6h1RiXMGf+E=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
         In-Reply-To:Content-Type;
        b=co8fKANt8HPxTolaZT5/1AyYY/T4gBnlrUZX7lm/cKZC/taUVCsIWixiiVd1OsHtV
         +9ZV7MLB1/8YOsZXcelhLDGtFmLWiSOrzuglc/QZRur7Qs8SpLfUCDUghJ5Ag7DnwO
         Isy4aRGfBmQ9UYhj2YNluVmYFvcvy6BXi1i1Khfgs4ZqBKeTGjee6/1LlF+dW0lWd3
         u5UBbIOO09ultItEpal/Zqi4V2WYe5Qz7uaMaClXnidt8RAsjjwbwElchN6d21/Hr4
         PXVhlUuFrJHdlM9KFBuIK24mlAiKIo/sUtXVD4K2P/HkQSNWwHXXSrNXohg82gwpXJ
         FzzV1pbjC9qSg==
Received: by mail-ej1-f69.google.com with SMTP id sa22-20020a1709076d1600b006ce78cacb85so1487480ejc.2
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 11:15:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=EbZm3fCrjAENzWxsC8+mE1eUl2CGmZ7L6h1RiXMGf+E=;
        b=CMu3hZQsNmLrBHV3NEZWGWt292gpLfy8TsRl5VwMyfdhTivcz8sn6aUCIhPrLwhUGQ
         Ltosk2m0aRE1dpxyP7lK04JpsYmgiIyc153aklTqi58lScy8jNVA15iU76Ydm9uC+O27
         p2kuM/H3+3CVD8QSZ9cp4yXO1sODbWcfeP0wdPEdcpcmabrMPWQB7q+IC8QCQ1uPjxqI
         AglRmgkVlXtzEP3zG6e8NNWU/Te/eP1Rz6ScrTMc075IqWGbTKhnhPFSTuOS0iKA6XSj
         tKBjkjA0T8cXpo2/8xw70PqBrnm6IJ7/vxIlvi5rAKSR2kWoLcP9JhsEVbZ1rCsAPE1J
         fGtQ==
X-Gm-Message-State: AOAM532KYENCPbx7980eiQNgzEH+Ua3sWAKFp5T6MwuD+pjG7C6d67Xu
        N0YKRc9f4IqLdWy4v9jQUAmpZX+bJLss0UA+v+Z9i5QHQRMTrp9erygfFOQNeFIQiEfUHes9413
        mi5IrUlOAUT/FOcx13q70TTKuvnOuqCcBtXRGI3w=
X-Received: by 2002:a05:6402:5241:b0:415:b1c4:4c6a with SMTP id t1-20020a056402524100b00415b1c44c6amr5485985edd.324.1646248528725;
        Wed, 02 Mar 2022 11:15:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzCwA23Hngs6c/EOXYexOmfbtZUzLrKz9/okHTMzwMqVBCHgx3WljxBdDDGYRASv3PooyIYMQ==
X-Received: by 2002:a05:6402:5241:b0:415:b1c4:4c6a with SMTP id t1-20020a056402524100b00415b1c44c6amr5485969edd.324.1646248528569;
        Wed, 02 Mar 2022 11:15:28 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id q2-20020a170906144200b006ceb8723de9sm6429792ejc.120.2022.03.02.11.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 11:15:27 -0800 (PST)
Message-ID: <a401939d-ba65-4614-baa2-047914f55206@canonical.com>
Date:   Wed, 2 Mar 2022 20:15:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 0/2] regulator/mfd: dt-bindings: maxim,max77802:
 convert to dtschema
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>
References: <20220215075344.31421-1-krzysztof.kozlowski@canonical.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Javier Martinez Canillas <javier@dowhile0.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220215075344.31421-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2022 08:53, Krzysztof Kozlowski wrote:
> Hi,
> 

Hi Lee,

This set also looks like it is clear to go.

Best regards,
Krzysztof

> Changes since v2
> ================
> 1. DTS patch: drop, applied.
> 2. Regulator: do not require regulator-names.
> 3. Add tags.
> 
> Changes since v1
> ================
> 1. MFD: Use absolute path to schemas.
> 2. Regulator: skip properties.
> 
> Dependencies
> ============
> 1. DTS patch: nothing depends on it, sending here so Rob's automatic
>    checker won't complain about DTS.
>    I will take it via Samsung SoC tree.
> 
> 2. Final MFD patch depends on regulator, so the two last patches could
>    go via Rob's, Mark's or Lee's trees.
> 
> Best regards,
> Krzysztof
> 
> Krzysztof Kozlowski (2):
>   regulator: dt-bindings: maxim,max77802: convert to dtschema
>   dt-bindings: mfd: maxim,max77802: convert to dtschema
> 
>  .../devicetree/bindings/mfd/max77802.txt      |  25 ---
>  .../bindings/mfd/maxim,max77802.yaml          | 194 ++++++++++++++++++
>  .../bindings/regulator/max77802.txt           | 111 ----------
>  .../bindings/regulator/maxim,max77802.yaml    |  85 ++++++++
>  MAINTAINERS                                   |   2 +-
>  5 files changed, 280 insertions(+), 137 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max77802.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77802.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/max77802.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77802.yaml
> 

