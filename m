Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA149637703
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 12:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbiKXLBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 06:01:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbiKXLBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 06:01:44 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F235FBA8D
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:01:42 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id g12so2022508lfh.3
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 03:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kd8zQI9wnYru5j50rc+Ckmmg1m5RoBPFttE/lorPY5w=;
        b=OY9LNDjlBiY9+3MakXwsxkfxLZDTilqyaHG7iKmM2W3oxEZLB4DF5NhAJc/cUzWHx5
         xaLdXlsVLv86+WahFaiF29wX9zICvj03Rw6mHqvsaZVHYwJcA2ic5IcuGiW7FqXIjmpw
         k7uqD5F1zHs6ropXo6J+iC5ipLHXeN+njTOT4bAdSQB9rjv2poYmcWyBBMrO4y+DFpkl
         7wPGjYqGFS5yfhltlTLeiHQur648AInn1kk9cOdH0Mw40DS/jK2SafKLt9UasueRB8nI
         OqIXQwvceaHssBVUB2kPMhb6il6vNLtBgAy63wILdzhRHOSzBILuYHdtskSB6kS6u7pL
         HvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kd8zQI9wnYru5j50rc+Ckmmg1m5RoBPFttE/lorPY5w=;
        b=fP/X9NSf80KhlfHP62ewTla1DO5P+5OXE9hC4+8jTUqqq071Z0rS03qQyjWRSMXp2v
         Y96vAFcQ0cAZFbdHqjd2NDYDmtc0E59HEnOnQVpK6p7MQEnvfufWFCuXjXPMWnMddL6e
         ossCw3nN9zUk+5bDs/aEBBZkWH8z7MRwulG8/S6lgqTpyvqc0ZQf4t2ZvX8PH0Ty+gca
         PnJXMgdmevXxjAq0r69BsqYC47+3MbfGuvPIvNsTv98Ny/y3D6Ebb11sZcRR//vehFuw
         uFskfUePniihSn1We/PIPiHFS4NixyfIxuIM7Epkh0RjDk4jiMvpyzuJO/nSQxbz3+sI
         lKKg==
X-Gm-Message-State: ANoB5pkaLbnzsu2u2u6Id96xs1yVjIIrbr2iUrCctio2IOzFI4nL7Zrg
        m7RJ2bzwKnV5wVL9/DCnPVI4Ig==
X-Google-Smtp-Source: AA0mqf7WsevkmrcjICA3KV/wRwide/rM/YU/GJVV2bZd2onyjXe8jLbsFpmDX3yXpdkLZiKceVYG7A==
X-Received: by 2002:a05:6512:2203:b0:4aa:83e6:53e8 with SMTP id h3-20020a056512220300b004aa83e653e8mr1958837lfu.606.1669287700893;
        Thu, 24 Nov 2022 03:01:40 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b20-20020a2eb914000000b00278e5d12be3sm74081ljb.127.2022.11.24.03.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 03:01:40 -0800 (PST)
Message-ID: <29df89b7-8c28-a473-3efb-22710d86601a@linaro.org>
Date:   Thu, 24 Nov 2022 12:01:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/3] dt-bindings: can: fsl,flexcan: add imx93 compatible
To:     haibo.chen@nxp.com, wg@grandegger.com, mkl@pengutronix.de,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-can@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
References: <1669116752-4260-1-git-send-email-haibo.chen@nxp.com>
 <1669116752-4260-2-git-send-email-haibo.chen@nxp.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1669116752-4260-2-git-send-email-haibo.chen@nxp.com>
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

On 22/11/2022 12:32, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Add a new compatible string for imx93.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

