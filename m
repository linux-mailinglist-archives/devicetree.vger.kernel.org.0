Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B877A75ADAF
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 14:01:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230051AbjGTMBR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 08:01:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjGTMBR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 08:01:17 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4D3FE75
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 05:01:15 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4fb96e2b573so1062003e87.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 05:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689854474; x=1690459274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YgJO0hqYDA2Nqh6mu9cc9MRnvY6CGEvkARFrTIY0YJA=;
        b=EOnVsmgf5wMcztiewlDLKo7adJCc3hQNng9qGUN5JC8Hcg+x8KA9b2OnMFx6Y0HL21
         BV994Fat4mX+vuYsz8ITdIIyYDIrszAQlgSl/eplNkls4pfBNg4xIAzQghKmT3CG2P6c
         1q74DYVpdC1OL7bkDbZ78t9OLKcAXnBCDUboybEIsiGVBUivIhLWBa/7JKecC8TiKlVQ
         S8vOm3+7srRHbyo7DrkQNI6S/KNUsMYUyF2zkSfKHBh/LoKkON8ede3wZzn61J/JzaLu
         3J/kVU/2stVdKKxvg+2YFEsZt7y8c+hK7msmYqYP0m9VJwiNBFgUsIFVB3z1osESOkdb
         JSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689854474; x=1690459274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YgJO0hqYDA2Nqh6mu9cc9MRnvY6CGEvkARFrTIY0YJA=;
        b=iTpF7zsLquuGLzKlpK2WPntteJ76KtzvIF63QRD/lOt2PbFIftTXTciITgdgmFigKE
         udgUZGOMi8fbkEZHn4h4wWw2iMQ3c3+U0NLH66tFj1euEesxuN5Y8wYPMJUKQdLAlYAx
         O5cvGSvCmmv3rI9JVG908hgcZkd0uU2rvn8KZKbRwDKycvn1xpJCJs+ESqQx9kHVJJcS
         3buiKQp39aiKckpaZ5L2x4wXrrBMPHkEy4zhzz/kUcryNRjZ6o1JfWifwSe4RmM76Nh0
         WszTucCXaziylajOAjWZdMlrU3iAeBss1wELmjUDm94ryhkuMP2y2adOLudfYuYsiDOz
         dLQg==
X-Gm-Message-State: ABy/qLaQyR5bd6e+IbDPHYAEYl5ZToJvdJinbFDfXRatim15iZKudJNU
        b1WPKxbgX5KqXTPmxv1ND8EoJw==
X-Google-Smtp-Source: APBJJlEnYSy7ib/63UPVp8rdhMsFgvKjS/5g6LIpVjoes/s6RzvAdUJsWw142TXV/PG4TnnV8arOQw==
X-Received: by 2002:a05:6512:2212:b0:4fb:844c:a867 with SMTP id h18-20020a056512221200b004fb844ca867mr2658884lfu.9.1689854474121;
        Thu, 20 Jul 2023 05:01:14 -0700 (PDT)
Received: from [10.1.3.131] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h1-20020aa7de01000000b0051a4fcf7187sm663363edv.62.2023.07.20.05.01.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jul 2023 05:01:13 -0700 (PDT)
Message-ID: <a85ee57b-d000-7eef-6817-82539d37ed32@baylibre.com>
Date:   Thu, 20 Jul 2023 14:01:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 3/3] arm64: dts: mediatek: mt6795-xperia-m5: Add DSI
 Display and its vregs
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, matthias.bgg@gmail.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, kernel@collabora.com
References: <20230720091559.86406-1-angelogioacchino.delregno@collabora.com>
 <20230720091559.86406-4-angelogioacchino.delregno@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230720091559.86406-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/07/2023 11:15, AngeloGioacchino Del Regno wrote:
> Add support for the DSI display found on the Sony Xperia M5, including
> the necessary regulators configuration for it.

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre
