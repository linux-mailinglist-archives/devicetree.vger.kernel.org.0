Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 373355048D6
	for <lists+devicetree@lfdr.de>; Sun, 17 Apr 2022 20:15:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234738AbiDQSRC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 14:17:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232513AbiDQSRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 14:17:01 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5941BE1F
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 11:14:25 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id k23so23577211ejd.3
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 11:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=o7HCLjJ0glORsu4WJthw5jv3bE9Tt0o5UvzBb0xp5Iw=;
        b=y6bseGpnDkz/F1SCphszEzDJJQpjVU56HhyjgCrRoYvpBDC1Yw3GwHBJ5K6lYh7LOP
         nIwpOKa/zk3TsHyo8oz0sYi/lLZoHaw90zhYOqEZAcdba6PrzqyqCx6wnCCHHA1G1Bgv
         PNLUEu+tErN6JhPpV89TzwvpncC29YrYDazCglUIYoa/FoztqcjRK8uI3cD1vyv2sI3h
         +prC4T+mFa3eUx+jZ89dTwcYZFQCgLPyKWMOJ0FaFUYdII2FEc7J5oElnERbDbLtxaP2
         y2i15Y5LGUnpFKxnZ/Z2GDiZwzgO69tvLmREtNQSk0S2FU7Ar8rTDm6r/o4fcL9KeqG9
         aDpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o7HCLjJ0glORsu4WJthw5jv3bE9Tt0o5UvzBb0xp5Iw=;
        b=b1kBYSxzT/gr6AcQSye6IPk/G5mcm9zo9VdVxEALaxr+J+2gGKOxVhjei9k4TAGBOz
         3nZjTjz6i0xwI1hGalAH0BTBUvn3Ze/QyXQBrio1+i4nYcW6exbBzbrfR+J0ufqBrBb/
         PdqHKWpLp+qHmSdjU8o0t5e32CDPoob5wy8kj6b+wfu9L+xj7rLAeaS+M1xy0iZUgi6Z
         98fjXGas7PGwYQh0I38qWjYa3bXHTWFCFsprCyrLaaMY1AJM9EV87oF/YhRESO4VcXx/
         L/cxtoKmQ+qP1tDx6nRLeDdy2VfL8hJrxrg7J32iFKj3XfY1bK2aKuaezlJNmIU+Nwuu
         8/Vg==
X-Gm-Message-State: AOAM5312yKfYxdP14XGp6+KeUsLslI8PTBi17DLsQhUXKWTr16+vSm1p
        4O0XqlIRSjcnoWln9X1AMsmd1g==
X-Google-Smtp-Source: ABdhPJxymFMtTBVp4k8Uhn608gxOUAtj6acupk0lrQr3TTmnT2JhxDtr8HNT++fUNjJJi8upoG7pGw==
X-Received: by 2002:a17:907:9708:b0:6e8:d95e:273b with SMTP id jg8-20020a170907970800b006e8d95e273bmr6312472ejc.421.1650219264357;
        Sun, 17 Apr 2022 11:14:24 -0700 (PDT)
Received: from [192.168.0.216] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u19-20020a17090617d300b006cea86ca384sm3779097eje.40.2022.04.17.11.14.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Apr 2022 11:14:23 -0700 (PDT)
Message-ID: <daf1043e-be50-729a-e2b7-a095f6c2c026@linaro.org>
Date:   Sun, 17 Apr 2022 20:14:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] dt-bindings: arm: add bcmbca device tree binding
 document
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Joel Peshkin <joel.peshkin@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Dan Beygelman <dan.beygelman@broadcom.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220413192645.7067-1-william.zhang@broadcom.com>
 <20220413192645.7067-2-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220413192645.7067-2-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2022 21:26, William Zhang wrote:
> Add arch bcmbca device tree binding document for Broadcom ARM based
> broadband SoC chipsets. In this change, only BCM47622 is added. Other
> chipsets will be added in the future.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
