Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E963D663E6B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 11:41:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231482AbjAJKle (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 05:41:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238045AbjAJKlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 05:41:20 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC96AD102
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:41:18 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t5so6836509wrq.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pmMrDaRkKSnc1qhodDZOnxZ9tfc0loduFNccFsKTnYg=;
        b=Su1ZLTvGNvl9r12ssy25oZ59i8HIQ/nXC82zXIZtUj5BdcP2BmHJGZvWxonW6uzph1
         QmeYBo2eVTMv1ljxUuu7O2ZApvreSMVpZ1kpFhmd2qD/rH3EumihmJLtJ6X3feZqcD4h
         jW72O8vOudqRmZIoblg5745RteTgrMjga5W0OR6OWsEFbAUwqSwDxeyysMoEGEwHCYqG
         glHduXbKnPl2orYK4qNVWla7o5qhE6coc1gGvA8Pq1v6fsRmlMOKKWQ+j41mV9OzoDUz
         JiguqoJrCWpzr7rMVOLzhfTVY07SYmGmVl3HBvXnQQ+WbRbAnrGAkhLMomp1FSFduFEW
         5T2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pmMrDaRkKSnc1qhodDZOnxZ9tfc0loduFNccFsKTnYg=;
        b=cRCH8jC1xXPSaT6sDam6yFFLNGaxNXBEYjWD6UJhQfsxVXsinaS71tpct6bKM7dQHO
         UFmWsO5lPVh0eP6y8T2M30lEV0A9mdCBqBVmB/2Da7eGajE2SeTMFyTj668f4IGs6Wue
         vhde/zXBCiQcT2UwyVhYigxE0EC6TUIdrjDlpgTLtfRXC2RgCitsr1aS5awR0SkCyeOh
         0RpvBfbfgRItacOocV9OZSKhYZ3A73YweRhMKRZ8QIHSmVSjp2985bUMz5dmGz/FZfZ+
         MJutDo2uUe6V436YiiQnVigRXyRZM4gqlScGIP3vFNkpA7PNlpD/f69rzTwx+nlw5K7O
         0aKg==
X-Gm-Message-State: AFqh2krgTsxA7bOie6AOtdTSqlbadOlF0HNh6elZHuqGTYYo4sSa3M+I
        R76Wqid/MT54qMt2+xc9h46tEQ==
X-Google-Smtp-Source: AMrXdXun7Qhne8LN25fn0zhY7FXb8AtvrkTpOTnpXr+zlJTPyur3hYr37jfZFi/8pJEcK9WkHsT/Jw==
X-Received: by 2002:a05:6000:81:b0:2bc:1b58:8264 with SMTP id m1-20020a056000008100b002bc1b588264mr4869488wrx.49.1673347277313;
        Tue, 10 Jan 2023 02:41:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j17-20020adff011000000b002a64e575b4esm11017449wro.47.2023.01.10.02.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:41:16 -0800 (PST)
Message-ID: <a690de32-522f-c777-241b-907bda8a14ba@linaro.org>
Date:   Tue, 10 Jan 2023 11:41:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 01/10] dt-bindings: qcom,*-geni: move
 #{address,size}-cells on i2c/spi nodes
Content-Language: en-US
To:     Brian Masney <bmasney@redhat.com>, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     quic_shazhuss@quicinc.com, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, johan+linaro@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ahalaney@redhat.com,
        echanude@redhat.co
References: <20230103182229.37169-1-bmasney@redhat.com>
 <20230103182229.37169-2-bmasney@redhat.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230103182229.37169-2-bmasney@redhat.com>
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

On 03/01/2023 19:22, Brian Masney wrote:
> Move the #address-cells and #size-cells properties on the existing
> i2c/spi example nodes below the reg property so that all of the
> address-related properties are grouped together.
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> Link: https://lore.kernel.org/lkml/Y6Wnh+tXPhF6aC1b@hovoldconsulting.com/

We do not have conclusion where these should be, so don't make any changes.

https://github.com/konradybcio-work/dt_review

Best regards,
Krzysztof

