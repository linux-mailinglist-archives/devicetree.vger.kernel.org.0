Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02EEE621BA8
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:16:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233978AbiKHSP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233613AbiKHSP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:15:58 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2285D25CB
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:15:56 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id d6so22356649lfs.10
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z4GalJ9bSUIL7WLMBCJF2w9HCpx0lR1Ka3iKXe/pYfw=;
        b=NarQatWwrceVq/3o7VnJ4pucfJy75GLsOzxwCn8pVhs0VJ04llp5JfwllnIFuCujkj
         TLYRHmgZA911QhjfDN19vAZ3va+IZBz+27HlxrNx1uq/bR2f+CqPcMlvzDOjODObW3Z6
         indKSTui8ccQZDWEiutaIUl8ke+FIFth8LzXO3i+HHxoZy3EFF+Vl/AOOfvsB2Wz4g6M
         9QsxWUtwz9vKxtK7lOMyCh4QdO3dKHlDL3MFUm8QjB9mvEIGNeq8gwdaGGbNavvurOH1
         ESCSN2YV9vUQTqNW4bFUFv78g6ck3Ge5sWLmlfu8lD92HpOm7jRHjTt+auYg7cc0SLcn
         /aHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z4GalJ9bSUIL7WLMBCJF2w9HCpx0lR1Ka3iKXe/pYfw=;
        b=iDDLjz/sodQ2bhZTWtAIIQFraE15SYWi4VKr8j0Ge2sZHg7MWSx5o4gzvZTkeYAfSi
         CiNoFQnm1HAefuAGVzhQsndhC5OKZS6ByS0dI26mdAIykBKnQbHALxwCUl8Rxdjaxy9t
         kIV2lJyU8zZfQcmyEBXdv6J0i/j8DH1umG8CqamULnhGNVXFTbFYU5a0oWbWpiK1exhW
         +U6cg8rxzHg4IcLtzh8EbNTUSC6wTus72BBVils2etV3Sel5yGYhkistSKwvl4kVaSik
         LOqT5L6rCejYf1++J6cvnwJcA8jeyzuyPGYjDsEyvBpbUqPi77a8CySzL/tK9qoRd+6A
         CXgA==
X-Gm-Message-State: ACrzQf02jdIswfBJOF479tK6EHvjbdGagqT1zwKQSpmb/B7LmXZ+ED9G
        gkfN/1kMQ27Ulpv7tI3KY1DJnQ==
X-Google-Smtp-Source: AMsMyM59FHxXiDpOjpDTNoDcRNM79azOHFPaYd9/TK7mmSnzm2Ac+FBXdZt29TDPKDPNNW9vKvx5YA==
X-Received: by 2002:a05:6512:3e0f:b0:4ae:5dc5:82d4 with SMTP id i15-20020a0565123e0f00b004ae5dc582d4mr19417263lfv.65.1667931354473;
        Tue, 08 Nov 2022 10:15:54 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id o4-20020a05651205c400b0048ae518364dsm1895165lfo.148.2022.11.08.10.15.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:15:53 -0800 (PST)
Message-ID: <2d1f45ae-29c0-00cc-b8be-38b5869b0406@linaro.org>
Date:   Tue, 8 Nov 2022 19:15:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 2/3] dt-bindings: imx6q-pcie: Handle various PD
 configurations
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>
References: <20221106222524.223188-1-marex@denx.de>
 <20221106222524.223188-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221106222524.223188-2-marex@denx.de>
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

On 06/11/2022 23:25, Marek Vasut wrote:
> The i.MX SoCs have various power domain configurations routed into
> the PCIe IP. MX6SX is the only one which contains 2 domains and also
> uses power-domain-names. MX6QDL do not use any domains. All the rest
> uses one domain and does not use power-domain-names anymore.
> 
> Document all those configurations in the DT binding document.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

