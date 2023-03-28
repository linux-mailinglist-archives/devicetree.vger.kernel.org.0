Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1256CB75D
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 08:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232583AbjC1Gm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 02:42:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbjC1GmX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 02:42:23 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4FFC35A1
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:42:17 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id ew6so45296927edb.7
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679985736;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ugTwB3nlWFvY364JS8o25gk6uB0TRisKc7yrTFLXKV4=;
        b=waC4uNfWLTMm31jOiDNj7E0Tk6R4f79kPFgb2PRGbtayQ6AE3QHKZuVEQQyYOgd6d1
         HzpdSiomjiAiVTgwteMUIwCMW3j2wWW4e3/vkAZbMbQ58x7+b9ooRfYt7IWJ9gtWN//k
         3PK/r7N22g3Sq0Ssb1JtfgrCn2J7o0EZvN9zAAs0M+NVY07K+4fRYNQAJPRz+0l4YV9R
         2VL9OEoeq/ixlHLkcHRe6ANlSzKnchxFRM993L49H6dIny+WC97UnMvpnlrU2oCz5QJU
         LJN6D2/57UGj6ufnTP/QfeQUG6otIDI0Ej6e3vcoCJQq3YASINBbQ4CPzYyK8YVY15qB
         Jc7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679985736;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ugTwB3nlWFvY364JS8o25gk6uB0TRisKc7yrTFLXKV4=;
        b=pNGz+lH+YyL9oQBwGiE7vMPO7qm34NPX4DKotuGbn/SDTshWKOKF4s1cpcB5yYjjm2
         SOwlQSnGxA9+9mB1T+NFVFUptjm+/tQpJQpneOqlQuSGNIanURQp0q2nHfrTFyAg+4kY
         ugaUEH8T7SO191I4krrt2/jmm5TfT+pyhpCK6drVNUgZxY4HuHUryV7gP0DE6uQ1EPp4
         lwWweWxvyl9Mzhmcqe6125GqnGmzkZV3HLWsKAFGHs32+eX8fEcOhal1cgSQvt2+zW0a
         amQWukOGGn/0xIF87L1oc+vre8EflT+uW8cglrIrzabOfxOI5H3fMRJu29mr8C33llOR
         C1aQ==
X-Gm-Message-State: AAQBX9eXmdBlKMFJisnGQsWO6hKHyOA1uMUAbr2JSyGG7kKQbfYbTUOS
        mQubYJajP0vYwPD1A2+BKk9MJg==
X-Google-Smtp-Source: AKy350Y0yDfnTCHqG2i9UQFcPpCM0HrNNBssNs8DcguIv7kPB1Ao21jSX3jD1CCnE265MR1wM0OicA==
X-Received: by 2002:a17:906:184d:b0:8b1:e791:faef with SMTP id w13-20020a170906184d00b008b1e791faefmr14631173eje.67.1679985736280;
        Mon, 27 Mar 2023 23:42:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id v5-20020a17090690c500b0093188e8d478sm14878469ejw.103.2023.03.27.23.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 23:42:15 -0700 (PDT)
Message-ID: <fea2f419-917f-7be8-5386-6d2159d0f141@linaro.org>
Date:   Tue, 28 Mar 2023 08:42:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: thermal: Drop unneeded quotes
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Guillaume La Roque <glaroque@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230327170233.4109156-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327170233.4109156-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 19:02, Rob Herring wrote:
> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

