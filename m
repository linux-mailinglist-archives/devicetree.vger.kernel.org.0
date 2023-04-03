Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 305D26D40F4
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbjDCJnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:43:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232265AbjDCJnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:43:21 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAD4012866
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:42:26 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id cn12so114833363edb.4
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 02:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680514944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mid/9140p0j+BIWe4O7dq8r3UXcENeJox8otyQeR9vs=;
        b=dtaCwqrv4AubbV+H8Ff4368MUtQRSkXtmi4rmNuhv4dpaFEdBUDzSgYPDWVWFRuecQ
         gLfMa0ei7/5SFypxWp8+DfFP/XhDnMZCuic8MHCEwWhLB/50qD0cm6eSkIZgULt4H45/
         hkt/RO3Hlg/nNkHdWPr47R7RgdY2s94aegyOY2LoSwcF9Hd5q+El5fNZGDJV/9uasqZQ
         vL3yOFxDlmbqf6f7mQYEyXwDHQE3IJzfiADIPiXsIMh6JjupJ8iBMBqDenUKRgFfZmZr
         D32D5u5UZAMDLMg8UXY+RQwYovMwdUj2X7Mcf7lSSijxv6az7YZSS4kqqTLlf+ZaYwz0
         9JnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680514944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mid/9140p0j+BIWe4O7dq8r3UXcENeJox8otyQeR9vs=;
        b=A9Hnhl3UQZyPMiPNS1kgqifWLZqOa+TW3PXsMcKD9Pqf7WoGKSCixCQQ5Jvzg7RL2N
         Rcz8I3/mRbM1zMZ8ZHlsh1M7v/TyBPmWot18upLh9fUPRjLqwEqhp8a18ZIsRufHtpa/
         tawcHCEy3dLm+EYEgrVCTKI8afbKBKxIcm/Kxh1mgHZkrJDUalA/EdMV8jzkDjJUYTnw
         3DyTw+/sGuWUI+g39qb9VyCvMxjEPXBPTMufyV2/r8q3FeZLM/v5/ViIcXSLzF1gvIu9
         qXLsY3EItL3LSL5SRr/bodUlqAjg4OWfwKW5b+qFMFP0qu4WDxLQOI0afQf8ksORQBRO
         614g==
X-Gm-Message-State: AAQBX9cIGZYtN8WQHZG+wChL6thHoyeEBLe8LH/1adxb9DhluiEUsc8a
        iNeubHcqVUMHYILzLVSehrBuN2rNNdoK4f77XAw=
X-Google-Smtp-Source: AKy350aGBf01DI9O1DJpe7Q3su5fHDbbsMj9CrGhR+/iZ5zzk5IK+LNG0aBWLPnxiQgOTtdsYr9i/w==
X-Received: by 2002:a17:906:54cc:b0:932:c315:b0d with SMTP id c12-20020a17090654cc00b00932c3150b0dmr34352442ejp.34.1680514944715;
        Mon, 03 Apr 2023 02:42:24 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id y1-20020a170906518100b008c76facbbf7sm4351871ejk.171.2023.04.03.02.42.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:42:24 -0700 (PDT)
Message-ID: <073ec19d-7194-0b22-7b63-ad02aedea12d@linaro.org>
Date:   Mon, 3 Apr 2023 11:42:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V3 2/4] dt-bindings: clock: imx8mp: Add LDB clock entry
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, abelvesa@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-imx@nxp.com, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20230403094633.3366446-1-peng.fan@oss.nxp.com>
 <20230403094633.3366446-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230403094633.3366446-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/04/2023 11:46, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add LDB clock entry for i.MX8MP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

