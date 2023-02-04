Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65A6968A99D
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 12:16:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232679AbjBDLQt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 06:16:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231499AbjBDLQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 06:16:48 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05983305D2
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 03:16:47 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r27so2836442wrr.1
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 03:16:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jAUUoB6Fjeu0/lIGXQvuX4/tL5vm4B25eu86co/9WUk=;
        b=f2VzxbeJ4J8SnyUPEaO+X8/IbhzVnEeUjqGDKkHKFtLZJ3+nFDJH66E0R2Faw3TKVP
         Fwruo2n7t3A3diGoryTDYV78IeiF9v9d3agU+X5wlhUdh1S79peLLOYrLu1/laVJsZZy
         rHNMnNfQmOi2Lp9bf/tdUAQd4dA9Z0oJ3dOCW9ph9F1DujY4WIyaWHsidwJHecntjYvi
         BsVYZb7uZZD6R2RElsc/ZvSc1FHzF6KWYatqPyvtUVblgdHVRQmw5F6g7CIx5HY/mJfd
         yMI2c//sSZUJ4SDRz9ud19H9RxPmR3I1B/hGDUYGRs++YdEQWUI5GdTU1dZDHcBDZQJd
         E1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jAUUoB6Fjeu0/lIGXQvuX4/tL5vm4B25eu86co/9WUk=;
        b=iRDij7tmrF5y6Mb4L65fcadiZa81fmSqfbVcGcGaqrHRBs8LfHbUhh0xJxwG0t8JQE
         /2AffjIl4IrAkYdh6ixziJPrs1TXeQjyrVY3ARRiAZuyYMvORGCSDdT3yDAj6fvsh+sE
         hK3B8jb3IuKWV2OrMuBYtAAd/wx5dbabcmjnc46PNcnbUEXj+D+HRlTQbIE9Fpiayegp
         UkchOnr48YDi0BQUhQthqdujrCDMBa7qS6b+nCWQ0Cj+C4sikmnspWunw94a7t4vqwGg
         oHe/jyJzI6AD50wGVwX+BIY7B0teeCF9c9tYgEMf3fMzg0+4FTd2QWmGMQSpv+nTr0l6
         vG9A==
X-Gm-Message-State: AO0yUKVQ6mE/DazQmVGuwW/FGZUk6criiK3HwryjiH9myFxq0zqeH+rJ
        Shpfq85d77yKbC3lvYe3o+z8Sw==
X-Google-Smtp-Source: AK7set+uyna7tu+ZOI9aDM/7MhG5n/BQC3GzhmaD9iax0kaxgRm3XNbpXQ2HPWRjZgzuWN3gicv6Bw==
X-Received: by 2002:a5d:5284:0:b0:2c3:d296:7a84 with SMTP id c4-20020a5d5284000000b002c3d2967a84mr3783681wrv.17.1675509405536;
        Sat, 04 Feb 2023 03:16:45 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v7-20020adfebc7000000b002bc7e5a1171sm4216678wrn.116.2023.02.04.03.14.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Feb 2023 03:16:44 -0800 (PST)
Message-ID: <1dcbf0b2-4346-8f74-2e57-73081cfe2e8e@linaro.org>
Date:   Sat, 4 Feb 2023 12:14:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 1/2] dt-bindings: media: rc: add rc-beelink-mxiii
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230204074501.3421910-1-christianshewitt@gmail.com>
 <20230204074501.3421910-2-christianshewitt@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230204074501.3421910-2-christianshewitt@gmail.com>
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

On 04/02/2023 08:45, Christian Hewitt wrote:
> Add a binding for the rc-beelink-mxiii remote keymap
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rc.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

