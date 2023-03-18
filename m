Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E59306BFC01
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 18:46:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229886AbjCRRq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 13:46:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbjCRRq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 13:46:27 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7B42597B
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 10:46:25 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id p34so46640wms.3
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 10:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679161584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jN4mwQJK9fgKVvZv47WjlhMEzt/KoX94uhMPM+Y9DlA=;
        b=oIfRvfgZyNkDWjeZHLg1Equ47Ga+HSCzg0fblb86EPcQq0XL80IhCMhjcZzpsGv8wB
         L+YFdRa+prK+BpESnLLSIgcl8OGDCtTTLclL6XdmgN2hGA30eUs9HUjJv8oz4WpjBO9v
         fQ0aWOKbbxlXwD5h1f+6nXRJucKhpPfOvLZY1fBMZ2TE2Ebu9U2wjMAYeGneR747vE26
         UtR8ahq05Aet1Skm3kgzufEh6ZTxJP6juxIZU2sNIsBYoGI3d0KFZdSGlj98f8oqhAyF
         m6uvBMQ/UfofqPt3miR5jgWwWNPGfoQqEm6nZj3V65SS3LoSdC3waOJWVHFwQbxz1cSz
         zvJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679161584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jN4mwQJK9fgKVvZv47WjlhMEzt/KoX94uhMPM+Y9DlA=;
        b=CJgBgY2h9wkQbXPs3l5zuOFubFnHCws0U6VpJFzUYK9ceyiHK++bYI9kTAtceiMcSt
         xx4a8qCzxTq5prd1uVa4QUiQB8rHITjUE2Si1j5VJM7HnQ038QEJ5GV5R9ItHF02IAMh
         IVbm4PjFS0K/npa13FbgiIjuJcdGRQdxTNE3/tIvQxDLsfl3bfdYxXRF7hTnYIJAr6nd
         xUtJ8A6dD1Psgj2NlqQNrJma0V8N+1cXdYAOzHPABbFhYCuyylCFdsV8+XzpLcCe8Sl6
         yLC+8xlUvw7+sAp0Tn7Waktjh5d/fTZ4yebQEmDod0/kfVJxgQ4pumkbG0Hmy4nQvkXs
         wzPg==
X-Gm-Message-State: AO0yUKW69LcbhuX3/pHLzolKPjiivufllum9hPGUTTeyRZBs6gonM8os
        blbyC+V9cL78J+fKDYNWhBihlQ==
X-Google-Smtp-Source: AK7set+vfT4pr/nMnXehtADBF2zgRujwgpJ2UK9FWHSQN29ogeql1dwskTkujmjvzlt4xNOXGmeGiA==
X-Received: by 2002:a05:600c:2185:b0:3ed:8780:f27b with SMTP id e5-20020a05600c218500b003ed8780f27bmr5401853wme.16.1679161583967;
        Sat, 18 Mar 2023 10:46:23 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id u17-20020a05600c19d100b003e204fdb160sm11785131wmq.3.2023.03.18.10.46.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Mar 2023 10:46:23 -0700 (PDT)
Message-ID: <3c63ccd5-3320-afdc-2620-aadc77faef35@linaro.org>
Date:   Sat, 18 Mar 2023 17:46:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 17/18] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM
 usb-role-switching for usb_1
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-18-bryan.odonoghue@linaro.org>
 <6e897b77-671b-2049-4327-631350e8f868@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <6e897b77-671b-2049-4327-631350e8f868@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/03/2023 13:10, Konrad Dybcio wrote:
>> +	usb-role-switch;
> This could maybe go to the SoC DTSI.. Bjorn, Krzysztof, WDYT?

Eh well I think this is a correct comment.

There's no good reason to have this as board-specific since it is a 
controller property. Moreover it only does something when there is a an 
agent to feed data into it.

arch/arm64/boot/dts/qcom/sc7280.dtsi:				usb-role-switch;

---
bod
