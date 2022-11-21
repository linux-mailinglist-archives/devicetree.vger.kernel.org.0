Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88ED3631C46
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 10:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbiKUJAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 04:00:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbiKUJAb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 04:00:31 -0500
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1747D2EF77
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 01:00:31 -0800 (PST)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: kholk11)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 5DEDE66003EF;
        Mon, 21 Nov 2022 09:00:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1669021229;
        bh=GjoD6+ESt/0nC7WvRsDYNODjgEOQgbj3D/vo0DNgFs8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=GX7ndQFc90mDHy9IVvkFjC11UQildBuY3gKGx5XKCYxu2dnDae9C9I1haWu3O3clb
         4P3a5dBkRdW9cUo2QValv+k2lr27sWD6c6kEzfLFYfAHlxpEuyx+Gvkc84pyA/1K5z
         ab+Y6oXZmDDujBGsEOpK6zDF44lpnE6mKZyxB/3xqXdHA4LIMSkqmipcFYDysdadNL
         Qt18/u7pLXy2ASnjC1lm9jpJhu8hJOm7f8thB9Zf4b785JWYXYY0jsOu5M60YcZ/3L
         j3bOvJV4YFLR7wm8Naa3B6kHbgKY/OSRNdm6Sk2CBiKcvEWdRZmd3CU6QgAPLog6mT
         VjY7470Ij803Q==
Message-ID: <0ccc4c54-c60f-72eb-6efe-31915b6277d7@collabora.com>
Date:   Mon, 21 Nov 2022 10:00:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/9] pinctrl: mediatek: common: Remove check for
 pins-are-numbered
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-2-bero@baylibre.com>
Content-Language: en-US
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221121015451.2471196-2-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Il 21/11/22 02:54, Bernhard Rosenkränzer ha scritto:
> Remove the check for the unnecessary pins-are-numbered Devicetree property.
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


