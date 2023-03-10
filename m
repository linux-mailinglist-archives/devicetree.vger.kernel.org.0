Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9DD46B3A92
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 10:33:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231146AbjCJJdA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 04:33:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjCJJc2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 04:32:28 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B244193D4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:29:51 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id cw28so17953609edb.5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678440590;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wsu4G0p4vEq69pMVCyBTh1I0kHccMhzIhqWLhW5ud4c=;
        b=Kx72YYwDQDiIAC4wPIWGMjJT8AEzo2ydzXIQJrIaRm6yFcBB/cpxbcETZALCm77ftm
         1l/HBA5oGVYkBrJzyGJW7imKGng5FP4UTAMln7m74+LqskH25Aby4hbt5cjv6Ub6u/2z
         bmJrn4WTr1qIh5H0hK2DIFDvx/naAps863DLpXVA9xoeGgUJH8u5reHpv7wUlrQv1OMx
         0fHPu+ZYhU/uInVYptlFHeSxG5t3VJit6DnGhuXIGU7i3qrovc75XWpeOJ4Gr23GYpXk
         qsw2NudAMhdVV3wawp5XmDA7zHNkESgzSZ6nKnV3WxrIdeJgt0nffL67ZxZFmYI+Ne8n
         TLyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678440590;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wsu4G0p4vEq69pMVCyBTh1I0kHccMhzIhqWLhW5ud4c=;
        b=FM2PNDECM2rovZOLRxs4FbTaVGs9i2guBKzDcurVm8OqbYR9DE9JDXYqyxe8aaBxtM
         uDcCvPS3aHKHLsbVhu8TZYIQs7hbLSJMw9KlPKy5p7PXed2EXF1/e0hNeWIW77pu0MOf
         jHrmOOBYlURvz1KNgFKZ1mUMiH3dyUtSIy/bcml96+W8b8hRKR0ym3++Ap3CvWiNx3lN
         MhHDEOFZYTlhAF6efGzCvKrDCdKVh9P9/IrlTFyvXUmwa4n62kfSz3FzZREQUkymjF0x
         atK0+ed07GxEK5TqlcXkaRS6WRfKecFD9wwq3vObwmEqaAeRBzk5ZLkJs5Zio+1HGjhC
         m3HQ==
X-Gm-Message-State: AO0yUKXTM6Fr8DWoaktrmRLEsG2CgIvlLrf6dxtK1vwKS3PfT8DSUrOg
        RHbvRoMGIvyvKNALZP9XFANdYw==
X-Google-Smtp-Source: AK7set+oCnVYTX8cnXy7SOVYOpWEmkjZuRXYtFCaMOuDrVNbOSiL1LDDgbBP+EZlM+JqUHrwQ71HYQ==
X-Received: by 2002:a17:907:a808:b0:8aa:c35b:a34b with SMTP id vo8-20020a170907a80800b008aac35ba34bmr25831494ejc.20.1678440589760;
        Fri, 10 Mar 2023 01:29:49 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id ci7-20020a170906c34700b008b17de96f00sm727793ejb.151.2023.03.10.01.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 01:29:49 -0800 (PST)
Message-ID: <af686c3d-8a24-3066-ea6d-59d435c470b6@linaro.org>
Date:   Fri, 10 Mar 2023 10:29:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e: Add overlay to enable
 CPSW9G ports in QSGMII mode
Content-Language: en-US
To:     Siddharth Vadapalli <s-vadapalli@ti.com>, nm@ti.com,
        vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20230310092804.692303-1-s-vadapalli@ti.com>
 <20230310092804.692303-3-s-vadapalli@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230310092804.692303-3-s-vadapalli@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2023 10:28, Siddharth Vadapalli wrote:
> The J7 Quad Port Add-On Ethernet Card for J721E Common-Proc-Board supports
> QSGMII mode. Use the overlay to configure CPSW9G ports in QSGMII mode.
> 
> Add support to reset the PHY from kernel by using gpio-hog and gpio-reset.
> 
> Add aliases for CPSW9G ports to enable kernel to fetch MAC addresses
> directly from U-Boot.
> 


> +&exp2 {
> +	qsgmii-line-hog {
> +		gpio-hog;
> +		gpios = <16 GPIO_ACTIVE_HIGH>;
> +		output-low;
> +		line-name = "qsgmii-pwrdn-line";
> +	};
> +};
> +
> +&main_pmx0 {
> +	mdio_pins_default: mdio_pins_default {

No underscores in node names. Didn't you already get such comments?



Best regards,
Krzysztof

