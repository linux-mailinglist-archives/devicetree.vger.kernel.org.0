Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 535A866410A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 14:00:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232644AbjAJNAw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 08:00:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233057AbjAJNAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 08:00:49 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADD95517C2
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:00:48 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id co23so11655128wrb.4
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 05:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pwDkY4TTQV9yXEkC4qa1tfmkACVhv1FVIV/PmkgtIlM=;
        b=xLZn+NYQ/Sa84nJl0+Lo83AVWqCAUVUSEgnce+Dx11Ye9sY4dPoeW3o8TM7BV72xZg
         dCY6Ag0+J+y4OF2MR2nMKikC9i+i1bv9MQMXD1N15AKrabApOLsv2537vaXEAyYEb3Z1
         tFY9bsf1HdnzL7oGos+3NiBVzvvDrupfRDq6VF5R3zMQkeLoVOQOgTpiCDwy/apOyEtd
         p+ej5WhKiB5tIE/mlgfrBVy4XHYFXFKkW8eLil34uAPjqbBSOMJxPwnxnfmEpErQUhXF
         Y0xcIRl1DiT6znwjcmgljVtWItT5EzaDslCuARgbnrcjT3T28phmQGyHmbmrR2V48ZNc
         wb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pwDkY4TTQV9yXEkC4qa1tfmkACVhv1FVIV/PmkgtIlM=;
        b=pSG8hc5jFXuQuGVislCRGHiVx8clt7utJxngzN+DO1jnnXKva6V7ONwhMX1YmI5jU4
         24SlNjt2lXIoPbFgKGzScRYUMek/Sz3AsQFSVEFSBJctxzQ3eAaHEGke7RH6qkytdKXB
         /WbfkTYj1wNw5sNsN/U2bmSdfWIF5xeWet+dqGbx7zJ8lBzTyJElqhyIiwkG4bBL1l+O
         QyfVYJ8WZiEdvZjeTWZbV0raor3etQPf7bFQMiouOOBNwe/Ukq6IlbkBXs3witQJSnbc
         7QLdK/InqhJCeH3CzgHgWmIPj8QeJ7i6MYR0vl3J4Ee5NNMYVHDZbDj4dsr2q6eSJ/vC
         33RA==
X-Gm-Message-State: AFqh2kq71IlY3gsT8S194QibkoDC0Uud7fD4KH0tM9A+mzdCE2tcNmFu
        WYISHABaDdAwy+tkXy8u8F1Aig==
X-Google-Smtp-Source: AMrXdXvcFOVIdvDXNiP2slCvL0s7sHnSKHeDNB05bCvqIFzghvOXF+3YvPmSL2X3va852dxpD0Xn2A==
X-Received: by 2002:a5d:480f:0:b0:2bd:bc57:3c5b with SMTP id l15-20020a5d480f000000b002bdbc573c5bmr1137450wrq.33.1673355647229;
        Tue, 10 Jan 2023 05:00:47 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z2-20020a5d6402000000b00297dcfdc90fsm11119120wru.24.2023.01.10.05.00.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 05:00:46 -0800 (PST)
Message-ID: <f4e1a940-10a5-e308-0bd1-8b5de469e1bb@linaro.org>
Date:   Tue, 10 Jan 2023 14:00:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 3/3] dt-bindings: arm: fsl: Add i.MX8MM-EVK rev-b
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
 <20230110114027.634719-4-johannes.schneider@leica-geosystems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230110114027.634719-4-johannes.schneider@leica-geosystems.com>
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

On 10/01/2023 12:40, Johannes Schneider wrote:
> Add DT compatible strings for a rev-b imx8mm-EVK which come with a
> different PMIC than rev-a.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.

Krzysztof

