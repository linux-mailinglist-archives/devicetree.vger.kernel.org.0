Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D3AA582437
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 12:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229698AbiG0K0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 06:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiG0K0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 06:26:23 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2DC2118
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:26:22 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id d17so24375890lfa.12
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=K04i3J9QKasLVBVCxLEb/1ZPje207syI142n4RiLLx4=;
        b=apyyy1Uz5oB0j3rdRFaB+GtFHqttB0ZsK0QRaYKkflr6f90+2uKYeKbTFH4OX80TyC
         0wb4sADGXRC/cD6S8FWY3ljlX6OnY0iPxRfVEDoYfqXaMLwNMhS8dFY5yBSIPrKSQIjM
         2D1Urr/e2D9l7xYBxpLtMzXuoTz7lBBR87/4Mx7skUQtH4zYlbTaUtfM1ZCU+h8gbcGn
         i9b/LeQ038L/NQGMQl2guVEq24SR+SETm6bqMuM/8sSV/4XKhdNysNHHSOIBQ1bHuFJi
         Y9qjiKFyj+OT3wRyJ8o8MgEgqWU9V5X9cQUyP12JEFd1q5WbotbJcleh4EFN2Jf4PRZa
         /3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=K04i3J9QKasLVBVCxLEb/1ZPje207syI142n4RiLLx4=;
        b=cKzd+ZmYA7s8vOQS6iHc6kHdH+aMEf5CgCAdBggw3q3EUJyNsgCsHnlU1XwCGgOuZn
         jEqc6XkiOorJ9n5THP4WC4lQp1RX8zjXhon2ugGI8xYLI3bnFo9/wiLumw5bU/EiyWc1
         bhX/Gu4YGokotoR+m4O6/ECIGwqyd4OYjOyGkP1bB+e0sHAy2G+b/g1WGomsm3OGO4Hz
         gPAuQmy5oF3LLX4f5ujZMMOPsO8F6Shv6T+sWzLV+5mqAcw1D6WqxW5mCl1XudJ9A6lx
         GLeKikjcNZYTY7bBIzMrGew20Lg2xOLb40oN5xqDaiNU+bCTFoMn8K9/gqeSAxK/HJc1
         f37g==
X-Gm-Message-State: AJIora8Ne+dwpbByhU7Hpme5zWs9TlVlreL0qdFE9dh1g1kFdwIRCX6u
        vUlKkrspy6Wrsyd2UMX8H+X1qg==
X-Google-Smtp-Source: AGRyM1ub6aWYl88ATON1HqYQTnyfdKRKpDm+LE6MAHOZrjagndoPzh3zBhysAkmu6+tSJjT33WerxA==
X-Received: by 2002:a05:6512:34c6:b0:48a:8464:cc53 with SMTP id w6-20020a05651234c600b0048a8464cc53mr6866460lfr.275.1658917580917;
        Wed, 27 Jul 2022 03:26:20 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t16-20020a19dc10000000b00478a8b7ab1csm3697977lfg.150.2022.07.27.03.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 03:26:20 -0700 (PDT)
Message-ID: <87b3ccac-ebde-1a7f-d48b-571a6f925ea2@linaro.org>
Date:   Wed, 27 Jul 2022 12:26:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: soc: mediatek: pwrap: add compatible for
 mt8188
Content-Language: en-US
To:     Sen Chu <sen.chu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Hui Liu <hui.liu@mediatek.com>
References: <20220726104242.24839-1-sen.chu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726104242.24839-1-sen.chu@mediatek.com>
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

On 26/07/2022 12:42, Sen Chu wrote:
> Add dt-binding documentation of pwrap for Mediatek MT8188
> 
> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
