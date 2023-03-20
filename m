Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1083B6C1CF3
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 17:54:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbjCTQy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 12:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232278AbjCTQx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 12:53:57 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E0429164
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 09:45:57 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id r11so49245965edd.5
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 09:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679330752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K3T1LPv1K70J3JuBzIbTNRHXgTwj8NY1hYmQMPryDkg=;
        b=pHM15ySsN+x1vypUH4DKrKjtcuCi+sDsrUICtxNGaQ9WMBPB1Mr5pJl1rYYgraURQ0
         vNDsyf48UgmQcrUsVvC4ao72qGIoEuaCF2rMx1OoQxCAmogaNS4Hfnu+kVDAl4jZCOW5
         TGmheZof1cmBVQD9fsXZF+HjhbKu9JeIc0LdN31haZlnWf86mucFK5epnkUfKRZgZk30
         3SCIYErCFvCPfXADnlS+YiW+NXOkLxfCdfrqvJg/alj0tIQeYE4mAgAyGsdFH68Elc1n
         dgILrbXL7d/41Na1uRoH4tPhB3reW/K7giz5vf5gFreiucW+flAGUoXS6p+twVxxeoyB
         Ey2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679330752;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K3T1LPv1K70J3JuBzIbTNRHXgTwj8NY1hYmQMPryDkg=;
        b=Mrcnyn/TZthdPMhwqu/R1X/bNB7sBpI1XNFJBnofIxa7iFPvXSxWYNF03s2TzO/JbZ
         EIiXLA1wPPf5J1QYmccs6x5Qg2qt5Q0ynyHEMzTQsUn2/HMD9kXw7C96N7YwyPNx6N6H
         /za4hjUIb953yy2Vn6+MWaqaCvAKapuJe73VdJIM+b9PpSjRsE2kqfUPKamUqrY+M3SC
         S6WAbWTORWA5wIW3Q4ko1RcTWwG7P7B/lDFp5R0ce8oHJGj59Rae2vE6C+DzrDN4vYbV
         ILPihszSVP4bYQhq5E8Ifvf6+lykACl4aZf8z8FTeI6+IjI+4r9oTp5KO/kAzmOM8Tv8
         MqtQ==
X-Gm-Message-State: AO0yUKXFhNTlnH2OxDcGfrUeLK7N4L+MDdgexfcurr0B7oqry2u7inNW
        KQRhMokz7k9um51ehIaP2/llAQ==
X-Google-Smtp-Source: AK7set9JkBaxsjpNVS4TqrKVAg5N+Zo9mzzcVIk7zoedDZNpbcE9LmYckt7ZGz+KLpSbMaB8GaPd4Q==
X-Received: by 2002:a17:906:590c:b0:932:2874:cc5 with SMTP id h12-20020a170906590c00b0093228740cc5mr9239993ejq.16.1679330752142;
        Mon, 20 Mar 2023 09:45:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:458e:64e7:8cf1:78b0? ([2a02:810d:15c0:828:458e:64e7:8cf1:78b0])
        by smtp.gmail.com with ESMTPSA id bu6-20020a170906a14600b00933c52c2a0esm2043336ejb.173.2023.03.20.09.45.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 09:45:51 -0700 (PDT)
Message-ID: <7426cf61-957e-077a-120e-5c3747ee0e20@linaro.org>
Date:   Mon, 20 Mar 2023 17:45:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5 08/10] dt-bindings: arm: stm32: Add Phytec STM32MP1
 board
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230320132755.2150384-1-s.trumtrar@pengutronix.de>
 <20230320132755.2150384-9-s.trumtrar@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230320132755.2150384-9-s.trumtrar@pengutronix.de>
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

On 20/03/2023 14:27, Steffen Trumtrar wrote:
> The Phytec STM32MP1 based SoMs feature up to 1 GB DDR3LP RAM, up to
> 1 GB eMMC, up to 16 MB QSPI and up to 128 GB NAND flash.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

