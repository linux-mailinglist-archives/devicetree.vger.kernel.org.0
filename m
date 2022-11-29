Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4660C63C50C
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 17:24:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbiK2QY0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 11:24:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235841AbiK2QYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 11:24:20 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67DDA69314
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:24:17 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so11243717wmg.2
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3GRCujY2fAX+k+XJzaZ2/t/vuB/DeUSEDa+GNTMfusQ=;
        b=1eaHXzpwyfP0Xm9D0dKf3bkMGVH7/RDX8y6pi0wi5VI9JnC7f+wXmOqzSkOVJlYUyn
         2PIGzbHvMMRDvA1hqyFKhjy3kakuJy1ftnKZhI+gO8CnA2+S3yM3DAcACE+bAosP0+gE
         n/LYTU2ououqsTNoyItyMUnEiUXCL540Qgf0ZXU57bdLrB42ZfaKRAgEmA7V4op25LQQ
         5w4//RTlRU+L3hIlmfHCgUmeNJdDJFEuIFBAEhN2/KdtsOXr2AF+GFFZnHe0wdn8JC8E
         vToQIGhEFn5w13btdt01kqjcC65N6r1N4RzTicYqMUtE4JHRWAAAibm95fEgv01kywRJ
         1sEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language:subject
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3GRCujY2fAX+k+XJzaZ2/t/vuB/DeUSEDa+GNTMfusQ=;
        b=W7/dqF5/wV+1XacVexs7hDO96RJ7yljdH0b93WzJwdL4DinvnoP5wzsgO5aGMLqFM1
         5efnaLqDGXITjiHen4QDeegdPJ0N2jbicJWPHBs5ydtU755eCTNJd+idiUz+/N7HDi13
         /rfUY1MN4vAzPLV6V7F1NhSX8sbL7XmH+aDEY5Xdcb3//+TrW15aEhFUDXccOrx0S/rT
         IQnCa2uSehMRvHBvrkUMNfnHP2iUi0FFtlDbJuPMJs7pyJN9uoDZplbO0Xe++XC0cIko
         X8AmO+zJq0zuWxLZEEBgC5xqjWJAjP3XRXoRAXjnpd1g+lR+YAwrLiN5QpDeNFFefRON
         axsA==
X-Gm-Message-State: ANoB5pnv1854JfHCITyqCckpigpY9r/s8pdOxV1peSm3At+hJr8C8pRw
        9RW70McwSnznYrExTs0xx6dGu1BmkEP/LTBc
X-Google-Smtp-Source: AA0mqf6WH15ucpt9mj1yfuOJMrgVZJ8iDUK+OVWRFbLh+62MS79+TdGJJYsFeGLXckdY8erRt2KZwg==
X-Received: by 2002:a05:600c:4b17:b0:3cf:8b22:b567 with SMTP id i23-20020a05600c4b1700b003cf8b22b567mr27612720wmp.144.1669739055891;
        Tue, 29 Nov 2022 08:24:15 -0800 (PST)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id g3-20020adffc83000000b0024207ed4ce0sm11185741wrr.58.2022.11.29.08.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 08:24:15 -0800 (PST)
Message-ID: <8bd55bfc-009e-5357-d616-8f10196e25a4@baylibre.com>
Date:   Tue, 29 Nov 2022 17:24:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To:     angelogioacchino.delregno@collabora.com
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        krzysztof.kozlowski@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
        maz@kernel.org, robh+dt@kernel.org, tglx@linutronix.de,
        youlin.pei@mediatek.com
References: <20221128092217.36552-2-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: interrupt-controller: mediatek,cirq:
 Migrate to dt schema
Content-Language: en-US
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20221128092217.36552-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/11/2022 10:22, AngeloGioacchino Del Regno wrote:> Migrate 
mediatek,cirq.txt to dt schema as mediatek,mtk-cirq.yaml.
 > While at it, I've also fixed some typos that were present in the
 > original txt binding, as it was suggesting that the compatible
 > string would have "mediatek,cirq" as compatible but, in reality,
 > that's supposed to be "mediatek,mtk-cirq" instead.
 >
 > Little rewording on property descriptions also happened for
 > them to be more concise.
 >
 > Signed-off-by: AngeloGioacchino Del Regno 
<angelogioacchino.delregno@collabora.com>
 > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
 > ---

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

