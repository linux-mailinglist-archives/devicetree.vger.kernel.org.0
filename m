Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 014EF574DCF
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 14:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238104AbiGNMg6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 08:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239408AbiGNMg5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 08:36:57 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2700C5C9CA
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 05:36:49 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id c15so2053138ljr.0
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 05:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BiNLu6xnGV9ZsmOkKtRu8GiJpJaUEre3r3pnPbEbxjM=;
        b=FHdgMunntPsutX4pz+6aGsb6vcE7Ixf2ZYUFoPTGHrEFejrLnyjAlfCD0ywMiGyRDk
         UfEhXQxQP0ZuNp/Z3UGCb5Q/138+hHJbn65GnZcA413gKMKOWlQsvHtuqC4VEAN+MXl4
         CBO9h4pCl2qqbpu2Jwulr+X0VkSinEp6hUW6PcfB4NIeAnab+OFrMAeOB+Fd63cvd2Ty
         y0a6XkU6jcb9YDWJ2EIDhVhhIlvrnWDCpUja06ZdC7BDBr5OJY3rhVES6GA/hk0r62Yc
         DZoNyyE3jzlCFZD3Dw8EIXi1hxmYPzzJicSNAP6YnxNW8AQ/l8Q8//SWZvLU8YKajMSl
         /ZqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BiNLu6xnGV9ZsmOkKtRu8GiJpJaUEre3r3pnPbEbxjM=;
        b=Vtab8ZEljoUcktqe7hl37RlobVQg1bjshVLyMc0E+xG7XjyMmCLeR9AvThKr70VYKB
         RaVlQu4ROEnPPCrmzue/k+mW13a0VJl2wxeJNTbkPMawMo/G0dTjYR3pzgkVQgmh4M8r
         9RBAxlanfsLUaCOIbLa+KhmywESjJYUTHGPb1xot/e0VDxIEm3gJPL/w0qaSjAVqGm2a
         KXaz02nq3kZzBT3vJDYBUrB6rr9v71nMUWhTIEY7CEaECibcZc8FIqd75/kIz73G8hpK
         1gbmbsi2nV+m0d3yTdW2VP/DY0I1XKVsXp9dwnZAcqgO3hkFs4mjgQ9qAPME2oj+c4HE
         AZIQ==
X-Gm-Message-State: AJIora8Xf5qSOUPIqQeNEt7gSTKB2djvQnQ+VmfhN2BoF5r+QxrkAlW+
        5Xsxy4Vnv8Q9RZsSO9TZcurq5g==
X-Google-Smtp-Source: AGRyM1ufjQDkB4prXpgXK1PHUIK0jMqKORD8LAVpBkL75jwLGc06XPfOU+ozWIva+N7ub5TXsI558g==
X-Received: by 2002:a2e:a3d2:0:b0:25d:4834:aa0a with SMTP id w18-20020a2ea3d2000000b0025d4834aa0amr4658241lje.272.1657802207546;
        Thu, 14 Jul 2022 05:36:47 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id j16-20020a05651231d000b00489c924497asm339568lfe.202.2022.07.14.05.36.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 05:36:46 -0700 (PDT)
Message-ID: <727e71b7-9f80-d715-7761-0c56af1cf1e1@linaro.org>
Date:   Thu, 14 Jul 2022 14:36:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/5] dt-bindings: mmc: sdhci-msm: Document the SM8450
 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220714123406.1919836-1-konrad.dybcio@somainline.org>
 <20220714123406.1919836-2-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714123406.1919836-2-konrad.dybcio@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 14:34, Konrad Dybcio wrote:
> Document the compatible for SDHCI on SM8450.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
> Changes since v1:
> * Add this forgotten snowflake
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
