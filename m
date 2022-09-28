Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7FCE5ED822
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 10:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233695AbiI1Ir4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 04:47:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233711AbiI1IrF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 04:47:05 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF5DB75CDB
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:44:59 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id g20so13557479ljg.7
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 01:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=eoeLFJb5asYxvFvY9caZ5v4jyel1bUpDAdRO5lTcXc8=;
        b=Ghfd2GliLGSjg3434mEt7glLAb4F1oQLctuj0fyt7cnVD7dKZTuG0PB+NXxXmfiCBe
         nfly4vYhvKmfZsQCKVUS0RjKGoaQ1kJ0kz5HYB603f/6KoxlRYTUwiaUaCGLQvGyPru5
         JO14SvwfLkNemgJqxTOiwY7SeYm8mVs9wzGB0LgT7EqUL3rXJqSdTn9dO3wJvQKpOgD6
         78i4u4bV4DyfoZgTf6KFuEK6JMzAXN5Y8wBWiqOSGcb2oQeI7G77gzjlLIOIySgB2l9R
         9SLtx+sG2gcjpPOFHSbHa7cxFPYA93sVPjlCGpQ/E9rXN0MDt8olDOZFRuPnHvnjPlbu
         u5Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=eoeLFJb5asYxvFvY9caZ5v4jyel1bUpDAdRO5lTcXc8=;
        b=L6uiDuUGEfl2dq40SXz/LKJJkXHpkmExkMeimv718188vNKwNBxgr2IOcxphZV7KKG
         JWRe1Chuilb8yKAsWxf1EK3gPzwRJBfX67tIYlWAMHLvvl3I3yfkzcH9JrlJFmvi3f5B
         ZJ35vxts3Es/xZjUiwbA05WzChyK0sL2rgi88piHHWIfF70dJsC3BOapt3pQ0Czg9bpM
         lDdlx4XAxUOPuTnzL9qXJxyatTca4SFujCA7IgdQA/senMxHz4Trr15HIkaGSg+LxOtS
         2vITRV7SI2U93T2hkzFjkro26TSUKpsTSu0AEpKfFdrSdlOOOUDtcf8zWl6okXDswdWD
         y5HQ==
X-Gm-Message-State: ACrzQf0ft0JhpvyN43F1I+2Eb0DudaknxTl/d1KwwVMX/ezNlhvjIPif
        RsaTj46BWWu6tdQYEPkTdTybAA==
X-Google-Smtp-Source: AMsMyM7o2APuV/glS+yr16yBtxdmGojUCsjYP66kxFSp6E72eHSIejpreHPBLTKcFoB0C5m5jg2BrQ==
X-Received: by 2002:a05:651c:1a26:b0:26c:4c0d:b10a with SMTP id by38-20020a05651c1a2600b0026c4c0db10amr10738404ljb.415.1664354698124;
        Wed, 28 Sep 2022 01:44:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id be43-20020a056512252b00b004994117b0fdsm410403lfb.281.2022.09.28.01.44.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 01:44:57 -0700 (PDT)
Message-ID: <3551ca67-006c-b651-fc90-2e3f0beb971c@linaro.org>
Date:   Wed, 28 Sep 2022 10:44:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/2] dt-bindings: power: Add MT8188 power domains
Content-Language: en-US
To:     "Garmin.Chang" <Garmin.Chang@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20220928084315.29187-1-Garmin.Chang@mediatek.com>
 <20220928084315.29187-2-Garmin.Chang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928084315.29187-2-Garmin.Chang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 10:43, Garmin.Chang wrote:
> Add power domains dt-bindings for MT8188.
> 
> Signed-off-by: Garmin.Chang <Garmin.Chang@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

