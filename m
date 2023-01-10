Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03A7E664649
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 17:39:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233545AbjAJQjx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 11:39:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232868AbjAJQjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 11:39:42 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 692FB12ADD
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 08:39:41 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id m26-20020a05600c3b1a00b003d9811fcaafso10539557wms.5
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 08:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=76z269HHy4FyyHUAPr8lTZqL1EfM7779/xLjc1+5hq4=;
        b=f6P6qB+MThS7or9SxkSLmDlMwr/Sy8IO4X3NKxxSO1lvHMNvHyrbU4aciwm+uzoj1I
         hq4Hi29wBraHKq8+ySWksZwJp4mqmqkUTs3azTla+EEVX5AnDAg9awljMcElEha7Xwls
         Y05iuE3CaZ7mQpJAGZusJNJudO7rLPKpPv2US0ts2hdEr7yCIq0uXKlAinTxr4oLgz9R
         DMt3eNjw826cqmqG9bk69/hjUUe7Oef9QMoxqiGm4JqA0ynGDC1ugkaIX0qRmBMQXTiO
         cohBTL7Sdoqw5w1YapgQW8dDl39quOuLd2XSnBhlvAlBoQfsplOq51ParlHeODt89hIm
         321w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=76z269HHy4FyyHUAPr8lTZqL1EfM7779/xLjc1+5hq4=;
        b=HguLtLN4R3FTTMbFHX3ePSMOzg3GUMdyKL1bM8U2Yyl4f+o+mPFPquXiu+ILGVuGko
         kDwhHEjkpYZ/vanzO1KV6nbTi7DQJ6ZXhk6QtUWe9FGs0GVh6e0nI/Cor+YRGYqih0v/
         1GvYDG0fgQ3Zm7Onk+9MO2rt9n5QOksi0686DQB6eBwyXaEcL4QnxdTKIgOVrXFzm6iP
         lMJ8nkQ5fpOr48SNZdG6+wo1gguIZnoyIiqw56PZjq4ZOfyLM9ZFiC6dZ/IiG2hPX2lI
         q1ry9RcKPXIT6Jr3aMb30AIXGqnk1TkvewD8TbxjMRd6ZS7U+4SqZOHjCm33xTZFLOQg
         CIhg==
X-Gm-Message-State: AFqh2kqllvP5jqjiQNh8Y8xizUsXHx5nbZm6B4mlepFz5/FHTapUrGt5
        HLTsGmFokEsJz7jOxRSRaNUyV+cpFHd1O0x/
X-Google-Smtp-Source: AMrXdXuJ5I9OptNe9qPfu10ArK8AkMJeuK6hRf2mL5FnXKCy2MoM2LwbmUi6qWqDnVJSrLQqpqgqxQ==
X-Received: by 2002:a05:600c:1e18:b0:3d2:5e4e:701 with SMTP id ay24-20020a05600c1e1800b003d25e4e0701mr49768128wmb.31.1673368780003;
        Tue, 10 Jan 2023 08:39:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi6-20020a05600c3d8600b003d9df9e59c4sm13280998wmb.37.2023.01.10.08.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 08:39:39 -0800 (PST)
Message-ID: <e887125b-9bcc-2fa1-a8aa-a5f0176d00af@linaro.org>
Date:   Tue, 10 Jan 2023 17:39:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Edgeble Neural
 Compute Module 6
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230110134658.820691-1-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110134658.820691-1-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/01/2023 14:46, Jagan Teki wrote:
> Neural Compute Module 6(Neu6) is a 96boards SoM-CB compute module
> based on Rockchip RK3588 from Edgeble AI.
> 
> Edgeble Neural Compute Module 6(Neu6) IO board is an industrial
> form factor evaluation board from Edgeble AI.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

