Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64D964FDC7B
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 13:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230477AbiDLKbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:31:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376813AbiDLKTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 06:19:30 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD42A7D02F
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:17:08 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id bv19so13033202ejb.6
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 02:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GhRsvMkqvOOZJ6oaXqUbn0li7sCX29u9xzmiTytidkU=;
        b=sqyfOTz7XJvOCL5M1maTVrFwiuyplXumGmdQcsG5q+E/kmxF+RY74KM3gGHaX+dXWQ
         IgXgoAqq0nbUBzxBaYqJ67ua3WQHE78OOnsNkkCtlSNdr2ok9W9pGfd9kDc35HNM+3PL
         ZofHRa+AVA+/tnD93nN7h0e/SWxCH7W7FSaTcqKY4G/thTKVIH6rz6mJ9gSjrWwN23Ll
         /8eb8Pdf0eLYNq9Fhw3W/hTCzIBEcC2GS6CZAVtizlWq2uCZGh5dZNOBE3LWDFn5k+8h
         ecMFhQ69Ri9j6CQ0dMcw8OVKH7KNjYhNqTY3Qma38vQytSAJ6ULJvn/K4ng8P7ZEm9DS
         VauQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GhRsvMkqvOOZJ6oaXqUbn0li7sCX29u9xzmiTytidkU=;
        b=01jLmTwIVkEJ+hluMQSHlqhesHBAR8vr2iOJdb4esacw3foOcvedL7faHJX+MW26Bb
         ntmEMlQpSqAVL3kZMcv0kdotOXhpoGO0iLIkR9LM+sF3suqQyGwa6x+BohAQmx0tCuYp
         lUiJBOv87ZoLivDmYnUzcZlA3y8k9u1oJSGtOAnGbg3cQewleYa5+4BV4WeHWdHrEFVR
         W9fL8pkOkgFvV50yXJkvSn29TChXm42oBEi8Ej/amyb8VRnwk6cRgKVi/Q8g0YWyeZqZ
         xsyzmLxZOVq/sBIxnqeiO3gHBim+8x1sV/l5FNCMY2DgbSC81j37Edk2W1VN0R++jj1H
         fKtQ==
X-Gm-Message-State: AOAM531lgVGXN/0knsJZ385uA5pEWLAKW86/7LEvD2AetOUnfgSY7k8K
        PzYcgQws8yev9OEUtBOPRaP1dw==
X-Google-Smtp-Source: ABdhPJytgzbzMy/xrcB0VUNhJafmlE2cIehjiSoAP81ZGOZ6ie8XloS5sE9HdQwarBVxSude5T6RtQ==
X-Received: by 2002:a17:906:3082:b0:6e0:111f:8986 with SMTP id 2-20020a170906308200b006e0111f8986mr32504576ejv.677.1649755027477;
        Tue, 12 Apr 2022 02:17:07 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id g2-20020a50bf42000000b0041cc5233252sm13533827edk.57.2022.04.12.02.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 02:17:07 -0700 (PDT)
Message-ID: <39152c86-ca11-2792-6b25-ae55ffb47b09@linaro.org>
Date:   Tue, 12 Apr 2022 11:17:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: devfreq: mediatek: Add mtk cci
 devfreq dt-bindings
Content-Language: en-US
To:     Johnson Wang <johnson.wang@mediatek.com>, cw00.choi@samsung.com,
        krzk+dt@kernel.org, robh+dt@kernel.org, kyungmin.park@samsung.com
Cc:     khilman@kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, jia-wei.chang@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220408052150.22536-1-johnson.wang@mediatek.com>
 <20220408052150.22536-2-johnson.wang@mediatek.com>
 <855d7daa-45d1-d6d8-32bd-51778cf58392@linaro.org>
 <fe7d2b878c18a42ff36ebd9911ecb562fe29c953.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fe7d2b878c18a42ff36ebd9911ecb562fe29c953.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 14:10, Johnson Wang wrote:
>> Also please put it in the "interconnect" directory.
>>
> 
> I don't really know about "interconnect".
> However, it looks like a Linux framework about data transfer and "NoC".
> 
> While this cci driver is more like a power managment which is
> responsible for adjusting voltages and frequencies.
> In my opinion, "devfreq" should be more suitable.
> 
> Please correct me if my understanding is wrong.

devfreq is a Linux mechanism, not a real device/hardware. We try to put
the bindings in directories/subsystems matching the hardware, therefore
devfreq is not appropriate.

Whether interconnect - or other subsystem - is appropriate, I am not
sure. To me this looks exactly like bus bandwidth management and you
even use "interconnect" in several places. So interconnect matches.

Best regards,
Krzysztof
