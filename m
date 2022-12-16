Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FA7264EA67
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiLPL2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:28:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231132AbiLPL2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:28:43 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE512A27A
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:42 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id v11so1794862ljk.12
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rx8aHhMKEzxq0kmVfsfDIEV6ZZwGeuKHRJWK2D6J4LE=;
        b=M11qK5e4LBimcxMoFUnqn4cchF5dz4kUIgnGstVSTCKZnPYD7BuG+8jjNs2mVEECFn
         f3v8HU+McOTGU7odwOViX9HC/MUZHKE35nFISGUT6NpmmXDWwGhQ6ui6zTjsuPWnCOn5
         FC6tRiBoC/T2Hr8aPALpzwlrgikG+IKatguXp7pC8uFxc1OTWsbkKrGudopRd2IaAKB/
         VC5nP9CJCNqhZvu/EltiuD3DtvDwHEb2vitJ+htXyPZDslavpvtFoWotuMTVV3X31h1e
         xUTkDv7qpYIWOSUmJymeSbNLjVQF1SPB/vVvh2E0BlH9x7BwVHm0Ancl7QJAww3Cn0gl
         EoDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rx8aHhMKEzxq0kmVfsfDIEV6ZZwGeuKHRJWK2D6J4LE=;
        b=MVQZGQFS+mdyUl34D6B4zbOCU5g6ppSrIpTAuyC1KATBUqE9WbE5IFP/xSCwuFd9oF
         HDV2a2SUMZ/9E2lzg1ZaQAdSgG6cfHuNA3CqimZlVsMSfKVLd9zaCLMW2dHCOrLRN18p
         urA2AYsOoFbmQJP/oKE5jFqS86+cC3KDP2iwL0TcGFEDxPAfmgpWwTUKNgu24Ly5ukji
         yemppYB1TSjiX03sY++XrroXUzAV/gpEWioALbRMfp51A1d6/cmwIw2bCbLBdsPjPvgy
         CdkvtbEt5REp+llBsXt+hrIfnD5yUNj2H2u8v63l6uHDYSadYFyncTSxfteB67uUc5KB
         aKMA==
X-Gm-Message-State: ANoB5pkvSDFGUOL/znYP6nnimgNDab0W0PS10tmBzk4fOqCYSjuQfX/H
        3AeDd5SW37HcnmSCdp/+CdA3Ng==
X-Google-Smtp-Source: AA0mqf7LYbRMeGrQgWgo6scLaOFMlioG0gUewwq2BL2E8pEMXDZeGTJvnD+vkTXf0EDrYQWQiHRNjg==
X-Received: by 2002:a2e:a809:0:b0:277:8a19:25c2 with SMTP id l9-20020a2ea809000000b002778a1925c2mr8184669ljq.4.1671190120648;
        Fri, 16 Dec 2022 03:28:40 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s5-20020a05651c200500b0027a156078fesm123918ljo.100.2022.12.16.03.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 03:28:40 -0800 (PST)
Message-ID: <93e4a62e-a05c-178a-f006-ad498d7afb81@linaro.org>
Date:   Fri, 16 Dec 2022 12:28:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 4/4] dt-bindings: arm: Move i.MX8MM Cloos PHG Board to TQM
 entry
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20221215232137.144256-1-marex@denx.de>
 <20221215232137.144256-4-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215232137.144256-4-marex@denx.de>
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

On 16/12/2022 00:21, Marek Vasut wrote:
> The i.MX8MM Cloos PHG Board is based on TQ-Systems GmbH i.MX8MM TQMa8MQML SOM,
> which results in compatible string in the form:
> "vendor,custom-board", "tqm,som", "fsl,soc"
> Move the binding entry so this triplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

