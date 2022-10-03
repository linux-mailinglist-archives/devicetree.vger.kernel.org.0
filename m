Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94CCF5F2BC8
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbiJCI22 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:28:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229904AbiJCI2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:28:01 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D807D781
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 01:01:37 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id k10so15417834lfm.4
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 01:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KOrB/A4OW62+78D6EYGHiYgfjqUdNg5aQnOgbAwLhMM=;
        b=cYsncVDiktv2czZv2Quy9c41x7ecbvlC4RKVvJ+kFhFZ9IKl8GdvhzPnelGomKf7V5
         BhWJP+G6B7o6GGDSrR72oVBhjFFDnImyMK/pKHyeEmsyZrQKH2byNpCnZTqKtQjL0nyz
         /x9Ojj/OEmUQtpJZpjX9UxOhveAUXUMLIOiqGPufolWDFMtX9aJ2XaW4GSYJLqj19+/2
         T6MP9qODROf/xrBisTtynUXKaLJVS9dvN8x20pzoDhoJaCUypcEpHUfKPBtTShhvb0Ia
         f9KvPkYUN+IzhQD0IYZdWvZUJYBajUItOk9JmvD78OcMZrE6fiIGv//KByXYH/J1MJIm
         xBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KOrB/A4OW62+78D6EYGHiYgfjqUdNg5aQnOgbAwLhMM=;
        b=sYxg0apy40dKYRIDNT2IGsrhgYtrObJPGQ7gzPZ8VaEvVLRiS/Ud2XyK2WawuAAMur
         w6vQie1BzpntLB+Yh0JPqeHytGiOL8D2suU2Nc69cWBmJ/BjEn6JAguzG4gjyo76wQsG
         uOz8RxrKm6S0w44eGtk1+MY4mBV8gQU+VodCig6UeZPFNMafJmHEkbnb2JZ2xUb0Lwhn
         Iz5i2pb3R3LRV+H5t9bFAYAXDiLDFiMp3E+Sy60XwLJT4uD7F4Qw730Eeygn7Ro3JkOv
         SFcQiAKgV0kAbVGm3mR1A3XLscIo9MtT/mTJRWtVdfrYFTIiNrHA6yzwSWujOJYneXfQ
         nmPw==
X-Gm-Message-State: ACrzQf2APtg+j3g76P+W9EI/Dz1mID3Y36pa6SC67rwaYQkZmF/V0QNx
        mcecJpKRWzm/Xusbx3nsV701UYQYbsc3aQ==
X-Google-Smtp-Source: AMsMyM5BX5rQ3GFlG8S5xtQzRBx5yzbNbBiwMgj+ODwz3+m28wwVMtyVLgwW6iNaqiXgAW1FIFlsyw==
X-Received: by 2002:a05:6512:3d28:b0:49f:4b31:909b with SMTP id d40-20020a0565123d2800b0049f4b31909bmr6578552lfv.669.1664783227551;
        Mon, 03 Oct 2022 00:47:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g19-20020ac25393000000b0049944ab6895sm1353215lfh.260.2022.10.03.00.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 00:47:07 -0700 (PDT)
Message-ID: <45d73953-32f8-d9cc-bfb6-02fe610c90ec@linaro.org>
Date:   Mon, 3 Oct 2022 09:47:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: add schema for WM8961
Content-Language: en-US
To:     Doug Brown <doug@schmorgal.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221003032414.248326-1-doug@schmorgal.com>
 <20221003032414.248326-2-doug@schmorgal.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221003032414.248326-2-doug@schmorgal.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 05:24, Doug Brown wrote:
> Create a simple DT schema for the existing Wolfson WM8961 driver so that
> DT support can be added to the driver.
> 
> Signed-off-by: Doug Brown <doug@schmorgal.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

