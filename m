Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 212425FC61E
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 15:13:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbiJLNNO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 09:13:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbiJLNND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 09:13:03 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CABECD5C1
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:13:02 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id s3so1795992qtn.12
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 06:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Oya1NNXFgEbQyEYLD7+z5oGWxx/yoIcQNtgt3HKMgx4=;
        b=kCBrGeiwJCLGFO9YEWhUCqI8U81XeVDagS8lBbFr4QTzwTJ9efP5w2c8W7wUlvpCUq
         Qdo4f8jW0vNkfBAHSWC2eja6PjGVL2c4OMFxQaD+u3MQIyBqpeZS64yoiKGiz9rtPL0r
         mMPbefxxoUw+1TEiG4lBNb78mKraShxuNlIiDVJe6eU5u/eGEBgoe29Qdn54GsI2wHDu
         mnOT8GK+7oyrObhsqBiOaaWVriF2qI5A5oJyV+GbLV9Vq27yNGGBHq2Wsdvo0eDH9hCu
         lATc8h4GMi6OqbPOgmmoRnduFf3BhQU0QcoOKW7p5basgZiICC+3b5sO6YKN3NB3oM7e
         Rkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Oya1NNXFgEbQyEYLD7+z5oGWxx/yoIcQNtgt3HKMgx4=;
        b=wbdgdntSmwXy0siQEm82kmOK+u1vqUzK8ELGjqEahBva6nEXa78ZdncY9VcGKiNxNP
         hbqEiDJCMYCwKR3SteNPd/jChUufOcszxYfTeEhns/rQywywzqMbFqfIOaH7+Tv72d3f
         /jyj4w5XTVCKjFeaBPd6FFNrTlxPa/IQVrGUL93aPm2d/OSnYmU69jd4NyYq4FlL7bJZ
         jpuSuT5plcj8JMDmdqC0BE3noTGi597ZMjnVCqJKY9DRInPUkpd/tcAn8x6Z3zBb/jQf
         hhwoij4F/Lm5ctcF8eikMv2FgiFAivQZBjAAcNzykC+g3C0PJHNkcm/VXtT5gNrLdlOQ
         2L+A==
X-Gm-Message-State: ACrzQf3zhfd1+4MUaXsjVgepVckb+FyBO2hOSC2P9dHMr4S7kraaOY0d
        25hrGJ+3BSYqps7Wao7dwcigSw==
X-Google-Smtp-Source: AMsMyM5NNr3Kol3tWrwbPqWrVG1qsyy7JWtJWBTKjLNZ4No9uMzIDaM7xeA1lVVCtlU0WkYy5oCinA==
X-Received: by 2002:a05:622a:178d:b0:39c:c64e:292 with SMTP id s13-20020a05622a178d00b0039cc64e0292mr998862qtk.231.1665580381158;
        Wed, 12 Oct 2022 06:13:01 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id q4-20020a05620a2a4400b006ee74cc976esm5919970qkp.70.2022.10.12.06.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 06:13:00 -0700 (PDT)
Message-ID: <d9b57819-c956-31bb-dedf-c7fd04d37902@linaro.org>
Date:   Wed, 12 Oct 2022 09:12:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 2/3] dt-bindings: add mx93 description
Content-Language: en-US
To:     Clark Wang <xiaoning.wang@nxp.com>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
        joabreu@synopsys.com, mcoquelin.stm32@gmail.com
Cc:     kernel@pengutronix.de, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20221012105129.3706062-1-xiaoning.wang@nxp.com>
 <20221012105129.3706062-3-xiaoning.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221012105129.3706062-3-xiaoning.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/10/2022 06:51, Clark Wang wrote:
> Add mx93 compatible string for eqos driver.
> 
> Signed-off-by: Clark Wang <xiaoning.wang@nxp.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

