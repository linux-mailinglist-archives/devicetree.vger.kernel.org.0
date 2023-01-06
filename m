Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77E5465FE09
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 10:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232967AbjAFJeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 04:34:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233429AbjAFJeB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 04:34:01 -0500
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C9EC81117
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 01:26:08 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id g10so661174wmo.1
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 01:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SK0dKOCEBiaYKVTOvhAS22+z7lpa7ZgsHoskRIRAsZc=;
        b=YTbpxPT1ydolX/yLiyHmyWQXFkrm76SJhztxoGBZX3lIpxBbCW/ue7DCp6AtCG9DnI
         yDu9AD5+xqLyvsC9TSBoQKdQ9H73q+SPg6W/D1yGKk9StZfYlZ356SvmshsHoSVv9T/G
         jcQCIcvTHcsT8gJzeQef+d+nGR2q7gASrn1Fnln5Ejp3+lsENDxg3CSPvXp3/HOeXJR2
         2c0EEDx94X+WkfyNLGtsqwJWAOy/1HgVcQ7bE31mSDXNobClaQBXBsi+xaQSZBqTl170
         5pFD3NtwDVWjJgbyBkqox87NKkY2JxhMgxnyplkoH304Bcyq9Q9YImAqgJslqXIV434U
         Cb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SK0dKOCEBiaYKVTOvhAS22+z7lpa7ZgsHoskRIRAsZc=;
        b=1DEnbgQcp130qQr4rxupCkZCdmtMwOr5qRmoZEx7FbApOCC33BGmMHrqyr42mGnRnj
         4r9zJjlwORzrB9YiiQ6x3HwXCVVSzDh6f1hAX2EYjkegTcY/4RYyh5n7foq7xW9aV1Vr
         Ziy5U3linzFhvUCspIctCjjk3rOM2Ns49uDV7A7OchHnLkwzJZJwLpiU0o8NncsCM3Id
         cLp/ljfvoycELgU8DTZTygnNJ1xvKYJxlVRd3iJOhzoJ338NrKfCp2i0gzZqCPHby34p
         ENaPpb353NA+QUpn4JBsNst32YwxnfYuQiVR7qMhcxBibycCoObWtnLxQoq9e9rm/IHU
         Yjag==
X-Gm-Message-State: AFqh2kpSI9gxcTDFeC+c5v3KtjCac80+nbLtsJe56j0sYh4WyNjM3V7O
        u7ooWz7jFhhQjlSk4Fbguc3abw==
X-Google-Smtp-Source: AMrXdXvUXP1CXYiwjVxyNq2t/+oSyvDqLJuGkimxPKQaOx1jLGDORGChSn+kZ/MZBKQgytJdm7fmrA==
X-Received: by 2002:a05:600c:798:b0:3d3:5737:3b0f with SMTP id z24-20020a05600c079800b003d357373b0fmr47698542wmo.36.1672997049322;
        Fri, 06 Jan 2023 01:24:09 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id k4-20020a05600c1c8400b003d22528decesm6453805wms.43.2023.01.06.01.24.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 01:24:08 -0800 (PST)
Message-ID: <b74b4438-9496-f636-995b-4acdba5766f1@linaro.org>
Date:   Fri, 6 Jan 2023 10:24:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] ARM: dts: vfxxx: Swap SAI DMA order
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>, Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230105144145.165010-1-marex@denx.de>
 <20230105144145.165010-2-marex@denx.de>
 <5c2f0bba0a3a9d846cdfbcf7529759327d895810.camel@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5c2f0bba0a3a9d846cdfbcf7529759327d895810.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 10:18, Lucas Stach wrote:
> Am Donnerstag, dem 05.01.2023 um 15:41 +0100 schrieb Marek Vasut:
>> Swap the SAI dmas and dma-names to match the order documented in
>> Documentation/devicetree/bindings/sound/fsl,sai.yaml
>> No functional change.
>>
> While I'm not opposing this patch, I find this class of changes a bit
> odd. The *-names properties are there so the properties they are naming
> can be in any order in the DT without impacting the lookup. Enforcing a
> fixed order for named properties just feels odd.

DT requires fixed order regardless of '-names' property. '-names' are
not there to fulfill "can be in any order", but merely a helper.

> 
> Not sure if the schema validation could take this into account or if
> there is any policy in place already by the DT maintainer that we still
> want to enforce the same order in the DTs as in the bindings.

The order in DTS must obviously match bindings, however here both are
changed, so what is exactly your concern?


Best regards,
Krzysztof

