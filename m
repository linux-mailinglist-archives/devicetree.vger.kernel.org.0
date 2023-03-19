Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68F826C060A
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 23:34:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbjCSWen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 18:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbjCSWem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 18:34:42 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE1DEC58
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 15:34:40 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id p13-20020a05600c358d00b003ed346d4522so6425879wmq.2
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 15:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679265279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+thFB7OZQk90WFUscEMwJjSApgo8twn3Dnxmm4qQtQ=;
        b=i1ir7JKnwGKqLWOfvW1+AVNs4nRrz2/D4aEgSe/bhJYZaQWRPIMfsQuev+DGIHpp9r
         qq2vTs6I2+1FDuArTondUaw+pRt7pi4LEsI92Sa56C0JMPLjmvfxAPNyIj3dYtmCVqav
         8Bp7MSieT+uQZbqgJKc/Nnp5oF2Ha8ZPCTf8ueolw5JzN7x2DQ5wBNNPpeUbGvOuve1i
         9F1g3Y1n4Q1VVmY1G4H/rTM9Y+qRG0j+HLgM7TgP5pDl6xLsJDpqIhnqhqyMZ39YainC
         K0MY2fSfDwKC1z9mRKFCHWHSvdCW/YQKYmyV3Y+0de+Do6AWDwIrG9g7NqKQY47ZbaVI
         2Gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679265279;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+thFB7OZQk90WFUscEMwJjSApgo8twn3Dnxmm4qQtQ=;
        b=GDdf7X5pEOb3hhiAExgr63mU/0vNgodXOpDmoLOP/k4C1KzitCkMOJVadyOvT49zrz
         NiKga/8Un9ZZ6TznG3fl2z9rUbpT/tj9Ibe6HICk7da4xh1o/vSSo/oypljnOCO2Y+fv
         zE2FzAhlUZV5sQemHpkRZMFarIOIJR+4pT++c02KKEhJAzQq3ZG+qLeYqKW+WWzQCkOn
         Rsvzzb02Nskd6xkDd6Lcct/F1kmt6XFCs1dXcjPcTck4vQL7AFlTwXGG3w0qjZ9f3ekO
         BfDLPKGf0lZENBKBn4Ly6RZHqMFoi1cvV0JchKNn5Z9hmyY8qxJIOjG8Ro/G2xGzd/Zs
         NXRA==
X-Gm-Message-State: AO0yUKVOus9W1oda+coRx1me0fsWkLV5ZjCssyMP/aES9eiR6FJMXJlt
        3+bczbn4bph9Vbm/+XXCa8VPzQ==
X-Google-Smtp-Source: AK7set/EFgayRXNmcuN2u/zs8TQZPuoTbz0sPP0YAxH6VzOd8cFNsCJWhHqvFDehYLh+2VwsmBY36A==
X-Received: by 2002:a05:600c:1e87:b0:3ed:4c36:ae94 with SMTP id be7-20020a05600c1e8700b003ed4c36ae94mr8306336wmb.15.1679265279168;
        Sun, 19 Mar 2023 15:34:39 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f26-20020a7bc8da000000b003ed2d7f9135sm8547561wml.45.2023.03.19.15.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 15:34:38 -0700 (PDT)
Message-ID: <c29dd674-fcc9-3a73-da44-60ea62598b73@linaro.org>
Date:   Sun, 19 Mar 2023 22:34:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 09/18] dt-bindings: usb: Add Qualcomm PMIC TCPM YAML
 schema
Content-Language: en-US
To:     Caleb Connolly <caleb.connolly@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-10-bryan.odonoghue@linaro.org>
 <7cd51a8d-7b23-7895-7c06-07dc98924931@linaro.org>
 <a4da1f8f-333e-9ded-d784-7f86c45c7156@linaro.org>
 <346ecd20-d64f-1d47-4860-861e142f9700@linaro.org>
 <aa5d1492-906f-9e30-8f97-6321db692c73@linaro.org>
 <c5ac0d15-4651-318e-4dd2-37b2f90b2ba0@linaro.org>
 <5098322b-d09b-72ec-ac6a-128a6a64ea17@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <5098322b-d09b-72ec-ac6a-128a6a64ea17@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/03/2023 21:31, Caleb Connolly wrote:
> The pdphy is fairly well encapsulated (3 tcpm callbacks go to it, that's
> all?), I think the tcpm part could be merged in with the typec driver
> and it could just have a phandle to the pdphy node to represent the
> dependency.
> 
> Then in the typec driver you can get the device with
> spmi_device_from_of() and call into it that way for the few tcpm
> callbacks that it needs to handle and to pass in the tcpm_port.

Yes or just have one "typec" device own both register banks

---
bod
