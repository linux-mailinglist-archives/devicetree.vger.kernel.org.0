Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3142D57BCB5
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 19:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbiGTRdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 13:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiGTRcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 13:32:54 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CDAD61D8C
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:32:53 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id bf9so31355794lfb.13
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 10:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GcNBK7YfKlN5L7E979o1SuVA3j9sFZjXk0q59JTAE0Y=;
        b=vTNsdywBo8SiezHq39d4MnSeL9RUzWS1d8tMBIYeJe001MMi+Pfnvmut9IFwSAtnN3
         fGyIN4s7PcC/f8EsnaeMS1xkZaz7UKZrqieviSAqqqh8sb1NOWx6I3+L0Hg7XRlBlVj0
         1EqUUBDqg1nn1lAH8A5uAqds6Xkz8s5NRfX/MiWSGoIJ46qXJNNoT4J1iD5w43lTie+5
         Efwe983Fi72oOGbMmZ7cpWuPBDt3gOR1v1OEz5y/0ccoLaKInzUF4DkPbDDP+UpPiSOF
         MeIEct+0P2goheEhfJJAJaH6CCnH86nKorzu/Phu0LDooAQXOFY3GXM8ZR88ss54PAKP
         c9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GcNBK7YfKlN5L7E979o1SuVA3j9sFZjXk0q59JTAE0Y=;
        b=bTe2qYjfmk7HX1hMvGdQH7cRexpqrA79gvpBsd//RjCEyxcMd4lkptcMTztjBqfQGg
         QWSumZJ6cwRHY8m54ptZ5Pac1zQI1TY2nAyjAIb9d+poYC2CvqA6Lf2aG6nWA9P9yfup
         oDXu7aPGG97FRD0SEMQgbebwDuq+COD199zgBY+5DBZoZ4STMCk87Zqwl26mGqdNCJum
         SRZZAQJyilAjYk6oPUJPtVbb4Ue+Oqxg9gPfkX38Id7Y2+D+lemJVEmWQ7Z7Yk5HwpKv
         w8Ildnauv8DQ+UAgQjlc+TJOPYZPx99hIEaCoR2fn4N4ZyojzkIssNh+PhTOuURMOWu0
         HmeQ==
X-Gm-Message-State: AJIora8ppECdk7W821rEw+Oghj51+mQertIAjWT9pnOjdxTna8aGj8k5
        gpXWJLRe+CqBBwQOCbELuLjM8g==
X-Google-Smtp-Source: AGRyM1vjhyD+PuVuOucmn/VLbxuPWiERqLYolpXPQm2ecA3hiaYSGUjH7QjRWdaV7kAA5xwQD+EL7A==
X-Received: by 2002:a05:6512:1312:b0:47f:7bd3:1427 with SMTP id x18-20020a056512131200b0047f7bd31427mr19135756lfu.128.1658338371434;
        Wed, 20 Jul 2022 10:32:51 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id b12-20020a056512304c00b0047fac765f39sm3906980lfb.219.2022.07.20.10.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 10:32:50 -0700 (PDT)
Message-ID: <5daec4cf-172b-88cd-fbc5-586dceb93d4e@linaro.org>
Date:   Wed, 20 Jul 2022 19:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 04/21] dt-bindings: power: mediatek: Support naming
 power controller node with unit address
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
 <20220720123023.13500-5-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720123023.13500-5-tinghan.shen@mediatek.com>
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
> Support naming power controller node with unit address, also compatible
> with node names without unit address.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
