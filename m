Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 731C7583E86
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 14:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238130AbiG1MSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 08:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238379AbiG1MSA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 08:18:00 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298286D540
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:17:43 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id u17so1764111lji.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vTHkf3PkQuEgWJCGVwet40bcBQOgfr43zzOgeagd0v0=;
        b=DrB888e8pgeDAoMhrEqBNUb66SA6IcaJUsXBFF5IlGsk2uCCbZekR1kwgl3aEJ26bc
         1jNfUJm4fIzr8GBhbQcg2hRDsO2Y2tL3avvUyMynyGj610ogrHFX2ygpX8G408ESIfbB
         KxIfBvfxPNvSDWH3LMIVnqvHC+Xzl45CXdtvtN+47GmWkNbUXVYTufPdCTUvNI4jMmbc
         4V/bkz5hJu5XwxkgENOnMxmt9jNR558hunrovhY1W8Dr+JXrhi0bPajNHa77QPAPnhCW
         fjeaWrZ6iNC8gwKOGfCdhldVm8vmQJ3GKrBYXu9+UkMnrtL64h6qxMSPb7SXmhZy3gSh
         7TJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vTHkf3PkQuEgWJCGVwet40bcBQOgfr43zzOgeagd0v0=;
        b=ei5XdLTnH26P0T1jTouP+nhMHpwVA+tJOibqMtGUjf69lrdq5B7B67x2NMwdAB6oVw
         8YM58rWElYb8c5TemeanRjV8ecb6L5LAyiwVazpmSSooOP0XHhDPM9XuiMmR4OqNbX34
         yOKGwCjuNXflOcHKJVmgiflmpOkyzzKYFrBokxdtIzT8p7NoyZIEonnieuKlPgtp88DO
         ksxDhlabkXvPkDPkbVQX3fBnZg7Vsi+AYGXK44tDXavxzMJD7Fq7gO7Zz+MBFTqumMWV
         aAhpSIHy/Nlk9w3jaCCNKkPp39jtovUNFhyPRoOcwlc5H4pzMFDuj5x/g1MDTju5xw23
         tgFw==
X-Gm-Message-State: AJIora/RiGInMJyiZOGbiR/6qa9h+pgqyH4Y3GSasC8wBwEmKQ2jQHLO
        P5tWHA1kp1mgAcMSqXbbG5Eq4yoX4VJXWQ==
X-Google-Smtp-Source: AGRyM1vNyLPheoEf3KZBupmIsZAAYI+VF8waTXPJlh0mdoKFxZ1zqu+EszKS24/oZeb1UEHCkEQOTg==
X-Received: by 2002:a2e:a315:0:b0:25e:2e8f:f5c5 with SMTP id l21-20020a2ea315000000b0025e2e8ff5c5mr597979lje.145.1659010650856;
        Thu, 28 Jul 2022 05:17:30 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id v22-20020a056512349600b004795d64f37dsm176194lfr.105.2022.07.28.05.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 05:17:30 -0700 (PDT)
Message-ID: <1685ecd6-cfe7-c2f1-add5-6bfff055fa06@linaro.org>
Date:   Thu, 28 Jul 2022 14:17:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 2/2] drm: panel: Add novatek nt35596s panel driver
Content-Language: en-US
To:     Molly Sophia <mollysophia379@gmail.com>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220728023555.8952-1-mollysophia379@gmail.com>
 <20220728023555.8952-3-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220728023555.8952-3-mollysophia379@gmail.com>
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

On 28/07/2022 04:35, Molly Sophia wrote:
> Novatek NT35596s is a generic DSI IC that drives command and video mode
> panels. Add the driver for it. Currently add support for the LCD panel
> from JDI connected with this IC, as found on Xiaomi Mi Mix2s phones.
> 
> Changes in v4:
> - No change.
> 
> Changes in v3:
> - Embed the support into existing driver (panel-novatek-nt36672a), as
>   these two IC are similar with different initialization commands.
> 

This does not go to commit msg (---).

Best regards,
Krzysztof
