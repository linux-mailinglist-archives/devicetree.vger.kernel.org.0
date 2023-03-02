Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FF166A830D
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 14:01:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbjCBNBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 08:01:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjCBNBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 08:01:08 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C72030E98
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 05:01:06 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id a25so4746269edb.0
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 05:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677762065;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K4QoTz9DpqbVp4zpknnogFeZwdcBodoo4uaWIYStOvU=;
        b=zRVfWRkaE2ak9ymlzElvkLVV6qmTXCu2Tz0DHQ4hGQR4a9a7ZhTADSiPEbGnKUC+Jg
         3vxuF3ANtg1pFVdEnFQMKlhCYoUqa2c8//qbdWPFiIVZvvcIuUJGHUHUt0IB5HDxxOWj
         SrKseRHxbqjAcwa/L6WHM1Q4AUD3TjFvEb49VAfuOQRl6S5pGiXHZ78bSigMUaVJdzHP
         Fuyao9LUx5iR7QynBrETRpFCZShSSA/ZerFiBz7WK3UpYB+QAsa9f7zXQZE16OA4QjWM
         dE+dEsGaeDIJsK0nusJu75VuGD6uUHWcTKaPXirEylT+bNWlk71xjm9ECNamS4qfKfo2
         LHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677762065;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4QoTz9DpqbVp4zpknnogFeZwdcBodoo4uaWIYStOvU=;
        b=HI/CuGYQuvzGAzF/AoUp2D10hy+QvMrsthWwBzvEa3nGk9AqaN6oFhDmFbqkRVP4Be
         opuNLVLK+Af7bakJqDho6MD/mHuMzy02E7O9D2kv7AJ1LOZhLxaTF3GzqZnnQd1rmugt
         39DD6bVcZgJVdOnqXkzzfKmo3YzSZafDXLaIf9p9OwXAVbePwvp83eH+p8BYFV7EB+rn
         fVV/4kYBR3SOFtFYPT1iAJHdjdckBQS4tq8d4dpx3cq2wN3fweFCzPT18x3TexEiY5gk
         roYKFdcdNl4YgF2O0mLwsQ3JpL/b6yU4DjUPsH2BcfL3sf0tiWgJCRBAEaVkMZmNEUJQ
         5Q0A==
X-Gm-Message-State: AO0yUKWZ5DJ3b/NG/Lyb7vL8tbVluMGtctu4hjuEvENqQHaNEz3X5a5L
        Drd4CI1h4xTow4tXjLEiXGVPiA==
X-Google-Smtp-Source: AK7set+bBsxxlAKccFXuciR/5NfM47WWOIGPgy35GwJikRDbmNJG1mM0VdoLoyCGIe79fOy/SKWuVw==
X-Received: by 2002:a50:ee18:0:b0:4c3:6d95:7337 with SMTP id g24-20020a50ee18000000b004c36d957337mr190782eds.25.1677762065002;
        Thu, 02 Mar 2023 05:01:05 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u27-20020a50d51b000000b004af5001c7ecsm6800116edi.12.2023.03.02.05.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 05:01:04 -0800 (PST)
Message-ID: <3bc36b09-d23a-2fd8-0ca7-5ebb9267a414@linaro.org>
Date:   Thu, 2 Mar 2023 14:01:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 3/5] dt-bindings: clock: imx8mp: Add audiomix block
 control
Content-Language: en-US
To:     Richard Leitner <richard.leitner@linux.dev>,
        Marek Vasut <marex@denx.de>
Cc:     linux-clk@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Abel Vesa <abelvesa@kernel.org>, Jacky Bai <ping.bai@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230301163257.49005-1-marex@denx.de>
 <20230301163257.49005-3-marex@denx.de> <ZACNrbVDU/4ucU51@g0hl1n.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZACNrbVDU/4ucU51@g0hl1n.net>
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

On 02/03/2023 12:51, Richard Leitner wrote:
> On Wed, Mar 01, 2023 at 05:32:55PM +0100, Marek Vasut wrote:
>> Unlike the other block control IPs in i.MX8M, the audiomix is mostly a
>> series of clock gates and muxes. Add DT bindings for this IP.
>>
>> Reviewed-by: Fabio Estevam <festevam@gmail.com>
>> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
>> Reviewed-by: Peng Fan <peng.fan@nxp.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Tested-by: Adam Ford <aford173@gmail.com> #imx8mp-beacon-kit
>> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>> Signed-off-by: Marek Vasut <marex@denx.de>
> 
> Hi Marek,
> I've successfully tested this patch on a custom i.MX8MP board. Therefore
> please feel free to add:

How can you test a binding patch on a board?

Best regards,
Krzysztof

