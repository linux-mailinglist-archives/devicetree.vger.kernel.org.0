Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B946635A7B
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:47:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236345AbiKWKru (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:47:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236413AbiKWKr0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:47:26 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2AD715393E
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:34:34 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id s8so27522743lfc.8
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPdtPFLB1TZrWsH5lIP/9uszUEed9wIYjEKO4gAb5yU=;
        b=HOF6g1RJdwdLL6iLu3D0x66hwcgOkg5/WgcsfOWuA5pquaKT84zusTGhgp7sQrHd/W
         OKiMVV9I70OpfnR0HBdpOwdV+i5aMNHyHbd7kL/BbdDVp53s24VO+ALmHeRwtGoRXibZ
         L5UjEmyugoL56ICfZl8Urysri+gQdo3b+HxBw1wkEmQSYLzYQFYJr22Zb5nl9JlUMDp9
         MVmulLLYUDhq7r38JDTQYfjewWs1hyhdELlbJpi4ioDJmxSRsm+Akhc3d8oEQxqRCkv8
         Xilguo6TDqDUqVmGVMSZ/S2/IpFHu1GDtITwhmg2+wV6zGe9rcmrfLMqYLubYyK3J9l7
         9lzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jPdtPFLB1TZrWsH5lIP/9uszUEed9wIYjEKO4gAb5yU=;
        b=cEwfYhv2wVajSMKVddEkWcSQPpbcTksSRv4/lxkQlXAjR3KXZAl+IU0cpDvl2jfblB
         TqMX9dh6dV0tUent4AH0ELE4/fvKXUA6o8G7h6Jp1ftUeV7tL2LP3oXNb4cYWGcbbV/B
         DM3n/s5WUT5AoEfh6sUi6AJPp2NaHeAfwDW8AKn2mYAFKLsEna4tZGOc0O0EvcWJRHf9
         E/O32eZQqBa1tkq5h0yopilQlGvx3qfLDMQFr00qQyulDgZXG9DRQx6VaYMdla+SBjC9
         hlERDm3ULyDCzwEIeuFMabIxIrZcY66M+J5lW/Bh0eIPBTXaNBszjemd2wt65kvVsVnK
         Ymtg==
X-Gm-Message-State: ANoB5pmVbNak249dN6aQkkOqt494Q5tmJuc66IWg6/2BR6Lek/TZozN+
        iyfhxive3ZpVho3LlQcYGqxCZQ==
X-Google-Smtp-Source: AA0mqf7p6ErXDvhBcT1rz9LRvU8Zd+ybGzBI3a4HdTIjjSrjm5pRGb/z52EPnwtcP2g9kd05/N+W2g==
X-Received: by 2002:ac2:4e14:0:b0:4af:f5a0:8786 with SMTP id e20-20020ac24e14000000b004aff5a08786mr8563399lfr.265.1669199672422;
        Wed, 23 Nov 2022 02:34:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 14-20020ac25f4e000000b00499b27a329esm2842925lfz.300.2022.11.23.02.34.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:34:31 -0800 (PST)
Message-ID: <c9c27d62-9299-cb7d-f379-a5b059449789@linaro.org>
Date:   Wed, 23 Nov 2022 11:34:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Adding DT binding for zombie
Content-Language: en-US
To:     Owen Yang <ecs.taipeikernel@gmail.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>, Harvey <hunge@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20221123181043.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123181043.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
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

On 23/11/2022 11:11, Owen Yang wrote:
> Add an entry in the device tree binding for sc7280-zombie.

Subject: drop second, redundant "DT binding". This is obvious from the
prefix.

With subject fixed:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

