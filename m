Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D90D96DAA44
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 10:37:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240191AbjDGIhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 04:37:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240006AbjDGIhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 04:37:08 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1310F3C3E
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 01:36:49 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id g18so6951361ejx.7
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 01:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680856607;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XHSNmp7SMG0lrPLl4FoS04Pn0k06DM3nkel0fhy8S6I=;
        b=Y+C+ULbsml8lP/9KuITu37jbMIR3cQ3ePn66AI8gqoWVPcWrkiJY0Xa5/L6WGTM/Sw
         yXWUNAQ1RR40eJBG65Du6qL8Sl1el8LAuiunk02cFC+7mhyFlDTHR3GSL+Z/LJPgV2ZS
         pI8rL9xJjR7hrI0xMV/sDituxY0hQ59R8wd421XC+jHtMkF3EbJHcV/8HeDTSrDX6YgV
         JPCXgRhZc6ZKJQO0b+YpGC2fr7zXl49/8H7z8EmbIY1tRSSYhw44yUPeSL/oU7FWgEZA
         tcXWCx5GLFhLNfn0OssWL9P1OzHYAssG/UznLUw/ZXGozRiBObhWSAzEqDGkNbykfgbx
         eE9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680856607;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XHSNmp7SMG0lrPLl4FoS04Pn0k06DM3nkel0fhy8S6I=;
        b=DfLKmjt4BOabJB/h2CGElHW2gjmP7RxJV4XwrxnMXH2BqgkafIWQIVlHIAm5pDK2Tc
         uCkrduXRcyOfw1MQJ575KGFlT6x3fyH7BP5oHVgOMAyJsv2RffI9MBFrCxKfjqfy5tiq
         +5skNz0r4nEDDYglD8KSbNECJPd3MnLIFOZ3PDLcyIfR37LpuV5+345q+AdVxncz6U1H
         HkDngJyISDOunj8TtMESIlg4BqlzjIbu3nHBzKrC5dKJg0xZ8Xb7P8XhvP4k1Fyc5mz2
         fygJZTiro66z57aDMI+vmFHDG1LC5a3yzx1cjKuVFiFx43S/Y7FpB8poFtvRoyzYUc6E
         gTeg==
X-Gm-Message-State: AAQBX9cgGdU0mGCjtOGzJjQjT8taWhTufzIhZ3sFDw1cooX67RICpCqw
        rnjjQw8j4g32zY2tnvyZkaUE/w==
X-Google-Smtp-Source: AKy350YppXdVXmmSPqTDg+9apafRJyLRTwt34FsDVmaVa+DPxzzk6jQ+f210ptRaWN1NbFN73cr/8Q==
X-Received: by 2002:a17:907:8e8d:b0:8f0:143d:ee34 with SMTP id tx13-20020a1709078e8d00b008f0143dee34mr1218902ejc.1.1680856607523;
        Fri, 07 Apr 2023 01:36:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:14a3:366:3172:3c37? ([2a02:810d:15c0:828:14a3:366:3172:3c37])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090646c600b00949173bdad1sm1801199ejs.213.2023.04.07.01.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 01:36:47 -0700 (PDT)
Message-ID: <d626f476-3236-676d-b25d-87b71520219b@linaro.org>
Date:   Fri, 7 Apr 2023 10:36:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: i2c: i2c-mt65xx: add binding for MT7981
 SoC
Content-Language: en-US
To:     Daniel Golle <daniel@makrotopia.org>, linux-i2c@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sam Shih <sam.shih@mediatek.com>
References: <cover.1680817105.git.daniel@makrotopia.org>
 <31957e15116027afd154f0d91e799028e2400bb2.1680817105.git.daniel@makrotopia.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <31957e15116027afd154f0d91e799028e2400bb2.1680817105.git.daniel@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 23:41, Daniel Golle wrote:
> Add binding documentation for the I2C controllers found in the
> MediaTek MT7981 SoC.

Subject: drop second/last, redundant "binding". The "dt-bindings" prefix
is already stating that these are bindings.

Bindings come before patches using them.

BTW, I did not get previous patch at all, but your cover letter suggests
these are compatible.

Best regards,
Krzysztof

