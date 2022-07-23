Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4874E57F17F
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231537AbiGWUrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230197AbiGWUrX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:47:23 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B881D0E3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:47:22 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bf9so12572365lfb.13
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YMYNdsFRskYRkvEb/JM9UkC4CjAmNkgwoJhl3q9xdKU=;
        b=h8wBZt8JujREOhVhzTJLg6Wi3bx9fDhUOgc2Kl0nhO6xHDyrTNSPLCb8Ho0GYoL7Pr
         LsfI/CaPz0uyg4VcJbYQmc+L/MkY/ouI+kbJEDSlGPIkKr6fCpZqs0zTd9kCahH2Hk03
         CaOqTl6CXRdnflGFdVjyjKVEPG7H1U1S/y5zrNHnmAnMZdSiTc8e4JPo/NgDecZCJzIy
         yg3pg7LHBexXbdCNzudxlAjAiGeZLr27o6nB5YnbCO+wYejvIkbOP9q5BNAam42x7zk/
         DOciyd/TuvJeXlG3Ex4+Xjiso4gv/7IR676mfkGXHeN4RUGZ0DrAFYbU+9zfSuSthhjw
         aAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YMYNdsFRskYRkvEb/JM9UkC4CjAmNkgwoJhl3q9xdKU=;
        b=PUK471f4QHLx3w88jT9dZMf/KPWaTqXjwDvU+ccUjLxBqpKyv2FTOaEwMUd/mYgDEe
         mwFahx8PZgMbJ6CIvX6HQTOzSsPurjxhaU4O7JE6OEjUkAU0QCToWn137vK1vWL2ly9k
         L+m70LXDKj8QNBgEHquvasfSs3JrRkmMvDorsP9Pz6YpcY14q9Ml5nMRPWe7kvZbAKjf
         AMoGQWnQfRojz3d2D3LqZhxw8LQUzKc5BhG4Dxw4cQ3CTtJM3uGUm74uTBnwqRTtw7KO
         6L2fJpe82/CSxqWgSwKT2s6TItVTX31tm+6buMGBUyLm5Sj29yL9JjhMAemGs05rX/l7
         rk5w==
X-Gm-Message-State: AJIora9OCIYuXU3GeXBFMVeUPpgD3hb2L5NAE6swOArb4TsKkGOk9430
        xYQFsutntv9iMnc/8r8hqktYBw==
X-Google-Smtp-Source: AGRyM1vhGr/RB3Umpg87EaPMr8S/tV2PfMpFDPJFPWK3eNBrQtH8ZvijMs3raxhKb540/b1gKi9YsQ==
X-Received: by 2002:a05:6512:3d92:b0:487:5cea:a68b with SMTP id k18-20020a0565123d9200b004875ceaa68bmr2116366lfv.21.1658609241142;
        Sat, 23 Jul 2022 13:47:21 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id p18-20020ac24ed2000000b0047f6f8f20dcsm1832953lfr.28.2022.07.23.13.47.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:47:20 -0700 (PDT)
Message-ID: <6be14a28-a70c-e94a-f6b5-eb5251e14f56@linaro.org>
Date:   Sat, 23 Jul 2022 22:47:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH V4 3/8] dt-bindings: soc: imx: add interconnect property
 for i.MX8MM vpu blk ctrl
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, l.stach@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        laurent.pinchart@ideasonboard.com, marex@denx.de,
        paul.elder@ideasonboard.com, aford173@gmail.com,
        Markus.Niebel@ew.tq-group.com, alexander.stein@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, aisheng.dong@nxp.com,
        Peng Fan <peng.fan@nxp.com>
References: <20220722125730.3428017-1-peng.fan@oss.nxp.com>
 <20220722125730.3428017-4-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220722125730.3428017-4-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
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

On 22/07/2022 14:57, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8MM VPU support NoC QoS setting, so add interconnect property
> for i.MX8MM VPU blk ctrl


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
