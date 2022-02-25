Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A10974C416D
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 10:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239089AbiBYJ25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 04:28:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236216AbiBYJ25 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 04:28:57 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B138E1795EF
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 01:28:25 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 249CD3FCA9
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 09:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645781303;
        bh=kGwkKU8L/fn7aVH4SNRnVpay291DKpyh1Xqm8qPEDW0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=u9uI0FeEI+nougT15+fBtZ/gs9REL/PNcYi0pXWGm5BgBJq0W0BYcB/M+wimVDIej
         KFE2bnrTgkpLn/kCDvd75nkXtRbG+NdHqR1AntoD8WWGlJywbx7J6lr/2Q8CFu+3R5
         RQzYVKRYwRd5Rxurkoq2UTEjNBRLhYc98HkPEe/e6XZW0eB0lYXs+I5hyIDW9u5RpL
         Cwtrn8UbbNx9i2cKMtL32JZho2rLjbK2q0k68wvNsE2mZcMWMPKttKl/ybL+U5I8Ti
         sKFEbro4RM6yKLZV90hjtqIxOrpiaHUICe7RIc4rDnwbmUiooxBwQJfC+y6dRhP3pD
         Me9m6HlULn4mg==
Received: by mail-ej1-f69.google.com with SMTP id qa30-20020a170907869e00b006cee5e080easo2379608ejc.3
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 01:28:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kGwkKU8L/fn7aVH4SNRnVpay291DKpyh1Xqm8qPEDW0=;
        b=Xq2KycdEVuiOnk8uTCSZ1STt7UalSJSC1FKe0okogZSvFY19cSqEMIgSAldydXiDWq
         fDapNUAT6Gpgi3BMnpNkbZ8Vg5wiC0Ti5m8+w5Sv1yrf72zznjzPf6yH5XGxgA8BEh4F
         Yo3ho5IJLs7gY84bGUmbdKOpwKY2o6+SOzuao4KFxp2Xdp9+rZ7pusUfwuv8uUNiXcC+
         MVAKeIT5IeJkQX7EGhfM2/798yk8lioiL7O1rbPfUnfN1MmWaVbp3xqrcQahkHUOhF8x
         PYQLEFC3/XM4wQK1lv3/UL9fPT4tyEHm2egCjX49UzBNZC83DLo1CXQk46XxDznZYc+j
         AUkQ==
X-Gm-Message-State: AOAM5330D5Dsga55R5VS3AzlIzVp6zaLxD/7KH69OJMDgrT29OnVb6vK
        apw385VOQMeaSD1ve92AedKuZHEiSvoZmT4Mmw9U5HD0ySa1C23mYAdOyIIBL+ZphPZrxrC51sl
        RzYV3OmrIba48925o+oiT0QPVJm7xNrI9jVQPIzA=
X-Received: by 2002:a17:906:4d51:b0:6b8:78e0:565a with SMTP id b17-20020a1709064d5100b006b878e0565amr5351325ejv.587.1645781302266;
        Fri, 25 Feb 2022 01:28:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz8c3ZhY7jr+/X0AvJodZEzeopQeOKXYiLB34QdycL3m21MYR4q1dg62gQBFvoYHXY7gyalew==
X-Received: by 2002:a17:906:4d51:b0:6b8:78e0:565a with SMTP id b17-20020a1709064d5100b006b878e0565amr5351308ejv.587.1645781302107;
        Fri, 25 Feb 2022 01:28:22 -0800 (PST)
Received: from [192.168.0.130] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id d8-20020a170906304800b006cdf8a1e146sm770803ejd.217.2022.02.25.01.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 01:28:21 -0800 (PST)
Message-ID: <f77b2f7d-9a22-3e1f-a5f4-90766bdc232f@canonical.com>
Date:   Fri, 25 Feb 2022 10:28:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 01/13] dt-bindings: rcc: stm32: add new compatible for
 STM32MP13 SoC
Content-Language: en-US
To:     gabriel.fernandez@foss.st.com,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220224160141.455881-1-gabriel.fernandez@foss.st.com>
 <20220224160141.455881-2-gabriel.fernandez@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220224160141.455881-2-gabriel.fernandez@foss.st.com>
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

On 24/02/2022 17:01, gabriel.fernandez@foss.st.com wrote:
> From: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
> 
> New compatible to manage clock and reset of STM32MP13 SoC.
> 
> Signed-off-by: Gabriel Fernandez <gabriel.fernandez@foss.st.com>
> ---
>  .../bindings/clock/st,stm32mp1-rcc.yaml       |   2 +
>  include/dt-bindings/clock/stm32mp13-clks.h    | 229 ++++++++++++++++++
>  include/dt-bindings/reset/stm32mp13-resets.h  | 100 ++++++++
>  3 files changed, 331 insertions(+)
>  create mode 100644 include/dt-bindings/clock/stm32mp13-clks.h
>  create mode 100644 include/dt-bindings/reset/stm32mp13-resets.h
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
