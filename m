Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55E82554CFA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 16:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356938AbiFVO3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 10:29:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233919AbiFVO3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 10:29:06 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2364031353
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 07:29:05 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id z7so24145794edm.13
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 07:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=eY6hl7x2OmQan4PYUD1Bjl8LlhVtyhv+gi/IBaGVvk0=;
        b=i3ZR2WI0WybHw6Ud95ax651bUgjBXx7D2e/cL+4L9Pa4tohtPtl+zZ2Ou1ft+cC8ye
         g/gsFaHRK6KB/KtjAjC3Jf2ucw4oIuy6GBfr7V8r83/JfljSuZRcfnkNWA0UqCEd4a47
         6a14DYRD8+bW/RNoj6kM5Ay5nsQi5bvfb0dIQBn/DImeaJ+Kyru2ENkUFlRCsW0MjOI+
         KiJpOiTOjFWV3hO3k5fApEu7LZ7ZowWgJOuMhlOvNRRyYj/kvKMtMxZJypCsdLEcCHiy
         0rlNzif5MF4qcSBUn8yt1NRtESbuVrWXYDG7yUPqVyAyySbJFtVQ/cyKah1GVIC6LF73
         iJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=eY6hl7x2OmQan4PYUD1Bjl8LlhVtyhv+gi/IBaGVvk0=;
        b=aYtk3E8sSBRVtzdUKAqnHZmomyOQg8TDib3EBRPo+CrgXfjL0G8eCAA+0gqjW3ws1g
         KWveOwZpBKZktEy04UkrZtnfFUAyXM6fL6EgEH8xrCmTxG26GRt6KVH/WFE712FiytDS
         lc6lrRznEoi1O7JTGFO+IFv8Werb+ACg49YvbLgRZrhbMqwng6VdLAI/Eco9/DD4uPxu
         CnZ1IET0XxwHhwAGi2s6nBVTUFl4gxeNanN/7GTbmqtEO15z286quZEhlp/XQsjXG+OF
         xJqV3exLWH8tQB6i6SycvvGvSNPejuhavjlHeccsPS7BUg1s0kuFl9rzT+H9b3+XV+lJ
         VT9g==
X-Gm-Message-State: AJIora8gw6hZ1dvI1Y4cJ8/pbs4IxRoloQaOPGJ7yKHLBp3FNC5J42jZ
        fj30gAwxi1gzcJ6Gd03d7PITqQ==
X-Google-Smtp-Source: AGRyM1srgj2iJtoHexTQ9IsSqs2aSBpb/QKqY7iWJ8uB+/1bmVRho+nrxcHIX3oN0e2HZIqTmd1j6g==
X-Received: by 2002:aa7:c38d:0:b0:435:9257:99a5 with SMTP id k13-20020aa7c38d000000b00435925799a5mr4476690edq.204.1655908143688;
        Wed, 22 Jun 2022 07:29:03 -0700 (PDT)
Received: from [192.168.0.225] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s2-20020a1709060d6200b006f3ef214e2csm9700954ejh.146.2022.06.22.07.29.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jun 2022 07:29:03 -0700 (PDT)
Message-ID: <7c707d16-1237-e587-3768-245b710e0663@linaro.org>
Date:   Wed, 22 Jun 2022 16:29:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/3] phy: dt-bindings: cdns,dphy: Add compatible for
 dphy on j721e
Content-Language: en-US
To:     Rahul T R <r-ravikumar@ti.com>, linux-phy@lists.infradead.org,
        kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        laurent.pinchart@ideasonboard.com
Cc:     p.yadav@ti.com, tomi.valkeinen@ideasonboard.com,
        linux-kernel@vger.kernel.org, jpawar@cadence.com,
        sjakhade@cadence.com, mparab@cadence.com,
        devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org
References: <20220622105311.21415-1-r-ravikumar@ti.com>
 <20220622105311.21415-2-r-ravikumar@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220622105311.21415-2-r-ravikumar@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2022 12:53, Rahul T R wrote:
> Add compatible to support dphy tx on j721e
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
