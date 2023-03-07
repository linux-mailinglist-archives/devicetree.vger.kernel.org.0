Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79F7D6AD92F
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 09:23:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbjCGIXL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 03:23:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbjCGIXJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 03:23:09 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E8C81CF50
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 00:23:08 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id ay14so45324216edb.11
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 00:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678177386;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bsvQEVxWDlGqG69PjKx9UwP7aecD3y/kUgXUmvfhHcQ=;
        b=lsQEz275pvH+8FEj/h7Ww0GEFcurhFSWm4+mdoMwomxK5qXxkz2O/re+ouGJQQUs2M
         yqgZlws2ppqtaEwPjP8/OIA0TaDB6hFJ4YPfu/twHafTCHBhb7e3ToeH8eVKGt6iEvSp
         q1vHYlnf7bGpikgLk1zIrov7DJ0xl+b11ROJ7DETq60rJR6PRcSlB3rWCNlrd5Ldt9Ry
         5kpNhu5TwJieQ+RhUUcqWk7CuGZXLdEOu7F/f916zkGuv82pE0E1kjmTUkYc8ujylZAQ
         J4TUYTAPwHBfWHNk4AXWXs3UOX4+VgyWEPf+ywmjvnY0nUt+VgkyCrNagRpmNEwj5pSh
         8gMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678177386;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bsvQEVxWDlGqG69PjKx9UwP7aecD3y/kUgXUmvfhHcQ=;
        b=zwFmi3eKInr5UPW0g3d29Tqxe5JK3DthLgR8AreGQfC/Z0rI93bPq0PZ5WK+0u1h17
         wLlKq7aQuy2p0svYk+jmQyFCScbg/js9+J3GOWstFVAr08js3hi/mJk1jRjTEWg2dix5
         KtE5S3RB/4V//OveZPyxlTMoD6ozoZxT1pfco27H/3RhzR7oTr/6pXFtLNgtJw6qB1Y5
         I5DNC8ePz8U60Tufkq7DuBni9wfZTV2gGQzuoMYwnmWLhpOWucH+D9RtRrrafbyDmlP+
         DzCNYDxqHIfplAStXZYjnsKaFWNAaKkqupAdvPnQwFujdaK17tEUSNhqG/sxRbcLaih3
         LpkQ==
X-Gm-Message-State: AO0yUKUkb90a9r5sWCUTUTzGFpmsTGwmyCvn4Y6Bq+CXts2KO824Izf2
        v0PgLepk/dc4o6Bdgp3d93C+0Q==
X-Google-Smtp-Source: AK7set/pI4T5zAiugz10LG3mVZbxPx0VWV8mlvPrlq47VZ6OHWxQlyt6zxG0+wRCbDHpRtbVbNP0Yw==
X-Received: by 2002:a17:906:8a72:b0:881:a3ec:2b40 with SMTP id hy18-20020a1709068a7200b00881a3ec2b40mr12386452ejc.59.1678177386739;
        Tue, 07 Mar 2023 00:23:06 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id y7-20020a170906470700b008ef13127b5fsm5714065ejq.29.2023.03.07.00.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 00:23:06 -0800 (PST)
Message-ID: <633b1e27-d148-62d2-ef83-2d0da432c0a7@linaro.org>
Date:   Tue, 7 Mar 2023 09:23:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/8] dt-bindings: iio: st-sensors: Add IIS328DQ
 accelerometer
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, Li Yang <leoyang.li@nxp.com>,
        Denis Ciocca <denis.ciocca@st.com>, soc@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@chargebyte.com>
References: <20230306172249.74003-1-stefan.wahren@i2se.com>
 <20230306172249.74003-5-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306172249.74003-5-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2023 18:22, Stefan Wahren wrote:
> From: Stefan Wahren <stefan.wahren@chargebyte.com>
> 
> The ST IIS328DQ is an accelerometer sensor compatible with
> the existing ST sensor binding.

If it is compatible with existing binding, then make it compatible.
Although your driver change suggests it is not compatible...

Best regards,
Krzysztof

