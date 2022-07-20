Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1304D57BCAC
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 19:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbiGTRa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 13:30:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233066AbiGTRa7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 13:30:59 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 474415F123
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:30:57 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id y11so31426675lfs.6
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Dwu2BBEoj83lpS1r4JEpS+Hk0CrDCwjPWdyJ+RX619Q=;
        b=oYKI3U2GMEZIb5MUnj7eH4PFisbUGppSiFnnwksNQxqDoY4TfY57IpuwuuJGPK5cU+
         nM5c/h8JCEc1UX2T5D81mlXreJwA3KeuB4qwmmIyfvwUTTCC81FR3bjNiXB9s5gRKKMw
         oxjCtU4UZinS8ivcXmPCGiK99rHUO7QSU7HmkASt75ASN8UjVPqbCO/OAx1pbUg3Hkgb
         3u+fwtEKcZS/mughwSBv/mQm1ZGe2V7h3K0Ih9kgEgLoILx9XPyiHJCctn9wbee2GHM9
         Vl5fVQLE/cYvifMviioAlWLmFL6jNxsUC10FM01mPK+gVgpqZpIV5WRJauiDNT+VtBcH
         /FwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Dwu2BBEoj83lpS1r4JEpS+Hk0CrDCwjPWdyJ+RX619Q=;
        b=eXUYB41C1YdFBZ12tuA891w78vYy32Ms8FxzpKSS9SRpxoQ1pk2ViR+itVSAvUZIcw
         kZLve6MOqC8C2UHs9HD3hdZi0kcGGBxpBAx7KFeOk8KDIrfUWLn7qdcLftRCN/X9ieVl
         RYk5nnkAxNBS5HXWWQ3q5zHFpARf8n3ZTo4+glgSxcidtMDhJU2k3RWhSxNmzRIbLgy0
         CEh/GS1SCRtnBZTuSA/rAVLedgToIuhbuXeU4at2dI50APH80eaVC3Bo7GVv8RfbxFJu
         F3Aza9gi2SQZhTFWAfzO+stDoATFFANOEUWyxft7645KeAE+YX+TZrtqK8ueHF29RrYO
         V5nA==
X-Gm-Message-State: AJIora8kz4GMTqDQ3CIkVGRaoRV2xONKCqhJqFSYaYo156/IqtmpIH6d
        lXy/zKFKw57TKyKfHpdrDUfCdA==
X-Google-Smtp-Source: AGRyM1svWBEnGoxfLgU/6XFYVxOvNlxfpkdOiQlU7cmJ6EexAMbAtjNzrJyianqFjVG2WYo/svPhmQ==
X-Received: by 2002:a05:6512:2094:b0:48a:581:f2e6 with SMTP id t20-20020a056512209400b0048a0581f2e6mr21907111lfr.379.1658338255557;
        Wed, 20 Jul 2022 10:30:55 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id k1-20020a195601000000b0047f7b641951sm3919079lfb.272.2022.07.20.10.30.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 10:30:55 -0700 (PDT)
Message-ID: <bd22ee5e-7b51-9a5c-2108-664261c2028d@linaro.org>
Date:   Wed, 20 Jul 2022 19:30:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 01/21] dt-bindings: iommu: mediatek: Increase max
 interrupt number
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220720123023.13500-1-tinghan.shen@mediatek.com>
 <20220720123023.13500-2-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720123023.13500-2-tinghan.shen@mediatek.com>
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

On 20/07/2022 14:30, Tinghan Shen wrote:
> mt8195 infra iommu uses 5 interrupts.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
