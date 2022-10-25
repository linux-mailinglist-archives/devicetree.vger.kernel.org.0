Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFAF660D4C1
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 21:35:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231829AbiJYTfV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 15:35:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231844AbiJYTfT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 15:35:19 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97B12E09CF
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 12:35:17 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id m6so8897487qkm.4
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 12:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2bq8bNdyAl5co9FRYH86QFP+zOKhtTWspptpU7rpeE8=;
        b=c/tvtk3KCyMvg8pBI+5+7wb+wpn7cny5S+BrrgEzKB8h0AyRYzM7tvDTTENYgAAmht
         9ZLGU7DFL5tQQ+diKV+bqbWTOvOCpu/aYL8ub1/huwmjoj5wbVXtRcWqYBl6VK6vyjoU
         orDIHQqp0bjuYBCsTw5JFlCUhMZxGwr2PMfDQCivpdwDkQle0gnhmzCQNVFKq1P4aYlh
         rDUXtI3vYkpo/1/NKsvMSfOgW83Zmj2e9bZRNMnswQhltRgsLpj9U+qx35ChA9B1Ri5k
         427iyNQK2MWyVuLQWfsXRBuG/I6zcVvvaLe5Ls4G5vkD2y41wvByWpEK5J+glWhR3T+Q
         J+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2bq8bNdyAl5co9FRYH86QFP+zOKhtTWspptpU7rpeE8=;
        b=LRk+NyXMaXi//ESu9iBbPJNm3eenBULWyAfpjzBRkz42eLslZzpdqRJU80+1tIvY1T
         QO0qdPoETwgPR14HN/d2QLGT9SfHlGsyOBuxpQZgWfB0zsI1zZK6jxow2Ivfoy426F5O
         zeXVC2yX0/XCf7bhmgiTI+f7IDdUEO0zGeF36VQBn8OfGcG8Q7Bwj1s+Ym6mA6hsyrNu
         BLOS8ZBlQG0EE4TSinFCb7SezRGwR6R/c7weFUQPRA9oD6lHU58nkrx2sBqPJjcgqVVG
         NtqN/znsWVuWo/jWfJouFR+7dvo5rrz9i2wnCk0Zvazm487vxGXYYT2OaFdHkiJLZRzd
         aA3w==
X-Gm-Message-State: ACrzQf0VZcnnKy0+kcJHc1MF0fEgZE5VFGw63CKOjuxBXbD46QnABLnF
        xTI+xPR1iGG8TzTzBhlRBuH4yw==
X-Google-Smtp-Source: AMsMyM7fJwOd+SyYyPd28ciUONaMMuTnB6KKRvaZZqShNPCGAXm+hPxBX13eeavvMQbuGAPA4rrDIA==
X-Received: by 2002:a05:620a:370e:b0:6ee:f54d:d8b with SMTP id de14-20020a05620a370e00b006eef54d0d8bmr19281703qkb.21.1666726516792;
        Tue, 25 Oct 2022 12:35:16 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id 3-20020ac85903000000b00399d5d564b7sm2127131qty.56.2022.10.25.12.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 12:35:16 -0700 (PDT)
Message-ID: <e7192d9b-df86-a860-d5cb-8b4b9184e5bc@linaro.org>
Date:   Tue, 25 Oct 2022 15:35:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2] dt-bindings: pinctrl: update uart/mmc bindings for
 MT7986 SoC
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20221025070255.14407-1-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221025070255.14407-1-linux@fw-web.de>
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

On 25/10/2022 03:02, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add new splitted uart pins and emmc_51
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

