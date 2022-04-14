Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42361501DCF
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 23:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236030AbiDNV6R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 17:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231866AbiDNV6Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 17:58:16 -0400
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E489F8A30C
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:55:50 -0700 (PDT)
Received: by mail-pj1-f54.google.com with SMTP id o5so6321069pjr.0
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 14:55:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=p4J2D9Y15bbl4a0Y5YpwKfGg6ieiA8wDXYDXSztcbAg=;
        b=rGelGfqKHb1fJKmbEArIUR/nXL/HdWswsTGysZAAdWLya7stjK2qHfmz9k4Y3NIZN7
         1q+1qEEymaB/yFnVYMR63C7QmFNFF1MOouwAfouDkfv+Z97oCgouj0dW11ApGwFqy1pr
         KtLmnolO7tEbm19pRl53bqn8STLjd7PlpJE+uhhzZjXMa0WBTKEweZeaiyH2rm5Dxjq6
         +x2i9+fe9ZNtuJUSgkTG3mv4tfoa7fwuCq6CPSTL8psI0Z4AuQJBF3FvwxT8SeXlFu/g
         n6uPDFlDP3kKFpitDdBj1TDpFqySkW8rMcG+EV43zeKLSgGzJDI6a9a/GOAopH2appDy
         5g0g==
X-Gm-Message-State: AOAM531VinDoJ2b2Ui2XH3wIlTJMyV2dkOo95TtYfGAEhZiSvPjBqg7y
        sEQ9rXgzXTFMLFneqNgomFy1vg==
X-Google-Smtp-Source: ABdhPJyib/M2xHCFWUypNYp+D6C2ZjbS7N2LMqLSJuQA+fqFc93KdJyuod9xrHqWJH5vlAixigjz8w==
X-Received: by 2002:a17:902:b7c4:b0:158:c493:e0fd with SMTP id v4-20020a170902b7c400b00158c493e0fdmr2748522plz.20.1649973350236;
        Thu, 14 Apr 2022 14:55:50 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id s24-20020a17090a441800b001ca9b5724a6sm2711383pjg.36.2022.04.14.14.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Apr 2022 14:55:49 -0700 (PDT)
From:   Kevin Hilman <khilman@kernel.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Johnson Wang <johnson.wang@mediatek.com>,
        cw00.choi@samsung.com, krzk+dt@kernel.org, robh+dt@kernel.org,
        kyungmin.park@samsung.com
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jia-wei.chang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH v2 1/2] dt-bindings: devfreq: mediatek: Add mtk cci
 devfreq dt-bindings
In-Reply-To: <39152c86-ca11-2792-6b25-ae55ffb47b09@linaro.org>
References: <20220408052150.22536-1-johnson.wang@mediatek.com>
 <20220408052150.22536-2-johnson.wang@mediatek.com>
 <855d7daa-45d1-d6d8-32bd-51778cf58392@linaro.org>
 <fe7d2b878c18a42ff36ebd9911ecb562fe29c953.camel@mediatek.com>
 <39152c86-ca11-2792-6b25-ae55ffb47b09@linaro.org>
Date:   Thu, 14 Apr 2022 14:55:49 -0700
Message-ID: <7h8rs7fhy2.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> On 11/04/2022 14:10, Johnson Wang wrote:
>>> Also please put it in the "interconnect" directory.
>>>
>> 
>> I don't really know about "interconnect".
>> However, it looks like a Linux framework about data transfer and "NoC".
>> 
>> While this cci driver is more like a power managment which is
>> responsible for adjusting voltages and frequencies.
>> In my opinion, "devfreq" should be more suitable.
>> 
>> Please correct me if my understanding is wrong.
>
> devfreq is a Linux mechanism, not a real device/hardware. We try to put
> the bindings in directories/subsystems matching the hardware, therefore
> devfreq is not appropriate.
>
> Whether interconnect - or other subsystem - is appropriate, I am not
> sure. To me this looks exactly like bus bandwidth management and you
> even use "interconnect" in several places. So interconnect matches.

I agree with Krzysztof that "interconnect" is the right place.

I'm pretty sure CCI stands for "cache coherent interconnect".  At least
that's what it means for the Arm IP.  The Mediatek IP being described
here certainly seems like the same thing.  It's just that the only
aspects being described (so far) are the DVFS parts.  Even so, I still
think it belongs in "interconnect"

Kevin


