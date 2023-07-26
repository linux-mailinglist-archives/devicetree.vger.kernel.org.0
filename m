Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DCBB763FDB
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 21:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbjGZTjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 15:39:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbjGZTjj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 15:39:39 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AAC1BE3
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 12:39:38 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5227799c224so179262a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 12:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690400376; x=1691005176;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AYaPa8zxf2SKdcvhGSG9b2dqeqckZyTsn4RA7m1t5+o=;
        b=Xqx0QeFAaLF1xHE3Kjw0PDqpW+iHAhgsSgmHn2NO1o45lpWJIGv3o6kKel23+IsaHu
         /oISyEILmO5/pXPXvGFWRKD9WaTZKQcfYFKi12eBq+J3n3ibfaJ6NeFEfcAN2mWDbUTC
         7ZfxUbL4aytLGzGkcD99AbBQ/iIygohPfhL5rGjooUBHAcbakvLixWDUdLO+9+7nNol4
         Woey4CfalKVbQjanhbe+VdC+s+zTlcbWQiAED1rWrmbC39D9HL2Foa5kjuaIyps1wbjd
         mnfV8tsoKnOHGsfA5LOk5vOWOYLZ+cpn396Hi1i18c5GZsCJRj2G5eqovkHXFiudEcpp
         a41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690400376; x=1691005176;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AYaPa8zxf2SKdcvhGSG9b2dqeqckZyTsn4RA7m1t5+o=;
        b=WkwT7XDZK0tLE4+WD2JtdGo/rCXYCMAAigvQfnM3ZhTgmyWPE/SKjf4KaMx50iUaKC
         uf1h/Nd2WbdpDo1svzYwFy+vK10SOCfK8epRTVIrTNDyX8eh/rMJQ9bnq3EFtfkTBQho
         Ijw6RudAJ7lB+uSqHS8KpCgvKCVzLXDxR0VF08fqRfqhFCjmStsE7L2LqpDj2cqNHjF+
         wchIymS16URH6hLW/1zR9hILTYPHA18Y4pI/117DF+9sBX+LzR7h28BXMq5elNbH6Ebz
         roYWTx67GP8YD/Jq7M85RbjnuVFR5xuQwxfI/OvUSZynFTRg669C1VM3G7/LKmoThyfv
         D9xQ==
X-Gm-Message-State: ABy/qLYygaw0saiZSlhpNV6OQZGndymo85YolFIk829LImMklNtf7KJ/
        AGL3GeedI6mQKMepBYUYtS9txA==
X-Google-Smtp-Source: APBJJlHOLciVJvpDUCOIaZcCYFaIPEDDIzOvGVdnbCrDgskP2Eo5A52fkZreYJvIwfKTdH0UleRm2A==
X-Received: by 2002:a05:6402:547:b0:51b:df14:594e with SMTP id i7-20020a056402054700b0051bdf14594emr85827edx.39.1690400376598;
        Wed, 26 Jul 2023 12:39:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ca14-20020aa7cd6e000000b005222ca65af0sm4385902edb.3.2023.07.26.12.39.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 12:39:36 -0700 (PDT)
Message-ID: <6a9c250e-5192-909b-d60f-7b9888a23145@linaro.org>
Date:   Wed, 26 Jul 2023 21:39:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/4] dt-bindings: Add bindings for peci-npcm
Content-Language: en-US
To:     Iwona Winiarska <iwona.winiarska@intel.com>,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Tyrone Ting <warp5tw@gmail.com>
References: <20230726192740.1383740-1-iwona.winiarska@intel.com>
 <20230726192740.1383740-2-iwona.winiarska@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726192740.1383740-2-iwona.winiarska@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 21:27, Iwona Winiarska wrote:
> From: Tomer Maimon <tmaimon77@gmail.com>
> 
> Add device tree bindings for the peci-npcm controller driver.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> Signed-off-by: Tyrone Ting <warp5tw@gmail.com>
> Co-developed-by: Iwona Winiarska <iwona.winiarska@intel.com>
> Signed-off-by: Iwona Winiarska <iwona.winiarska@intel.com>
> ---
> Changes v1 -> v2:
> 
> * Renamed binding filename to match compatible (Krzysztof)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

