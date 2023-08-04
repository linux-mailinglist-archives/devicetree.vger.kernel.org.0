Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A363876FD7B
	for <lists+devicetree@lfdr.de>; Fri,  4 Aug 2023 11:37:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230137AbjHDJhp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Aug 2023 05:37:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbjHDJhb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Aug 2023 05:37:31 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 617CC49F8
        for <devicetree@vger.kernel.org>; Fri,  4 Aug 2023 02:37:30 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99c897d33ecso126622666b.3
        for <devicetree@vger.kernel.org>; Fri, 04 Aug 2023 02:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691141849; x=1691746649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ldSCG+6LPCN3GhOyLEkZnY6hjS6A7mk0dYNnbDmjePo=;
        b=pxcxlQSG4c0ekuugNe7J/VBx3DparTKH6aU2NfbMhCqFcu1uBMIOTmV36b5n9B2wXx
         2ic7wb6gh8C0XgnUv+8UTz7IsIYSPBpGKs2UNoZ4BFLq30a3KTegJDFRUjYOWDrIPL1v
         QSQPYzAaIhwXbszkJYxfEko+57sxV0k9boirQeBgjfOiGsiV4BOeLrF/nouftxnxr3Oy
         IUv9orhhnY3GAGY5M2HKWlO6RMIe6heyyId2ualfkchG1ophTPYDICGmdLKVNP4mzKYQ
         0JzL+U0a0z3sGT47CfoS6GtUuxy8YheAUk9ExEq/PjYor/eryYQ9RKX2bAfIWcCaK42Y
         9E2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691141849; x=1691746649;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ldSCG+6LPCN3GhOyLEkZnY6hjS6A7mk0dYNnbDmjePo=;
        b=SoAIer4xZjkbKMfebo7xBeb7ppimW0+fqNpSHdOMO+Pp+VMrZOOlFZ4EASHn6yLFCn
         vpvH/AucokRsdwhBJmN6SGNi+95oHy1jx2Hi0EjJkB3tcQIPAloPHI8DwyXE8CZQGTgW
         rUzeCDIzTExM8ZAkSneR2p0HCzRVI37FY1B0v8zcT4IvnRpnUDJWubOf8Z/tJ8y27PBK
         K7vt5Phi2TcHfjnJU5qEjPtKCn7FfH207yHSij5bwDLnU71Hps29KugadpSLWXJk31pU
         wlUc/sX9yJGtGz5m8R6egwF5Y68ndh75YMvU5XXBdZ9kEapqS8DG4qD7OQ6cgEYOHKp5
         J6vw==
X-Gm-Message-State: AOJu0YxfslsKyNGH6edf9atuzJTmTyfHyPmRV507YTQ9CjVGKi8a2cK8
        J/+t7V9LWaWZ/pMWTrUCkDX/jg==
X-Google-Smtp-Source: AGHT+IGvg/xMMV17wiJBz5ohTtX2f3abYbGt2Syqm1MyR5UOQm2AuKUvMAoVGZ1hdzgZzOZGhf00Pg==
X-Received: by 2002:a17:907:7888:b0:99b:7297:fbf5 with SMTP id ku8-20020a170907788800b0099b7297fbf5mr1124105ejc.61.1691141848923;
        Fri, 04 Aug 2023 02:37:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id z5-20020a170906434500b00977cad140a8sm1040821ejm.218.2023.08.04.02.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Aug 2023 02:37:28 -0700 (PDT)
Message-ID: <d0d7f1ef-4549-e563-e83e-6a6aab40eb38@linaro.org>
Date:   Fri, 4 Aug 2023 11:37:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add BigTreeTech
Content-Language: en-US
To:     Martin Botka <martin@biqu3d.com>, martin.botka1@gmail.com
Cc:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jamipkettunen@somainline.org>,
        Paul Bouchara <paul.bouchara@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Icenowy Zheng <uwu@icenowy.me>, Andrew Lunn <andrew@lunn.ch>,
        Ludwig Kormann <ludwig.kormann@ict42.de>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chris Morgan <macromorgan@hotmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org
References: <20230804090102.273029-1-martin@biqu3d.com>
 <C2CB4DF32C2C55DC+20230804090102.273029-2-martin@biqu3d.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <C2CB4DF32C2C55DC+20230804090102.273029-2-martin@biqu3d.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2023 11:00, Martin Botka wrote:
> From: Martin Botka <martin.botka@somainline.org>
> 
> BigTreeTech is a company based in Shenzhen that makes
> 3D printers and accessories.
> 
> Add prefix for it.
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

