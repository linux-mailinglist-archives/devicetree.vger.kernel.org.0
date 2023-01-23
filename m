Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 927F6678319
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 18:29:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232628AbjAWR3I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 12:29:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232024AbjAWR3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 12:29:07 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 605132C65E
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:29:03 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id b7so11540445wrt.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 09:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NwTlvuJuAIghS26NnVpyyRvZGcuEOs61IaO+NF4nagQ=;
        b=uhYIvcjkhXGu0oqqp+6e+ZBJPe7uq/YlhETV7dqCwosYuLYgrLpNHwHvCjyZ02X1e7
         Ue879m3+ZfoWbgARPz2iBlihA1+FCgRYsItbUA3CZ9+stz00N2Sxu/fCCGbgI2H2/EVz
         jDAbhTXBIKFJqaLY/JKav0H9VVnFxZcViXcqYnjIq3IB8/c6Jz0fEtSciklsodsxr8yL
         zrNqKh6wxDG+sUX4KgTc+u5Q4NbLGII3NmfWtWUfDOcitF4E2b6Vb8RDC6Xoh2IFlo5M
         fD/Tg3F1u+1tIZtMmDNTgcJq9zyPPKRFU7Jp9UKSwRbGhT9ibVCgopuJ1kW0v1xso7Sn
         UKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NwTlvuJuAIghS26NnVpyyRvZGcuEOs61IaO+NF4nagQ=;
        b=L5gzX7RrQUA/nt3kOvbI+0hPMOtS6RX8a71GMw81gkEDFTB/jCGozsCYZqrX7riRGW
         z8eHl07vNru50j3a3dWi6AjhUl8yGYYCn6FAkd2swIhIwBAxmvutrn4Q5XMFOUHkZ3Cl
         eavgrVH/dHMGVyyRGeI4adRZ8bwg89LRDYCVWuYOIFJpdk4GS9rv96eGALgXwLUjxdl5
         MUMc1pIS0wTO+6MFP6KdvgrVjOblcE/+bv0a+pLIuWJyHsSGLjwIabpcA+Gl82TbhnVE
         zcXQAFaKmB9krnrLUFZOEsVBT5MixSJuWL0a+lutIijfkn8pbvYJ5wo7U6x3BQSDugIj
         dC0w==
X-Gm-Message-State: AFqh2kqr+CkY3Hmtj3VNrS/+yASBoV3y/bqoJCOT8MdhhE9INs3MvVBM
        0PM4/TK9XAuNVIArlgFKYrrIwQ==
X-Google-Smtp-Source: AMrXdXudl+2yzwvw1jE0jM6FJ9tqi9H9sjhc16bH/xfVrnV+/acM7WhMX4jqg9wMdEYt+l6LXUQLuA==
X-Received: by 2002:adf:f0c7:0:b0:2bd:e18d:c9e5 with SMTP id x7-20020adff0c7000000b002bde18dc9e5mr23003524wro.40.1674494941987;
        Mon, 23 Jan 2023 09:29:01 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d4c8e000000b002bdbde1d3absm6950014wrs.78.2023.01.23.09.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 09:29:01 -0800 (PST)
Message-ID: <de7fec53-fe03-456a-8464-d60fdf32ee06@linaro.org>
Date:   Mon, 23 Jan 2023 18:28:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: amlogic: document Odroid-N2L
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, Dongjin Kim <tobetter@gmail.com>
References: <20230122-topic-odroid-n2l-upstream-initial-v1-0-1ce5e08039d0@linaro.org>
 <20230122-topic-odroid-n2l-upstream-initial-v1-1-1ce5e08039d0@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230122-topic-odroid-n2l-upstream-initial-v1-1-1ce5e08039d0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 15:07, Neil Armstrong wrote:
> ODROID-N2L is a variant SBC in small form factor and some peripherals
> are removed from ODROID-N2PLUS based on S922X SoC.
> 
> - On-board ethernet is removed

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

