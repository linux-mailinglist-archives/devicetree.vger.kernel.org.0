Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72EA75EE3CC
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 20:03:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234082AbiI1SDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 14:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233790AbiI1SDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 14:03:51 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E3DE100AB4
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:03:49 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id bu25so19659018lfb.3
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 11:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HXE9oeDQQV+iTI2ox/bIzi3jVXRhY6aBz1RqBKzY3QY=;
        b=Z3OhQW19A9BvFqqeeIvsTAbFQpLLBUrCM1V8Y6PI9Q7V94Pi0X+PZCXWN0Nhhre8bU
         hz7uzP3jWC6bSxtfSeuseK0g39FKCat0IIMZJYNrLnJljEu96rAS0+dnraeTATVLPZGA
         EareENKypzkQC6aS3KVjBWqBM1Pll8x1c2htmVzuv54xb64kgsmTnB+Hgxe0uAu8D7vx
         uPc7BcgpRxoRVHM/Le2C0NmD56f/rrSLRC8UUDWNmUMlhCy/YvJkQ08kcz2FoZoPZFcl
         3WdOm5uVBMGZvcrhEp9bWq8bWDd/H28qnD7V5GyPybYYW13j0DIs4cWrerF9eSrkDhxP
         o2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HXE9oeDQQV+iTI2ox/bIzi3jVXRhY6aBz1RqBKzY3QY=;
        b=V/nJtJilpl94bS//jC5rRp6e4nEW5RLiVao81mqCvw8KPD2u+IDs8t35ZfK+4vYCtb
         ifM3iOUanZt9cqv1WkldLmiBg7nU/GpQGuanTThEovfWW1Afwrfm2cRKkcJVt37kUWQ0
         PUddhPdytMNOl4KZQNJznqmaeZ1DXUwYgkSTnVJd8pEuBX9kT6MbwGEOJMjgcqXDZ3mK
         TlD7pq9zp479/5NiGWzh0N4h42s++7zq0fxuKWKgPYUbS2K2X1XQImF2uU78VuxxpUEF
         5IQIsrJ68ORfGqlXw5iZmuwP9iN2VMH6HD4gZKF4AzzlofowMQVd3MKygdGYUBbJkyDU
         dPVA==
X-Gm-Message-State: ACrzQf2A4iMHwdiGdAlEzHcUClP+bDhRCUXvg7rywsGHNT5niWlIBeb+
        88aGvyyAbmAHPwYOCXtV4KXh8g==
X-Google-Smtp-Source: AMsMyM5LFG5uTcG/mvcymrW1/P8HiYSn5bhpc/dM9E4AjvP9rptnd1GgJLYkj2f14njBNO+kHWPlKA==
X-Received: by 2002:a05:6512:1305:b0:4a1:d80d:95d with SMTP id x5-20020a056512130500b004a1d80d095dmr6564493lfu.324.1664388227440;
        Wed, 28 Sep 2022 11:03:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s10-20020a056512214a00b00497c3fdf995sm535795lfr.152.2022.09.28.11.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 11:03:47 -0700 (PDT)
Message-ID: <0636d53f-508f-8a86-0973-2641c9020622@linaro.org>
Date:   Wed, 28 Sep 2022 20:03:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 5/7] arm: dts: qcom: mdm9615: remove invalid pmic
 subnodes compatibles
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v1-5-b6e63a7df1e8@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v1-5-b6e63a7df1e8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 11:14, Neil Armstrong wrote:
> The PMIC is an PM8018, but was compatible with the PM8921. Both compatibles
> was left but it makes no sense anymore the leave both.

Why? It makes sense for backwards compatibility. If you think it does
not make sense, please say why.

> 
> The pwrkey compatible is left to PM8921, unlike the others because
> the interface is stricly compatible with the PM9821 pwrkey.

typo: strictly
typo: PM8921

Again, why? The old code looked correct. In all three places.

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 

Best regards,
Krzysztof

