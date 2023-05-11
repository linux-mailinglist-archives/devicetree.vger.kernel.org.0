Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D0096FEEAF
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 11:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237592AbjEKJYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 05:24:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237522AbjEKJYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 05:24:13 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98AF4A24E
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:24:01 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-965d73eb65fso1329409966b.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683797040; x=1686389040;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JA5xPjeOoojypgcBqSFOVnz99GxgTTj01ItFi8GBvTU=;
        b=unHqB+68GfcbdTRlwsrD1KXnBOl3FzBk7YWKN3UPV9JxOPofTMog/lPUg+w0AC0zcV
         u6HIfsNXkuptihF0Xn9jTfGEaiKZqPZypWJ6Rs8nIbEAXrNL5QJ9cRWvAtit8341mZyq
         sJ/gm6mjb43TELC7kbwE8rgn42U4htFccqnnu+zEy1vre70l0u5lUKP2mX4vWSuoh2Br
         7m847tcEFgHUx0KaeUATnTTQ/g5e0Dp88nL4ZSSN7z/XigiQsGHwZaCjGPV+tAilnNu6
         QC6kWjHE/TEko46XZY3xMjE3ZyvS9hVRHfjUqrBuJg94kSc5JmYcXM219FkQM1457HHG
         0g+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683797040; x=1686389040;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JA5xPjeOoojypgcBqSFOVnz99GxgTTj01ItFi8GBvTU=;
        b=QYc3QVCdE74NtkUT5SWr7Sf0yVQs4wDRGnrVzyi+lVt3oEsda8JfvMFPPN+6i+5aU1
         Bt2Z266uW8GsX+67eFiEH7RpadHGK9GyyMYohWj+RFau+OMgkun8y199ioNyfKRegcUW
         jT6GjETEeY5ZiYrhnNmJIy4aDm+VJc7/jkQ/vgeihtHVDPbCDFYBhOpXET+AHueSMAfg
         0wVlrsu5RjvFuLjiL2o7EzQcCOomIweiuj2Q6ksP9y2oi5FCh0f4FT14ktrwNNoyRCra
         yMurrsBQFFW+vZInYXBAhAifcJPmxSVsRhDgHufAqIHpqw41Zu8nOKnOpK27hR9zn/0F
         fPhQ==
X-Gm-Message-State: AC+VfDy5h+mN3nnwr0FIFmYtkIUgVmg3uTk6jL/a1ycAFU1OjdJsdNht
        +06+eyNDn6gf1El6TexlnqDGTg==
X-Google-Smtp-Source: ACHHUZ6DpuG1Gh4nYwnUB6gFrZ70a2Esdrm6hR5ekuhcVRREIF6jJkfGUci/IR/Zuw7WtQmw5Q76xg==
X-Received: by 2002:a17:907:7fa7:b0:94f:553:6fd6 with SMTP id qk39-20020a1709077fa700b0094f05536fd6mr21304211ejc.24.1683797040026;
        Thu, 11 May 2023 02:24:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e61:f14a:c3a4:809e? ([2a02:810d:15c0:828:7e61:f14a:c3a4:809e])
        by smtp.gmail.com with ESMTPSA id ia21-20020a170907a07500b00966392de4easm3781089ejc.14.2023.05.11.02.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 02:23:59 -0700 (PDT)
Message-ID: <7cf19b98-6de4-c576-4fe9-a123da298d75@linaro.org>
Date:   Thu, 11 May 2023 11:23:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: cdns,salvo: add property
 cdns,usb2-disconnect-threshold-microvolt
Content-Language: en-US
To:     Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230510140504.2164565-1-Frank.Li@nxp.com>
 <20230510140504.2164565-2-Frank.Li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510140504.2164565-2-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 16:05, Frank Li wrote:
> Add cdns,usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

