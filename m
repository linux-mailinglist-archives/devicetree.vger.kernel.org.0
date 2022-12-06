Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68EC6644847
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 16:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234253AbiLFPp0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 10:45:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235352AbiLFPpV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 10:45:21 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1B5D2D1DC
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 07:45:09 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id b13so13380980lfo.3
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 07:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lNf0oPz1+3JYITF+uARI5oqprCns7og7GMeWkwgQOfc=;
        b=Kx8saFYoHs97DPlt7rrWo2mlAeMwmhdrZXHcU6ApGZvCEcPzi+fsL29ZykBAdUog/p
         4RhjCcy+vvcGMq5PQyQA7TSNYry9E+K3FGHTw8SpdUT4WGFAOtEqVhtysayPFRJlxqOs
         dPbdVzjGH4w7YTBIKP69tRClDuUpWxwP60LHj5r3/rtPtf31XDHArnKPYS4DhO00wKRn
         +7e5S05nSpyz6sFoVtz9C7uRJj0P8kFprLbiwFBfFO/INtdatDSMEBGkPsmco4XMgMtN
         x+QVEirO8ZUBFE4h1OAclT2O5ukRBq1bzdNO5EQ3j1uDU63bACCnKe6NYtqG9+khx8Ld
         xIcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lNf0oPz1+3JYITF+uARI5oqprCns7og7GMeWkwgQOfc=;
        b=VgyDPvbNj+IiLu641f0yJHNS9LWJiLLn8BlU8Uvz9JkUbTfzaHX0eVGWDiWGSyfkdM
         M8Y0rOv4lg1o7kMfwVWFnhT9A+A6EzIZ39Z6yfYeFdBsspfnEfn4ny/jr55HijagRrO3
         tyIC68w86i3zKhs2NK0KmxrNhvWhXgaPqytL6qilcgQGiAGIp7ilJmI3mcUIOr9pBFlx
         mpN7gHRg3lZ1GWecpQ3fTu3aXO2jOqAsosN7QIR26tqpdYUCZdmoQIBofACLegRsq+1B
         x5ZDrJW8OIsE/+oG22MPaGIF1JcFNkwCfvlCRgk2AUXZgAFGoS3mxi2sdzUCO4hoCfAv
         ofhg==
X-Gm-Message-State: ANoB5pnwBjuwgrTCpEFQkbWfRkVqndySMpQF4NOfClDf7hrYdYzEX4OR
        dhXDbdP8hNDkUacy8HvQIzP49w==
X-Google-Smtp-Source: AA0mqf5Jh+Dt9wCImCiy9pkyTRtPnrr1eJHFTxSsl5fLdur/tl5B+TujlU7R0CiZRMeh4aFTfnhVGA==
X-Received: by 2002:ac2:4e0a:0:b0:4a2:2aab:5460 with SMTP id e10-20020ac24e0a000000b004a22aab5460mr22854399lfr.62.1670341507919;
        Tue, 06 Dec 2022 07:45:07 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v5-20020ac258e5000000b00492ea54beeasm2518454lfo.306.2022.12.06.07.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 07:45:07 -0800 (PST)
Message-ID: <d17bef48-0804-3ccc-a14e-9043ae615573@linaro.org>
Date:   Tue, 6 Dec 2022 16:45:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v4 2/6] dt-bindings: mediatek: modify VDOSYS0 mmsys device
 tree Documentations for MT8188
Content-Language: en-US
To:     "nathan.lu" <nathan.lu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Moudy Ho <moudy.ho@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, lancelot.wu@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221206020046.11333-1-nathan.lu@mediatek.com>
 <20221206020046.11333-3-nathan.lu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221206020046.11333-3-nathan.lu@mediatek.com>
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

On 06/12/2022 03:00, nathan.lu wrote:
> From: Nathan Lu <nathan.lu@mediatek.com>
> 
> modify VDOSYS0 mmsys device tree Documentations for MT8188.
> 
> Signed-off-by: Nathan Lu <nathan.lu@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

