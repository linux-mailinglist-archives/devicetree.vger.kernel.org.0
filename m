Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA3075C06E
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 09:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230518AbjGUHxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 03:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbjGUHwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 03:52:53 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E752211D
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 00:52:51 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-997c4107d62so237426566b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 00:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689925970; x=1690530770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8iFkw5OAeVVqgNErz54LWAAnSLkanlxrFRIubQ7kDnE=;
        b=mDQww9cKoIwTIrdlVcobuY5eCcfTC44OoAYWgydGHrK0An6s1FnJhqwErxEeRAgdw3
         f19zpBvhTUHKloH2sIE7htEEb2ICjfInyv0sIWwG7/3ejKyqJQm75if7sDEge+dR4cQ2
         VPfrOPauH9cduvNHVjE4hcekR21cM2lzH50osQGNbIqZJpHgSFnsQ1EanuWilNeUl4hE
         JATRSdNJ56jVU2167pbLpvt4stgayQ+QbDc1ZVVUoer1nt7OYLP91ETcqr+LS+7ZkHDh
         0WIwqp3gxC1Fb+D8uBL9uCm+orBmpXH+VXVqL0sQG8mYqoUVIDMBNLurPT3/Sn0qoXPm
         8+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689925970; x=1690530770;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8iFkw5OAeVVqgNErz54LWAAnSLkanlxrFRIubQ7kDnE=;
        b=HC3nFhtx3HsT32rICYoniPXfxj6+Iqzil6eBYBbV0mzTZDfmhihgEoLHuftVFNXqzq
         +rutk59jvfXDiOo1ChiaCzo8jldTI6nJENeYNzR6Z7S9xqpkqLf2AnXGZValchhz5WBr
         8LGZYt4XgTYlcs+P+m6Pt+tC2W3KvsJ0U8IEZZ68ORrgl8uJtp0R0Uc3mHhL/lpgMeZ6
         5iWSN66IzsNlqEZvhBPBDuenn7YbgK25t7dUgUsBvIgg6ebgwMgc0Isiemj6SBKaDVHD
         yPQG1n5eVFlk8cnwdj2FURdU06fH9vh0CMCXhAvh5ZLh71BsxQAZmO8Lw2qy6vT4HvPL
         Bjag==
X-Gm-Message-State: ABy/qLanBcwsEF+YsxYLQTpFaZQxGdBj78ixHjqgWrTIoJbPl9eDKvcc
        v87M2ZTm56L99kfqEv7LDydAnA==
X-Google-Smtp-Source: APBJJlGeU3KBAUOv/nkO68FWx0GpnXStirH+7HZ7/Ndb/Yx2zbEsXHncW9RFIp2V462B6gWsAJXybA==
X-Received: by 2002:a17:906:9bd2:b0:98d:9655:3fac with SMTP id de18-20020a1709069bd200b0098d96553facmr957531ejc.71.1689925970342;
        Fri, 21 Jul 2023 00:52:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id qt9-20020a170906ece900b009927d4d7a6bsm1799999ejb.53.2023.07.21.00.52.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jul 2023 00:52:49 -0700 (PDT)
Message-ID: <405a7bad-394c-7e24-71f7-28b52c102155@linaro.org>
Date:   Fri, 21 Jul 2023 09:52:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 3/4] dt-bindings: arm: fsl: Add VAR-SOM-MX6 Custom
 Board
Content-Language: en-US
To:     James Hilliard <james.hilliard1@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Tim Harvey <tharvey@gateworks.com>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230721073626.3673429-1-james.hilliard1@gmail.com>
 <20230721073626.3673429-3-james.hilliard1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230721073626.3673429-3-james.hilliard1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 09:36, James Hilliard wrote:
> Add support for Variscite i.MX6Q VAR-SOM-MX6 Custom Board.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index a3ab78429799..010601da6c5b 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -298,6 +298,7 @@ properties:
>                - udoo,imx6q-udoo           # Udoo i.MX6 Quad Board
>                - uniwest,imx6q-evi         # Uniwest Evi
>                - variscite,dt6customboard
> +              - variscite,mx6customboard

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof

