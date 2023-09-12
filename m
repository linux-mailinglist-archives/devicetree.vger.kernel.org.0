Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32EFA79C6F4
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 08:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjILGeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 02:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbjILGeN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 02:34:13 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982C1AF
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 23:34:09 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-401da71b85eso57287705e9.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 23:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694500448; x=1695105248; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hjjNMLOd7UD2xCsLMNKlm6XzuuMq2uaNNbQdYjNnedw=;
        b=KY++gDitEvRhig3VVgM5aWqVN+leD0ch2dtGlBVnCyYZP4oxnuictP5Wq8pFnvcKD4
         ml5q8SDaKti2oDv4W6QAHMOiI2Wlu4Ie0YyV13NA7aZzo5Ioauf0dudAJwoFGGPgTBNm
         uzWzrE3XoyxNeZvDwB8UxVCOvK5JuTBGVtgjS25Z9AlZxO8UEAWGrxLlQ6yZqDsbEPpA
         uAKcsLRKA/yHujhlrrpAzpQ1bC/l4IgXHmB3EyYy/O9PG1eF7Yxl6Wd+BFdCIhqAKLHJ
         CFK+iSjZLDZGkfgH8tNCXF3jw7z4WEcJxW8WcnaLaZVu3NSXgZWzX0JlGbVk/EBX7x07
         X0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694500448; x=1695105248;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hjjNMLOd7UD2xCsLMNKlm6XzuuMq2uaNNbQdYjNnedw=;
        b=nUXFPrqDkMB/q2pVo2Xnfa7w6VzzGTbcuG6nM1IDSXRHvsOWLYwUjkbASBe7q6AWPi
         oxmlZ7fuiZpTmCId5vkYj/HkNp5wMGp2XXXpnUvpjT4Ix9Gtb5Z6WLeqWblBx6J45ivN
         wSmcynl85km3BGuP3e21QMp+J83N7v0xfIYMONPU2GbCC1AoA+9JSvLosa3N1FpSHOvQ
         T1+qRzWTShz717IpGwxcIaxdoUVW0fFFQrdmd4aRG9k/QR1MyPuTbN2/LM2+K+gF1i50
         i2bMED5Rb1shu3HfAsXRE9QdrQ8+X5cngObN7y4TUFnHYTLJ2KxypQenCQS51YPHecIr
         7IfQ==
X-Gm-Message-State: AOJu0Yx9hmHKdaqPs/tLN04+qrSwxZfwSF8m4Z6WIYB/K7S/KTi86R7J
        VQINZo3BeKQVbEJbaU+8/+QPVQ==
X-Google-Smtp-Source: AGHT+IGSVPBJnLET6PEE9S7yg3QdrX6hcDdJ09TzEt7oGbCuNjTPGU9NEFZVrgl8WzSW/fH4Ly0w2A==
X-Received: by 2002:a05:600c:2303:b0:3fe:785:abf9 with SMTP id 3-20020a05600c230300b003fe0785abf9mr10252285wmo.2.1694500447719;
        Mon, 11 Sep 2023 23:34:07 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id a12-20020a5d456c000000b00317afc7949csm11972550wrc.50.2023.09.11.23.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 23:34:07 -0700 (PDT)
Message-ID: <fae042e4-2ae6-44dc-b046-ec6be587768d@linaro.org>
Date:   Tue, 12 Sep 2023 07:34:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] arm64: dts: qcom: msm8916: Disable venus by default
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
 <20230911-msm8916-rmem-v1-1-b7089ec3e3a1@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230911-msm8916-rmem-v1-1-b7089ec3e3a1@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 18:41, Stephan Gerhold wrote:
> Venus needs firmware that is usually signed with a device-specific key.
> There are also devices that might not need it (especially during
> bring-up), so let's follow more recent SoCs and disable it by default.
> 
> Enable it explicitly for all current devices except msm8916-mtp. That
> one has just UART enabled currently so it cannot really benefit from
> Venus.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

