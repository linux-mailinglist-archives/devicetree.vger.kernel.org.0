Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 789995621F8
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 20:26:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236168AbiF3S0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 14:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232034AbiF3S0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 14:26:43 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8718427C3
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:26:42 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id k20so6278090edj.13
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3PuKRPSh/SF/mxBY/1za++HjaAyQMFu7x1JJ22qYOXM=;
        b=zZ/EeN3zeXi31IHT5fF4r2wtXa+gLWo3QARAfliuQE71n85cUS0mgowsaA2Lx9y2dK
         TgBc4uy7pjBVI5uhshS19E1fb4q7L9ekQ+H21QOe48C5owjGSHhN4VwxCd/Ke5ONnWlv
         cb1FeTYiL/QyieURcBAuVP/w4hXbtgy0DFqNyMFS+FOXZW/wpLXBSjlMzVV0Yfzrnpnx
         DgjRrZ+i5VQYuHztLw94rBdVaeUNSMqfw2PaEecSFrkamhdxzetr9gFBOMC4veCWUAGQ
         SnzBN9CFBxu9XNAkYnDIqVzrWgy2pIL5FaM0S3zr7UdVdmpPccJnvaNxxRGIXOvH/+dg
         iYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3PuKRPSh/SF/mxBY/1za++HjaAyQMFu7x1JJ22qYOXM=;
        b=4d++/YkjRH+bult4S31+isyK3LiMabw+qnJWD3IsZc2aIa/cz+AQDQudias+gDlJgK
         /WoCjV2xYTE1gNWXlXrJvk+4UU6XyIpI6+D5wY8EIAwFZw4+6/pDx/8QFynEOjsXFYVs
         EWzE0JrFr1lG5cNgP59ebTi4pFgC2eQKzLDPCdoEfLw+tlG9jOgb0s6uLqaR0pMCFH5e
         ld2K3M8ieBEDTM8pPWf/qiO4mtMnOro+XT8W2jhIgT3SUhObgdh/qw5wON1kebN1qJ6Y
         /qb9kjXLfrdWo6a6Beum13Hlc1d4DptpABw4TMusXnUAiOlcJ+EHldSGZtU/s472iXf4
         HbWA==
X-Gm-Message-State: AJIora+yee+kN++EUtuDFnmWwSROGBxvgOT2nemudHi5whqQPQtqIVZE
        QrwfkAbjh7dAGO21rKBPT+9f+w==
X-Google-Smtp-Source: AGRyM1vxpcdirC6ssqEpjBo44u4Nv5ptVnTjPfoVH9pTB1R4a19Izads/YPO52H2pW4Q+/RBj4t5Og==
X-Received: by 2002:a05:6402:3514:b0:435:f24a:fbad with SMTP id b20-20020a056402351400b00435f24afbadmr12919908edd.311.1656613601340;
        Thu, 30 Jun 2022 11:26:41 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d10-20020a17090648ca00b0070b8a467c82sm9378218ejt.22.2022.06.30.11.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 11:26:40 -0700 (PDT)
Message-ID: <86504cd3-71ae-32df-0772-e246ff5bd6fa@linaro.org>
Date:   Thu, 30 Jun 2022 20:26:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 01/11] dt-bindings: arm: mediatek: Add MT8195 Cherry
 Tomato Chromebooks
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        hsinyi@chromium.org, nfraprado@collabora.com,
        allen-kh.cheng@mediatek.com, gtk3@inbox.ru, luca@z3ntu.xyz,
        sam.shih@mediatek.com, sean.wang@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, wenst@chromium.org
References: <20220630153316.308767-1-angelogioacchino.delregno@collabora.com>
 <20220630153316.308767-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630153316.308767-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 17:33, AngeloGioacchino Del Regno wrote:
> Document board compatibles for the MT8195 Cherry platform's
> Tomato Chromebooks, at the time of writing composed of four
> revisions (r0, r1, r2, r3-r4).
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
