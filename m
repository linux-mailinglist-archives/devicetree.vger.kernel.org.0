Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4833D4D4361
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 10:22:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240742AbiCJJXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 04:23:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231629AbiCJJXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 04:23:35 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF4665A7
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:22:30 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7C6BC3F605
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 09:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646904149;
        bh=urZkMj1CVFHDmDBVJ94HruqSmh7h0kdRAgFJ0/wcFrI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=eC0pWIRIZ3ZKVY0UP6TqSKe5v0RkHI4hjZmxHw7J7rBYxa8hATx9s0qA5E4TmDOqy
         IQ7XMp5CtkIzqXpYMMWT920y4UkPSVtcjbp1xS/XoBhwwe0lX+TnmOdMpO6E8R91jH
         BS+F1xmAt3PLs/VtKp6pFk/7tHugbcA3aQDAYQFW0pVq6ozBbRJO2920VyYPxglCal
         0VJkeJCzl5+CLy2Wf9LQ2WRtdQSdNgDIa2z20v9mkzxaaCS3pL/IL8YHukbRPYRfnC
         ai9jl43Pl2JJzKyW12oLofuwhhkJ+3XE70C+0PkBGHlliuC+R71nUBhkc3St38SzQR
         Y+4CeAykp/ZDw==
Received: by mail-ej1-f69.google.com with SMTP id le4-20020a170907170400b006dab546bc40so2775846ejc.15
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:22:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=urZkMj1CVFHDmDBVJ94HruqSmh7h0kdRAgFJ0/wcFrI=;
        b=7U7HbnHZiGtc/yCI0ly9wk6jZ3/iXaLXet+bPuQuAY2iZoMmQAhjHRLoKghBATlhVb
         QLhC8oKpDAk00Xey2ICNQI1e+4/961WP6r+PmviWKZtInzyw3ac1fX9Jbcjq7z3Uxw9l
         FN5Og12yrW1xH2S7mM/fQB0GdZu4Ojja5jiYKycsmb49lzV8VpJWtiHIIMuNTcSh6BI6
         RNlAwuTNqrRrDC3/fS0ELOm2RkRXqK/d0FjiGSMyVDdMQWR0/6aeNsVpQHo6CdZYh8Gd
         sss1Pw3SNPaCOkZRTlSKsel6WEQXakAiHnROzTU+PfymzPPrUMGZD1QJeApBWqBj9Vga
         vATg==
X-Gm-Message-State: AOAM532/SVIwe5oOtTkkHsh/NvKum0xM0m/w2dWgQBEfPqZAP0Huu3zG
        bxKUM0T2QW0TiwRQawXkeJJMlBQaTPKpKRqmxnKKcI4F6thjr+gfcEBHVtT4aSuIHenW6FdqZQ2
        gF9Bw2UmpQzUTOz3dCVrwL0i6KkWuthtLyhQZcqI=
X-Received: by 2002:a05:6402:5255:b0:416:6089:b23f with SMTP id t21-20020a056402525500b004166089b23fmr3275296edd.87.1646904148956;
        Thu, 10 Mar 2022 01:22:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx8GzTU6l3uc5oXfjJxqxMo0SlXcIWmtaWXAFmIM5inJcUnvOtC5zOyN2yO3KsVjUmD5zVvMA==
X-Received: by 2002:a05:6402:5255:b0:416:6089:b23f with SMTP id t21-20020a056402525500b004166089b23fmr3275277edd.87.1646904148803;
        Thu, 10 Mar 2022 01:22:28 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402354600b004167d09f418sm1744200edd.55.2022.03.10.01.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 01:22:28 -0800 (PST)
Message-ID: <cb6f313d-7e02-2341-c1b2-f4dba8ad981d@canonical.com>
Date:   Thu, 10 Mar 2022 10:22:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v10 02/10] dt-bindings: arm: sunplus: Add bindings for
 Sunplus SP7021 SoC boards
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>, robh+dt@kernel.org
Cc:     mturquette@baylibre.com, sboyd@kernel.org, tglx@linutronix.de,
        maz@kernel.org, p.zabel@pengutronix.de, linux@armlinux.org.uk,
        broonie@kernel.org, arnd@arndb.de, stefan.wahren@i2se.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1646892810.git.qinjian@cqplus1.com>
 <7b9357809c002f6dd76c6fdd738a4ea8af62cb26.1646892810.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <7b9357809c002f6dd76c6fdd738a4ea8af62cb26.1646892810.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 07:28, Qin Jian wrote:
> This introduces bindings for boards based Sunplus SP7021 SoC.
> 
> Signed-off-by: Qin Jian <qinjian@cqplus1.com>
> ---
> Add SoC compatible: "sunplus,sp7021"
> ---
>  .../bindings/arm/sunplus,sp7021.yaml          | 28 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++++
>  2 files changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/sunplus,sp7021.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
