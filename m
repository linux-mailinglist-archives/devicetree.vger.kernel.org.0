Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D346E588788
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 08:44:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236378AbiHCGoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 02:44:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235211AbiHCGoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 02:44:16 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22FC3C14D
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 23:44:15 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id y23so7577888ljh.12
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 23:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=6wCmqftL2YTJwRl3uJo2czdhPZEtp4fKlSDbfT0Ewd4=;
        b=S8AR7bEDgG1TRfKJbCDVv5Q3tJj6UuB0l62JQgl61dfaQ2IfMXCzzbiYMIt3cQQgXc
         wX0QRZXawZXgX4Z7IKoSjE0jCNzRplDDUEa4D5adMdvWwoGcgCGS7z4WBh8RqQouDP07
         IEzzNAv6bD/VXMZZULSeI3KZ6zI++uWfpyR1iXqUgfTUw+gGCJlo1fhWIbEKlBXIS35z
         v7DBBDohOCJ2VBhoMLNA5XwNYaSpYiTWrPkDfnNbOhqtSl0IDIwrimONgp4szk5qwK78
         nZVSStgWoyI9flFyLbDjGMXrXkMihmAPHFGJNpOJsrdaTQVk8ah9mNYawe4FZsJVLTWv
         Tu9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6wCmqftL2YTJwRl3uJo2czdhPZEtp4fKlSDbfT0Ewd4=;
        b=XufxmG7BZj5e2K9lNvPUWou1TI5epoJHrL1NO2z44Efedi85qSoJIrbM82isMD9gG8
         E6iMsIay1qYSzpi6x8eD3vNM83hvi10aVRr3zP9IdgHlOtgqf3Tdvg0uFVxV4+hI1pZ5
         MqIpT0sLIlibV7rEDD9PCyRhbILyHI7VpPrwaKQgVpiIhAsVeEpcdnS3FIA7bolheO01
         ckGUibEMDdMgzS+ru/o3EsOFF9mF98igvrwYUhGgm+If57rb86rzKHTEW0y5xSo2Mq8n
         kZSz5TBqXe6UnLub2nQ791pnrUU5h7p1HfYvzfqdz8gl3j+XVdup7uxdf1WilzxYkKhp
         wbow==
X-Gm-Message-State: AJIora8JSKjEYV9yagQMf/f4DdY3I4dNTewqRDfrTawvAkjazhtz7MhD
        +KVjzhW/CcOff+OlDsPUKC++kg==
X-Google-Smtp-Source: AGRyM1s44i0wbnt6DAfjwwwQh9ZAYD+9dDBin5vOqQvN7GRthJFgT71RyENzL2QFCogHHWjE748DUA==
X-Received: by 2002:a2e:bf14:0:b0:255:b789:576b with SMTP id c20-20020a2ebf14000000b00255b789576bmr7850928ljr.47.1659509054089;
        Tue, 02 Aug 2022 23:44:14 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id c14-20020a2e9d8e000000b0025e5b5474a4sm546137ljj.85.2022.08.02.23.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 23:44:13 -0700 (PDT)
Message-ID: <5c14e959-10cc-5520-e88f-b47a195b99e9@linaro.org>
Date:   Wed, 3 Aug 2022 08:44:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4] dt-bindings: PCI: mediatek-gen3: Add support for
 MT8188 and MT8195
Content-Language: en-US
To:     Jianjun Wang <jianjun.wang@mediatek.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Ryder Lee <ryder.lee@mediatek.com>, Rex-BC.Chen@mediatek.com,
        TingHan.Shen@mediatek.com, Liju-clr.Chen@mediatek.com,
        Jian.Yang@mediatek.com
References: <20220802120624.19258-1-jianjun.wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220802120624.19258-1-jianjun.wang@mediatek.com>
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

On 02/08/2022 14:06, Jianjun Wang wrote:
> MT8188 and MT8195 are ARM platform SoCs with the same PCIe IP as MT8192.
> 
> Also add new clock name "peri_mem" since the MT8188 and MT8195 use clock
> "peri_mem" instead of "top_133m".
> 
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
> Changes in v4:
> Remove "items" for "mediatek,mt8192-pcie" since it only have one item.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
