Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 050726225B2
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 09:45:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbiKIIpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 03:45:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbiKIIpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 03:45:11 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 409A7B55
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 00:45:07 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id c25so24677261ljr.8
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 00:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qYSVJugP5QBp88lbE8APYh0ugN8Lxwkbgsw4dUaxQJU=;
        b=DmeBxsBRljAtTGdjJ/IQOkSJOIUISplSTx8rNifCQCGJhmdVBw4CtKsZVb9NIt+Qgf
         1WaQZGAJnpd72MR0fy682pU42548jgyAM29DV0rHFNUaugHqS3GIZ4WlSgaHXxZH74JK
         m+81LXzTGn6aAJcIHo2lC7Y3aDp0XyLTGOCtyY+rMBMaGA4Hkaa3yr6fbq72yAzlQs5g
         HpYlOxI6wpwyR1AKrFL0SSnd+n94UUxQA3OiOMVD+TY1Ji36c68Z6izPpRsKLUVLpL/I
         hDWH9tgwiHMHO2vcWO70jWNqT5EcVW0nfL2KX64f2dGRJoxZ8u/6Ib8LGUA+iy/keZCR
         r91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qYSVJugP5QBp88lbE8APYh0ugN8Lxwkbgsw4dUaxQJU=;
        b=1VHvK4esxKfEByIfcg3siSpyhVzrZbjHZ1mvW3ysOckqrCdLlI2P3oBl7Og8cnTPsV
         dcLSGTt38ORhV6rIs0RWGCOK7BJpqtT03sb7bKYIHjGLVbut+JWGQ/fVmR/aSLS1LQOZ
         E2/hvmRM+NBFOvemF3buaErkWD5zZ4tqSTTqR3mdeIANofT7nYSYeSGWw4wx8QiN/nb+
         L6LpBKkeY5FCT2acI3Q5ATUeWYAbGPN6lGmNSRUkAD0G85QhvQNcTFzaCUAMg3Z7Has/
         3To0d2A1RI862lbN+o6rPxwjQz/iJHS98q07Ao81J65NmyMMWOBRYgCaZ4pN9M+POP9/
         XA7g==
X-Gm-Message-State: ACrzQf2VL8/e2kHa6bRX4sZ3tGCKx02ltkNQkDz45KIYNpymMr9LZm58
        LqfzKiQ/1BAET/LLgDJ4hLwtFw==
X-Google-Smtp-Source: AMsMyM7hsRmgRw/0ffw5lBc7tsZ5Jo7edKvW74ztO8PWhiUFChbrr51vyexJmUSEuY21Fz7BdeYnOA==
X-Received: by 2002:a2e:8884:0:b0:277:693c:83b with SMTP id k4-20020a2e8884000000b00277693c083bmr13414854lji.68.1667983505632;
        Wed, 09 Nov 2022 00:45:05 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id p8-20020a2eb988000000b0026dee5476d5sm2074143ljp.113.2022.11.09.00.45.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 00:45:04 -0800 (PST)
Message-ID: <57f6dfef-5551-d186-4b0c-f4324f6c3350@linaro.org>
Date:   Wed, 9 Nov 2022 09:45:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v5 3/3] dt-bindings: imx6q-pcie: Handle more resets on
 legacy platforms
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221109002449.35936-1-marex@denx.de>
 <20221109002449.35936-3-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221109002449.35936-3-marex@denx.de>
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

On 09/11/2022 01:24, Marek Vasut wrote:
> The i.MX6 and i.MX7D does not use block controller to toggle PCIe
> reset, hence the PCIe DT description contains three reset entries
> on these older SoCs. Add this exception into the binding document.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

