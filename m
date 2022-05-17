Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCB2452A4FA
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349053AbiEQOe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:34:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349054AbiEQOez (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:34:55 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8D54FC4F
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:54 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 4so21982943ljw.11
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nqGuv+VUb8uKfnQR9C3qSWq5fRItPmp+77gvagzw4wI=;
        b=kyo7QoQoMUtzWNOVpW0Ia4CKz4RSfXzMntgLH1djSaq+zLvp4P6wPXDrXTBP5maBNX
         r6bNM6i8C9gnL76fU7FTEQhB2GHZCSePAFRtfUMoqFbzi61URwoquAZOTneh39yUB+Yr
         sHqHwYKaIdZHDOkzZLb+qV0c8qp+xo9F4bT09CX4EaWiehDvNXJClNADBzf4hRVc2V0n
         F8gJQbO1DvnExulv6SaX2PWyOU2d8syVJboiiJWO0nAJGJc+XqJFatOn4V4kMUh+32XD
         l5AAZO4G7UlzG97FK2f3G/k5fRLqvJfqXclqSym7CTkZINGtJAZInazr9IgoCyPAvngL
         8VZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nqGuv+VUb8uKfnQR9C3qSWq5fRItPmp+77gvagzw4wI=;
        b=IigLVhs55o8hQEMzQ4s3C8e1VGCGxAFQ7Mm1JpDyddGdp2xVRT7i3plSwGgURJzOzl
         IbvRFK+ScSSV/BXYefc9hJdfKnXIrVsUaWoqqYQHChoJnSPRMHF29IoJ3XfUuebzD/wY
         0JU5kIm1JSXcbWiEfCzBYjlEa7IVFoezA6/nfFu+hyespYL3rN4lfKBf8PEkr4/Xyqy2
         bkbIoSnpZ+NkCG0wblTGEgm0XfRDPqgPOxyiYYwerh6GcjV1MiozCKfsvIk+nDO9ml+f
         S2YZY8QGNqAmhe9ezq957WJgxwpvStY/g3h0IPLw6gPzhPr7eZUrMX/0H4wc37nKyOsG
         LXXg==
X-Gm-Message-State: AOAM533Bedn40dVmNuVZpx8c/h0vAYgUwiAyjB/UGAFYZ5MT7A4035+B
        otLdAFyLTUrbDDy6z60rK1ugRg==
X-Google-Smtp-Source: ABdhPJz8PXD56VDKdbGPVTFttJCfqQT/JMx12YjpiFErqxGbrAK9xl+4pls9Kdg41RW8bRLDSENgig==
X-Received: by 2002:a2e:9917:0:b0:250:808a:f7c0 with SMTP id v23-20020a2e9917000000b00250808af7c0mr14326311lji.136.1652798092874;
        Tue, 17 May 2022 07:34:52 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m11-20020a2e710b000000b0024f3d1daec3sm1890587ljc.75.2022.05.17.07.34.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:34:52 -0700 (PDT)
Message-ID: <6ffa2847-cc25-d1ee-71c4-0534f0ba9b86@linaro.org>
Date:   Tue, 17 May 2022 16:34:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 6/6] dt-bindings: arm: mt8192: Set #clock-cells as
 required property
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        sboyd@kernel.org, chun-jie.chen@mediatek.com,
        rex-bc.chen@mediatek.com, wenst@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220517101514.21639-1-angelogioacchino.delregno@collabora.com>
 <20220517101514.21639-7-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517101514.21639-7-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 12:15, AngeloGioacchino Del Regno wrote:
> This is a clock-controller binding, so it needs #clock-cells, or
> it would be of no use: add that to the list of required properties.
> 
> Fixes: 4a803990aeb1 ("dt-bindings: ARM: Mediatek: Add new document bindings of MT8192 clock")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
