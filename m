Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DE88679BC4
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 15:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234873AbjAXO1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 09:27:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234863AbjAXO1S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 09:27:18 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78A363D09C
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 06:27:16 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bk16so14035223wrb.11
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 06:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=83ylCl/7imBVz3B8ZOzg+0qRgMLvJMRlFiKPHboLlxk=;
        b=MPXhllcNYY9b3gb+8OWFbAz6PZAmG5olDb7v7cFbSDAv6IwaYP5r1ajWxqqAcJTWRE
         kv0aj0tN9/TLxX2C07tXUA4T+tY9fJDb2/QglaKVJBF2/D7sbVLoz6sbMTS0v7gAZMuS
         MYj+dHDvQFFpLMA7UwCs9Sxm2e/estStI2h9lq43kj5blR9fw7REwxLAoLApCwsbfUJi
         lWicTdTu5OI6gTe1zV/Ka2C286XKTSvWQVqXSpJD1OHjuMhwmGKF8h63ESyu67sPQ4tO
         Z5zvyc1unTIeZNGNnoSTjkZH5pUaPbagmQflF1JqyXrRU1msMP203UZceEzYUCOoCWYA
         jzng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=83ylCl/7imBVz3B8ZOzg+0qRgMLvJMRlFiKPHboLlxk=;
        b=QlBpaMWniK6wPEblGHfTg/h0Qnu2LMFtUDY2hWGpTKPOySgW0pBqmkjoEe1OiwrJro
         rSFyIRoc8BjdetEAh6s4PcMm6EkpWi3FiupIyJfQUcnyx1Y8FGvo2m7dqMy6HNBoqLVE
         jkcDrB1KHTGlT8uIVt3/47foRE30qAvHDMMj0cUf8jdx9G5oRwPQY3GvrqYIgPc2rRrP
         wpCOkI4QnP43RPy6+Q30bZnCLGVXANE8ciefwWC+XrzixF3llcMjP43OHgW/665jAzeu
         mu7t20mTV+2kclpIsNSKndTfZKNPziATTMgxUTE80FRWpjHgno22Q4UH3Ss32OVTWT80
         7GTg==
X-Gm-Message-State: AFqh2krAoTEH0WtTolx11Yh0FxX3laAsOnynhAKy2/5E3ghrrbLaf6ad
        YGIAClxvqwJgujDXiseQjcpdjA==
X-Google-Smtp-Source: AMrXdXvMAViaj+SgLZBHJD3XBfKynm+jGHWqx/r/lR4qtu9h2VNuT7hG8p9SQKXEEJx9GAShpDsPrg==
X-Received: by 2002:a05:6000:1b85:b0:2be:f21:6af6 with SMTP id r5-20020a0560001b8500b002be0f216af6mr24625431wru.23.1674570434971;
        Tue, 24 Jan 2023 06:27:14 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v4-20020adfedc4000000b002bf94527b9esm2002227wro.85.2023.01.24.06.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 06:27:14 -0800 (PST)
Message-ID: <d2efeff9-1fb9-222c-2d21-1811d8237326@linaro.org>
Date:   Tue, 24 Jan 2023 15:27:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: trivial-devices: Add Infineon
 TDA38640 Voltage Regulator
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jean Delvare <jdelvare@suse.com>,
        Jonathan Corbet <corbet@lwn.net>
Cc:     linux-hwmon@vger.kernel.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org
References: <20230124141436.1687397-1-Naresh.Solanki@9elements.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124141436.1687397-1-Naresh.Solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 15:14, Naresh Solanki wrote:
> Infineon TDA38640 is PMBUS compliant voltage regulator.
> 
> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> ---
>  .../devicetree/bindings/trivial-devices.yaml  |  2 +

Where is the second patch?

>  Documentation/hwmon/tda38640.rst              | 66 +++++++++++++++++++

These are not bindings. You can keep them with the driver.

Best regards,
Krzysztof

