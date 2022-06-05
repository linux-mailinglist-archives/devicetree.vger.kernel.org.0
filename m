Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5098253DCE5
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 18:13:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234405AbiFEQNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 12:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345605AbiFEQNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 12:13:55 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A95EF4D274
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 09:13:53 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id bg6so4903500ejb.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 09:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lLHJF8itDbCGt5pN7A8NEdfZyjPyqD4Q2iUB6Pm/cZI=;
        b=gCYvF/1H1j+deX0Y/2/FaDJPBMTqvx99p9n/PNmRiwrh9IFGFd1IzqHL47KaRa/6ju
         dEhJrdk5RhtB52l6qON8qGwcXsblI7XwBZeblHyYOvCWcZIJmdvCQHRRUJCdwAHZaedc
         X08gX8FPdL1ZkcJJ8dfMZtqE0dkT+cycYnw6GpEi3huju9obp9JYDkA6PStBJ3qHeVeb
         L0f8vi8yqyJEj9i+adbDIulAW5SJcwacUeifWMD1vDG2R3DarFbJYAVFeF++ObFXeasA
         9HTyq4YfG6ysQMDEL9SqDK0gpmn69OTDgbgM1bQrU8fVFbUvcG1Z/KhdXeEQrPcCHXsG
         /xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lLHJF8itDbCGt5pN7A8NEdfZyjPyqD4Q2iUB6Pm/cZI=;
        b=YUZnWIWc6Otisa3xNHuZh1nCiw6KI7ISGMsXqLMIByxW/2sJriEFqwFoYD+O1JFrWT
         mJFnyFHPxFRtE423ncFFsDSsP5Y/Eba8yjxso6KfqWPxf6HihdAVZ+6Rj6Ku19GJ7Vxo
         Qj/G3UvtWzvEv2DbU2AtxApsJlaO7ru+J/vr7MPX7/l8VyaEfZCVIQi9LRtu2lZ3TulE
         BPS9vFUW7U0xisgoFIxOECNQ24a1a+84UZMt/N57rc3ZFm9JOWiJTmOMdbq/yfXVAp8K
         AA9pY94e5/nA8msl7qpCstIyNuH85FYKRpPWhj2B7hqVIl3WG/1vYYlmvVhg/O8vUHBr
         NprQ==
X-Gm-Message-State: AOAM531X/B8sivGvijLVFwwQa7yi/VFVtk2L5DemkAJ/T8j0m9giEdlP
        sR4PPGXKT5At+Jv8hQGaN0YNqQ==
X-Google-Smtp-Source: ABdhPJwwQYWTE5gohxGjKVA+yFqOkqxemhBBY3bbZX1d8bQy/ZXhYxTyuC3zFWFIOKQAAd4IZI/qXw==
X-Received: by 2002:a17:906:2001:b0:6f3:bd7f:d878 with SMTP id 1-20020a170906200100b006f3bd7fd878mr18306906ejo.133.1654445632295;
        Sun, 05 Jun 2022 09:13:52 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e20-20020a056402149400b0042bd75c53casm7095695edv.83.2022.06.05.09.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:13:51 -0700 (PDT)
Message-ID: <8c125973-0221-6610-79ad-df1587cc70fd@linaro.org>
Date:   Sun, 5 Jun 2022 18:13:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 4/5] phy: samsung: ufs: remove drvdata from struct
 samsung_ufs_phy
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p43c70afe414dc36f3abb18cbdb1d450a4@epcas2p4.samsung.com>
 <20220603020410.2976-5-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-5-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 04:04, Chanho Park wrote:
> To change an offset of pmu_isol, we need to store its data instead of
> having drvdata's pointer. The definition of the pmu_isol structure
> should be extracted from samsung_ufs_phy_drvdata and rename the name
> with samsung_ufs_phy_ prefix.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
