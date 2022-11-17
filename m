Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43E0762DC3C
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 14:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239572AbiKQNFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 08:05:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234693AbiKQNFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 08:05:13 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B95449085
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 05:05:12 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id k19so2635194lji.2
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 05:05:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6o6875WgReRaHrL7mfmplhzccEYmNiHd+KnxOuIwE1k=;
        b=oGIGoKNZWt+TEvSGwX2huvWOYzkp/PzuBLlXqfNHLAqtbjhmLefFKPJO6BKqk7cw0E
         f3UWAYwYIxbV82Zbsom1piXdothmHlenjh6V0kXM6sWlSzfG5hA7AcgKI9T2Op5ARSow
         tI2DA+ND1mmWacjMpUgbQ0Voth0SWudHATKqlGnrhTs2+nFxm5SlLFXlPStz0DJoXKwr
         DRJsTIvaE1Fjdcyu4lp3LjGxiLHXuvLASw6J9d9VF+i+QWc+I7yW8lP38sxH2MVbO+sv
         h42zmLCkuHo+QcKUkmcXfh0tmmKsrWZPWCjGsrpr79zc/HRgtrbgM62XD5YxWyX8EVN1
         HKuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6o6875WgReRaHrL7mfmplhzccEYmNiHd+KnxOuIwE1k=;
        b=D/tpNLFCwgAyPOUc2AFGXGQkW+u/RyxZU4+DQJH3J7TpsJkgm7UjDkkVv+QI5uaNZe
         EOe1i/4aRljfT3reihdUvLkeRXBQXqrM/pTJv/jw034Ij6wAB/zwdJJdyuwrbjyq681M
         SRNfRfvd6k8kD1vLJHqSIjARgWKKNCI6lIrcaJdwmy0QQO2V0RmKZK1bjQEWfWg6cus7
         YtHkxPAdiJ2EZox9czJ/g+2Cbi5+HjyGwQl9g30coulOWfLPoLjSIxDSYZjpEMC226X+
         fDRP1wqQvNFirwTaENw9B87sAQlh1T7ceTo+WybzbHuDObptwVmLq2094bL7ylckcg0i
         Lmdg==
X-Gm-Message-State: ANoB5pkHRzrlQT9mvUDYbblZxxUkRhAwOac7qdfuDs5cc7OEesxoLKmT
        KUtzREbj9DpdEb3JQiDcOTkuHg==
X-Google-Smtp-Source: AA0mqf5FeNxtFGS0rsYMZmkU3OkAGojteHdSJx0Ua6wFXCuYC9bMdmq8MmOjgUCvWnQIG50eLPE1Nw==
X-Received: by 2002:a05:651c:2cb:b0:277:746:62c2 with SMTP id f11-20020a05651c02cb00b00277074662c2mr1068450ljo.236.1668690310730;
        Thu, 17 Nov 2022 05:05:10 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q3-20020ac246e3000000b004b19f766b07sm142467lfo.91.2022.11.17.05.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 05:05:10 -0800 (PST)
Message-ID: <0e3ec86f-2a2b-bdb9-09b2-db720b5af435@linaro.org>
Date:   Thu, 17 Nov 2022 14:05:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/4] dt-bindings: arm: fsl: Add PDK2, PicoITX and DRC02
 boards for the DHCOM i.MX6ULL SoM
Content-Language: en-US
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        kernel@dh-electronics.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221117103134.6452-1-cniedermaier@dh-electronics.com>
 <20221117103134.6452-2-cniedermaier@dh-electronics.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117103134.6452-2-cniedermaier@dh-electronics.com>
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

On 17/11/2022 11:31, Christoph Niedermaier wrote:
> Add DH electronics DHCOM PDK2, PicoITX and DRC02 boards
> for the DHCOM i.MX6ULL SoM.
> 
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

