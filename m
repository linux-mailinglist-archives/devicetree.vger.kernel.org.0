Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E78EE530D82
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 12:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233731AbiEWKDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 06:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233776AbiEWKD1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 06:03:27 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A7CB42A30
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 03:03:24 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id m6so16595727ljb.2
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 03:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Wwkmuhu+FmNd/4eT8380gvQ4EYbdznQ/z9YW42DJoBU=;
        b=kwqTy+T/28B7ni4DmKv0V2Iq8SXEyM0UreYgOyprcFpR3fTifqpj21YBe5mnx26kSi
         9/dSH1RrzJXRq8+Xn/XoCAGVxrI2YBXPJZcwWzDpKkOp0CL0gmgvSaOJIzCeqpOcYXlb
         +tbYZxQ8UoM8cANKCb7RtMhU3HpZImnKiBuZvkyZz7jTXBMHXJdmsW9o9VfVnZfVpYeo
         jfnR+iJ/1TA+nANt5IcPmmZ1gNC6d34PUUI4STfMsoJpjJzR47HsIeFZu5lwo+rHO1cm
         rRfdTwY4pcfpNymDHY8O5DtlHdxCg/oBpvd6lMO2HNzcJ9tvlzzrIBmv+Bemi48322Gz
         7MUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wwkmuhu+FmNd/4eT8380gvQ4EYbdznQ/z9YW42DJoBU=;
        b=iCP3snped5uzT/Kr0R6CsE3E1e0XVoPu0Uo5Wzg2ulOdyN+liXd8w92MB1eJ+IRMra
         /69HwektN8LfXAQpji4ElfqqHsk+av+0GA6X1uxzMYrx/Zn5YS7+fkHPFl/r8DZSXMvl
         D5gcPKKHjPg8RGGRselEsWpZ975IDE/TTnLtYfOofM9/CgBAGoNi82sthtstVf67xauc
         lz+qHPxn456N/HKy+G/5TwYVBQcyBzS6St/6eWoldQbk8W9+O6CXySHElFugiHJzcTBf
         7BIjhY3Rn7PwVYHx0MRMTGWD+O9VRNI7eHjKkmf0m4XhOGpgTXot4Sn5RPRZbZQnER6q
         6C0g==
X-Gm-Message-State: AOAM531xR7qpWQE3bJUkjEeDSLNpuOAIRWyR0GJl3GKSV/GQsw4tiskv
        s1dxlNFeSONGMgOZOfecuiVbBg==
X-Google-Smtp-Source: ABdhPJzyVYzu2CU8h9wtVCNCmz6+lmIOKd0EHf9hvKqQm2TiSQTwZsy0ON1MFkpPXXQsedw9MovufQ==
X-Received: by 2002:a2e:5009:0:b0:253:dd39:dc19 with SMTP id e9-20020a2e5009000000b00253dd39dc19mr8890999ljb.526.1653300202766;
        Mon, 23 May 2022 03:03:22 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f14-20020ac24e4e000000b0047255d2115esm1888638lfr.141.2022.05.23.03.03.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 03:03:22 -0700 (PDT)
Message-ID: <fe30f58c-8e6a-d4ce-5df0-ac8fd38cda4a@linaro.org>
Date:   Mon, 23 May 2022 12:03:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: add compatible string for Kobo
 Aura 2
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        l.stach@pengutronix.de, alexander.stein@ew.tq-group.com,
        marcel.ziswiler@toradex.com, linux@rempel-privat.de,
        matthias.schiffer@ew.tq-group.com, cniedermaier@dh-electronics.com,
        sebastian.reichel@collabora.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, nicolecrivain@gmail.com
References: <20220522214415.254959-1-andreas@kemnade.info>
 <20220522214415.254959-2-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220522214415.254959-2-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2022 23:44, Andreas Kemnade wrote:
> This adds a compatible string for the Kobo Aura 2 eBook reader.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
