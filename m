Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFF2C5500AC
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 01:22:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383273AbiFQXWo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 19:22:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383093AbiFQXWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 19:22:43 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 248BEAE53
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:22:42 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 184so5209951pga.12
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=BZYFg5kiVhld2lAiBUaa0ABgAdKIA/3yLwoH/l48Ndg=;
        b=NM+CS8TeBLIzD73k6jDvxl8r2exFRyI0AzyUwqtQyY5Wrvn1EyVhBCPZvU3RVlLVCL
         GSing4OzXKnQ03Bpr5gjk50qCE3f2yqUooD5szbeBVu0eLmDF1PODhmYzFtORs85GH00
         2ni+66TgRxjJd/AnMFXdWrh/ILBHI4HYllfWPoeYqWfwajWT691jOqAHyKRM7lE3TgHz
         ca8Q+PUepWAkNOEIe1e72DrJXCjDSwHktQAXPLeIgHIJYVFU9zO5bhMQSmrS9NZLTkhm
         5wABOSDPoI7BqC3TRTPgqGgWT5WAqMySxDuiy+CRpQLVSWb22679Fr0mMy14D9t1pj1y
         U5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BZYFg5kiVhld2lAiBUaa0ABgAdKIA/3yLwoH/l48Ndg=;
        b=o97WChcae/6nPGoXIwux9eShcFT/U+aC7zp89J0RhQCvmsGpBPArq773cNuIZn19j4
         tAgjg281AGQ+hzhMg0dMVD8e1mzTVezq7i/LerAR2AHHN9OWcdV0LrGY7hHG3ZdxoGhx
         VuthoNpbE3AkqNDq2yesJoWdKyRwN0S7i1/i14Qjiq2Hg5HjIGRJ4SGdPxDok/TAo90a
         kMdF32mw8Ub/kOTTJuk5FZKFdKbTcKsCEXJt+0BQZM+Od7k1HvPjHycIkwIw9+RoytEe
         z24rYBGkkBFNXhsdZDD53KuNEy5BRVHSGz9JyzCwxb+WjwX9BZk9aBxNn9JnNLMh0lAe
         cOEQ==
X-Gm-Message-State: AJIora8caAW7jdTQWviIULaihJXGBDH8g0gKKe/Da2uw4heGRalldKxU
        JVHxmppNgwid7ncdxHPN6LMZ6Q==
X-Google-Smtp-Source: AGRyM1u2gXb8MDp4KfFCqq5UNmC/0QyElHJ+3n22NkWBoduGn8VHO24rY5m3NjNte2yGRFcMtMnZ1w==
X-Received: by 2002:a63:6bca:0:b0:408:897c:3fb8 with SMTP id g193-20020a636bca000000b00408897c3fb8mr10798602pgc.576.1655508161648;
        Fri, 17 Jun 2022 16:22:41 -0700 (PDT)
Received: from [172.31.235.92] ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id k8-20020a170902760800b0016223b5d228sm4042218pll.288.2022.06.17.16.22.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jun 2022 16:22:41 -0700 (PDT)
Message-ID: <834af774-ecdd-1929-86eb-6a814c5d774c@linaro.org>
Date:   Fri, 17 Jun 2022 16:22:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm64: dts: mediatek: mt7622-rfb1: remove wrong gpio-keys
 property
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220617232124.7022-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220617232124.7022-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2022 16:21, Krzysztof Kozlowski wrote:
> gpio-keys (regular, not polling) does not use "poll-interval" property.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes since v3:
> 1. Correct commit msg (Matthias)
> ---

Eh, jetlag hurts the brain. This should be [PATCH v4] in the subject.


Best regards,
Krzysztof
