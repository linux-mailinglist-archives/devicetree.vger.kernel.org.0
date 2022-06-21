Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2890A5532FA
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 15:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236416AbiFUNLV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 09:11:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbiFUNLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 09:11:20 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4E91AF09
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 06:11:19 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id e40so6752582eda.2
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 06:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iKG7ipis6svDRJZdPtz2/v7PW+5iNIJmzZjHALS7NSA=;
        b=okX+XmWFVy8JkpopHuzLRfgSke7JTv9kr3wB8aAZYW7uPFgGtBNefvBCzCyVSiD2HY
         TnUi0Ww2tDe/iD32IcnsZcbSSPly/JQvMmMcTC95dxbVfXqlV0Oj+1EtG5LQkRBhj6AT
         4Lr8qoiBBS9N3HvMdWPHUGFj8a5z2FnZCngklGjalL/tVkMuaHywyOyaJ2+S45XkCky2
         X/cFcjcDmKY6TZw5/yaaHZ8YQRFHBZ6DSEPFcQGQ5jyjgr/uIuyX82plxGm9LxkOVi6f
         78GBh57ZNFjKjSoKxxdssEvscwQqRR95ejACIeFNNFrY7WMO63gX3D8zse3OsiXEA0h7
         2eEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iKG7ipis6svDRJZdPtz2/v7PW+5iNIJmzZjHALS7NSA=;
        b=nASnQzS1qnZBxD7A4i6GfbpcDVP2WdLchoCT4qWYj6PgQoOZXh6fuAQZFeSfsR/Cuo
         vAtvIMlC7q0zHwoc9gccjPav5Fo0a8dpFm70qiqfKYApUlH0xTzey2w4KhETvJWcEt1J
         KDyAr3UAq2B85rOlOSGDgKf3LKTFqo2BcPwfAynDc8Y8PBXR77Q3p/jCZuxK/V6zcGfj
         mI+C4fwZ4ogJ32vU+VyXcRqmqshgHuzcEhX4J7c3HxRkUIg0QG/TMYOAF/2kKwAAd/bZ
         TbV4ZVVaKWBQFwbnSmPLV28fW09tl5INxX8z02SZd6WOB/hNMcY84S79cMCJYCxQPCpk
         zYiw==
X-Gm-Message-State: AJIora+Wzm4Py+vTH9DW5SbekBEO53gAeS6g85B4lV+4xhj0h6bYla25
        B1A/wtydw9HC7ejo35qXKztsrg==
X-Google-Smtp-Source: AGRyM1vKW37lesBOhQl1w2hkQXH+6mMPK7WPBmLgxo70ZkWNzmO3m43rOEkPpANuofDWkYzsHia7IQ==
X-Received: by 2002:a05:6402:2419:b0:435:1e2a:19ce with SMTP id t25-20020a056402241900b004351e2a19cemr35898425eda.370.1655817077646;
        Tue, 21 Jun 2022 06:11:17 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u17-20020a1709060b1100b006ff52dfccf3sm7522455ejg.211.2022.06.21.06.11.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 06:11:17 -0700 (PDT)
Message-ID: <d0f3bab8-fadb-709c-7118-20e23fba1dc4@linaro.org>
Date:   Tue, 21 Jun 2022 15:11:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 3/4] clocksource/drivers/exynos_mct: Support
 local-timers property
Content-Language: en-US
To:     tglx@linutronix.de, daniel.lezcano@linaro.org
Cc:     kernel@axis.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, alim.akhtar@samsung.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Vincent Whitchurch <vincent.whitchurch@axis.com>,
        krzysztof.kozlowski@linaro.org
References: <20220609112738.359385-1-vincent.whitchurch@axis.com>
 <20220609112738.359385-4-vincent.whitchurch@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220609112738.359385-4-vincent.whitchurch@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2022 13:27, Vincent Whitchurch wrote:
> If the device tree indicates that the hardware requires that the
> processor only use certain local timers, respect that.
> 
> Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Daniel,
All patches got my review. Do you need here anything more? It seems it's
only me who reviews such code, so I don't expect more Rb-tags. :)

Best regards,
Krzysztof
