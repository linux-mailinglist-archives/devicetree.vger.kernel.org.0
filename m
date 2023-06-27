Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85EE973FA66
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 12:44:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbjF0Kol (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 06:44:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbjF0Kok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 06:44:40 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA6B210CC
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 03:44:39 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fb10fd9ae9so17002625e9.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 03:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687862678; x=1690454678;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=efp2x/vq439GzlDaP6vReEXSPEqAUmKPzelvynU65wM=;
        b=vNZJhrs41u2a92bk0UCjsr4/YqHu97x0IMOWM3zaiv3o5ztkqXkQ9OBRrnDk7JraJq
         aNpA5IMQ+/RsyISP1SsrMfcfbryD5AYkpRyMrspYrp2F7h7HCKpAorG8BQhL6vnaUJ5C
         7bU9jkIVHlTU2GHgAB4ttvwyKmoNvdo9ivx3C0MiLrx3hdB5UFqc5/vKsU5pdPnkt0ho
         DNv7jNuxdCgVnw1dslsLzhcHRFBxhxKHYrvSLW6wu2+CPI4EPlV6YcBZORR5ablaPv3h
         kJBSSsXW7y7ToTC0X3cHTliRDEvVl/CvMZ/yPdN41ARnR0rK+g5zQENGqtTmRL7k1qCH
         sMJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687862678; x=1690454678;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=efp2x/vq439GzlDaP6vReEXSPEqAUmKPzelvynU65wM=;
        b=ftgJ0gbCYnYBc6iy0QoXhHqt5DhaMdcCTE2mF6+OnbXx9KBrK8HLbT9GiGPz11S5EM
         P8pXpipzLt8TbIiK1dTd50wTmxxbQk7p23C+N4M12C9KCWlnHuphG4ig380xSXgfHfxX
         7wjH3JGv7mZUsUW7mBfPfZWsWvOPI/9jJiRQsTKBF2HNJRKJIn2BZk6s273QWwo+7suu
         PVtsDNFwQxktiWnQrVBeYMOcqyruHJb6vIp1GF5UmkPgiGA685fXqQeJDFondyQYATnB
         kzhLMQ1eWea1QorEycV6g0N113BknjuYnF2dItLSwlUpl20yb4uheaYlaTZTWfbEY+1m
         q4Dw==
X-Gm-Message-State: AC+VfDxFRl5SQyG6a7wCnvbBjHCuYBy0gUzwSuXE5bBYZZbK9PYGKjeM
        JpUp77becxXJT1rfTM/s8RN8fAgFJNCqNzD7298=
X-Google-Smtp-Source: ACHHUZ51EquQUUJC3vkwKc5QepjVkdNtQ+ZlKp6GJDXkjeC4niT355x2TVGLbVr+uhuZchWiEP6a7A==
X-Received: by 2002:a5d:508b:0:b0:313:ef57:5bde with SMTP id a11-20020a5d508b000000b00313ef575bdemr4825872wrt.42.1687862678245;
        Tue, 27 Jun 2023 03:44:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u12-20020adfdd4c000000b0030903d44dbcsm10093970wrm.33.2023.06.27.03.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 03:44:37 -0700 (PDT)
Message-ID: <91411797-18b4-f515-d6c0-ca0f8ff39696@linaro.org>
Date:   Tue, 27 Jun 2023 12:44:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 1/2] dt-bindings: mmc: mtk-sd: update
 assigned-clocks/clock-parents for mt7986
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Sam Shih <sam.shih@mediatek.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230625191151.7808-1-linux@fw-web.de>
 <20230625191151.7808-2-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230625191151.7808-2-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/06/2023 21:11, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> MT7986 has 2 clock-parents so update the binding for it.

You didn't test it, I think. If you do, then you will see errors from
other trees.

Anyway, I don't understand why defining it in the first place. Just drop
the assigned-clock* from the binding.

Best regards,
Krzysztof

