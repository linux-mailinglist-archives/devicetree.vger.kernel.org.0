Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9988D6A1807
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 09:34:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjBXIe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 03:34:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjBXIe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 03:34:57 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFDC2E0D6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 00:34:56 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id ck15so53125898edb.0
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 00:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=106DQ9YVKeBzQ+ncUs6rU+dFjK99cLBqZsLiF+hrE7o=;
        b=wbVuLbc8ajdIQTCoGK6UZe0mKrWtK8hJqksXlWm3+lx5hDzGn0uVfEO3sOWOHhAA5W
         vhJ6w0uhSD7CAmyOz83luCSVWTu+/FXbN/rksOivcRyJB6pvylMQuYJprJIpKlvdTnik
         P04JUVWfqJQJZ6Q6u52jn5MAIMX2+lX10qqnMaxSv/r9Wj7/wWH8UOcqcsjR9Chf+EuA
         N98+/w/N1ALJx9ynpsrOB7M6pvt5A3Pba5ZRc8PMNVC7vqlRGddMMu6jCKmv1yjPOdPo
         g9CTG70D9fQqSwpq35hXp+P9pgUtimtcBxPcWZynnT84tO2X5VuycpFLy/QbHg6q5J2q
         SCtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=106DQ9YVKeBzQ+ncUs6rU+dFjK99cLBqZsLiF+hrE7o=;
        b=kaHAj81xMZ27F+v5vqYSuVJx1JEDVBSkAO6W7GqaDtFRiPgiTmJUa9w08JLKT1eAtZ
         sTGZXv/nB4gy0TkOQ/3fW04U7+xrtfCg6uuxGtio9AXiPA473oPd0XH2z0BdDVmQIOwy
         EgsKADuKIi0frIFtQDB72dMbhxhHBZtScAF0rV66a7uoZBKKsbsF/4kgc0Bd3hlCSbGf
         HLpOCZEkbWQocbG9WhIZJhNaAU/gcdyF9+MlAsNd80cqj8uONaOBspn2IBfMwhPzdAEC
         wtvnVv3icV+z9cu4Am3LFITqwVTqTuZCM6UpMVZSQ3yMn3QiNSxTJZ+hajovQa1ncGvn
         RIaA==
X-Gm-Message-State: AO0yUKUlfEZxo8tsrb8dN24nGXyHzhg0+KJSEsA2Edj3qjU6NFC+mQDB
        07yfoPpsCo+kczFUB65KLXiU/g==
X-Google-Smtp-Source: AK7set8kqzTyywS8kT4UHSJN6sAtSfBmrblVXam3/LeBI93y4iwtZxArQnZl5GOJ3fz+Gz/ub8RFQA==
X-Received: by 2002:aa7:cccc:0:b0:4ac:c720:9255 with SMTP id y12-20020aa7cccc000000b004acc7209255mr16382906edt.34.1677227694880;
        Fri, 24 Feb 2023 00:34:54 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c96-20020a509fe9000000b004acc6cbc451sm6066713edf.36.2023.02.24.00.34.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 00:34:54 -0800 (PST)
Message-ID: <978cadda-3d55-a293-f32e-785943317059@linaro.org>
Date:   Fri, 24 Feb 2023 09:34:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V2] dt-bindings: usb: snps,dwc3: support i.MX8MQ
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, balbi@kernel.org
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, jun.li@nxp.com,
        Peng Fan <peng.fan@nxp.com>
References: <20230203014526.1461386-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230203014526.1461386-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 02:45, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8MQ use Synopsys DesignWare USB3 Controller IP, so add the
> compatible.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

