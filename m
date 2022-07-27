Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53910582389
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 11:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbiG0J5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 05:57:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiG0J5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 05:57:00 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F34E121810
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 02:56:58 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a13so19052992ljr.11
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 02:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mstta/jVJwaxO3E09VbmwkTZ1+8qHEfWiHpYr7kGHfI=;
        b=blYsZCAlAty2/d/oErPlBtlm7q9vTpFiOkviiBxYv53SH4RasW/PIjnmvuYJCuXU8z
         BEje8IetYQnMcjBW2RaKE/m9mouErRzMnje+xWvxTED/DZEwpjaX1+rTMpPu52Bi6DI/
         Tn7OtlKgf5MKdqXsIxyVbcfaF+BJXrOEWOgg5WLIPrZ+79h2wZD5GVGwEQMrfWWBV4xI
         kGwgAHlwIBEfNokJf7TtcCm5L8kdIqHUdST142Ub1j40ZzE/FNNF9yD5e+K1M/0/4Mvm
         Yh/z0gTAQQ5sJjmXup75BBBZmy+Og8KP1bwDiQd5LRqBeVvXkATAMiVN3fhk7GVa9Pz4
         6qhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mstta/jVJwaxO3E09VbmwkTZ1+8qHEfWiHpYr7kGHfI=;
        b=FDMkRrqdlxZH//vidq1Yb5Qbo8NMBnyPoRUtQiCftWg7Vs2hSSocMX+6L1ftdMYZdd
         l1jWOvuLk5b3tvOtqmiMcsqGFqjT3If+lye6pFFQkuNZoN/M26opTjOENY28RiFUcMUS
         gzQ+yoRY9USQyfdVfVUhjg9V5NzP/inqEMp+CMyNICX/hHmR6BkgfhmqEFq4DaQPdEAa
         Spwu3yqIf9osocXzTQzuh/mZAH59A1JPOyw6Zeq60CcIxcTX317CtcNbvI159ixmZv2p
         VJ+flkZqPKiSe/NfZz0dIHcCuGNIWO2Q0wOhXXAv0hOzj47M/q9kE2EIj0cwo3PqdJZM
         Io3w==
X-Gm-Message-State: AJIora91ygu47jf6VhcfV/C52PrJjlMBrhQm43Bv74Ie81/naW0bzYIN
        I3xRKApHo98n4+K6vOt740122A==
X-Google-Smtp-Source: AGRyM1soIF6TnPo5Id52uti2xf6LM4cXMhalhqYZ1SGQ34qhPDPV0oFU+HfKVZXTzuNiYOR+MZTWqA==
X-Received: by 2002:a05:651c:23a2:b0:25d:f590:886e with SMTP id bk34-20020a05651c23a200b0025df590886emr7619748ljb.521.1658915817152;
        Wed, 27 Jul 2022 02:56:57 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id h11-20020a0565123c8b00b0048a7d33e0f0sm2361901lfv.261.2022.07.27.02.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 02:56:56 -0700 (PDT)
Message-ID: <5d442d08-0991-9912-d5f7-cb2092c3c0f3@linaro.org>
Date:   Wed, 27 Jul 2022 11:56:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/3] dt-bindings: usb: Add binding for TI USB8041 hub
 controller
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20220727093801.687361-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220727093801.687361-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2022 11:37, Alexander Stein wrote:
> The TI USB8041 is a USB 3.0 hub controller with 4 ports.
> 
> This initial version of the binding only describes USB related aspects
> of the USB8041, it does not cover the option of connecting the controller
> as an i2c slave.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
