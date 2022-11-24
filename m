Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9E75637711
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 12:03:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229934AbiKXLDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 06:03:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiKXLDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 06:03:14 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEDE52D1C7
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:03:12 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id t10so1634797ljj.0
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mDM/d5CET6oYT0lLoOZG0E9uim0TDLBGm1cgXTWoslg=;
        b=hQ/V92dhjJCRtQq+P0sHevHeRvw2WaHOSVebQnPRM5NHe5pY/eF79cBnAdlfh7QmEc
         EL8X3vZIGa1EXRcgO6fHuDKK8K0x+oQQB8De3AykL/jaBwFYIsButHQyJZz/lccN6167
         yOUysvh0Q92VU/wYricMhO1SezEbDvAWtyuerOmBPA+6Zh78uK59W20vX6NCQ2ol8n28
         9DAWuYvhVrd83PKndvPOOUJL7xdr6+sN8vKNeJCedLRzO+0y7zPxDJJGNlp+Hjlv67Ml
         RGJ5nukneSZIp/TvwVuBjwHXO2vvRbIDDRdxiS6whP+MqL+8WjEjHayPbk5Cxv3BXVX4
         nJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDM/d5CET6oYT0lLoOZG0E9uim0TDLBGm1cgXTWoslg=;
        b=LbUNh3cmmCtfazcrElKMDvKDIuchZNv5I1w2hscNwAirUkLkAZaD9tm4FiqZ7SJuwY
         tt848wUsqITbtdNz9nnic0G+qU5cBXIb1lmXcPMcg+n0tRBdMNJURPW/cBcKH9ZWL3IP
         IhwDos0n6a7sPeOeV20wnvpvA9GU9am3kQmp+8VBhJbC1hh/r9pgomM9Nc3oikx1AbKy
         knIrSMVfP0NqikCoKAA/tKSJUQt4tne/Tzl8tXg264hApUyKh/rePpY8aPMmt1uZOdtN
         Me9N8bhWo5Z8x8A6iY31lKy8i7z3fcpuZGfdoRK6EUxG9lwkcxlrJfW7T8LTGob342JI
         di7A==
X-Gm-Message-State: ANoB5pnybJaQQXYbW5cTCub7FJPutQtq/gznoKH/xYJ0jYuB2pAwdieJ
        TnbONzWh3dkIg+mj+2SoKbKDuA==
X-Google-Smtp-Source: AA0mqf7VEQKhxtsN0eXgoWfAX7pDNSgYO1qXyyK17In6HBwYMWCXFFo8nE2OyXmcSI874cGj9Fb/JA==
X-Received: by 2002:a05:651c:12ca:b0:277:a9d:9355 with SMTP id 10-20020a05651c12ca00b002770a9d9355mr3881647lje.102.1669287791098;
        Thu, 24 Nov 2022 03:03:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z14-20020a056512308e00b004abc977ad7fsm84341lfd.294.2022.11.24.03.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 03:03:10 -0800 (PST)
Message-ID: <3d4812c3-1963-5e5a-8d13-39891bbd6733@linaro.org>
Date:   Thu, 24 Nov 2022 12:03:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v5 4/4] dts: arm64: qcom: msm8916-acer-a1-724: Add
 touchscreen
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20221121133732.207820-1-linmengbo0689@protonmail.com>
 <20221122132142.257241-1-linmengbo0689@protonmail.com>
 <20221122132421.257658-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122132421.257658-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 14:25, Lin, Meng-Bo wrote:
> A1-724 uses a Focaltech FT5446 touchscreen that is connected to blsp_i2c5.
> Add it to the device tree.

Subject prefix needs fixes (reversed).

Best regards,
Krzysztof

