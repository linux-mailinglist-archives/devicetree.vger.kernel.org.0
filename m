Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6436365FD61
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 10:16:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231536AbjAFJQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 04:16:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232631AbjAFJQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 04:16:16 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14893D1DD
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 01:16:14 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso646438wmp.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 01:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6s9kNmp8sRI04bHFWAY1Bh0keJIotvwnZUvkJTSVmVE=;
        b=onPAfW1QvxT7BLu2PJOAIrnIf/ok1H4qJ+mMtbixAiEqX4J4stoIPuJFtpozsBZ5co
         BDxZe+h4jM5qq9JwL47AN5lkyFPXAGcp6aKDXoMrgUADIbR0UVEhXOijuG65yNeQW8n9
         4Myt6H4NMdn/cpIBp1eH5mEWFOBWOoq0ae3i/Ctiztuqsw1cFY9UB7OWFv6XyuKO9irw
         97JpJL6eF/9B+OEWzKzM+XwBCJQWlta7u1hz4UwzJXd/V+wnbr42jkR6F+CZzYYzfNw2
         WCXXCYl5l9/ieV7ydM9Di8dmRFZFvRTKJmhmtiF83LpcD0RHLhQW/PU1tXuqyHS+8194
         DDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6s9kNmp8sRI04bHFWAY1Bh0keJIotvwnZUvkJTSVmVE=;
        b=OIkKzp8EAmZZDSS2utDBGqWf0WKfQZ0QX/Ui8qA9/KMdI1Z5JHUedjiCK00k5K2oNk
         d+bGkP7S7i/3Wry2+peANCOEQ5zlQlUTUfIvrFl8vRh5JOLGXw1lx0LxdKqMrnvVeNcg
         oEzi6L7T4QXH2hKAgLievjtKUmyDNm9jsJQzKHwfAWdm4ReX/BBy1PpnDxwdtnIbTFKe
         4D+37y59RoqlOEwayKUlyVDuVkbUP639JFgNZBw3Ghi51MTEzRuTRu5GXxA8lBYtCg2k
         hQFe/W5mBRAYmV4kKjkwanK7c+6YPuCfZrssArnHez4Se+iSyTAcIVr0bms9Qbx9UmNW
         XCTg==
X-Gm-Message-State: AFqh2kq0UMzy5plH4xXhfT65k5nTsiOVfA/1jC82iSHiNaPIMXYRDf/z
        CRpUYNPTFz1kF/R3kEchJ9MU3Q==
X-Google-Smtp-Source: AMrXdXtZaj2XJDHpFH+Ihe787fODImEiYthWkmBXM7wbM50oMX/+mV758qcBWvtKmS27CEqV/XlWNQ==
X-Received: by 2002:a05:600c:218f:b0:3d1:fbf9:3bd4 with SMTP id e15-20020a05600c218f00b003d1fbf93bd4mr39246496wme.10.1672996573262;
        Fri, 06 Jan 2023 01:16:13 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n126-20020a1ca484000000b003d21759db42sm5485870wme.5.2023.01.06.01.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 01:16:12 -0800 (PST)
Message-ID: <e90e00c4-fd9a-83d1-2f44-e443f8476d19@linaro.org>
Date:   Fri, 6 Jan 2023 10:16:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl-sai: Simplify the VFxxx dmas
 binding
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230105144145.165010-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230105144145.165010-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/01/2023 15:41, Marek Vasut wrote:
> Get rid of the vf610 sai special case, instead update the vfxxx.dtsi
> DT to use the same DMA channel ordering as all the other devices. The
> sai DMA channel ordering has not been aligned with other IP DMA channel
> ordering in the vfxxx.dtsi anyway.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---

Assuming that Linux implementation does not care about the order of
these (and takes by name):

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Although other users might not be happy about change of order...

Best regards,
Krzysztof

