Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EE7263A47F
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 10:14:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbiK1JOi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 04:14:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbiK1JO1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 04:14:27 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1D718B0E
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 01:14:23 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id bp15so16284906lfb.13
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 01:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OkReJ90VlXZipcieJP+LxMqlEDeh2xQTKCDZfX+e1iE=;
        b=wMluYro34AD5YgTFiG7abKf7uRqzvRZwq0jFIS8ouvvUhtMZLzlTDoMrkgnzfeFmMR
         su2WZFTnt5ec0GZhSxo3pFYqxlteZFhk3UJp++QWBAvOihEh9hI3ujRGvO1/HOJXh7vb
         JgTSYMjlTXBeBG/LlSHC7Nd+bKYjV5uFoJ9Vpm6JrNzBur9yJb0+Jjz0J1AlzREAgoA/
         r/WN5wqxhLqaYP4ip1KFCUt7TzOO4V9YRlPeNkT303ileUsb5J4aJyKdjDl+vcrcaNgZ
         8ZxLcCEeCaMYQhAyoqsv6QAincEuo7FVWKKXfaNEpjh8p5N4UFjGg5RY9Maj9a/p6/Oj
         6lbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OkReJ90VlXZipcieJP+LxMqlEDeh2xQTKCDZfX+e1iE=;
        b=h33ZwsAjAlTwESk5k8rzSwSywhv7ZG0qL/QbvaqfgyK4yCdINCETUXPS5ULtc4Vzc0
         BsSCCuuIaRwgKosUgtFT0Fse91I555Sfx1jAYsEiqJXgTT6GTbItwOILX97lph/QY2p/
         D+3aodmGKnV9N+Dl5BGTFTc279pr0b8IrcaQohJZpRonrKzkVHEj5tEI4BI9qtGTh204
         UrPEp8IVKG9FDDJgGyDw7AprOeCYzY/EEWZB7XbuYdEGzC7ZAXkQa2IwLzXkii0wSMBM
         uuzrkaevdgobtyZpfKIPGyJ9NYoZVVJWBdKX+i+jEJzwl79Tn0B2FoI0toqORQEUQ5Ma
         RXwQ==
X-Gm-Message-State: ANoB5plVrGsjXOQKPwLpZfe4xLhSLQikslHWO3hDhxTX1l8mpL7OI3xL
        tohH1qXUAJhDxs2B1oFyj4i5Pw==
X-Google-Smtp-Source: AA0mqf7VFF7KlQ5JNG7Nu5DqZjr/9kNS2XZ5IQebDCCdPMcFPsF7VNqsyT7UYbNNPNMPIwCGw4EaeA==
X-Received: by 2002:a05:6512:108a:b0:4a9:9827:68ed with SMTP id j10-20020a056512108a00b004a9982768edmr9970612lfg.45.1669626862175;
        Mon, 28 Nov 2022 01:14:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f9-20020a19dc49000000b004979df1c1fasm1645867lfj.61.2022.11.28.01.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 01:14:21 -0800 (PST)
Message-ID: <7c99678b-8df5-5022-b2d9-33098f885203@linaro.org>
Date:   Mon, 28 Nov 2022 10:14:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 9/9] dt-bindings: mtd: ecc-mtk: add mt7986 IC ecc bindings
Content-Language: en-US
To:     Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Chuanhong Guo <gch981213@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, benliang.zhao@mediatek.com,
        bin.zhang@mediatek.com
References: <20221128020613.14821-1-xiangsheng.hou@mediatek.com>
 <20221128020613.14821-10-xiangsheng.hou@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221128020613.14821-10-xiangsheng.hou@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 03:06, Xiangsheng Hou wrote:
> add mt7986 IC ecc bindings

Use full sentences. "ecc" is an acronym, so ECC. Same in the subject.

Subject: drop second, redundant "bindings".

> 
> Signed-off-by: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
> ---
Best regards,
Krzysztof

