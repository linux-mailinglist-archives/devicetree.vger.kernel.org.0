Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA69A5F5085
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 09:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230048AbiJEH7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 03:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbiJEH64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 03:58:56 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C249D75CD6
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 00:58:29 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bu25so24446548lfb.3
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 00:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KUsLX/hWASy12r6kYppLjzYWaxoDQvN3XOBwDMKiNOs=;
        b=XoO3jDPWWS4/Pndkc6qxbPbxflHYBqq8Xtdl+9T3JA7WXPzxf9Xr8qAN3L+ExOlG6l
         vB2OJB7h6jxQXiZwug0EhespStT9RcAFVPOKOGo6QT7v7LKes9sqjaSRzxKd3f2jq2DF
         L8wiBEpFJaztuO8faVSGNcev5Rb5rz0WmPia5PoyqXOjHsAitcLCex+Qu5XQo2yH+GvA
         vIN53mRFYyJ3mmdEhh0SbMQ0avzgdPLiMPl4LgPLrLmmP1GmJkoa8Z5lUKE76VtVEtKx
         4yEWuy0QrUpdTCHB2F6I4Wh/As+oj8ZlWkEEg49sXfzQwzSeBoHYmjpJuHUnyVRMaouD
         nngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KUsLX/hWASy12r6kYppLjzYWaxoDQvN3XOBwDMKiNOs=;
        b=cMRRIR5dHmQSjxSubzmuKIGYjgY8tbDRkHvNVlwvdhJdjNk8tfG/RHKOpdeQCJPTxI
         Ofy8mXSbzwNZPTeqqOHkqgW6jxVe7VqPKqr7rXOONRXiZDwHDA3WF27r128NlmFqBcSK
         JtBZML2X7hWar6zwCYrOsIQrl/5NA44TeQd0BbJGiYw9R/Iozz7JLZH+I5sRLPzxyvcD
         MqUFi169HCdO92mkSjl7l8shXQ/pDvnto62zih1lWiQKeyiKUkCPe7FB8IJ9pR2R2NHN
         rOw4qwH3NSCMsFr6DSYnUkXd9444TD+iHlJ9hr8ejfkhTgUpb/ynB0T0OK0VIIozScnP
         J9fQ==
X-Gm-Message-State: ACrzQf36A/2TucUEmoUVdo/yoTWp0c6ZTHSya4jw5L+9XwOkbZSKfsVG
        ZWPnkdTNAdrivr7/xMIRJB2bcw==
X-Google-Smtp-Source: AMsMyM4+3dxfgnnUtl02AminNqeaOjFbPBjmac3Mhxv8glQtFW/MU/jdxOlIiFf6p4bAoKKNG5KGpQ==
X-Received: by 2002:ac2:4d28:0:b0:4a2:40ef:2996 with SMTP id h8-20020ac24d28000000b004a240ef2996mr4025845lfk.425.1664956708094;
        Wed, 05 Oct 2022 00:58:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 13-20020a05651c128d00b0026befa96249sm1527520ljc.8.2022.10.05.00.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Oct 2022 00:58:27 -0700 (PDT)
Message-ID: <c352896a-0e12-a946-d018-764fa0f2a95d@linaro.org>
Date:   Wed, 5 Oct 2022 09:58:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1 1/6] dt-bindings: soc: mediatek: Add support for MT8195
 VPPSYS
Content-Language: en-US
To:     Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
References: <20221004093319.5069-1-moudy.ho@mediatek.com>
 <20221004093319.5069-2-moudy.ho@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221004093319.5069-2-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2022 11:33, Moudy Ho wrote:
> From: "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
> 
> Add compatible for MT8195 VPPSYS.
> 
> Signed-off-by: Roy-CW.Yeh <roy-cw.yeh@mediatek.com>

Missing SoB.

Best regards,
Krzysztof

