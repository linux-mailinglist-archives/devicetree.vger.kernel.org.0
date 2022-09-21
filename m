Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4DD35BF92F
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231303AbiIUI1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:27:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbiIUI1U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:27:20 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3212A89914
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:27:12 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id w8so7907081lft.12
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=gY2lzq3N2Qe2ssVBMXnL/s3SN8sMkBLrkElMWRrbxsA=;
        b=DziEZGWtHcHI4L/Gz3wfDxdm66CUhwr+qYwy2jz88G11sb0IHdQPEg0QPm9mNALHFi
         WCWgcC7pK3OrLLH5jhaZk1rPcM1wn3HheatWrvhwTM2BUiHTGwZUVsiYGuumE5KpUABx
         e4HHzRHWaE0XysvOCB8tZzUJgUd1PpPUw17eV7/L7fvGTpSirkV7oVGCnRupcQUDpYuw
         EfGz0Y6NgEJOX2b6iGU5LaKH5eT8Loc30hfbaQUgtiRI3YpQKbA7KXwoAvgSretfdhJE
         PKfzKPRx4R25Z4Y3QC1grCq5kHAsZB47xjyeSC8h7W/9l40YVzqZEmYdstJ3jgmDJmeH
         6IhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=gY2lzq3N2Qe2ssVBMXnL/s3SN8sMkBLrkElMWRrbxsA=;
        b=QUMcn0TMNUXWSfInLSOBLfshURXtLsj3L21kkbjpyEggZO6N8y8MJeJsiKfyHzbqKR
         KTG7CF3knlLOoRFbSEf53CGNYG9N6MWKJhPL34ZhSUj/PqpDGbvG4BGqO0pKGuPQEwbs
         0CjFAkvwXptfcy6PYM8DEiYBz7Pdlc57V92W2LwI/DJt0DSfNhtpFXteAOV2Kyl8BT3A
         tpJc/KmnBC83GDYe3bOZbYMV61ZCJIc9C1OMCeImDdNBH2E3HASrdurxff1+tYUvMxXn
         pxSKixLde3jI0J+B2aiCdEXpPcl6TWKgHd97zQUE2XRKfCTOBRVeGTJHAgHubNVBQEiM
         GV+A==
X-Gm-Message-State: ACrzQf2e2F78ITgwOm+mrJ625yx4t6V6iYmiM7vRnRKuzKQ4yDKsBk0w
        SDOGiGQiT/ZPQ0CjEG4oT7ijew==
X-Google-Smtp-Source: AMsMyM4pf0Cx6J3kAlAnrQDlQNIDLladkdySQ9qoP9yZpwNjyJlZIkYXTUAypORtMZkYYohrGTiAkg==
X-Received: by 2002:ac2:4d2b:0:b0:498:fbf0:4f89 with SMTP id h11-20020ac24d2b000000b00498fbf04f89mr9327153lfk.500.1663748830232;
        Wed, 21 Sep 2022 01:27:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512075400b00492e3c8a986sm325857lfs.264.2022.09.21.01.27.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 01:27:08 -0700 (PDT)
Message-ID: <df77a1d2-ee85-75d4-7341-6949d5b82ccf@linaro.org>
Date:   Wed, 21 Sep 2022 10:27:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 2/3] dt-bindings: sound: ti,ts3a227e: add control of
 debounce
Content-Language: en-US
To:     Astrid Rost <astrid.rost@axis.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Dylan Reid <dgreid@chromium.org>
Cc:     kernel@axis.com, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, Astrid Rost <astridr@axis.com>,
        devicetree@vger.kernel.org
References: <20220921081834.22009-1-astrid.rost@axis.com>
 <20220921081834.22009-3-astrid.rost@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921081834.22009-3-astrid.rost@axis.com>
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

On 21/09/2022 10:18, Astrid Rost wrote:
> Add devicetree parameters to control the insertion, release and press
> debounce times.
> 
> Signed-off-by: Astrid Rost <astrid.rost@axis.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
