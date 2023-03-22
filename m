Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A979F6C591C
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 22:55:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjCVVzE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 17:55:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjCVVzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 17:55:03 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EC503400C
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:54:44 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id y4so78888217edo.2
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 14:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679522082;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8uvaRG6SEubgVDA8byacGya26N57UadVLJD7KEjV3v8=;
        b=e3uHRIoBfiqATEEQUeoKbGF4jKPKe/GadoIicmI2t0auPCUZSg0mWBf2LIk1arnKmZ
         54hOhTTuBT3JmwEEZob6Lw4YvkMmj/kplRUumQm3fHT7Kd4AxBPfk8L3b3XpmeoWGLPg
         T+2whG2hq/Sb8mClxgwgOT+kPi0v3gbBeGTzI2wp7+YS7q3jtsp+RoYUX8bTYdNySWli
         vQK1fv45TOVgSllyKbw/6jDxPXyacVEZGCQsZk+1yl+khoX7XIbFqL7Z2InRpfvPxXhf
         DiyCR8yjhJ0oOjhFBdCquaJhzSEkQwCNf/9P9xtscbbtt5SRkzF7Ttvc/WwuPlTcXR4Z
         KW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679522082;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8uvaRG6SEubgVDA8byacGya26N57UadVLJD7KEjV3v8=;
        b=dW11MNX+fnq5CTHbr3sWwkOPSMXVsCNKNmR9fqYNgV0Cdpno5sRgwY5GQU0v/O16bm
         cwWK3IFU4g/AHNLb5uXrRenbs/Tv+q/xFbxV6KWI1jFGUrmK7uoop97CK5o1AcJQ9h3p
         J7LkcYS5L52AazcviZc5pexHfXKKkb0/KgSZMDpuwzpSDaqOaTrIHsh607IK0GcH5XS6
         j5wSM2fEINInzF65dQrll2w/YzMHLQTCwzRipNSjHHApgvX8lFh7fhRadiEJm08sDUIO
         ulaNBi+Z9baA5RlLrmy30KFEedy0DF8L2WEMvNhc3hhtBLMjHCtwvOoHpkJVJyH9axHm
         VuxQ==
X-Gm-Message-State: AO0yUKVZB9HKBSlQrLxNMwQ55rp97q+lKUB+KmtvXlGLMHKq9qrB20e9
        qpOakwhABBbTe6Xj0NncfDvv8w==
X-Google-Smtp-Source: AK7set/PZpsMUz4Si6epVj5Xk29Fp9cUg4PfUfBNqtl8qYNcExJeg+LuYMrEp71qE9lZhQLzeacgUA==
X-Received: by 2002:a05:6402:1391:b0:501:c839:cf90 with SMTP id b17-20020a056402139100b00501c839cf90mr7103329edv.3.1679522082373;
        Wed, 22 Mar 2023 14:54:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id x21-20020a50d615000000b004bb810e0b87sm8377005edi.39.2023.03.22.14.54.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 14:54:41 -0700 (PDT)
Message-ID: <50a6f96b-0822-66e4-be5c-46466766702b@linaro.org>
Date:   Wed, 22 Mar 2023 22:54:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/4] dt-bindings: trivial-devices: Add Atmel
 AT30TSE004A serial eeprom
Content-Language: en-US
To:     Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
        andrew@aj.id.au, joel@jms.id.au, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org
References: <20230322140348.569397-1-eajames@linux.ibm.com>
 <20230322140348.569397-3-eajames@linux.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230322140348.569397-3-eajames@linux.ibm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 15:03, Eddie James wrote:
> The AT30TSE004A EEPROM is compatible with the JEDEC EE1004 standard.
> Document it as a trivial I2C device.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

