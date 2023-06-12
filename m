Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24FC272BA1B
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 10:19:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230416AbjFLITK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 04:19:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231851AbjFLISr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 04:18:47 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2436610E9
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:18:16 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9788554a8c9so717067766b.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 01:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=vexVIZ0dp8B8C1j+Lo+Kidr/5DKSmQtsmBdj1pB3rMiyA8LG85cEbYhHb7camdfB1U
         6KGQWKvrlf4K5+GjgDi/KVqhaUHphTdkJLC0/c2v0l4CHGTCU/Pl3xPYdFVfOuMUfG9L
         EqXwZySBXtkw15EvmTds6DDbx2TkchmJ02hhmbUaEDsjmdwaDxTFLD4Z9W1UoJBnJ9Y0
         W5vm6i+T+iwhRdNWwUioXKBypP2lS98E8eRLUgciktT6YCX0QXHfrGATZNXZb8lHZEV7
         y2YuX2Qek1ZrFguNQpg4KT8DQGzTJDns7LwpFARWGgHqNQI7MZFYSjF6rcMCBZuxMOHm
         S/fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686557895; x=1689149895;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bRmQUrzTWRgLw4kBQU5+LQ3tcVlba7PtHtkomNLzIII=;
        b=WZfpTH+out4rEk7mk2OeLdHwAItfnRflW6XPBcWjSL8UtEJFs0ff0m1UY3sofBzpLH
         KXbGWQOP1s+yOBu3kXZc+PS878U30KsxDplXY9aa09hHWXpsowLWHqBEnC2O/vZI3Eta
         9HLEHtnArwK4X8QI9zucTUdbVxOP8ZmC5BEjA6VLssqJ8j0oCUDwWOp3YDXXQj2G+dAv
         y+aWrOwLY7xkqcpnisfQLUUipCymh0tirQ1V/oAgGLArGzJDJ+qefRiu5kTkiJCYHurT
         Wl4fHezl2s6ZnrYEDKNua+4QPvKv8L1RdIal3SF6ypF3VksIYbA1myzXDnSDkDg+nlyR
         HkvA==
X-Gm-Message-State: AC+VfDzd9YDoZalyB1HRcFXyZiOdwbBO5Hq9rvrGQ2XXgTQZoCiqULW9
        SHMC5iTsi+iahtUMVDXriKzpGg==
X-Google-Smtp-Source: ACHHUZ71VvzowsyBKiDCq7DWYBS4cDksMCv4kT0NQarqHtz70SmAMxEqCnkYbWF+lAwBlVADz6Je8w==
X-Received: by 2002:a17:907:6288:b0:973:903c:35a4 with SMTP id nd8-20020a170907628800b00973903c35a4mr10130123ejc.65.1686557895276;
        Mon, 12 Jun 2023 01:18:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ks27-20020a170906f85b00b00977eec5bb2csm4821357ejb.156.2023.06.12.01.18.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 01:18:14 -0700 (PDT)
Message-ID: <2e6caba1-3781-156f-4e55-e261f56a10cb@linaro.org>
Date:   Mon, 12 Jun 2023 10:18:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 1/5] dt-bindings: ata: dwc-ahci: add PHY clocks
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
 <20230608162238.50078-2-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608162238.50078-2-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 18:22, Sebastian Reichel wrote:
> Add PHY transmit and receive clocks as described by the
> DW SATA AHCI HW manual.
> 
> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml     | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> index c1457910520b..34c5bf65b02d 100644
> --- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
> @@ -31,11 +31,11 @@ properties:
>        PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
>        clock, etc.
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>  
>    clock-names:
>      minItems: 1
> -    maxItems: 4
> +    maxItems: 6
>      items:
>        oneOf:
>          - description: Application APB/AHB/AXI BIU clock
> @@ -48,6 +48,10 @@ properties:
>            const: pmalive
>          - description: RxOOB detection clock
>            const: rxoob
> +        - description: PHY Transmit Clock
> +          const: asic
> +        - description: PHY Receive Clock
> +          const: rbc

Conor's comment was not resolved. Adding entries in the middle breaks
existing users and commit msg does not explain this.

Best regards,
Krzysztof

