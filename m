Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 859B565AE44
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 09:39:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjABIjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 03:39:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231983AbjABIi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 03:38:58 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B79B0C19
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 00:38:57 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id m6so30353139lfj.11
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 00:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rpW2fUpDQzLxa2Pis7W6gRLna+M5JiPjN2PBbI7aU9A=;
        b=XX6KSstqTacxqSHn4R9o7Um64v7W2XroAMXTqePTnwIJpb6zkiFUgOEvSdFo4ZagV3
         ab8LpCKMLaMqQx/j+5qVVBwEBkOfMFzVDHdnihHjm037vjB40tQ2Dl5P4SA/SC8gTRbl
         3NNwxqRqSrizZeSvpsKJBhbwRokadiOFDE03X6pmGYvIxai8je3JMtEGn/66vpmV1RGR
         GoVhAfrgmyKWOGEQjul7XwY2aH6te7f8HTXnXOpOJNrGr0z0xNAr7fvVhRy6JBuAAP8w
         vYAAusYBfxnD+9JhmHpKBWVqOqSdvOvLos+ndHf9EPbzaGY1eRn3xGFbNAeTegJljNGi
         73UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rpW2fUpDQzLxa2Pis7W6gRLna+M5JiPjN2PBbI7aU9A=;
        b=M8P0vNCznYL5dI1r5umbGEbk+pvTZXb76AProWyg2d0kEtpjeJ/u4/JjCPYVprwD+r
         PDHwSxg3WpxuVcD0sav/Of7JOhIYsjJ8MXbbIN4TU+mafB5eg553Meoe4D4pHCMdVg9R
         bl6f+mlElRlPLGOR1rd7nib0YajoRpbp6/kTL+k+NZOWoDcg/N5weLg9dTFL9mOgnzd3
         DQYd/NTqEqvMIdJPYE31DH2Tna4EhwZrzqs9j0W1OxnOzA+EfmXh4dXCz9oiiLBaXmv1
         FsOGo5kgMbKhz8roGo6s/FzDbo+/C0zYm/HB1iPZip0/tmawlV8bqDrwKC5hOJop85zK
         4s+w==
X-Gm-Message-State: AFqh2koHc9mYygouiIUfR1WN6JH4PYPguf8Vro9T23pZ+tXgkBgoDyK1
        lRba831USUcxpqM9nk8XLcpa+Q==
X-Google-Smtp-Source: AMrXdXtFbZkjTU7dhKRXE7ajSoY01h7b6GTGVMCEPyJHtFTzPFaiLyUeWxJAHt5WryJx87fqTlnicQ==
X-Received: by 2002:a05:6512:1594:b0:4b5:6a20:ca90 with SMTP id bp20-20020a056512159400b004b56a20ca90mr13373076lfb.10.1672648736118;
        Mon, 02 Jan 2023 00:38:56 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d2-20020ac241c2000000b004a05402c5c3sm4421391lfi.93.2023.01.02.00.38.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jan 2023 00:38:55 -0800 (PST)
Message-ID: <993ee281-d38c-8e3c-a770-a30fc3cc2a81@linaro.org>
Date:   Mon, 2 Jan 2023 09:38:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: fsl: Add the Starterkit SK-iMX53
 board
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
 <20230102004425.887092-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230102004425.887092-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/01/2023 01:44, Dmitry Baryshkov wrote:
> Add an entry for the Starterkit SK-iMX53 development board.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

