Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D89C16835E0
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 19:59:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231964AbjAaS7z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 13:59:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231770AbjAaS7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 13:59:54 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB86C4B1B0
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 10:59:52 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id q8so11063731wmo.5
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 10:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dn/OUXyEA8yi41y38Zyw+PIEAvlfa7axxVjaPefq9nI=;
        b=VfUOESQlqCLrWAeKzAgRi2eeDTdeAEC39ZoD2kMiKpmnh5CUwo/RJ7+D6zXnLamhU7
         SSs7p+bWLb8LdKw7XO7S7wMMxy4G6cESQtzOJObG4Jf7MSSwhr38WEtlDkgDcu0By7eD
         y2HFrma+gM56n74vpVAb127iL0xwhdB8ClP76OeoRHl7eShZoYAE3xDuw/ZLRxM4Kzyf
         Hp0dcKqM1CSQqwOCY1EhE14Ed8FtIgDaGrCZ96xGKMN4hYPeGBQ1q9TOjNgb78JmfUkw
         2JqPndKjeg6MftjDbW/6TGocGWVvBsYXLLDWga8fIYiJ9cx8t1iOG+bmBLy0XO0IH6mQ
         Go6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dn/OUXyEA8yi41y38Zyw+PIEAvlfa7axxVjaPefq9nI=;
        b=A0QLFD6uc8DYN+nDdwS3xus72KZb8rqpLQ33Gmtyl+VJfM/MgYkJed3M0uBiCzd3/l
         qVXVdLOWGHLX7tb77wA2gSvDgimd8MYhyfQOpJcM5am0a1JO5IkwTrk7AiY8qdP3ck+n
         IFEk6ONYDU6WbhN3G0f5DAv4WbyoVKjoNbdU7uUjXu0v0RAp3xLaRIvw/cneQfbUX6g9
         exUbBbLFtuB2z/iHt4THA9cK/faD9Lj5MWf/u0J4vFr+JqODt8vxk+lK9Yr9WunOBMsQ
         iSmQnUkRXmIyjjlekjVtutJiasmmYzc6cNsQXOnQ6VkLr3C7RHbTKxjoai++iKxbjPJN
         F5XA==
X-Gm-Message-State: AFqh2kqDXDlfQl+chmLyRXauXSREmNWP/yvpfTc8H9K0F8aQhQQrXCAF
        orVpd8BMmKrz+9dVA+Tuo7vsgA==
X-Google-Smtp-Source: AMrXdXtJkURy/LYDn4cBF+sqOdo9D21oaN0+bd8sHDG28/T98Uhf4bnVdigMQlsfXIDP8tkT+RV2yg==
X-Received: by 2002:a05:600c:4e94:b0:3db:bc5:b2ae with SMTP id f20-20020a05600c4e9400b003db0bc5b2aemr51470360wmq.41.1675191591436;
        Tue, 31 Jan 2023 10:59:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x9-20020a05600c21c900b003dc434b39c7sm3479288wmj.0.2023.01.31.10.59.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 10:59:51 -0800 (PST)
Message-ID: <fd20d74f-b542-b4b3-197e-9142b430a773@linaro.org>
Date:   Tue, 31 Jan 2023 19:59:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/4] dt-bindings: net: Add WCN6855 Bluetooth
Content-Language: en-US
To:     Steev Klimaszewski <steev@kali.org>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Sven Peter <sven@svenpeter.dev>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        Mark Pearson <markpearson@lenovo.com>
References: <20230131043816.4525-1-steev@kali.org>
 <20230131043816.4525-2-steev@kali.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230131043816.4525-2-steev@kali.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/01/2023 05:38, Steev Klimaszewski wrote:
> Add bindings for the QTI WCN6855 chipset, based on the WCN6750.
> 
> Signed-off-by: Steev Klimaszewski <steev@kali.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

