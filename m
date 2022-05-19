Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3C3452CF7D
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 11:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232931AbiESJgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 05:36:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236143AbiESJgG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 05:36:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E80D39821
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 02:36:04 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id w14so8044375lfl.13
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 02:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=onybpRz7wsYWveJovLHOrWhVwS59mEc1/1KqKRSfSM8=;
        b=olD6VpysjkH0jLBOwKjjLej//tuHVwkIXXvAbGNnkujihoM1hth00fHiy4HmnOqNz5
         NurMeKarjQ4KzGRViIgyAzi5Zk/wL2z6jKZ9zBzmX3bRmP4WD59B3/rBulhbLuq4l9Ud
         VpvxatVl+qtrBoAguRV04PA8ETpuSwLaxmnQuxAyU5sfk0ILo5BMwn2SAUUljJMXbKUc
         DLPQa2FbCUKLE1RGq39iGIZvCPgv4D9vLYptATyWeLzJJg4Dq4/tC7D2Ra/x4uw67gMa
         5VF+imrYYgwcuqyZjksGQ0UHackcL+i3IEl9XQ1bnqU3fDXW0d+ACJW8CtXn7kZePN4e
         gdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=onybpRz7wsYWveJovLHOrWhVwS59mEc1/1KqKRSfSM8=;
        b=k5eEhvhH7k+IwCLBDdun8xo4vERBkBdZsMjcRCq/rwWFVWxaf7PLxZAbRerG51uCl6
         vC/DvHE4GtZgnRi6qoNs4Uw4wnKdTsXnaHfXdY0O9dKNJP4thQCCgwjf/O28NFbK7o1J
         VMcnBp5XdrVkjkTaa0LysKotlWNxiu+kupdomuGZiku4r0Vr/P5i32XowFjaxnFlcGvt
         Jy3qhqb1YyyRjibzDvGE2YTbtJ0tnj8K+/gZ6rYcYg3pgtK7kanF+7Kt1aywcWIKJfET
         yYfTWaLocx86Z4HwCFUeGJDyRIuyU7U8OhWcccU6Hqxro8Ll2b/PTVIlksyuoKGrnSb0
         w9lA==
X-Gm-Message-State: AOAM532a5BnEhy4AZbk40ocxAJE0HO3oD/y1aA4RzEhXADae+eBGiOsL
        LkL/pZPH9z0h6g/JzWU4zIA/hQ==
X-Google-Smtp-Source: ABdhPJxntgUVPNj76bvSLwp38vj4ad1KYCyoyK/YGXfzgWo8T9TlfdVXZQL9W1xLmskk+oq6gg6EgQ==
X-Received: by 2002:ac2:4c51:0:b0:473:ab19:87d9 with SMTP id o17-20020ac24c51000000b00473ab1987d9mr2679623lfk.634.1652952962883;
        Thu, 19 May 2022 02:36:02 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o25-20020ac25e39000000b0047255d21153sm226325lfg.130.2022.05.19.02.36.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 02:36:02 -0700 (PDT)
Message-ID: <9425835f-1674-225e-9558-7b2ba1952879@linaro.org>
Date:   Thu, 19 May 2022 11:36:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: arm: qcom: Document xiaomi,natrium board
Content-Language: en-US
To:     Alec Su <ae40515@yahoo.com.tw>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sboyd@codeaurora.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, y.oudjana@protonmail.com
References: <20220519074112.25600-1-ae40515@yahoo.com.tw>
 <20220519074112.25600-3-ae40515@yahoo.com.tw>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220519074112.25600-3-ae40515@yahoo.com.tw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2022 09:41, Alec Su wrote:
> Document Xiaomi Mi 5s Plus (xiaomi-natrium) smartphone which is based on
> Snapdragon 821 SoC.
> 
> Signed-off-by: Alec Su <ae40515@yahoo.com.tw>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
