Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39DCB57F181
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:47:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231370AbiGWUrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbiGWUrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:47:52 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAF781D0E3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:47:51 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r14so9017637ljp.2
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TAkExxjHWlLSRtDt/pw+jNl7bth5wAujirM+RilZDvA=;
        b=UAtOS7UQJTmGJhH92HmutVhYJidfYG8WfIo+1hUAv/iE1cU2cgxwtjomFKhXYVBfwd
         xVU+eRom5LryoCTXw7Yygy9oYReD+ay+q1qChObhro5+y2Ijw6Q3Swnq0aoMGjGloMAL
         JJYQE3HhaBxWQ11J9j/LTffP55DWxHAt7wqW4yeEdDD+c17NFxmb7KFHMbZe5IyA7Aoo
         OEtGU54msktq85y3Du++HbpNg2QL0y+WUtFB0LPxhF7HupVULEMb+pVZ05+rBOEJkROw
         n8vF0VYDwYEoeADoR4mHOCiSIVEvhKpAmYqzHKAGUHLooH5lh36bJxQW5CUFeHCBwSfW
         4NIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TAkExxjHWlLSRtDt/pw+jNl7bth5wAujirM+RilZDvA=;
        b=OPORHEw3Cmf3DidZaQU1yBjadGd+gIOcphLsglG6lAje9pFKTak8YXFAbwVV/NuLkc
         aY6dgXECUHWtwEx2R+sZI3+Pjlu5n6OuQlRRBqfUsort11AVbtZ5E/vH9NIvQt+PfFnb
         ss3aopnP7JE+ECFG6cMlfEt7H5hqDb3w24gUwppobjAdoRcE/KYeE0yhaViQFsYlrodW
         V0u4+Tog97nzTTDPmquUjgx7ARIccyCO6hu/P0yKxaOwJenkEHJIpQ1AlbHqqW5Wm8DF
         BC/bwRHJMljoBIx8U5vJ9toxI0nn+BCAp7n9v42Mk6h9YQ/lYHyUtByYdpw/dDnM9USS
         qkPg==
X-Gm-Message-State: AJIora8L4QVWalbOAqHEFOoXGeU7s0RG1cwXimn/o9ID80B9+atOFHPi
        A8HQdYLh9bqdzVry3bESMtkZIA==
X-Google-Smtp-Source: AGRyM1t8Bl7436BvuSHzBI7z7HUrAyfn0R80y3BREf/ceP2a9vJuAOPGHcKTNpDH0jBiQwKNglzAoQ==
X-Received: by 2002:a2e:97d9:0:b0:25d:bd11:3c1d with SMTP id m25-20020a2e97d9000000b0025dbd113c1dmr1882943ljj.378.1658609270070;
        Sat, 23 Jul 2022 13:47:50 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id t17-20020a056512209100b00489c639f3dasm1831556lfr.22.2022.07.23.13.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:47:49 -0700 (PDT)
Message-ID: <5c9f12ce-2ac4-4487-4ca5-edfafe0a089d@linaro.org>
Date:   Sat, 23 Jul 2022 22:47:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH V4 4/8] dt-bindings: soc: imx: add i.MX8MP vpu blk ctrl
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
 <20220722125730.3428017-5-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220722125730.3428017-5-peng.fan@oss.nxp.com>
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

On 22/07/2022 14:57, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8MP VPU blk ctrl module has similar design as i.MX8MM, so reuse
> the i.MX8MM VPU blk ctrl yaml file. And add description for the items.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
