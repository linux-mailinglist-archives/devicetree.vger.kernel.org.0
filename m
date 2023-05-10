Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17CC46FD934
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 10:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236322AbjEJIZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 04:25:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236349AbjEJIZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 04:25:48 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0997735AE
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:25:46 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso13226199a12.3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683707144; x=1686299144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lcBxflCZfrMCjgNvt/j0zL4iqv8NEVUHpROzuQuWsvU=;
        b=hr5/zySHXIXGIff9H3bA8jsxCbsANZaRGdo4SpCgBavnSyhTozQf1y2lOj6BzewYce
         /8VY8Wv/GLlzLA3Q9lCquAhruj103b/XpAvE+XObaBhZPpiqaVRKS8Vcv+HW7EK7w1g2
         I6cOja1ntQGRBHQGzK4noF8nN3iWIWnPu++5EFQ0gvp2/e6RyaByF8W980HF+CUNO/Qd
         ZJPp3m3mo6Yt1oCPuOMGzmtsXUjydibThJeyu30NHLcjP4p8kSpgOvtlZzDMKcJlBEAH
         w67TF3lM+v5X157rzD6Dq6grrAYYNOZrGEUil5VCTyl+TgtZVwVZFTEbf5/uD6IzsPii
         TFag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683707144; x=1686299144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcBxflCZfrMCjgNvt/j0zL4iqv8NEVUHpROzuQuWsvU=;
        b=Rr3qWn7wXzFcwk1Z6fGCpL+hYgrSJuNmC/eTUIO4ck87Frd6mw4fUUtvLKr2fiRBDT
         2nyzwRkB/kp9bKxW8bfSD6oA08CG9CIS156UkicO/bTOmvgmb4SHVfeOuq0FqmZIVi3w
         Mypjj2btGYC1epth5DQ2GiqV3swKJE9kIgYnc2n721EhCz+siS+QaZCpXi7RpIfgZXjA
         HDt+m1A8sj1HqcB4tFI2J9pKk5N2+CaBEynNDTaZ9YIp/LtUIHv4eWQm5f5EkDAQImVu
         53FCy0a7GOQy2I/FX4abQRKTSVIQcn16eLwq3RKVuuN9ni51qEOWqlkKRgPe7fH+whC3
         UH+w==
X-Gm-Message-State: AC+VfDwlvETuRVdpC9xMWMjhv6ITg7n9vQjrNJmfw5mkks1+tqMYGfI0
        G6v/vKO52Zhxo+sggzU/X9esKA==
X-Google-Smtp-Source: ACHHUZ6kaSbUUC2+BpCW94hDe2K88nt0WR7YqryzS1N7icFGXU4QXGnLiuAYXhz9sqMWUg6joF4b+g==
X-Received: by 2002:a17:906:d54b:b0:94f:3980:bf91 with SMTP id cr11-20020a170906d54b00b0094f3980bf91mr18182488ejc.19.1683707144415;
        Wed, 10 May 2023 01:25:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id f7-20020a170906494700b00965bf86c00asm2408355ejt.143.2023.05.10.01.25.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 01:25:43 -0700 (PDT)
Message-ID: <2b633d0d-4094-7877-b9cb-99795cecb130@linaro.org>
Date:   Wed, 10 May 2023 10:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/4] dt-bindings: clock: imx8m: Add missing interrupt
 property
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230510065644.1317577-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510065644.1317577-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 08:56, Alexander Stein wrote:
> All i.MX8M SoC have 2 CCM interrupts, called:
> * Interrupt Request 1
> * Interrupt Request 2
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Admittedly despite listing them in the interrupt list, there is no
> further description.
> If it is deemed these IRQs are useless, the corresponding property in
> imx8mq.dtsi should be removed instead.
> 
>  Documentation/devicetree/bindings/clock/imx8m-clock.yaml | 3 +++
>  1 file changed, 3 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

