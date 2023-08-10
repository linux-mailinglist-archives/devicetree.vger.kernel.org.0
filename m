Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B33077704F
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 08:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233181AbjHJG3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 02:29:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbjHJG3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 02:29:19 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 658D5E4B
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 23:29:18 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fe5c0e587eso5094855e9.0
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 23:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691648957; x=1692253757;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7RmzlTlEgcYnJC16d1sILZcykRMmU7oi2/EECxLz3EA=;
        b=gAH36ndi9Z8jmOqcwwQ7x/zvyE9DXiTJt+CSTEM/FkIiLCr2eMFExpHOad4v/Jw4OM
         aaDB6r6JMaGe4n2ZCqSk+DHv7LGjeGSUvXvmU7RGXLZqb/SXV6ThYGEKB9UlYWlwxdNc
         PKnwXATug8YqgRO0/yRIjFZ8TtGtkZvT+1bVlhhsBCqof40RT8tqjir28cicrtOA+3xQ
         FP3jTQwhRlIp6UjWZTYBaTZgo2WcI9+cyzqAskTHDPBCHAX/VC2Hgy4NL542stdPHVhe
         ew6+J59IPPJLaayqRgDMORH75w/IvfZI4tsdX8RtgGAAwM9Xon4XoeDPAiA3X8wPlwAW
         9Xeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691648957; x=1692253757;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7RmzlTlEgcYnJC16d1sILZcykRMmU7oi2/EECxLz3EA=;
        b=YlCNFllajOSw5Vur5CYEZFluLC4TrkogfTwBRNmD0T8+DQyETngmSshdqIsTxagt6y
         AvikvaOsUQwXelOifORlHjqsXniXeoLETsvwMHoki7iAYpu78bCDhO/pvKNMYaPb2Sw7
         MWpQMdS3orfvmQZrnNzWcLPsmyJFQhfvKLTDWuc+E9qVkwYKjoh7lHX77pMbYNWEmlxA
         rORFtObu+CUCmI/3+fVv3iIBlImSmtf16l2+1uRmc9lcPAs4WnxdQFd5EPb276grUzzO
         7kQZwGiS5elQKtveFq8YY3xKVIoD+Ga0hwz65EhSeoc4tsar6Rq/KXpPzA2lADFURdjf
         YqMQ==
X-Gm-Message-State: AOJu0Yx+U/nT2eMkyOCTbuMQn2Kx6FCnxbJOH6Tbl8n8NnNIv0NoOXJb
        83e3czZos/TCSF/DgodvUniXsA==
X-Google-Smtp-Source: AGHT+IHfM/E+7Vgu6aFKR01Zqy+crsACs4Det4aFk46Ou0O9aYDEJPY0PlHY2lvhIjir+EnM/ZCkWw==
X-Received: by 2002:a5d:62c6:0:b0:317:65de:4389 with SMTP id o6-20020a5d62c6000000b0031765de4389mr1331788wrv.61.1691648956800;
        Wed, 09 Aug 2023 23:29:16 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id k3-20020a056000004300b003177074f830sm1026903wrx.59.2023.08.09.23.29.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Aug 2023 23:29:16 -0700 (PDT)
Message-ID: <b786f564-b2dd-8b6c-c4a3-c861cbf74f16@linaro.org>
Date:   Thu, 10 Aug 2023 08:29:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 01/12] ASoC: dt-bindings: amlogic,gx-sound-card: correct
 maxItems constraints
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Rohit kumar <quic_rohkumar@quicinc.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Rao Mandadapu <srivasam@codeaurora.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Trevor Wu <trevor.wu@mediatek.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
 <20230731094303.185067-2-krzysztof.kozlowski@linaro.org>
 <1jr0oowg6m.fsf@starbuckisacylon.baylibre.com>
 <076d8a7d-8369-4e88-9997-d54b91b7920d@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <076d8a7d-8369-4e88-9997-d54b91b7920d@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 16:46, Mark Brown wrote:
>> The upper limit of 8 might work now but is very likely to be wrong for
>> the next device to come.
> 
>> Is there way to correctly describe this "pair" contraint with DT schema ?
> 
>> If not, then I guess the most adequate solution is to drop minItems and
>> give no bound, like simple-card is doing for the same type of properties.
> 
>> Same goes for the audio-widgets property
> 
> Right, dropping minItems seems better than pulling a maxItems out of
> thin air.

OK, I will drop the min/maxItems and send v2.

Best regards,
Krzysztof

