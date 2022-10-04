Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92F715F3EDF
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:53:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230323AbiJDIx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:53:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230376AbiJDIxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:53:23 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 640843A4B5
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:53:20 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id a12so4545881ljr.7
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BjQ7wZdEwhDFP1bph9bud3xlXOp8F4ljX/e3KwokmSo=;
        b=gP+UJFWCXkYW9wdPw6MtNYo4Sw6tx6cERC0U8wNKHom2nSxk/xWWUFO5KsRIR5ifUs
         QwjXJtQRoO2q7kU9qU3ucCkSzrDUjJlIxar3Za/em+VwEyS2kc1AfKIsSXrdKXoQhA9+
         3HpLhYErzfYjxF662JKegHzVTkUoxT/fUdKCu27NARZyJhFwl2UKC6PZUSOyyVpo2ncC
         67C1ITWrO5eR4px7BN7RomV2P5bkE2apWb8AqYgz5bHu8SHt7FdC0xdWVLfGNIpSedQ/
         B6cPt9zlIcwV28VcjJjNIcHWXiFGoXLMrSHhRLhaOaK2o1Rfy499g5Q7XW+4o2KGvjQD
         6P2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BjQ7wZdEwhDFP1bph9bud3xlXOp8F4ljX/e3KwokmSo=;
        b=e5uA1/uJcQL089Km7x01RoNnJqs79XxC7+nCrCi7dPoAUwNgIQsS5Nad/sVk/o8EKy
         lY+8kS49udmSNSaDrXnCdqTLUbmty5iytnx/xqK9lT5qBL72cLg7m7ILMx1KpIumIyW5
         TY7tICvfhc7zE294b29ozKEhUIxmLaPG5ePwPLF84s0QnguFywploAuKekUHgtb7eZMP
         O9su6P/nnKIwpHOAJxZZujJGFzehGMPDI6KGVEY1JwhwEsnATiGIJxNrToWk5+pcWr1q
         IighzTES5/naavVG+2vrMszfJZa4fAmxZZ7hizTRLBOy/wzhcMZzHuiFzzivkQMc9PSA
         D1/w==
X-Gm-Message-State: ACrzQf23B8H3I1Nk2wApzDzi9PRliGnCaqpvWNV8PSODM25UUKcgQ0hB
        YP0PLAkDLbw8TETgcvpdkK1IAQ==
X-Google-Smtp-Source: AMsMyM6q44QpIxX9H7cijyngshgh38vlpoTRMflVLcSiiPIotWlSYuJ2zA66JfNPBP/Y1bqz6X884w==
X-Received: by 2002:a2e:9d81:0:b0:266:a1d7:74b4 with SMTP id c1-20020a2e9d81000000b00266a1d774b4mr7301151ljj.423.1664873598209;
        Tue, 04 Oct 2022 01:53:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z3-20020a056512370300b004a2386b8cebsm955095lfr.210.2022.10.04.01.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 01:53:17 -0700 (PDT)
Message-ID: <6459412c-74cd-f761-b9a1-fe7d5954c636@linaro.org>
Date:   Tue, 4 Oct 2022 10:53:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 03/11] arm: dts: qcom: mdm9615: add missing reg in
 cpu@0 node
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-rtc@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v2-0-87fbeb4ae053@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v2-3-87fbeb4ae053@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v2-3-87fbeb4ae053@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2022 10:08, Neil Armstrong wrote:
> Fixes cpu@0: 'reg' is a required property from dtbs check.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

