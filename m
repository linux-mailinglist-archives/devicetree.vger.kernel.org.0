Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F6FE572824
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 23:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231556AbiGLVAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 17:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231402AbiGLU76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 16:59:58 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED77BDABB1
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 13:56:21 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id d12so15924424lfq.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 13:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YgBYNn+dLO9x1C2fv3ECp5e++kFJbCjS3x6FIeCOgbo=;
        b=AA18rI+xRZH8fFc9NwZ5Tkdma1ADKleRvPH6mq43IMurnX6DdAgoRZdOlVPOZZoI9F
         cEGlBGOVLV3xTKR3+9Qi9pTV3nuzqmWIgehIgadhju9U6iNnkEOLoFA9+YtrxcUQ7zcN
         seAk/p4WlrsWhQ4ZX2ojOhLlSUvkRHCpnt5uhtNly2tSy0zLcl4sHZyDxJTtz0wT4hsU
         jxdN6WSavnU3f8lVznU/CAQJnZaRBWsBHDYkGZY+Q+EJ1O1gOBtZryG/OQwWWmyacjwZ
         iI2Aej+OJAGC1Gb/ICWaABipCarj9oHEd2gFAzyPPO3EnFO3nYOGqubj3CQ/8Qjen+1V
         dRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YgBYNn+dLO9x1C2fv3ECp5e++kFJbCjS3x6FIeCOgbo=;
        b=vOvK8BnMiG91CuKxKtdZ5qUtlOt4LatodruWu9snKNTIwkHulVdia49xy2IRNSkH3G
         LAFOuIUFr6Q2ZSOHiviQZnN3LQFyZ7+HhcprmqrjfmMro6xWbpY/4iBRy77UaHmly8/q
         avGot8OqzYe0IDU6oZ13cxkPB8WrVR8/9qZMPE4NwIU8vMv2hK134itlYwKYg5ZAs8cQ
         66AaHjhUUns9inpQhdpKhC88mcdDqMrvkBIYDH/q0gHLD1jaAmJ9v3N893X9XJE/bJBC
         RnR6aD+sMGkBhWHXb6rol+P/v9i40w3d5gdSWc5+91p4mzmyS6egUSNUBVK5ZvwU8gbw
         pT+w==
X-Gm-Message-State: AJIora/NGm1JeNHkQG+lq6+r5B/hgPbbvrw5qFudrXNaHi9igASS5orp
        lMHL+VigEBsBYD2PiZ6qoymOaw==
X-Google-Smtp-Source: AGRyM1sG/T2N93eSB4iInih+BsU7rJW1wVFX3NxCWlW3jWQQS3uYELLmnljugBRT0pgaQGzB28uBRQ==
X-Received: by 2002:a05:6512:a96:b0:485:6bfa:e346 with SMTP id m22-20020a0565120a9600b004856bfae346mr16436787lfu.52.1657659368575;
        Tue, 12 Jul 2022 13:56:08 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id t21-20020a192d55000000b0047f65b60323sm2381317lft.3.2022.07.12.13.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 13:56:07 -0700 (PDT)
Message-ID: <74ccd18c-7b30-34c2-c295-0efd1a966f47@linaro.org>
Date:   Tue, 12 Jul 2022 22:56:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: mfd: stm32-timers: Move fixed string node
 names under 'properties'
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Lee Jones <lee.jones@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220706211934.567432-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706211934.567432-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 23:19, Rob Herring wrote:
> Fixed string node names should be under 'properties' rather than
> 'patternProperties'. Additionally, without beginning and end of line
> anchors, any prefix or suffix is allowed on the specified node name.
> 
> Move the stm32 timers 'counter' and 'timer' nodes to the 'properties'
> section.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
