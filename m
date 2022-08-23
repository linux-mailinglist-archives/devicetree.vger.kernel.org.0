Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38A759E60C
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:33:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242984AbiHWPcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:32:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242127AbiHWPcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:32:07 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D29B250DA8
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:17:52 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id s6so7974599lfo.11
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=p/Y+SW+sDFQrxU5iGkzgHTDP+ZT5UJ6i53/083eyQJg=;
        b=MrDQbeNHyc+pRDxnzFQ91jU42y8YNo4YNnlkpgLoQaXpcv1pX5XNX4Ql8pN9555LXy
         Ko2Ml8/H09TKZPX7AuENC8+/Vgftma2mrEv/Jn/vII69uueY29XIsrqc65IcC2uA3pMA
         6OXK4J602Y6PV57CqlfT0ZjquvSfL/HvjizICTyTDgFOA5zBQkChkyn4CyTPCIKt6ZdZ
         JeNr1LUxwfKESCglpaPg3wPK3/DnoX5wOgqOuxc94JLgBpy2VGmfMk5gLb1hoddHCgFi
         JRnhj09DhvvzKsOSTnbjMXApY1lujQJxBRTQM3Vk2XbYEZwiv3w/0C56k+esW1JNjvy1
         s4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=p/Y+SW+sDFQrxU5iGkzgHTDP+ZT5UJ6i53/083eyQJg=;
        b=j5EN39bhoPzCCcFZALgNRV4fxNUzdRdFbqTJCMmmpv/9LE/gI1N8KZ7Rj+rORuXJtC
         EyBXSZSXdATk/M40pUwNRSB++XUpP1fL8rkq6Lfu1GSMgbBhXahBVx+NgHqyNJEL98ES
         DqiIpVITNHWTi4TjhMqmnLUYLL6trnv0weGZINjsP+PE8ckZDqibCc3Ul9S9gipfAZW4
         O0LW8wLAUQ4SgXxY/MgLylESO8sbbQnJ+BZlw7m3uBnJFwc1JC8/57VnFQt/evjF3ZAP
         AfdcPYYzmtLFzdW13PirFNNiuVWaO4FHJ1zskmG7j+4yAEWmRi7XmOscvrDk5M4oxNnr
         ykVg==
X-Gm-Message-State: ACgBeo3vCv+OT/WaROxjkXdMOLGjhfU+6bQM7ApvEnQKYPVwoD4F63i9
        HGltfb8VHdytiT/GN80SXBXlxw==
X-Google-Smtp-Source: AA6agR7tqyK85+2o04GF7PJMNhOl687ZeYth/rV5QHCEWVFSRi8/kChXM1q2ei8VMMBa3JjYccngJw==
X-Received: by 2002:a05:6512:1315:b0:492:cbc8:e10d with SMTP id x21-20020a056512131500b00492cbc8e10dmr6406997lfu.41.1661253470590;
        Tue, 23 Aug 2022 04:17:50 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id z20-20020a056512371400b0048b27af9505sm1508855lfr.213.2022.08.23.04.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 04:17:49 -0700 (PDT)
Message-ID: <6ffc497c-5717-cdce-d338-65a8f00624d1@linaro.org>
Date:   Tue, 23 Aug 2022 14:17:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: soc: mediatek: add mt8188 svs
 dt-bindings
Content-Language: en-US
To:     "jia-wei.chang" <jia-wei.chang@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Roger Lu <roger.lu@mediatek.com>,
        Kevin Hilman <khilman@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        hsinyi@google.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
References: <20220823091346.519-1-jia-wei.chang@mediatek.com>
 <20220823091346.519-2-jia-wei.chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823091346.519-2-jia-wei.chang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 12:13, jia-wei.chang wrote:
> From: Jia-Wei Chang <jia-wei.chang@mediatek.com>
> 
> Add mt8188 svs compatible in dt-bindings.
> 
> Signed-off-by: Jia-Wei Chang <jia-wei.chang@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
