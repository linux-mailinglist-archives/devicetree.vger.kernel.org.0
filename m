Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDD11694409
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 12:12:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230230AbjBMLMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 06:12:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbjBMLMB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 06:12:01 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE3518B11
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:11:39 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id hn2-20020a05600ca38200b003dc5cb96d46so10980388wmb.4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TqQ+Ufbrf2k8hrdzQxSTas6D4N5ZYvZOx0pZJyKbuXs=;
        b=GMvuAV7CLQxe96ZF98vrl+9AZeLQ+vX0LH+oYQNjD1GqvpKQjIbip/8BWkothWNKSp
         3Yc6go/wYd69fSFW8xIgD+0pGefchO04OqfkueK/3RkGUkooe+ED5cLT5aPGnaN8vopZ
         qRSxcNQx45e8ZdUMsAHWbwOCqqDp4gCdXnp7cy9il7xXvsT9Jz6uXRm9qvArUiKY/4eb
         LmAXbiolgLgijR6Z52K6jcABNMJ5r8SE5r+z3DHRfK1T+84d7tYdX7uUPprDqBMJ+U8S
         3HNbzih6fYDhHQz6EDojnb9jFN+SE2D1wVUF41EsOsawDhEwAVBl8T3msAV7Qp4IWKdw
         O86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TqQ+Ufbrf2k8hrdzQxSTas6D4N5ZYvZOx0pZJyKbuXs=;
        b=HuV/cu4HvRbkQ1bID09eTxPy8VWvE7mw8aYKi82i+UHsIeVk0j79dAZ/BGHBaESMTb
         iZkjK0ivjQ6pSguo7htJXQHb4k+8GdY92R41rJ3K/o6Cl8dCUeLpINk+xJNscWpN2C3s
         KCnfXVGtjLwF35f7Ck7LoAuWvl1K8d5snf2r0rvd2aitZCl5yx7ixD7Qnvuk9WBOnKEu
         s0REfI+0DLGrXWDp8cRWKaKf4tCXCd4Dpczbu+HeJHfC5u6a1o16UsHWGZfMKv/waoxy
         /baVHgSFzoYYGqVX++iS3NY/fq3EPs0zcNurEPYBAO6CdZc8TurLc1U7RU44bgcRHdp5
         gt1w==
X-Gm-Message-State: AO0yUKWDCctfWTOeyZvQWrOaQ3/ZeVVpuqWLW8pr2N/4HATEQ7MYi4Sk
        ujbR/QvgFZciwE1WdtW3GQryN7bm051+IrGn
X-Google-Smtp-Source: AK7set+mjIQ9U9FwzoCkysttHpwwVlWfAcIb6Y3YcixTf6gnCs1ThPx8ely0+6ZyQaFh/CFSlLiVPw==
X-Received: by 2002:a05:600c:3b06:b0:3df:f85a:46fe with SMTP id m6-20020a05600c3b0600b003dff85a46femr22888217wms.40.1676286693823;
        Mon, 13 Feb 2023 03:11:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c379300b003b47b80cec3sm16466893wmr.42.2023.02.13.03.11.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 03:11:33 -0800 (PST)
Message-ID: <8c5747c6-0eb4-7314-b343-6d88a38b137b@linaro.org>
Date:   Mon, 13 Feb 2023 12:11:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 04/17] dt-bindings: arm: cpus: Add apple,avalanche &
 blizzard compatibles
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v1-0-cb5442d1c229@jannau.net>
 <20230202-asahi-t8112-dt-v1-4-cb5442d1c229@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v1-4-cb5442d1c229@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/02/2023 16:41, Janne Grunau wrote:
> These are the CPU cores in the Apple silicon M2 SoC.
> 
> Signed-off-by: Janne Grunau <j@jannau.net>
> 
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

