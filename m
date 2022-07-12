Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A25C657145E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232764AbiGLIVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:21:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232692AbiGLIVS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:21:18 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E28AA2ECE
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:20:57 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id n18so10976029lfq.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=913ghu35Laczo+JrxB0PirlbXEfk8cikvvsX+cGOl20=;
        b=Uu+8MplcTKsPmXiBZsJCJeAe3rhQTWN9tr4dnLBA3Ey1mOL6NHm0y4Av59rVGgnYAO
         HyPslUoCMA5QDw+mrXvZFNVSayYAhhqHo6tzCdwzupSKLgDBQdL8kr2JsIERKvRAHPUp
         6ZtAahhb0JHZfepONp/AmdGHEM8NXFN2nWnn56Gaphqh1nEAK2wRXoNnUzw6AQ6hKZkt
         nx4ZpOKmCoH7XiDGV/5kNpLlPw/J0Wr2owOAOYMWpL9075h5yUvCgHwruZd7byxNj6vE
         FSOXWrMkbNcL9raH6vnO/Lkg/7rGpGLyUTuHi7NHIJ98MSOuwm7cCJBWIw6oShpP774H
         QgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=913ghu35Laczo+JrxB0PirlbXEfk8cikvvsX+cGOl20=;
        b=54KYMbL+OkBBtNl7gUwGRUZQu3F/mbDua6E9M0wJMnnKk1sA8nWL5jOhbxdS/e0XKS
         ZMNeGSEXh93htosYTFp2SPezn5/E9Ee07VwExztGi6KbkOh7XR1JJ5PsLvQdLbp6+NwW
         45L/KgVbGTLp+um5VAMKiKMI7Ub7liPYKXV5qQCxiIsKkK/Z3a9VFx2gomk6ikon7Nns
         2ZUXer7jauEiqZAS58bpaRLkAQsZPU0CiJjEoOU2r/GvlmOEIZrT7Z+UZgh3Wq7AWCc6
         z+TpP3T/z5ScqmM0hZMK35AN5uh8GpPzw3gIAU6e+s1gsy9s8B3Ux/iuK7uUhKQHSE92
         Kx6Q==
X-Gm-Message-State: AJIora81j+Thr3BFGjgHbIQNr1+VL5n/V7KAz5gpZxPiFF79DVkZCKu/
        T6XqYpj1MO9Hsul0ATe7kOq7Hg==
X-Google-Smtp-Source: AGRyM1vtEIRmeGsa2FJ5a0dWsD+KRyH/CFlvj/xzlrTFc+cFfK2H18BxvF0gdjTl7ae6NS2/2rXlXA==
X-Received: by 2002:ac2:48a5:0:b0:489:c854:efbc with SMTP id u5-20020ac248a5000000b00489c854efbcmr11699452lfg.646.1657614055419;
        Tue, 12 Jul 2022 01:20:55 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id a22-20020a19ca16000000b0047f79487758sm2037848lfg.133.2022.07.12.01.20.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:20:54 -0700 (PDT)
Message-ID: <1bc9b42d-0fbb-f08b-4b37-a6be7c337199@linaro.org>
Date:   Tue, 12 Jul 2022 10:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/6] dt-bindings: power: imx8mp-power: add HDMI HDCP/HRV
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
References: <20220712082146.1192215-1-peng.fan@oss.nxp.com>
 <20220712082146.1192215-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712082146.1192215-2-peng.fan@oss.nxp.com>
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

On 12/07/2022 10:21, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX8MP HDMI HDCP and HRV entries.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
