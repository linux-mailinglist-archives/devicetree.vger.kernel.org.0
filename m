Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D3E5F56B8
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 16:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbiJEOvQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 10:51:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbiJEOvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 10:51:15 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2050F7B7BB
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 07:51:14 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id bu25so25912456lfb.3
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 07:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=h5EgGPVm4WtQrmT0wcNwLb1/9YJNLS2w6d18NQrshN4=;
        b=PBjFqLnLVrlg4HIHAA83ypl9+efBowPxAevsjQQnG8DzWFZCPvTdE9KEXhj7MiXeFP
         wHxlFtS3UzG9vHhjupbOGhmQi4nNfet9ei7LmbHNoGd8PkRYHzw+t1AuGPOZZ5gTTtuY
         OE9TzUurr+eHetiKN6rCNp/q3mcWvqmId4oLTtf27OSWbqisnpEO7aWk8b6FpWq51Rxo
         c0qdJUJhHuyxP48BtdTAQyCjK9T5YyYob25eoO/mKLuDzce53Lp8G60sXa5Dq8vAoGZL
         ENnW4xs9IpJF1JePwQDndy4482Jv1c61NM2Pg0KEUKhvJQjt4AL0Pwj8SXdAbeKHiL9q
         BQQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=h5EgGPVm4WtQrmT0wcNwLb1/9YJNLS2w6d18NQrshN4=;
        b=tEQrNIMxhTpPDS4JIBIf8Q/c5UgLWgUYUZm9TJyJTVg/xdO9idv4Cf/bnlLXjEIRiH
         dSiX62II6cjwA4gk/dJZ9IAQ0lLW8LQ9NIzpNpZbI2bxeYAdO44hJPTAQ7oHv9WdBKIp
         45ocO/byUfqa3p3izVzje7DzxvUuLM0qS4MnG4WK3huPDnXDq+kwGmYG8MqMekB0jZh2
         pqrs1XWttzLQAUVZUaX2ukhTbRWlwU+ZYlfkKpVUtWu15y1OyZMECPZT5mjfE3o1EVnL
         3AjWcgvg7Krs+3JhckyqNGKmdbYHqcwYIlzeI+6F8dsr6kBvDl8RAeNjLc+krI2V6fw5
         Gihg==
X-Gm-Message-State: ACrzQf2KIvB0ZpUYv3wDwkN0XwzDGv/e6adDprcMWvv7b46okmXAR2HX
        9RWHZPR6M9aoF836JT7+KncnNw==
X-Google-Smtp-Source: AMsMyM7WWzwvjZBfktTFkPyEkixiLQOffQtJBWZkxHjBUglRPsXdwgi1Zyj5wpjvUJwTQ98hIP06Gw==
X-Received: by 2002:a05:6512:487:b0:4a2:2977:3a83 with SMTP id v7-20020a056512048700b004a229773a83mr88827lfq.88.1664981472385;
        Wed, 05 Oct 2022 07:51:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q3-20020a0565123a8300b00499fe9ce5f2sm2369292lfu.175.2022.10.05.07.51.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Oct 2022 07:51:11 -0700 (PDT)
Message-ID: <c04cc64a-9fea-db34-b9ee-486b54fbc223@linaro.org>
Date:   Wed, 5 Oct 2022 16:51:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 1/3] dt-bindings: power: supply: Add Richtek RT9467
 battery charger
Content-Language: en-US
To:     ChiaEn Wu <peterwu.pub@gmail.com>, sre@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     chiaen_wu@richtek.com, cy_huang@richtek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <cover.1664997251.git.chiaen_wu@richtek.com>
 <0a4a6dfcec35160bb89a932ff73bc2cc0bbd6555.1664997251.git.chiaen_wu@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0a4a6dfcec35160bb89a932ff73bc2cc0bbd6555.1664997251.git.chiaen_wu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2022 13:37, ChiaEn Wu wrote:
> From: ChiaEn Wu <chiaen_wu@richtek.com>
> 
> Add bindings for the Richtek RT9467 battery charger.
> 
> Co-developed-by: ChiYuan Huang <cy_huang@richtek.com>
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> Signed-off-by: ChiaEn Wu <chiaen_wu@richtek.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

