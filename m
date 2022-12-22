Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD1A6540C6
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 13:12:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235824AbiLVMMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 07:12:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235899AbiLVMMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 07:12:00 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F9AF020
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:04:31 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id n1so1690515ljg.3
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 04:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NZKYMOZIKxtwI9C5Y2DsLl9mvShg/E7HjBCtUKagoFs=;
        b=NU/xJ/gqpRxcFPSTXASvHZNTQPQImqNO0nE1XWDSUjaRHX0J8bJai/8tQDYnflTr3h
         mDwlz1YH/Y9rUvFdqn5KvvivcDz/eE+tVUL2U086HVKo0+8Bty90EtnrbwBHA1ZP7Psi
         uIu+pMXg4XzR1XZpARdpCm8XkQi56jlu6uC4M0XJei7G0I5P9ucBVWHyIh2TtcUHFKkw
         i8TPm2VD40sEt+8b9lCYkavuHDU/x/gHGWDdypkP65F+NkP29O7e6OGJnO/2RKBeMQP9
         IFdJPzXo0BhEvBYkZudzNFXi4HBQVk6tj3OFWLPUItUfM1vrtWMLZ0+agIf6FB7nG27X
         vfjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NZKYMOZIKxtwI9C5Y2DsLl9mvShg/E7HjBCtUKagoFs=;
        b=xKay5U3JeTLO10ce3+ySOE4g5mM2QvL+p+1gg3o5comra8hACkVBpH6ejr1978E2GP
         lA9o9OZvju9Feoq7E5Feb4oZGmy6aHXgGWgEWf0/f9HhuED1b+O9ZNnlgaLF4+WqSu1G
         sm3JTOHUeJtj+5K6qN1XapD6H8zRJOxJck0FyYeOHlq4osNjPxb0eGi9+vHoQ3H2+sKy
         1iTpbn77LzbvFJyknKllVbxJ3pX7BYkNdciKY+c911xB8dr7A5EzDkreTCEb54weg+M2
         nloZWTwP4SHAHzzprucyw/oucGp0fwKxpFCSdN0izjytXGvFZgk8RpevuJo+31rKu8jR
         DPXA==
X-Gm-Message-State: AFqh2krX2/0Fl/PCcY1BY8P1Zjj98fMhPhOAcnQLfv+B8HQzeTPfZBds
        nccEBr+QKb0CyRRjXyDNsN6XuA==
X-Google-Smtp-Source: AMrXdXsdaEtj4y1LKgPUfPuRDzm6FjbtRSzDQGmYrSdV99fosJd2YkpIi0ZnhHBqHX/WJacriLb3ew==
X-Received: by 2002:a2e:8652:0:b0:279:bd34:dcd7 with SMTP id i18-20020a2e8652000000b00279bd34dcd7mr1628383ljj.48.1671710669874;
        Thu, 22 Dec 2022 04:04:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s2-20020a2eb622000000b00279e93c9c25sm30608ljn.29.2022.12.22.04.04.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 04:04:29 -0800 (PST)
Message-ID: <c675a104-7ae6-59e0-f73a-aae4ef0eb05c@linaro.org>
Date:   Thu, 22 Dec 2022 13:04:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 1/3] dt-bindings: dsp: mediatek: Add mt8188 dsp
 compatible
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
        Bard Liao <yung-chuan.liao@linux.intel.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Chunxu Li <chunxu.li@mediatek.com>,
        Dan Carpenter <error27@gmail.com>,
        YC Hung <yc.hung@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        sound-open-firmware@alsa-project.org, alsa-devel@alsa-project.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221222072150.10627-1-tinghan.shen@mediatek.com>
 <20221222072150.10627-2-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222072150.10627-2-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 08:21, Tinghan Shen wrote:
> Add support of the single-core HiFi5 audio DSP on MediaTek MT8188 SoC
> for pre- and post- audio processing.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

