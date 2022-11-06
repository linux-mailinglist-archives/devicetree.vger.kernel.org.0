Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C11E61E1A1
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 11:32:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbiKFKcO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 05:32:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbiKFKcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 05:32:10 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2FE35F98
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 02:32:09 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b3so13142549lfv.2
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 02:32:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lKYJOkirmCecq9ezHzpl0WQVkwqT4CQCl37ykbl0Zzc=;
        b=hsyMaz80e4MLIWes0KileGeBWI8raCMyY0pY0CIvH9kSmZV4hodx5vJaCCgICypc3Y
         uDaDBJwyMmo6EJfePQTYDJXwazXVPlQNrMeM7QC96cXuZbpWLi+guNoNYQOkcIrV2ax4
         Jn23oGy2g3Dxf+TY/6IG2lCe/ieBBUhL9gI97eDPBO+jx3Fd4JyDI/GMdZaf9fgXdO4U
         JUvij1CaheKxShzQFBCq9wTWQQqfvf3rDx9HcJX1y5yHCUW1anM6E3MX71R79/c+tt6F
         Pt3ZGRWaJNaSGYXYeAb2Em/Sq/J2ole9jXmhlIIt8SVBTezWCAbAARNAOm0GQOEE9EjF
         2izA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lKYJOkirmCecq9ezHzpl0WQVkwqT4CQCl37ykbl0Zzc=;
        b=6i0f/K1jfjEoZ1UWufX2XFVO9atylELHHY6bW4gJfJlwPMLjtPOcARCObh1v/bFYH5
         LGsFEY6kKCwsVwxVBamXP0DB5QerBezN5ibQoO6reryGWNQcvQgLk0EGh88v55xVwYzg
         g7XjwRmvEsQ78OWm0Y2DCYZHNWt4TBw+y48Cnst+6AmQV6aluNFrdtuH1yW1XzlrYfqA
         3BXsRwDpM67OTDv3zqUR5rP0DwmGMAFQueo1lDIL0F78Ol4sGpbpPglLog2Jh/0LjLGd
         oOSd/RxY03HMMxsziKPlCnduBob5V6pIGfxnrHUtIBltVgFsOtKNiEW7rK4V3X0wzgcN
         H6Og==
X-Gm-Message-State: ACrzQf3+miomclcre66aZ+2hV5Xl0Eo5p722sUhXycvKf96rza/3RJYd
        k68sQD4EopeAfrB+WVP009+BrQ==
X-Google-Smtp-Source: AMsMyM62YKz6Gaslh7qeGOV096YtXnoCOEfNwT2yIiYZoZ7xUHy+2qkLcd96zaeHQgQbQynT0YRbPQ==
X-Received: by 2002:a05:6512:3d0b:b0:4a2:6d15:91ff with SMTP id d11-20020a0565123d0b00b004a26d1591ffmr16224777lfv.575.1667730728289;
        Sun, 06 Nov 2022 02:32:08 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id x9-20020a056512078900b00498f23c249dsm644046lfr.74.2022.11.06.02.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 02:32:07 -0800 (PST)
Message-ID: <ac684379-d3a1-be60-1b46-71561e668c23@linaro.org>
Date:   Sun, 6 Nov 2022 11:32:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: thermal: cooling-devices: Add missing cache
 related properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221104162450.1982114-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104162450.1982114-1-robh@kernel.org>
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

On 04/11/2022 17:24, Rob Herring wrote:
> The examples' cache nodes are incomplete as 'cache-unified' and
> 'cache-level' are required cache properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

