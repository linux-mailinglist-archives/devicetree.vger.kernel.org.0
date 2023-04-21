Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0DE16EAF4D
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 18:37:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233183AbjDUQha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 12:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232739AbjDUQh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 12:37:29 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EFAE15626
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:37:09 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-94f6c285d22so314600766b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 09:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682095027; x=1684687027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qwm7nC58x6Qg4M4BLeXeY+IRBzBS+KjdazE+g1goFZk=;
        b=cUGizRfjIXcfg5P+5cJVp+JcsumxnDw52sCla7aQOesNv3HWTeGTTUu+clkj3SO+Jt
         UkF8A4atIopljeZlvVBVZdeU5Ou0dmG8E6IPK+E1zwSjNSreqwOalmCVtFltT1SUawKF
         LIl0BKKYc9AE7QvABQHHlZVoXPPDBGb3cWkbSyQPWHZgatjXZVCjRQ9P1BrqGCVZGVyI
         uYQEdPxPBIBb4ja+UdS+qctfV2wGQPV4zOqpyCRmohvt5J+t0SU0R5z8z6o60umlZf9e
         S/hQSXUIqbelyvbSUwVkBtqqbqT5e7VHXu0owa5LQ1q9Z5vWa2OxOTekB/FwGHKcpEua
         GNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682095027; x=1684687027;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qwm7nC58x6Qg4M4BLeXeY+IRBzBS+KjdazE+g1goFZk=;
        b=ILByma5eq46iU0vD/LZNjUUtqcDmpNYQv94Ghed3ux7BHDWHt5EkZjwn7tDhu610Oa
         Oc6I2cfXl2aYHAr5CAGwiSTpczZMQ65eCueg9VIiSBXG0TkcFOsVk9JR1DDIHiHo+ZD5
         866SzclVfwC0BiVdwEIgILEHOnegegC9HFjurRrnDTCxiMJW0A8i71Fjt+zHI77fX5Ds
         NKBdWNnr4NIfLoFbKvb8KVvXmfIR7eRvPzW7Ra+ZQ8hig2tCC1Dth8nNogltNnXVU+4m
         XXJ3eILSJwq8tkkocrmCBuf0hgISn3BnsX4A0uCuQ27N/TL2QS7ZpIG08k1lAvW7BqJ2
         jzaA==
X-Gm-Message-State: AAQBX9f7SERtA16lUeSK5CCv6zpEljA/12l0408+qYWS/VU708/RgsBD
        lQd2Zj2EO92ufjWECZoebpHGZQ==
X-Google-Smtp-Source: AKy350atdmkxUyilew1Q6xsOtvyIiqhC+U/ckBLAq7AQ8Q8Vu+X6Eirq+VWhTiX9BrshfXr7DPPUEQ==
X-Received: by 2002:a17:906:fcd9:b0:94a:56ec:7f12 with SMTP id qx25-20020a170906fcd900b0094a56ec7f12mr2820823ejb.30.1682095027250;
        Fri, 21 Apr 2023 09:37:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:687d:8c5:41cb:9883? ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id op4-20020a170906bce400b0094f39379230sm2254990ejb.163.2023.04.21.09.37.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 09:37:06 -0700 (PDT)
Message-ID: <6747425a-fff7-c873-bf7e-05786d67cc7e@linaro.org>
Date:   Fri, 21 Apr 2023 18:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 1/4] dt-bindings: sound: Add TDM for StarFive JH7110
Content-Language: en-US
To:     Walker Chen <walker.chen@starfivetech.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20230420024118.22677-1-walker.chen@starfivetech.com>
 <20230420024118.22677-2-walker.chen@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230420024118.22677-2-walker.chen@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/04/2023 04:41, Walker Chen wrote:
> Add bindings to describe the TDM driver for the StarFive JH7110 SoC.
> 
> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>
> ---
>  .../bindings/sound/starfive,jh7110-tdm.yaml   | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/starfive,jh7110-tdm.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

