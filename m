Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 898266CFD7F
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:57:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjC3H50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjC3H50 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:57:26 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E48B133
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:57:25 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id z42so18684310ljq.13
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680163043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DLkKastoj3clquifzZUKvXNqIt+nCRl1uFBKZuCZA80=;
        b=LrDuAcuHdM9umfID1Z2eAjmckSPZ/BO5XT1+jIKUxEKs+ia43pHHeXl72JO4xXiM6s
         ynWGvFvdvegAEe5aDPKeN6dVreEldxQS6m/Pf/a6Oaj81LiqI9/X8NpC4WArs5r+R3Gd
         E5ELlL/4K3Yynyb+8Q7fHzH/mO7WtNOBGt9mA/gurweXvvPDWJT3jrZlemvH0ApPmBmT
         RPpPwjyEA6C/fQrNg3fIcCQgROPrLrJqSARw/C1n2fIBsRk3CC3SSV85qjtViEgJ7NuG
         4np9tK4d9NXHGii2Cy5sEaCNBjxw/Mz0MQMCyctcv0SxVWJ1uX6PyXNWb/3yRjflIZiX
         8VmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680163043;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DLkKastoj3clquifzZUKvXNqIt+nCRl1uFBKZuCZA80=;
        b=ENLL3TFsC+cjzwPzfV2vSQNAXy4F26goZlrIMO46rZdYJW14CFdObwTbYJ5pmHy1k0
         28poDYXVBHIyQ3f96V22Ne2RiR0L4VJVpG1putn00VQmCwvJr2LOptaKloV+OZVs2107
         nd+jHeS33vDzNWVSwzyZA5E6paCR5x4TEexqogLd4HqcE5QMbRGz+oku37kD2pjYNaF5
         oSR/CrdGxRQy2ERGpOBcO9QXKDqvV7GMV5KGG/3SpVXD+KX3fjP+0k0hGtRItIiMB3ad
         1toxNmReLECPjW62tB0HiauNa/7MAjdwqpzI00oa3869TQkn9I1Gk/b9K14RCRKUj35V
         4gNQ==
X-Gm-Message-State: AAQBX9fCSoOoYvwBHSVojqtAYbCpHyVEcl2UNtnsRCN9htfw3YxHGb8e
        UDMMmqJOs5/w5d/n2EGcY/KsKA==
X-Google-Smtp-Source: AKy350Ymv489oo31a+5RM+l+K+AAeuMj//R61n1h7YjpBb7TNuA4R5OatFecVWy/s+B37LoJn6Xhdw==
X-Received: by 2002:a2e:9e16:0:b0:298:a636:28 with SMTP id e22-20020a2e9e16000000b00298a6360028mr7019435ljk.5.1680163043444;
        Thu, 30 Mar 2023 00:57:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p15-20020a2ea40f000000b00295a8d1ecc7sm5831500ljn.18.2023.03.30.00.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:57:23 -0700 (PDT)
Message-ID: <023c9b41-9f09-e127-d6c1-426c3408eb86@linaro.org>
Date:   Thu, 30 Mar 2023 09:57:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: mailbox : arm,mhuv2: Allow for more RX
 interrupts
Content-Language: en-US
To:     Cristian Marussi <cristian.marussi@arm.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     sudeep.holla@arm.com, vincent.guittot@linaro.org,
        souvik.chakravarty@arm.com, nicola.mazzucato@arm.com,
        Tushar.Khandelwal@arm.com, viresh.kumar@linaro.org,
        jassisinghbrar@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230329153936.394911-1-cristian.marussi@arm.com>
 <20230329153936.394911-2-cristian.marussi@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329153936.394911-2-cristian.marussi@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2023 17:39, Cristian Marussi wrote:
> The ARM MHUv2 Receiver block can indeed support more interrupts, up to the
> maximum number of available channels, but anyway no more than the maximum
> number of supported interrupt for an AMBA device.

Subject: no spaces before colon.

> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: devicetree@vger.kernel.org



Best regards,
Krzysztof

