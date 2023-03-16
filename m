Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16ED66BC7CB
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 08:54:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230202AbjCPHyR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 03:54:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbjCPHyM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 03:54:12 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 309AC3A80
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:54:11 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id r11so4077065edd.5
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ALV8LL9MJenwGh3aNSyyMlcoFKf51FdAxW4ZQ8b6bJE=;
        b=qWKRUG35QHudKj6D2f4L7bXiTNM0Mi41XYEq/jo82eXeIR0bm82L4y+ycX1fAnA6Qu
         v+BZaIKbteNomjxdKdg2Kj6WO6B6qKVvzN56ze7EEPtrgfHoVTkKo3lRoXuzYSo2ZGaB
         Pn8g9WZNHAbBztb3KcSg4pDqpnTsSsDi01sDnVATpxfyVSOAaMZtmQZ7i/to93UBm5ys
         nhSiCxFbtJEMYjYD/1rLwUnCsmyPNHN0cUsoQ+LQEfe+Eyi2er9GQp8Xu441+lF+tYyx
         llNtWNUWsS1pOHYTKFc7t7Uxf/5M4Uj3UxbjFWLTCzMMaRvx4qAEAGpJJFZdOC1sjfjk
         YRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953249;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ALV8LL9MJenwGh3aNSyyMlcoFKf51FdAxW4ZQ8b6bJE=;
        b=oXdoucTl9M9D/tn672Ip9qLmSyPF/d8nrI3ZVpnjG/R76Bi/pYOLYuMSz1VHEHhbs8
         mh92zkOhMa1QEivibD+6XEMlJoUCt2Lp7pwiDMmVhRnU7I9NljRVSXwSQze86qVhx1p4
         WjB8li26rgWfSaaENz5b7llgY8ybJUHTFMt1Vt5dFWWQ/PlTZycI79uL/iPNN3BtDSOy
         CQ+Uc34BB7+Ioi2VNWb+cCfwXuWUGgoCAyOou+Z0C2Zg8ZiPWTYwEQejYdxmFCPU7ekt
         cIwaotU7YWXE42o6+qL/BY05jau90vl/3KsnwSxuEm/LzE3mu+Oq8Z2dlSIScySxAnFU
         CgxQ==
X-Gm-Message-State: AO0yUKXzig053L5n8ckUuWCpCYKtvO7jHFSYMfvbW5PA7KKfTNnDNyRq
        ZDpEbwX4EGng8Swf8AY9GvdM1g==
X-Google-Smtp-Source: AK7set/VfwqOeWBGOCkzjeXGNInorMi0Z3JbnoCqP5GevqgS4Ng7IeSqPAsciPyJ2+3J9ZS/UaZQpw==
X-Received: by 2002:a17:906:17ca:b0:925:5549:f81c with SMTP id u10-20020a17090617ca00b009255549f81cmr10372881eje.6.1678953249705;
        Thu, 16 Mar 2023 00:54:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id q22-20020a1709060f9600b008eabe71429bsm3513395ejj.63.2023.03.16.00.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 00:54:09 -0700 (PDT)
Message-ID: <17205099-d301-c848-1724-fd3c7fa08192@linaro.org>
Date:   Thu, 16 Mar 2023 08:54:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add prefix for acbel
Content-Language: en-US
To:     Lakshmi Yadlapati <lakshmiy@us.ibm.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ylakshmi@yahoo.com
References: <20230315184633.766968-1-lakshmiy@us.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315184633.766968-1-lakshmiy@us.ibm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 19:46, Lakshmi Yadlapati wrote:
> Add a vendor prefix entry for acbel (https://www.acbel.com)
> 
> Signed-off-by: Lakshmi Yadlapati <lakshmiy@us.ibm.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

