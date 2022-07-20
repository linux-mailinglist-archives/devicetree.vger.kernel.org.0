Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83D5D57B491
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 12:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230292AbiGTKed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 06:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbiGTKed (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 06:34:33 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DF33DEC6
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 03:34:32 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id w2so20593389ljj.7
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 03:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cAufcfrmkWuteWD367j9pVSwfJbo/oWC1itAdvShsqk=;
        b=ltJqGHsbiHXO2gIE5UMCyzKJ8bm+ulL2MHk28tc8dz9IQH3ZvLAOmAY+DFVByST3c5
         jQbvTx4K0y2+gpV5PJviqb06wrxVFSl9lidZqDzv3W6jxZqejRrs5NCB/oCwc2NIGoa/
         YQerNMqfBLihRlQkt85JThzJgrDhm8FXhKRD2o7Hq4gt5wFdRScKTAqfNWFfnIzLfULp
         rnCwQmE18vP0bAypXzz7rcnrPAoCMq5tcszPYxhrKJucKpX+Jjg7FPIcFdQBz0pcbmN/
         gJeAKSCQlAhOP4oD2WiiCeOydlLoC0HNgI+xUjhnUnwHgsJVY9zVoGPfJHRBDvduUAxR
         /nSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cAufcfrmkWuteWD367j9pVSwfJbo/oWC1itAdvShsqk=;
        b=lBgG3h3Q+nvhLsAV3kN2+B3B1RnpiWCcElShm3Nrw4zcHSeGsv8JhJMXMreo4pgF6t
         J66U8AXE24dvAiqT0aFz/CI4RgGL0WNS4EF4pAAWp/BBljqyqjiMQe4lhmpQFzuNA3qe
         qep0fDcCwSRpb2M3ZA+PuaKP4bH9HIlY3tElwZEbQrOAn4ttyTTJB45GZ19BAE7cS28p
         PbYfE42o0BpZ01Pb4uBLcxS/w4a8zywbsyvrSfMf58K67+oqBK8WHdwOSCsho6zAqs21
         vAFDn3uFsCLxB4c3wSxXhHZnMy7i4zV2TKDRVfb2DHMBXgC2PztT8znY5UTx3CJJXwKJ
         dr4A==
X-Gm-Message-State: AJIora8HGh9YaZvICnpN3qah8MZpWXGHpQLvJF5fDW6jE3edHaXounui
        b95j0VwDciNdKzhWmJFTQQtIFQ==
X-Google-Smtp-Source: AGRyM1sBD67/jtTKZ/dxu9zBMrKpp6yvgqRJYuzxj3GLE5Nuf02oFFNJCD8KmiGKyAMOt3cy4E6HEA==
X-Received: by 2002:a05:651c:204a:b0:25d:4ef0:80a9 with SMTP id t10-20020a05651c204a00b0025d4ef080a9mr17167757ljo.319.1658313270296;
        Wed, 20 Jul 2022 03:34:30 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id i10-20020a2ea22a000000b0025d9552fcafsm3153679ljm.97.2022.07.20.03.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 03:34:29 -0700 (PDT)
Message-ID: <0a5cbaaa-565a-7215-5e31-12c52f4bbcbd@linaro.org>
Date:   Wed, 20 Jul 2022 12:34:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: aspeed: document Ampere
 Mt.Mitchell BMC compatibles
Content-Language: en-US
To:     Quan Nguyen <quan@os.amperecomputing.com>,
        openbmc@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Open Source Submission <patches@amperecomputing.com>
Cc:     Phong Vo <phong@os.amperecomputing.com>,
        thang@os.amperecomputing.com
References: <20220720085230.3801945-1-quan@os.amperecomputing.com>
 <20220720085230.3801945-2-quan@os.amperecomputing.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720085230.3801945-2-quan@os.amperecomputing.com>
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

On 20/07/2022 10:52, Quan Nguyen wrote:
> Document Ampere Mt.Mitchell BMC board compatible.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>

Thank you for your patch. There is something to discuss/improve.

> ---
> v2:
>   + Introduce in v2 to add Ampere Mt. Mitchell BMC compatible [Krzysztof]
> 
>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> index d61408194998..b8146d5c4431 100644
> --- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
> @@ -71,6 +71,7 @@ properties:
>            - enum:
>                - aspeed,ast2600-evb
>                - aspeed,ast2600-evb-a1
> +              - ampere,mtmitchell-bmc

Put the entry ordered alphabetically.


Best regards,
Krzysztof
