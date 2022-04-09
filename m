Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F3254FA990
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 18:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233620AbiDIQgW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Apr 2022 12:36:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233288AbiDIQgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Apr 2022 12:36:21 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 484288CDB3
        for <devicetree@vger.kernel.org>; Sat,  9 Apr 2022 09:34:13 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id z99so4733362ede.5
        for <devicetree@vger.kernel.org>; Sat, 09 Apr 2022 09:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nUZdaUByUd2oyvVVkc2cTTmF9WFGS+wYx2itfPiCpyw=;
        b=LFHLmMtAp5/v+tMcaSAhOV1RQm/QFN47xz65+zvZ1U0kEfou5agMe7bnQHZbA6dnto
         EZldr8j8vgWEoYZMWxiMkkxo/1VVMk1Se9QIC4QdaX6folPseoRsGwEU3zv9Z8QyIDiZ
         xiinIbOjTrga/QcPl84IfwqsdZjtWDwQrM3LPCF0SAWoyQp2RVd4I0UGSeh0bmTGik/W
         0BTkMqYvW9Mjq2CR3rrsglfVQQkYcYuuIi3it2h1izY7+5mMID049SR8r923I5aZxZpE
         Pg2YRiI3JrbM4GLcW9tspxLm7xj6a4UhTCN5U6ltIxUAeaZBFH+Ka/iqtZl2c+hSMvKR
         6Apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nUZdaUByUd2oyvVVkc2cTTmF9WFGS+wYx2itfPiCpyw=;
        b=DiidOTEsvNv5Ikh2K2ibZO28YbetbciaHoTx72cl4T1qICiISZQH4BUnJ5/lmcxgd1
         PtyFBFSh2tyKlN7G5y+6kkreshIG6MZYjfy6KrJb5BVujxJym4BwICgHHJTyBZm47SWn
         WlHqOoaS3kkoULL+yHMolqWjzV4uZC1BMTObgM4yIi1azjiI71Wiq6OHYAlVUN+ZIO7w
         t6di5ir3ekA0vcJ3xVooFdvi4XT48MPZVgaLqf+bjrrpvd8brMoX7bp/xKP0qudwwQKA
         NjXobzi6sQ4SHU18ywxoqeiww+UZNRmqDOl36BW5bHXVS7TqI/17xFyvs1+gXDheeFxy
         f/0g==
X-Gm-Message-State: AOAM530Hv1oEUd3umAcDzHA9yNTy3QsysgwiwSKeLHb7xnQlWFHlS8PG
        Wzyhf9C67yP7SfZn5J93jfbnEQ==
X-Google-Smtp-Source: ABdhPJx5nFYPFtenLrOC6J8muwwdyr+0iYIyt/FsLEvA+W3HK675A/7AZ+Gcr70qOjh2IrwH0u3dRg==
X-Received: by 2002:a05:6402:458:b0:418:78a4:ac3f with SMTP id p24-20020a056402045800b0041878a4ac3fmr24572034edw.196.1649522051814;
        Sat, 09 Apr 2022 09:34:11 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id sa19-20020a170906edb300b006e7fd5bfd51sm6156260ejb.177.2022.04.09.09.34.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Apr 2022 09:34:11 -0700 (PDT)
Message-ID: <64fec9b9-d52b-b247-9575-536b3311f591@linaro.org>
Date:   Sat, 9 Apr 2022 18:34:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/4 v6] dt-bindings: Add Rockchip rk817 battery charger
 support
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        zhangqing@rock-chips.com, zyw@rock-chips.com,
        maccraft123mc@gmail.com, jon.lin@rock-chips.com, sre@kernel.org,
        heiko@sntech.de, krzk+dt@kernel.org, robh+dt@kernel.org,
        lee.jones@linaro.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
 <20220408212121.9368-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220408212121.9368-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/04/2022 23:21, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Create dt-binding documentation to document rk817 battery and charger
> usage. New device-tree properties have been added. Note that this
> patch requires the following commit (still pending):
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220404215754.30126-2-macroalpha82@gmail.com/
> 
> - rockchip,resistor-sense-micro-ohms: The value in microohms of the
>                                       sample resistor.
> - rockchip,sleep-enter-current-microamp: The value in microamps of the
>                                          sleep enter current.
> - rockchip,sleep-filter-current: The value in microamps of the sleep
>                                  filter current.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
