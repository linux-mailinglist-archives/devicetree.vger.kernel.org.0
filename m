Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F38A73F626
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 09:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbjF0Hxa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 03:53:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjF0Hx3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 03:53:29 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B92F1BFB
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 00:53:28 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fb7b2e3dacso2180589e87.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 00:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1687852406; x=1690444406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFyUpp8kap1v9npde7Et8xd87a7WkJqrxwFYu2nDCBI=;
        b=Wt48T0jQ45Vl+66IYIT7X70u6+RqFZtaPRr7m3qd96CiEsHActqT72/pAkH2EzdKZP
         v4VsDfkp0/tcb6qYBDVkVZwydqHyMmDVc4NwO2Ioqns9YEG9Og/XuogBdkRVRwtz1a+p
         dDJJ56WjYhWpB4DJa40/Z+CqNiSE5LotUyw0mhf6HZTaTxmoVjJ0UIf90QUz4XOPuegy
         FpG9WLx3W162ADwLpBVGdB1ykOOYY/LkPch/l9m3oDyGix3adR3XWX64nMLrllA7u7Bd
         VL6UWZigcb7maasdBm5w6KhLvGawc52swKgvt2aF6qkOdq9DJf3sTE7zoxWw/OXqZIQT
         hqQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687852406; x=1690444406;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFyUpp8kap1v9npde7Et8xd87a7WkJqrxwFYu2nDCBI=;
        b=IVLArJETprFhHqx46EigXyhqoIqLUhsUqLTh6KySzdm6IYRTW2/Sph3RMWhwAu5hBc
         Pc9TXRT62ikEggJzRKnMd/MzVe/gOva2xoP0iut0D/IhDM4yoWyzUunRXOe0brxxwgmy
         gChdNUQKP3cWHGoae/BlO+IEuDMxUUZ3z//DUdXTjA0xLUHEkKrthDmkdpQQDva46KZr
         2VSepEFSHWEMJXTUdgQaa8hPXltUJSxbm0qGjeEvvX+L3ykSKcYbp8zTqlRUHu5R/lvt
         hlEbql4bzXJpsm2cNk43QmMfa6fdP9u7D8iUxhS/I6I7c7P9IZX6fu/z2FxEyQf1JXsp
         frWg==
X-Gm-Message-State: AC+VfDxcCaIfCD9gMkuAUxKPOMgKmU16N/K1lOECaFW2czBw+yLx4Jpy
        s6SePJJ5TXnS5s6r802vjhCH+KVAPezIVhBhRNc=
X-Google-Smtp-Source: ACHHUZ6K654JUBkOtALSU0SUzMUCAE7uzgQXh7opoAFGc0yysUfIoaDxobZdDYlx9aQEpzpARQ0wrQ==
X-Received: by 2002:a19:5e18:0:b0:4f8:e4e9:499e with SMTP id s24-20020a195e18000000b004f8e4e9499emr12182675lfb.12.1687852406141;
        Tue, 27 Jun 2023 00:53:26 -0700 (PDT)
Received: from [10.1.3.59] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z24-20020a05600c221800b003fa96fe2bd9sm4932054wml.22.2023.06.27.00.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 00:53:25 -0700 (PDT)
Message-ID: <2b3ea050-abb7-3ca0-c9c6-2b2fee4f0d29@baylibre.com>
Date:   Tue, 27 Jun 2023 09:53:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: mediatek: Fix "status" values
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230626221005.3946136-1-robh@kernel.org>
Content-Language: en-US
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230626221005.3946136-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2023 00:10, Rob Herring wrote:
> The defined value for "status" is "disabled", not "disable".

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre
