Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61CF465FCC1
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 09:31:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231855AbjAFIas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 03:30:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232284AbjAFIae (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 03:30:34 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC0377A919
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 00:30:32 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so3027203wmk.4
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 00:30:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G5jrLtn8skMYCUXB5w36mPxMFBmvOOBixvoM0MNxf2A=;
        b=VPQZX08QJQA2/rBoVhzNqjs9Q//E7TAtUGS/2sSP0e24M57lKiNkymlTsNnzmZYYF+
         AjN4InbfEfDt3bsnkUBV6weQsvmWq8bF0LL0/UQqFClCFlAu+6w9FhM83X5DjlV3HZLa
         VdtLHQH2Ero13mAUyU8c739+GCwhMrDJUgn98qmGcmWA01YcqV/QNaNG3EWGE5m6Gw3T
         NX7+vrEKYbMkJfOo5zq0EpwEsOwSKYuC4l4XuVLiWjrzTCgmUtDoas5MA+ElYXwtKfRH
         UGMKobEgN5/d/GJzbZ5R5kjxM9Soxsi4t8oipf0aJsR/4jQdbFTFZ7+eSeEfpf1xgfuK
         YIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G5jrLtn8skMYCUXB5w36mPxMFBmvOOBixvoM0MNxf2A=;
        b=3bO5Uz2WdhtFRvodnWfpjtry4T381PpM9ugxZ989jYtGt/bWkT0PDKzgex59r+fj+J
         Octu8NjdMpVfIbX8GIQTjMzgGBcCTk7N2ptKoHnCKyYBHm2KG8rCNd0lFpR8MKlWVhiJ
         vW4s1BQzILz4jH6vnS/n+p7ksSQPLuNvvmKxPGBvz78MW2swbIk10Fvr/LpbrHrj46DX
         kBAJDk6bxBbm9adMHAoqX4scrMdW/wk8+yFuxzuTCL6vLfXxAfYWjnFLcmlcpWRuwW1y
         t6RijVXKHad1gd1hbX8jim2FrN/zeeFraA4oR5XSr+2idwIHIRlJ44EiX+2P68xQyfhR
         bhUw==
X-Gm-Message-State: AFqh2kpBKrmeof0+u86H7m8DooLK82X4ij+wwY0QqlYrojA3Q3LpFbps
        RhloVD5raO2iN2Reuvd073PVQQ==
X-Google-Smtp-Source: AMrXdXth0T1efa07WNTmxF4kDFoDPEKZKZl+aoOg/cdR2N9PPlFzW5PKylKrMGJebkSdtyetneKKoA==
X-Received: by 2002:a05:600c:248:b0:3d3:5d47:271c with SMTP id 8-20020a05600c024800b003d35d47271cmr37959272wmj.12.1672993831427;
        Fri, 06 Jan 2023 00:30:31 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o21-20020a1c7515000000b003d995a704fdsm840230wmc.33.2023.01.06.00.30.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 00:30:30 -0800 (PST)
Message-ID: <f17c520c-71c2-6b36-bfcf-e817092849f0@linaro.org>
Date:   Fri, 6 Jan 2023 09:30:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V9 5/5] ASoC: dt-bindings: Add schema for "awinic,aw88395"
Content-Language: en-US
To:     wangweidong.a@awinic.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com, ckeepax@opensource.cirrus.com,
        rf@opensource.cirrus.com, pierre-louis.bossart@linux.intel.com,
        james.schulman@cirrus.com, flatmax@flatmax.com,
        cezary.rojewski@intel.com, povik+lin@cutebit.org,
        yangxiaohua@everest-semi.com, daniel.beer@igorinstitute.com,
        13691752556@139.com, srinivas.kandagatla@linaro.org,
        jonathan.albrieux@gmail.com, steve@sk2.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     liweilei@awinic.com, zhaolei@awinic.com, yijiangtao@awinic.com
References: <20230106032835.141918-1-wangweidong.a@awinic.com>
 <20230106032835.141918-6-wangweidong.a@awinic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106032835.141918-6-wangweidong.a@awinic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 04:28, wangweidong.a@awinic.com wrote:
> From: Weidong Wang <wangweidong.a@awinic.com>
> 
> Add a DT schema for describing Awinic AW88395 audio amplifiers. They are
> controlled using I2C.
> 
> Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

