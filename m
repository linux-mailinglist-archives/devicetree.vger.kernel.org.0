Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01BFD631C44
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 10:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbiKUJAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 04:00:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230082AbiKUJAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 04:00:30 -0500
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FF301AF21
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 01:00:29 -0800 (PST)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: kholk11)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id E1D83660037C;
        Mon, 21 Nov 2022 09:00:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1669021227;
        bh=MXlDWXncLIFxW00lPLdUcN0Z8H99/RrA2zO5uQrPlb8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=VrdNhm+rAY63uTKkMeau0NTxhjrMRh1EGlc7d43oN0AvYTS7aIvRPrb5lkyrMpchA
         KpsJtDnvrptvp0CWSF+BIF/zqeLLm3Bf18ZNHPiZjs+PV2poQeDOs397vxQHLJxP0K
         o7WbxncC0kMmb9ahghXjJVfAGlAJ5ButnSDBMqT7aucMkURsIQMNpfSfJVewUGe899
         jZabptcS5ddhXRUdBMEaZ4ZMJoFBSptUBns1D6VXO4fmUxjoVvN0IAht5i+HQjls4Y
         r70EJd1hgVLILCX5GjNzqpSR/jz3ghrJZYrMo91ejFGpEMTGTbTUObyj7hLQzZ4zF3
         hhjEzcF7tNe9Q==
Message-ID: <945d26a8-5074-80fd-0918-717d127f9224@collabora.com>
Date:   Mon, 21 Nov 2022 10:00:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 5/9] arm64: dts: mediatek: Remove pins-are-numbered
 property
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-6-bero@baylibre.com>
From:   AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221121015451.2471196-6-bero@baylibre.com>
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
> Remove the unnecessary pins-are-numbered property from
> arm64 Mediatek DeviceTrees
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


