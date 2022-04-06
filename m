Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75C024F663F
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238626AbiDFRHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:07:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238305AbiDFRHl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:07:41 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCEE1208C1C
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 07:44:19 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id n6so4678148ejc.13
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 07:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UNqM0LlACzUWebKPb32nAc46OxRJa6ogRvRpwiXpenY=;
        b=whpZ3f6EBitVqq0rstJxB66VMYokK6P1XsHnHCPNRzkc24btGAatngLwzN3FrEmk+X
         nXT4tCx7EzcaMXTxngfAU80wkPN1yAVsJZzSkSehSs2BXtRZcANCt6m93GX/BihIB+RY
         V7oYXx4CRRS7J6miGCAMWSNwRF8g+2l++6BEPLe7nzBKUOC+V2vfMI/s7CSmVp/9jdHg
         2/Olc5oty19Vow4Sg9OXhlXGsSwaVffLD3aYy1+qWIQMaUVmQfNqM4kQlZSdQ670kpqP
         vXJHa0sJFTiCf0/nKh9/Le5EEfDWZiiBQuOkp6OsMtfLFinyDWYCxFlQdT5cQN3FFnwh
         nmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UNqM0LlACzUWebKPb32nAc46OxRJa6ogRvRpwiXpenY=;
        b=mTtAdtLUPnsbuzTMjzxopTva7EBGiPrC0Ex5ndphRvdfZ/2wjyLNfkHJ4ItYG/8Phc
         9GCFMf1GNNRIx6x91fFARVHdIgiCPyWtd1AtD93MQA2RwXcnpEAatAuirOFn4Ht+tgwP
         jkC8sF+BN+742L6V9zBJMNNyEXt1Z8ptlEKOl2cVaGPL7TBYsO+TeaYzyiP/yIpSReTW
         lfJeZg3xdUc+2dK7dQvPBBmty6LnP5quYMam2xiZop4gz9yB/jH+MRwFkYFR0G97N41m
         tFYVq2WU8luszw8PLaDlyzwmbw+pidYdUKXtRobLFy3NLWDKGmQye30IfxvAarqTL+dY
         gDRg==
X-Gm-Message-State: AOAM532WXXlJMQFJUkVtMjL6zaxjLJxKhoH01jOQpnWMT+cw7pp6DU9z
        j4xAxnESs3A1fNWXHQt+7HATzQ==
X-Google-Smtp-Source: ABdhPJweVGzt2UYsW0wgC1QYNfzk/buFhSRGS7vEy/Lzgm2Wxo+7xzpzsQtReauuNt8ndDaCKGNT3A==
X-Received: by 2002:a17:907:3d93:b0:6e7:4d22:75c8 with SMTP id he19-20020a1709073d9300b006e74d2275c8mr8656814ejc.330.1649256258352;
        Wed, 06 Apr 2022 07:44:18 -0700 (PDT)
Received: from [192.168.0.185] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id h30-20020a056402095e00b00412b81dd96esm7858108edz.29.2022.04.06.07.44.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 07:44:17 -0700 (PDT)
Message-ID: <397e30c2-18c3-93d6-16f5-b113be77f51a@linaro.org>
Date:   Wed, 6 Apr 2022 16:44:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] dt-bindings: display: mediatek: Correct disp_aal
 binding for MT8183
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@linux.ie,
        yongqiang.niu@mediatek.com, jason-jh.lin@mediatek.com,
        nancy.lin@mediatek.com, allen-kh.cheng@mediatek.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220406094654.29722-1-rex-bc.chen@mediatek.com>
 <20220406094654.29722-2-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220406094654.29722-2-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2022 11:46, Rex-BC Chen wrote:
> The driver data of MT8183 and MT8173 are different.
> The value of has_gamma for MT8173 is true while the value of MT8183 is
> false. Therefore, the compatible of disp_aal for MT8183 is not suitable
> for the compatible for MT8173.

Just because one feature is not supported, it does not mean they are
incompatible, which you claim in the patch below. Are you sure they are
really incompatible and MT8173 fallback cannot be used?


Best regards,
Krzysztof
