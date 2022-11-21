Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE2F5631ADF
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 09:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbiKUIAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 03:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229902AbiKUIAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 03:00:06 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D67A1EAC0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 00:00:04 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id r126-20020a1c4484000000b003cffd336e24so7411613wma.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 00:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SJJG9l0YlRpzRi2ic2wvRcjJj5ylm1zWwiArlHuQKB4=;
        b=oE18FL5VHgWbAyFFPmov6vtUa2bJMuC11GB5JkjqW5Jbxj5zElsvEwPG3/jfgpGril
         sU765Y44rdBYa/ZdV8iEWAjAlOTGJDjgJU6ETrgQN2FtXa8d0aNNxrSgP9aKzK/WON32
         SXYO4NvV9d+EIy/sRuP12o5/8uFIe3JL+ymGBB1Th+Wb2I6tktZ4iL9ZjNlE/ZWywjnJ
         5Nzel8/OpcJfUehfvc4608imKFJPHvlhGvINes/oG3ffGDfsQyzinHw3EgKcpc+V0pUX
         JfpokARIyT7U4VLHXyBIJWl2E95Tt06WUUNhJkvOwlWkyGOMwobjegTRC5ZzwYBotfI5
         XceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SJJG9l0YlRpzRi2ic2wvRcjJj5ylm1zWwiArlHuQKB4=;
        b=obFKfL3hOpJhXM3OhJNixZEO1QvlvMb6zpKk/Dc0bv3XDRwnavjQg4SL584EaVZyIK
         4TruHzSxIMXtbUSkn6fUPMgJ92aa89YC44KH5LePSYz5nbmzf+cUfWHvVlNBNwHGRlRa
         +z+bnajX6oAsDI7fi3ysVm+M4ERnCitvJqinEgc0y+AxXqElOmSd4drQTaRnV9txqmq7
         7l8RpKMhLGroBgB/ML5r3UZE557vqz4/N3VGu08u7yZ2NU6v16RMKd8sykElLuE6yp1f
         Nyw0lJjYMK8cHqiyVG2jmjMIRUH/eLcqLhSCYvmom8EML0WAGqcclyoFJn4I8agisCgd
         X+lQ==
X-Gm-Message-State: ANoB5plcYSYDEIY5yMF8+KqAn7fgCiwTkCsgs1gRmUXLbJ5emC/bOUmT
        B/w7nailaDO9NTQ8trmQN0PlfQ==
X-Google-Smtp-Source: AA0mqf5VMxacEh78UTA0ugozKyhHLdY0czdV10scTdiqL1kFIrv/uHrklnqc9O5/QBvdoMRdoDoQlQ==
X-Received: by 2002:a05:600c:21c6:b0:3c7:19a6:8146 with SMTP id x6-20020a05600c21c600b003c719a68146mr11903688wmj.158.1669017602975;
        Mon, 21 Nov 2022 00:00:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y8-20020adfee08000000b0024194bba380sm10448991wrn.22.2022.11.21.00.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 00:00:02 -0800 (PST)
Message-ID: <8afd5100-9cef-50bd-2b53-e1a550973835@linaro.org>
Date:   Mon, 21 Nov 2022 09:00:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/9] dt-bindings: pinctrl: mediatek,mt65xx: Make
 pins-are-numbered optional
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-4-bero@baylibre.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121015451.2471196-4-bero@baylibre.com>
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
> Don't list the pins-are-numbered property as required
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---

And how about making them deprecated? (deprecated: true)

Best regards,
Krzysztof

