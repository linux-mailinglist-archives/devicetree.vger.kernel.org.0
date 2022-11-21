Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F23F632240
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:35:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbiKUMfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:35:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbiKUMff (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:35:35 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E812C38A7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:35:33 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id h12so14308669ljg.9
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Jxn+RBGVERxukoZ0CuXSdveFCdESK0kHT4i7qD/8lo=;
        b=avTYR9olrnBS5pqSQmPHd3LPji94CnINQOtQsHzD/a+P0PPDtjb7NtjWXQa97kE2vK
         fk3AK8/yOUIXdoDjgYWT3cYk7YXlSbWrYLT+PWH/3xN8Euwi8N1xwjIOZWHXZlFlE03R
         cBGPWwUdWnvNGqruZU3mkCNmhGTZEJ7TtRIJRMVH8LHN59VBmHBRas0nz96tmNjVspYY
         ptAgVFOC6j/i/Ae1DFAVFQ23BX3fi6QGMm9nF+5eUikDw5eD6OBm+CFF8zXRYz1WWPAn
         bFUxrG11c+fveNxp8F1qc8rdv5bgJxfQ99Spzob3tH6r8NSjp8eMS9EsSwkk4dfTlw2z
         90lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Jxn+RBGVERxukoZ0CuXSdveFCdESK0kHT4i7qD/8lo=;
        b=PGUtcrb+9NK3wNZDHH4I1qWkPhAf2BtZ2T1IvfAmTQmhRg6XuNtbPocrX13C6FKyvb
         iYrHYxniqr3F5srkvH3PhhdDL+m4nq26TJqt1Vp6/ox9ejFOvQ25mknALsnzpKyMVJOn
         6n1i7P1tyeyezHpenZZCeFY5kP192lGlNv/ILSVMPgBz/h8AIvHzso6W/WMdoBnfZpz+
         ETNoITAhJ8oAIgNUpwS5CGae7HMXnD7YU86MC3vHTVIRStlDQAXESRCxaYKK0VFEr4P7
         N9qVwZrjCqpB8QAW8+TN5L/i/kxhIh1PolAzCPV8mOgvaVZzvHoMyeKLgB+4AQHM1n2f
         FQMQ==
X-Gm-Message-State: ANoB5pkl6ok4hhp151GWQ91KRmhwOtsrFSFhHlNzbXJHiIBMWDFHk9q5
        aibv95wa8eUrqBqwdHbZYbKGWA==
X-Google-Smtp-Source: AA0mqf7v4KL+NRJmcW0UYDlYDyKz+pQ9NEJ+GlFkjY0ap9YTKo5dYcob7MHvqYFoPtRRPIYpyxeGHg==
X-Received: by 2002:a05:651c:1ce:b0:278:a696:2781 with SMTP id d14-20020a05651c01ce00b00278a6962781mr5482892ljn.401.1669034132326;
        Mon, 21 Nov 2022 04:35:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e5-20020a196905000000b004996fbfd75esm1980456lfc.71.2022.11.21.04.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:35:31 -0800 (PST)
Message-ID: <b97059c0-1ec5-cd66-f55b-0203dc9eba70@linaro.org>
Date:   Mon, 21 Nov 2022 13:35:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/9] pinctrl: stm32: Remove check for pins-are-numbered
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-3-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121015451.2471196-3-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> Remove the check for the unnecessary pins-are-numbered
> DeviceTree property
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---

FWIW:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

