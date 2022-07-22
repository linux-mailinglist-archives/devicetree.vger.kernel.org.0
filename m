Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2978D57E24F
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 15:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230089AbiGVNaT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 09:30:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbiGVNaR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 09:30:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02B46DEED
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 06:30:15 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u5so6525433wrm.4
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 06:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=kmvcdC1R3fmwO5Guy8VXsZI1PNcrugW7p15VtMSIhtM=;
        b=BTaxQaVfgNVdF93aAu2JgdJ8B1t8XcP104h7IUmg4OaHdmo9DNLi1qjojDxoMBX2hx
         di8CV70H2g6XBoH6TTp0DeOeSUbtusefkeiUESKson5HzXVmF465AgFNMwUmBqV4lNJh
         BtmBNuY7GrrbYN0bKv4FbcXGGEquy+qWwC4vg4QnZQR6LyotS4ixDeCFGwQq+qC7krlD
         N+LfpXHMCDK0ZhPbHkQhqB4x0TUJyZAKy3ntuD+VCREUy8Wb2fqxfIpqGicsdONVBVGT
         tUc5x9WnMZqonnTNXsMbpaQEHOC+oRsm8saJJgNH5mHIBRNhQjgf6MGBaKX5KDRTB9MK
         LGfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kmvcdC1R3fmwO5Guy8VXsZI1PNcrugW7p15VtMSIhtM=;
        b=uO+wagTpV3CCRNn0ZAKzkj4i5u4cnm8pSe8LTjGoxD1tfcFZ4Xtkp4y3AcqBEfFLKb
         Uljn+jBQy6ovYsk+91uvUzj0mhiP5+hv0HLhMYikZ5WgGCoyC9BFY358wUinL9ho4Udx
         kf/c3o3rpwEDGIoM16M6eCcoV84kMLXSyiDv6TzYYY2C4sDhNFRTEfZY+UdjsF1eCq7K
         1hwuOc8oGQynKSSkKVcx0xp4SecP4ve+BpYoCAm8eQOt/+zRFOGVgmyjNjF8rUbhEArh
         C/HCU3gNNG/glAhXACz+3ofhWM53Pj12eqfOWH8RAfgv5YBYaDzGVkSZeL2bZPfHv+OC
         sDLQ==
X-Gm-Message-State: AJIora+G72eI06KVxpF227tJkmr4BcsqHWR8Ow58OvaQ1yrt2UP8OQVp
        GM46jee3I5JuK8PyZxiWDsHdF0sXMH2FuIYjs4E=
X-Google-Smtp-Source: AGRyM1tpbt0xn/SKoUyioj28SicYBIoVH+uV4pXW5OcZdprVoftvr0rNnw/PeY5O5Kmmt/oq3sQiCA==
X-Received: by 2002:a05:6000:156f:b0:21d:887f:8ddf with SMTP id 15-20020a056000156f00b0021d887f8ddfmr389035wrz.534.1658496613532;
        Fri, 22 Jul 2022 06:30:13 -0700 (PDT)
Received: from [10.2.4.117] (lfbn-nic-1-76-188.w2-15.abo.wanadoo.fr. [2.15.166.188])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c358c00b0039c96b97359sm5251171wmq.37.2022.07.22.06.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 06:30:13 -0700 (PDT)
Message-ID: <45c6843e-0447-cf5e-6f1a-3920032ac88c@baylibre.com>
Date:   Fri, 22 Jul 2022 15:30:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v1 08/14] regulator: drivers: Add TI TPS65219 PMIC
 regulators support
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org, nm@ti.com,
        kristo@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
        msp@baylibre.com, j-keerthy@ti.c, lee.jones@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220719091742.3221-1-jneanne@baylibre.com>
 <20220719091742.3221-9-jneanne@baylibre.com> <YtayikFdidxXXubS@sirena.org.uk>
 <b89db08e-3a06-5a8d-2c24-eb087ee3ca7e@baylibre.com>
 <YtqabjVY1vRgjZlM@sirena.org.uk>
From:   jerome Neanne <jneanne@baylibre.com>
In-Reply-To: <YtqabjVY1vRgjZlM@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> @@ -0,0 +1,414 @@
 > +// SPDX-License-Identifier: GPL-2.0
 > +/*
 > + * tps65219-regulator.c
 > + *

Please make the entire comment a C++ one so things look more
intentional.

checkpatch is complaining about that:

---------------------------------------------------------------------
v5.19-rc6-PB-MSP1/0005-mfd-drivers-Add-TI-TPS65219-PMIC-support.patch
---------------------------------------------------------------------
WARNING: Improper SPDX comment style for 'drivers/mfd/tps65219.c', 
please use '//' instead
#91: FILE: drivers/mfd/tps65219.c:1:
+/* SPDX-License-Identifier: GPL-2.0

Let me know if I should ignore checkpatch recommendations here.
