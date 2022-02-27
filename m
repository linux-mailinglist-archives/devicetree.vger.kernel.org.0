Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E2F64C5A89
	for <lists+devicetree@lfdr.de>; Sun, 27 Feb 2022 11:58:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbiB0K7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Feb 2022 05:59:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbiB0K7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Feb 2022 05:59:15 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A4F54DF49
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 02:58:39 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 69EF43F1DD
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 10:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645959518;
        bh=2bOCiusGq2ul/MWsE8cSC2kGM7wquiIO9nYKtCZH63I=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bATA61xMq9rLGkt6t5BC9H4jpR6EW41nnCA5E1ZX4+Tck4E70nDedfeDVvq6Izoiq
         kc/Wl7VbUNH6FpGc24aO4SUfNaKVYRAsGwwhIAIPwsg1hV5nc33lAIKDD0ZOnd4Vc6
         c14Bp0VE5/wPE5lvRX/EWTBqynxB0ntgN1gMgOmb8eGyXCF1Yuijms4M64o9Dni8MB
         pNdkb2MdJwhjPMa+1DMNtOelJIjPpP5foMh5Otwg4GhxxwQ+rdw7b5e9pnm00Jv2ch
         tkjSMXQtUrBnopJbUfbVyytzVmyWMsMP91DgTxdAPDPMPNhG4pp4JubUSr+nEPQI2G
         t2AhGb9NRCeIA==
Received: by mail-ed1-f71.google.com with SMTP id s7-20020a508dc7000000b0040f29ccd65aso4107541edh.1
        for <devicetree@vger.kernel.org>; Sun, 27 Feb 2022 02:58:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2bOCiusGq2ul/MWsE8cSC2kGM7wquiIO9nYKtCZH63I=;
        b=MkXV8feJZltdgLdQHt7+IZW4XkDQNPAoTXxVfe+ckHbCYy4uPtTpOkt2oP6psKutRk
         NFCfFl67/PGVJTqzUOn6NzjQ4lw8uzW92R6NqTeFyTmwI9fQf5EQ3qBmzTBfX1F1dgNd
         p8uxcmpRMMORD2U0eLwGNDHmynYOKThRV9jfolbGlQU37OgzXqPkjxFiQRLNoJHEhWJC
         FUo0O5/YgBWm72QP2dia75l3Rkxa8D/GG8zKUysPENcnTcD77AixzX8XfcrWpYB5p+fe
         AmKNkLHdXmolBGR1axLDYkYQNCmjWzUumKgg+M0ScZUmapkRp0V2niyyE9xAfZURXv9h
         cNiw==
X-Gm-Message-State: AOAM532ObDeSR/eTYGslI+QuSVZv5lIikPdR+OrEUJq4UucUbTO7fCgL
        ehYITtxS4PYOOtxgy+sL8NUik6e+HPQkB8U6KKw1ZuWB8+v8wrLJSh08kNPrj9p0SCOc/XqoWzB
        T2KCVY3A+KsSbzGG5n4lnfSg/1dW01KNmKSWVy6k=
X-Received: by 2002:a05:6402:350d:b0:410:b608:ff4f with SMTP id b13-20020a056402350d00b00410b608ff4fmr14922907edd.89.1645959518000;
        Sun, 27 Feb 2022 02:58:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxoFbq1X2KP1qKbtNx82/SCmsEevJmYxZ2Bf2LLbkURS/vDpov5C3QYi0mxgeV/lId9Uap8Sg==
X-Received: by 2002:a05:6402:350d:b0:410:b608:ff4f with SMTP id b13-20020a056402350d00b00410b608ff4fmr14922898edd.89.1645959517865;
        Sun, 27 Feb 2022 02:58:37 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id t2-20020aa7db02000000b00412cd5d5148sm4403973eds.47.2022.02.27.02.58.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Feb 2022 02:58:37 -0800 (PST)
Message-ID: <e6f3ceb8-7b02-020a-7b2c-07520f6d9661@canonical.com>
Date:   Sun, 27 Feb 2022 11:58:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 4/5] dt-bindings: hwmon: Add nuvoton,nct6775
Content-Language: en-US
To:     Zev Weiss <zev@bewilderbeest.net>, linux-hwmon@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>
Cc:     Renze Nicolai <renze@rnplus.nl>, openbmc@lists.ozlabs.org,
        linux-kernel@vger.kernel.org
References: <20220226133047.6226-1-zev@bewilderbeest.net>
 <20220226133047.6226-5-zev@bewilderbeest.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220226133047.6226-5-zev@bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/02/2022 14:30, Zev Weiss wrote:
> These Super I/O chips have an i2c interface that some systems expose
> to a BMC; the BMC's device tree can now describe that via this
> binding.
> 
> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
> ---
>  .../bindings/hwmon/nuvoton,nct6775.yaml       | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/nuvoton,nct6775.yaml
> 

Bindings should be the first patch in a series.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
