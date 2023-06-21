Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68F33737B76
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 08:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbjFUGhS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 02:37:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230448AbjFUGgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 02:36:52 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D9B19A9
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:36:03 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5193c97ecbbso5784447a12.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687329361; x=1689921361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jRlpT2ZjWTZf4vObyFscyBSIYEr3x4f8eXN+TysCtu0=;
        b=cMmml8S0CDrUJhGDifxZHXNNnhIohUi89oWNnyN4IIRT7g/UlHSkf0iNT6/Yx5pJir
         KmuOC3KNhPnyQ9sA9iYvkK2CKnTtO7qKGB960SCmxgQRlwLrum3ihQfnCSmsLzCuLIKV
         Jud/es3W7zIvurh7lMN/77iGlNxQHFYplci+gm/gmCOPUHhmHlihnO7gUiP6xFSgXBEm
         kcrH8jnsMu0BNkB9B+XsI1ILnYo7T66nCBZPZf21KMHc/qrHeoYnsPiA39wMqwqNf+Vo
         Ctyva+cN+AuwGng33JaHSPpLClvTwMFjsrqqTcgMp9QqN34QZYb2Je+qARKNLGBh+tAJ
         6YQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687329361; x=1689921361;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jRlpT2ZjWTZf4vObyFscyBSIYEr3x4f8eXN+TysCtu0=;
        b=ZVqBElzsfXgO4BiUr1D9p5ibr5DwGdB1LocwX3QIjQtELxSQiXMSxpgD9I0ou+7XAS
         3nUWkQVjEUs/3KVLSVSqPUs0Q6njlhz/tbEPQz+x84bTuV+n2OvNXDCpuXAvNi+twb3K
         nCXtM3vBOPdmwNhS44qyYnhhQ9+sxO+5NkPD0TNWVPFPWoGdLYWq3VEWGgYSPl4f8ymq
         bT8dFGUGABGs19TfTOBBtMPXeq3fK8HtfK1WoPY4TwqjREtbvtgxAdvrAvbsckVeI5K9
         HwWDXnJOfteCO+FLpbEtFuW1Eim+8jSfU5DsLJUCZ3hee2sUPIfDP/SRYkRQNYN0ZSxk
         ajEA==
X-Gm-Message-State: AC+VfDxQ/xrCYRwxJbgnaPol2SLzkzd0xv8lLh+BaxvXsDFwZcc/9PaX
        AER+bHf7rks7sEeo64OguQ1u9w==
X-Google-Smtp-Source: ACHHUZ6xWHPDs4cTYGHF/JSBAq092fD4iL8GXH9ODBCLlPbn7CwSyTwWempgEaV0BTZJ3X+E6jaZbg==
X-Received: by 2002:a50:e604:0:b0:51a:2167:6a70 with SMTP id y4-20020a50e604000000b0051a21676a70mr9219479edm.12.1687329361483;
        Tue, 20 Jun 2023 23:36:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i13-20020a170906090d00b00977d3fb2a7dsm2549992ejd.76.2023.06.20.23.35.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 23:36:00 -0700 (PDT)
Message-ID: <8f393aa5-2102-1d5d-0ac2-38e87c056b6d@linaro.org>
Date:   Wed, 21 Jun 2023 08:35:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 06/14] dt-bindings: reset: mt8188: Add VDOSYS reset
 control bits
Content-Language: en-US
To:     Hsiao Chien Sung <shawn.sung@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Singo Chang <singo.chang@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Jason-JH Lin <jason-jh.lin@mediatek.com>
References: <20230621031938.5884-1-shawn.sung@mediatek.com>
 <20230621031938.5884-7-shawn.sung@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230621031938.5884-7-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 05:19, Hsiao Chien Sung wrote:
> Add MT8188 VDOSYS0 and VDOSYS1 reset control bits.
> 
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

