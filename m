Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C107671BF1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 13:23:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230087AbjARMXP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 07:23:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230152AbjARMWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 07:22:32 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA6585A348
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:43:44 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id g10so24460349wmo.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 03:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vn93inJ4bTtG1cGSDdg+oHnqZVw5zHDa3f6LKH3htng=;
        b=d+OV15Cp1QiEo9qCuYZNJQ01/OLL4NHWtP7dnZzmdr6kpue5/9XyqolE15679koJTL
         3ZUcPGRZgzik0i+mywaZSdz1sOSkkEqpSJvDAUb7CfdPHjpnUT4vMQ1XO6/cqnjM394J
         xEWfZ367WdGmqbTvb5nxWjCZMBzL5HCq3h+upzAu32XhkgmFquxF89Y7lHOXIx2b9OgD
         gSyQZB5B8eDMAG3nqhDtIf93rvuOCFpowaIdaQw/ulVdavqdMf5+62qF1Kb7eeuYX2MQ
         5Ot4B+rRCYEyMrG9bhedcgrc9MOxAE/4j//MPiai4lg6d/MijvGQrzlnra0M9eeLvSpU
         V3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vn93inJ4bTtG1cGSDdg+oHnqZVw5zHDa3f6LKH3htng=;
        b=Xr99jsSOWQqBPL3RRLVmbK15otg80E1basqKSCygPG2SYj0xA+uGNyFqQgWXA1oFRK
         6SxBAg9a8dqlBjm0EtJ+1raixS1q/RU20xylgTNgYmvd35C7OiuW73w3Zgp09Y0dNmWv
         9lQ1Okekm87qGY6Z7HBS++LMdu5UgXoFXpX7YQlCnDrxzYXAQ0eh5/dY2FiLF0bYbNZ/
         VtZc7QXmKOFdWVaixEpnHasNKaK/BaCoGetSajblzgPKKDqfY4aezuXQdPYD4YUY3T/+
         5rMK73JTuAQTeWAHRrM09iAddM7i+iND4ZDbwFiS1501QNnNfgbOZCtAimieEIZA0/fo
         3ohA==
X-Gm-Message-State: AFqh2kpCRYx1iht4PdPPMYREGOFn5rYzO7LXqF4ipq3m5ofprim0JnG2
        avtcuam4YJyVo1UNMpOQ1aakOw==
X-Google-Smtp-Source: AMrXdXv5fgECp3GO/5YMSbVKAmLwdjAXNgSIypPT6DsToxURxC2zgPr+om30Q0dvjZRKqC0RuyKthQ==
X-Received: by 2002:a05:600c:3c91:b0:3da:f5d1:c677 with SMTP id bg17-20020a05600c3c9100b003daf5d1c677mr2323702wmb.35.1674042223254;
        Wed, 18 Jan 2023 03:43:43 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q24-20020a05600c331800b003d1de805de5sm1636884wmp.16.2023.01.18.03.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 03:43:42 -0800 (PST)
Message-ID: <ecffda73-9c73-1dbe-3da1-93c205128277@linaro.org>
Date:   Wed, 18 Jan 2023 12:43:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v3 2/3] dt-bindings: hwmon: add nxp,mc34vr500
Content-Language: en-US
To:     Mario Kicherer <dev@kicherer.org>, linux-hwmon@vger.kernel.org
Cc:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net,
        linux-doc@vger.kernel.org, devicetree@vger.kernel.org
References: <20230117161340.1310936-1-dev@kicherer.org>
 <20230117161340.1310936-3-dev@kicherer.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230117161340.1310936-3-dev@kicherer.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/01/2023 17:13, Mario Kicherer wrote:
> This patch adds dt-bindings for the NXP MC34VR500 PMIC.
> 
> Signed-off-by: Mario Kicherer <dev@kicherer.org>
> ---

Except being untested one more comment:

> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      mc34vr500@8 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof

