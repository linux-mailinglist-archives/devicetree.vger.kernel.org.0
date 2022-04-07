Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5CC4F82B0
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 17:21:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344555AbiDGPXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 11:23:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344552AbiDGPXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 11:23:24 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80E681FB536
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 08:21:23 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id r10so6829062eda.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 08:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WrflAjleUvotKO6ONszyHWgkRAJT1uadUqHg4VfzFzw=;
        b=ToNWt1yjm4njDg28WkBmwydHhMb541dvaQNQm/KL/cpKnfBRg6JWbY/rX8tn9HeDVZ
         JQi/QRYWOH7cb7EF8CrtWZS7j2bg6kYik82SJqZa4gRnATt4ag7QdG0o+5AwrRmvwDaQ
         e9Kowb7F+hf8ve+dE2EQHxPvEoCLy40ZEnun26C4ZXBXAEQUK95H8DB/xWu7cHbFNNH0
         D03DbnfwyQ/vDQ31m1ijbaJaqYZrIAvJrJse+ITTxqO2P4aTk9Yl0GfSJUgebiCHV0fq
         NHuWYj6CiLEyQOc7ST62qk5HmqdceF9ExmnZDK9OASV30dfkoRaoK7R0yFS5X4E8mhZT
         lVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WrflAjleUvotKO6ONszyHWgkRAJT1uadUqHg4VfzFzw=;
        b=c4aqANhHmlv0MIACtXkFajB56d2+FWL+FbfOpt07qX1wkJMGwKu6c+mNSybivThLD7
         7/TCctMwngMQOUT7MFSk2Ti+x+OXWe5oD4iqs3lpfAOz3UzQ/oAu5GR0AXSVb5odrBpd
         4SFKgLpE2SLGZ7DznKS6rSnxuCwKBeHHNwSSNnpbEDzmQ2DPelKv9WIq3ldE5SH1Thp2
         vrCmeRSyVij+qCyiAaR+47jqw0wnhIgZ7Vs4UsaPC4ihmAFWpV+2moNwM33dJ2rON+UH
         WDX3YqYhuhPRSDFMj0I02IbKlzPc+nC2JkaGzcGrJyVhiKtSvPBtmWOgY30R8icGn+L4
         cNZA==
X-Gm-Message-State: AOAM531NRLmQT4SuDppzNZwcNUigJoCu0dQzo2aZr+W7wBp48lGei5mY
        FpSGzQbGl8tuKWq+xzFmsPpiyA==
X-Google-Smtp-Source: ABdhPJzJ72Zd0fdqGMuGZTMhO7l74vyKe6JXeXWfSy5lBxiAwbOFxqPN9om6goQRd5yHHkKcX8M22g==
X-Received: by 2002:aa7:d682:0:b0:419:3b78:e489 with SMTP id d2-20020aa7d682000000b004193b78e489mr14947186edr.372.1649344882144;
        Thu, 07 Apr 2022 08:21:22 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id ka6-20020a170907990600b006ce54c95e3csm7740203ejc.161.2022.04.07.08.21.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 08:21:21 -0700 (PDT)
Message-ID: <c6d85486-16af-d798-5e55-a6801e5402c0@linaro.org>
Date:   Thu, 7 Apr 2022 17:21:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 4/5] dt-bindings: spi: add binding doc for spi-mtk-snfi
Content-Language: en-US
To:     Chuanhong Guo <gch981213@gmail.com>, linux-spi@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Cai Huoqing <cai.huoqing@linux.dev>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Colin Ian King <colin.king@intel.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Paul Cercueil <paul@crapouillou.net>,
        Pratyush Yadav <p.yadav@ti.com>, Yu Kuai <yukuai3@huawei.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:NAND FLASH SUBSYSTEM" <linux-mtd@lists.infradead.org>
References: <20220407150652.21885-1-gch981213@gmail.com>
 <20220407150652.21885-5-gch981213@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407150652.21885-5-gch981213@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2022 17:06, Chuanhong Guo wrote:
> Add device-tree binding documentation for Mediatek SPI-NAND Flash
> Interface.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
> 

Looks good. The subject should be rather "spi: dt-bindings:" (as
requirement for SPI subsystem).

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
