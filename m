Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 424CE7518D9
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 08:34:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234050AbjGMGem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 02:34:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233560AbjGMGem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 02:34:42 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AF411FEE
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:34:40 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3143b88faebso484040f8f.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689230079; x=1691822079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ji3ABV84q7pwwNcfLMGwkQ8jm7Jiga5U46rBbgA+QPQ=;
        b=vkQ0eGOJBnUWmvOHYA5/mHo4VXPHxuKN2ttCE5Hxt0mqrMFan9kXyFkzOLCc9NcLVR
         6YzdgKqR54Xr+2FgTLzncb5UuenWFyy+GSH/24ojw5TBNYbn3zzNl+z7JH31GvSXYRdl
         9/pCGhWYre7Oi6+GqeCa9OcztPaMNUJCaiQJ+P3tMHjb7UbrXlvuuYeLSemnWAyicJkR
         BpbZq0ETNbph8Wd3gqZQo/HeDS72QjURxXDtdfjlZ+neriDrAHhI+Gwt5b9DYCEaEem2
         gpAVnb138hW8YRZpnHqprX7MgWko0U8rCrpjdsbRuIz4KIoJJiDNJqo+sq0ngTGLF8e6
         flaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689230079; x=1691822079;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ji3ABV84q7pwwNcfLMGwkQ8jm7Jiga5U46rBbgA+QPQ=;
        b=PZX0aWqH2hf2oTe/GABSFuGVsCSCmMfevU2bwWaSDOYNpkhR2b4YzgN6hcrNJ52HwB
         KVfdUAey6OqDmmcaadoh1pvodLr2Aj+Os+wkdVgs0EqF2UPQ1ceVVhkOfVCQY2OYGsOM
         uRWBVEtyY/8IzMuer4v5+JL/B2HyD7fHLnL2DMaf5bE9NFo7fiXR+MOIG1PG5YuPin+v
         tPdQu/JGBPZ4lBiy4acAwOpbohnZBxfw0JhRF7i9/qA60FXk0LDCUIrZ0uo4eUHpPQLb
         jVpw/0EQ9mlHGrQq7qaf6n5xGyIQcB0WElwkom8pysgiMAoqg8139WNbX3lv2UEAWPf7
         QvIw==
X-Gm-Message-State: ABy/qLZ5gtkDwliGrmMzOTD0sXXJQuG4aa8hCS47SOG1B8MrX5P7AGWt
        +FqLjWogYoVOddQrt/EMG9X+3Q==
X-Google-Smtp-Source: APBJJlGP0pTmoCMHxRetA6rjQg1JjLzTz1+auw+WbVrKvwRyLurg/WoJOzckWnrg6kd+jof2FDtEMg==
X-Received: by 2002:a5d:408c:0:b0:314:71a5:c103 with SMTP id o12-20020a5d408c000000b0031471a5c103mr577330wrp.61.1689230078805;
        Wed, 12 Jul 2023 23:34:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id t16-20020a5d49d0000000b003143bb5ecd5sm6966237wrs.69.2023.07.12.23.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 23:34:38 -0700 (PDT)
Message-ID: <77d4f683-8c78-8801-407f-389c96ce7c85@linaro.org>
Date:   Thu, 13 Jul 2023 08:34:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: extcon: extcon-usb-gpio: convert to yaml
 format
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230713002519.109392-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713002519.109392-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 02:25, David Heidelberg wrote:
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Missing commit msg... but anyway this was sent a month ago:

https://lore.kernel.org/all/20230615145838.1526919-1-alexander.stein@ew.tq-group.com/

plus your version unfortunately makes similar mistake as Alexander's.



Best regards,
Krzysztof

