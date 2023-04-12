Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CC936DED8C
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 10:27:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjDLI1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 04:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbjDLI1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 04:27:00 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E070B6591
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:26:49 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id sg7so38177776ejc.9
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 01:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681288008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hMWwvJSoPwKHnqvGb8XJbpQWFhUmBxXG2ION9BwWYgo=;
        b=WK/FDp+Tl2Ed7T3aBlcejCbbqL7ed+dzTD2hjOiuNFg15S6gnQqK78s1PbCu6x5Zhd
         VhmFw5he/pO3oTFEJqLfZ+MeRHs+ykAHs/rqNaV5/DCNLua3DsSrRd3XRVllYvaqH2VS
         H4fgmEAxTFLtnxGdOqhSzZCAhgdnJwlTYV9arrrFtg+p7GU9+j3f0V+PzWl7NIgJ/JZ2
         g5iuvnLVMHGzVg1A6W0x1aQysj0l4tzr72r4MrW9eSDuM95nVGT0LAzYRhm3oIkozK8+
         9VM7xyszT3o5K/CGIhNGMkMaQmE5u0Z49EqJFAOxlVAeAeDBXBywqsur0lUNO+GM+qMv
         OWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681288008;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hMWwvJSoPwKHnqvGb8XJbpQWFhUmBxXG2ION9BwWYgo=;
        b=WuDLoOq5/3IQ99Y3NMpGu90h8IBJco0j3PZI20YVSTuakmBbtuajuY91G54UHOm1TO
         ugwk8Mh9VkCqpRn4hjInT9rWh9LaCr7EBCBmWVnk1u9AmW3gm0tdoGCoerSn/Ps8UnA7
         KHElcjs8RfwUedyEecS2mYZhO3+kHb/7l0UxnVFp9uf5LqBDhein5eUpB0SkqLclX9KC
         +esd/EVlLmtR7bUpuiJISNmRBtscAF7qhBjXhsC4wdInT+2Vd2H57v+uc1J2dBZuhxtU
         caH5MI/Tk+TvNqTUkae4giCPq3mjtlEe72xxwTgRxe4mrg0qZ25kfeuD2Nyxh0yHmoFw
         qWlg==
X-Gm-Message-State: AAQBX9fFFH1fmbM077T5WkJU+VSJqMH7E79nansovkwIn6NeMBw0iQFr
        sY4R5j/836200AvQaqfPlXcplQ==
X-Google-Smtp-Source: AKy350aSpn6IBfYoqOrlQzXnS7Z0c4dRP9jbb3No1mXXaRs8vawGd2eCrz6GKriL9sBKdDPEJd/6ZQ==
X-Received: by 2002:a17:906:4e95:b0:94a:5c39:fdce with SMTP id v21-20020a1709064e9500b0094a5c39fdcemr11272322eju.24.1681288008375;
        Wed, 12 Apr 2023 01:26:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id ig13-20020a1709072e0d00b0093210cf625bsm7044930ejc.187.2023.04.12.01.26.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 01:26:47 -0700 (PDT)
Message-ID: <2b263c46-2b5e-341b-cb10-bf3b88f6632f@linaro.org>
Date:   Wed, 12 Apr 2023 10:26:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v4 1/7] dt-bindings: phy: Add StarFive JH7110 USB document
Content-Language: en-US
To:     Minda Chen <minda.chen@starfivetech.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pawel Laszczak <pawell@cadence.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Peter Chen <peter.chen@kernel.org>,
        Roger Quadros <rogerq@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-riscv@lists.infradead.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Mason Huo <mason.huo@starfivetech.com>
References: <20230406015216.27034-1-minda.chen@starfivetech.com>
 <20230406015216.27034-2-minda.chen@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406015216.27034-2-minda.chen@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 03:52, Minda Chen wrote:
> Add StarFive JH7110 SoC USB 2.0 PHY dt-binding.

Not much improvements in the subject. I asked to drop, not replace
document with document.

"Add StarFive JH7110 USB PHY"



> 
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-usb-phy.yaml | 50 +++++++++++++++++++
>  1 file changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> new file mode 100644
> index 000000000000..80604dfe01f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
> @@ -0,0 +1,50 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive USB 2.0 PHY

Missing model name.

> +
> +maintainers:
> +  - Minda Chen <minda.chen@starfivetech.com>
> +

Best regards,
Krzysztof

