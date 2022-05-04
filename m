Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03F1751974D
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 08:23:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344876AbiEDG0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 02:26:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344865AbiEDG0g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 02:26:36 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE4C192A3
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 23:23:01 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id g23so547752edy.13
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 23:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/ICd+RLy/KAw7d3EVe6ay1LDqzY/81IaixYgq9AcSbY=;
        b=rpwOrbkET0kIgwT7jgjkT9abeD7MXV7F16sWCFY0XYvqrnO9XNOO9/DhkjGKo5fEC8
         LQVGsydxJeUsHsjGtYloSsO5mOjhiWjLOVsbTG1TaixjN+bAoacL2iw/GxBj0zkBodx4
         vLA3Gp05nHYroPmKMrYUDf/Nh0BvwS9USecPBZLzVJNf+qSRjLPvxsitLcIao/AyGxT4
         fXJ9HGJKtPlmfBh31lgK0Vrzphy55k/UPpusjkV28x0tlBwd+8/woFCDU6lsFOjHjx7D
         rcX8BYTVfgpq1QmhxC401z58fYWnlv2HQ112BoTHSgFA6fNMgw+zWPgMxqcMKXF/EE+5
         2bjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/ICd+RLy/KAw7d3EVe6ay1LDqzY/81IaixYgq9AcSbY=;
        b=krwSDia02IIk3dn+9aqG/ItDdnh1/A/uktuc29Jg8cttPzKaTokVmGgldYzjlB4R2W
         TXTSMs+FG9NhuQnNx++wOKE+KVIhL+gZc169NKle+WwtVcesa9TnsBrPiI/BNujn5knA
         2WFlEmXK8ayp68iB4H1D4EnKcd6eAHL54Q7xtMQ9CCulxjMBJfBAYZD0vHGX1pAJLDq1
         Ak0katTFaGNPw4a22e4SgbXKAKFXFuXXcRvnxW6XTi0bZjPXcOu4d8YAOI1uya/LZsYQ
         8qxqpROycF//ONg9qaMEQ/ofdPIkWC+fL/c2T09pbAG8YfhsI1bA07gGEBbLVtKXwtbA
         cZtQ==
X-Gm-Message-State: AOAM531q6FjGendzIcujbCiHVNoCUnrXYbUVpxhMHNbF+yQLYJP8NsP8
        MMiC4t+qq2tX+akPhz9NUvniYw==
X-Google-Smtp-Source: ABdhPJxFJJFSk1xLxRDDUo6zVnxtiMbpr2Qusve+SaBXHlAci0YLKutD2xiWzzJnWIPhl2fkSQ8riA==
X-Received: by 2002:a05:6402:154:b0:423:dba8:c7fc with SMTP id s20-20020a056402015400b00423dba8c7fcmr21473341edu.346.1651645379646;
        Tue, 03 May 2022 23:22:59 -0700 (PDT)
Received: from [192.168.0.207] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gz25-20020a170907a05900b006f3ef214e63sm5351504ejc.201.2022.05.03.23.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 23:22:59 -0700 (PDT)
Message-ID: <a86ead7c-4bea-c4f3-b53f-38fa33e74942@linaro.org>
Date:   Wed, 4 May 2022 08:22:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: mediatek: Fix optional
 reg-names for mtk,scp
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-remoteproc@vger.kernel.org
References: <20220429211111.2214119-1-nfraprado@collabora.com>
 <20220429211111.2214119-2-nfraprado@collabora.com>
 <a95fc4a9-af6b-e2c2-ef41-df9742d393de@linaro.org>
 <4bf2343b-3760-6ebf-7463-0b25fe9d942e@collabora.com>
 <20220503204125.a4xwd7a5e3fxf7et@notapiano>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503204125.a4xwd7a5e3fxf7et@notapiano>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 22:41, Nícolas F. R. A. Prado wrote:
> 
> This was also supposed to fix the warning for mt8192, where the order is
> different: "sram", "l1tcm", "cfg". But since Krzysztof said that we want a fixed
> order, then the mt8192 DT will need to be updated.

Yes, please update DTS.


Best regards,
Krzysztof
