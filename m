Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 130E95BBCE2
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 11:43:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229515AbiIRJnE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 05:43:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiIRJnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 05:43:04 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46BBB237F5
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:43:03 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id z20so30603869ljq.3
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bymflm0cWcyCTcdpDuivzckUWs78vF1VXtEIBmc274U=;
        b=TI0J/rsC/B5GyVft25Qvkb3DYyVwMDmddjhpplWK+hlHUTclerDLmDiCsjcmUzSTjq
         WDZa7usVHWlBmPh+0lAUg6l8VMWF1fib95uSb+FJyS/sq7R66K/2fq0BVLERFkYVs7CM
         Fc5avno0PhJKEaw9xoUMVhNMb+CZF2J6Dr/4nV2OCegSKH8vafgCy18voZtuyq0wTKvc
         YVaV3p0gDQHoEsxP4Z6Z+DPuoE2Cv6wX8WWojV4ni2kNJmSGbBXeXE4x3ZFzQ7FhXrdO
         3TFC0XTKG6pVompPgIugtC8kChWJ+hb16XieXjhEm2qRQBOihMeRohAgq56bHQEABvMv
         Mghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bymflm0cWcyCTcdpDuivzckUWs78vF1VXtEIBmc274U=;
        b=HKWZpxyWqqpOZ/9e+g+pOvdViRr2SyfE93u2ieUxe6/3pmkhLlnwWBgB5vL0PI75KD
         VQSyFKhZpLzNMM6NPWadkQpuJALPjXNW/KE2Q0+fnsQ3eW9eSTm5grSwRXFp8e68bp80
         CAQ8jcvn6wRpMFJ0DNHau1UZQfGZodUMaqdXjFZ9w0XU9luYOqjk33Mfhj1l7fm53auo
         ydOwCy7T9Y+zvx3UlMvzLyfzjYrIqRXb8DKQRxDAvpoJMIvOHab7qvTI34vGRKaHDTz2
         WUvcEnDH62GBQl+PC1UKzYz/VZfj0SJppocx5Q/2ntnMhdB1BHnHFHUVB94EO3ctGkXf
         qBgg==
X-Gm-Message-State: ACrzQf10mloVJDRvU94RVh/1bkj1P3PLU3DCtqD6R/BoT4FUJHFsYyB9
        JFLUjhTxcfNq+M5KmY44+caeXg==
X-Google-Smtp-Source: AMsMyM5oa1+BlsQvoBLSHJ7qg8UbLPA6SYwqWrNJ6NOOwZcdHftell11JoXnHhdlBiSB7vRm2amj0g==
X-Received: by 2002:a2e:9cda:0:b0:26b:e930:6f7d with SMTP id g26-20020a2e9cda000000b0026be9306f7dmr3860677ljj.436.1663494181646;
        Sun, 18 Sep 2022 02:43:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v17-20020a056512349100b0049d3614463dsm2805245lfr.77.2022.09.18.02.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 02:43:01 -0700 (PDT)
Message-ID: <46046974-78a5-1aa5-6d39-d6e41645148b@linaro.org>
Date:   Sun, 18 Sep 2022 10:42:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 1/2] dt-bindings: power: Add MT8188 power domains
Content-Language: en-US
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20220916055216.20139-1-Garmin.Chang@mediatek.com>
 <20220916055216.20139-2-Garmin.Chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916055216.20139-2-Garmin.Chang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 06:52, Garmin.Chang wrote:
> Add power domains dt-bindings for MT8188.
> 
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>
> Change-Id: I62dff8af2bd74d6148712bfaa1caafc0b49e4b0c

Run chechpatch before sending any patch.


Best regards,
Krzysztof
