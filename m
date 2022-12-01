Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8321D63F045
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 13:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230326AbiLAMQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 07:16:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiLAMQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 07:16:20 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6328FA6041
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 04:16:15 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id x6so1652665lji.10
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 04:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+qaQnzUFR6jEc6/BTtzhr5L0OwEmeK71QdZTFbxUz8E=;
        b=sOWXzQoCSZLsJZmc13U6bfD5H/L6IPlnYQdftDEmYjI50/EIuxERFnlkJufQUJdi60
         v87bCX3G11oWdxLgVfQZyl20NwbaRIQ+S1h47FECuTvi1pK0BjjfyPE52HH5KDQqjGv7
         riknohuZ4jnAI065GNANBYIWSJ6lXEOKfomopCrUKnJBekNmMmhtfnVx4dRJiQUaqO/C
         6Sg7zMO38p8ZiUXgXd3QGk/e8dqdKaT7Q6Hn6XwhYngqN2M9SzprkeWR/MtV22iPz5lu
         iCRUL36LM964arkGNYIPFeYnuJUsc4bNLxZNrX6wimvEwe/VlEndjgYcy4py2KNabAim
         AzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+qaQnzUFR6jEc6/BTtzhr5L0OwEmeK71QdZTFbxUz8E=;
        b=8Fdt+TSA+jXRF3W65YVQl8ZHS9V3/+CQ/zgW1gu7GJ54msWWdaIENYHJEiK0t07mtG
         VR7h97TlCZdgiJs7yrYYGpojV/Hhz5paVyAkBlA5b12P9CeyHWRZy1mPusZZCWzsCWt8
         TrNuvTkvV/W8/itTMAoV4+jWxTZB33lFJKsZmpyrUWVkVJwnKrMesI8d6A/diz6F+ViA
         9OAaWpkn2CDB0s0SzE1BUHl5/PUVwbO22ilkfHs+YP13qGY27qTopiKJNb5t0NSl6/ns
         riutT7qj65nZ8wMWiF5Km4U3a0YcXCSRUf8ScuE6QbrTU/U7SBsYfu4RtA7lC1Mf8Ak2
         C5ZQ==
X-Gm-Message-State: ANoB5pn2VB/dvjRRE2TSYwEHAorwGkCnKIjkT6WZmttKAx1NCh3wwrO5
        s/Shv0ezhuWd0VMTNrEVQnJGTQ==
X-Google-Smtp-Source: AA0mqf7+IQJ/XtOhZfRpM+10zUvVxsU5YE5EoyCx5d1tIv03ZdI2hGAYOBCVQTJ9Bqkgw5n/0a36mA==
X-Received: by 2002:a05:651c:82:b0:277:2f15:4179 with SMTP id 2-20020a05651c008200b002772f154179mr15340293ljq.408.1669896973304;
        Thu, 01 Dec 2022 04:16:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s3-20020a05651c200300b0026df5232c7fsm363309ljo.42.2022.12.01.04.16.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 04:16:11 -0800 (PST)
Message-ID: <2cac7d40-1807-63b2-9be7-9e88e721b68c@linaro.org>
Date:   Thu, 1 Dec 2022 13:16:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: add GCE header file for
 mt8188
Content-Language: en-US
To:     "Elvis.Wang" <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        Yongqiang Niu <yongqiang.niu@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
References: <20221201071316.24583-1-Elvis.Wang@mediatek.com>
 <20221201071316.24583-2-Elvis.Wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221201071316.24583-2-Elvis.Wang@mediatek.com>
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

On 01/12/2022 08:13, Elvis.Wang wrote:
> From: Elvis Wang <Elvis.Wang@mediatek.com>
> 
> Add Global Command Engine(GCE) header file to define the GCE thread priority,
> GCE subsys id, event and constant for mt8188.
> 
> Signed-off-by: Elvis Wang <Elvis.Wang@mediatek.com>
> Reviewed-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
> ---

You got my ack here already.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

