Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9007774DA82
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 17:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233700AbjGJPyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 11:54:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233014AbjGJPx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 11:53:59 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3541B0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:53:40 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-3fbef8ad9bbso52282575e9.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 08:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689004418; x=1691596418;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JSQcxXNvMtoEvYXleybMuu7n2ZmJdJ1SMRHn1Yv6Wks=;
        b=fNvKeNQ5dHiEzFpTJhNte7irMm2l9ZB+OK+PiCcoo62TpXFyk9V/1TvOlTXrioO/+c
         aVkMpPr05YH7+bthIMfTweGRJE4PLObXeSw823ro4zRNg/0xH7Co1n6J2eaGpJFRrUZR
         o6a6FNjMuZMBytXao1Mt/QKXv52caYeYZ7fb7S0wo68Ep65eQoceVIodtUb7EixrrVAF
         c5lVaaUXh5e1qpRi8ETxwJLmKLoDCgsnerHef/OcH5xsw68Hpco6Z6Ov8z2ib6KS+Kkf
         q9xeiqXkqjmIJP9BmlVrkynbx5IbohEGQn3b4kQ4TYlUqbKRg2+d0uXZcDkyaNlpdZZ+
         v42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689004418; x=1691596418;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JSQcxXNvMtoEvYXleybMuu7n2ZmJdJ1SMRHn1Yv6Wks=;
        b=P5Anz7cx2yPr/RmujJfmrpOYJ2f9PSSLXlnkySHMqxvvoxMZBOZlTNvnL/6UkcNokL
         fTSWYKLT3Skq1eF5yRVirPP+QnBmQ89v7IZz+C6upriZPjf5r8QFXdfjrZHd0V5X80OF
         22E0NuR+tchPwhTZ9IjiotB6Q5UqNJeUM8rBJkPjh+tXRmNeGpt1mr1lQ5g9VgGeuWCi
         P8LiIg038eedCllp74zgO+Oo5TDrVwXdAO5nxVfzAeU+bYmq8srMdlJd6ToVLZ6/Iwer
         RsTjdQJPUhBgkVJScjWk90zPDlrixv3ZE5O4l3nqtu7loadU9pk+N90iyiAl4G8NrzsZ
         cY7g==
X-Gm-Message-State: ABy/qLZnaldmTdikPlwLacP/xiSaVctPIc3adZAis1V4cWpMCRJ/MvnJ
        azvHsm5g2/ITPpzzyKWNNdv3nQ==
X-Google-Smtp-Source: APBJJlHPBDGOlW5/xdNnkTD1dpp5utDONAo/bvxgt970H8/2oaZXga/IQJyQ0xb3kqq0ns1DNmpEwg==
X-Received: by 2002:a05:600c:20b:b0:3fb:415a:d07 with SMTP id 11-20020a05600c020b00b003fb415a0d07mr12625805wmi.36.1689004418079;
        Mon, 10 Jul 2023 08:53:38 -0700 (PDT)
Received: from [192.168.1.172] ([93.5.22.158])
        by smtp.gmail.com with ESMTPSA id f11-20020a7bc8cb000000b003fa98908014sm10807420wml.8.2023.07.10.08.53.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 08:53:37 -0700 (PDT)
Message-ID: <5a30eb7d-1775-b243-8169-b3b74b1da909@baylibre.com>
Date:   Mon, 10 Jul 2023 17:53:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 4/8] soc: mediatek: pm-domains: Create bus protection
 operation functions
Content-Language: en-US
To:     Markus Schneider-Pargmann <msp@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230627131040.3418538-1-msp@baylibre.com>
 <20230627131040.3418538-5-msp@baylibre.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230627131040.3418538-5-msp@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
Tested-by: Alexandre Mergnat <amergnat@baylibre.com>


On 27/06/2023 15:10, Markus Schneider-Pargmann wrote:
> Separate the register access used for bus protection enable/disable into
> their own functions. These will be used later for WAY_EN support.

-- 
Regards,
Alexandre
