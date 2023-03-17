Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76E246BE541
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:16:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229848AbjCQJQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:16:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230046AbjCQJQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:16:17 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36B442196E
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:16:09 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id z21so17801018edb.4
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679044567;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p0oeLyNfd8INjHtERjaxe36cGB4+loSHIwbTN8QYeus=;
        b=r1Ey9awg5yYcy4na36SfkGZgDeBbTR70Klqn5vB6SjfNI+wN0ESrIrpJdduu0/mSx4
         spsbHUdTur6CMBjZW37DdhgOH1eJV3KRJFaV5Uzudjs1CUha4Tft8QDNU6CPwrBpRO/X
         8vAUeJaA7Mk0t6BFlnDhMd0Q7Qj/KbqzeneEz9yLoUL4H6qh9JakQlqqeCIsAO+TaoAY
         RijF60AkHzlCljHSPM/K2y2yv2t2r5edMj9NjtFNVEeGCLjww5WcNDEfKmXBemHHYSsz
         eW6m4kPttL+W86qLQSjXyYtywp/gDLC/qeplKYQ6WBjv0kaWcTXp0rWIPdGzVj6cvuCc
         rpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679044567;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p0oeLyNfd8INjHtERjaxe36cGB4+loSHIwbTN8QYeus=;
        b=A/ZOGNneP+/B4hV8TNoT7uQdvODoR2B+T7Hka9OQFCOexGejbNnHErOOf48Fd42cfr
         rPQ8dQOcXUjHD3bjK+tnqPIdX2DkfE74ZJkgX6Djjua5/q3oBshLVvqkimG2dd8mSL8G
         5rfSCS6xUSA7kSLLJ0lBMgLrtpu11A9KccO5rTn/V4kOof/DnTNunPvOqV6htKNfCrx/
         9zZSFtMhrWU3zHTKYZ6GxeAjCyyqEBTpIz5yOFdy5Rv/tesf0oRoKz3lEmWb9HDWKdq4
         nOpqPkgNZewuhlVsZqXsXAOTEtXxA3+Fc1/8fVTwZv7h3nfSDjmMexP7DZhGSmQQz6zm
         4mrg==
X-Gm-Message-State: AO0yUKVUvvERiFqJjR6CkiPQw/uDdWl67lOmC8Loe9TYFk3RR4pZe3+f
        XAeNbW7btSVj0bQ/yHoc8F9cUA==
X-Google-Smtp-Source: AK7set/wACy7YqjpgaUoezd1YxrsDIHP34IU0l2uHdUCEgocAK4gqmYO1KivPl3ykrSMyiCvh8o8fw==
X-Received: by 2002:a17:906:3417:b0:92a:f756:28fa with SMTP id c23-20020a170906341700b0092af75628famr2289156ejb.31.1679044567716;
        Fri, 17 Mar 2023 02:16:07 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id lt2-20020a170906fa8200b00930bbf7e894sm746627ejb.35.2023.03.17.02.16.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:16:07 -0700 (PDT)
Message-ID: <de305bbd-b912-a1bd-6bd1-b9c1835ed47c@linaro.org>
Date:   Fri, 17 Mar 2023 10:16:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: add compatible string for
 Tolino Vision
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        marex@denx.de, max.krummenacher@toradex.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230317081618.2387407-1-andreas@kemnade.info>
 <20230317081618.2387407-2-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317081618.2387407-2-andreas@kemnade.info>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 09:16, Andreas Kemnade wrote:
> Add a compatible string for the Tolino Vision eBook reader.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

