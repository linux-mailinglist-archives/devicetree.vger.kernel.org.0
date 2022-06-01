Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7675A53A45F
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:52:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236677AbiFALwU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:52:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231983AbiFALwT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:52:19 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36AD162DA
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:52:18 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id q21so3257553ejm.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=UOrJiCuy8WHaA80JcOoMi9l2SsxU2BIHhTFoCZlViNI=;
        b=b13pWQVy4b9E49ocPJLgikGXBXj8JuvHCLWPDKyIy9pKSUC8clHsgJcx5f8bcKTuOP
         eqI1pXdsYShcVmgD0KaxqNILNo9HsFHaglcAQSUNWgPdidYMTwn8pbTvhCcvB/WObLEt
         eqn1G2RglDF21QAqNtWXQHAqHvEnL//0R4Xrb/Dlrf3/iGHKbnTl/dja/n3qCNC0mvyP
         x+J5zTUMXK+n4ySXVK7DdvqarXBxvf/rXXbmy5Bt8AHeMk2Od1RXx895a5DZNhgrx752
         oP4lp80sC7Ckc5vHKi7x7BYLlPEzRgdOdCY+xf3UEKkx0G3SUnTlb9vPisensvl3y2wy
         LWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UOrJiCuy8WHaA80JcOoMi9l2SsxU2BIHhTFoCZlViNI=;
        b=t67cFpyf8+Lr01hK9lAGhM0Vdc0qtYYMa+ui/00vG5DlusWR6JbL7NWqUQCg+F/mBH
         JNHc/ehN2MQwd0bTIc6oHanvztAg9LWJ4E7o6Vj0Msg/vFHqABPuo1TwI3b1Gz0Eiz8g
         Q/2EQWMUxjDaN5F2Pz2+Ga85N6vMEcxH1Ge6cE/4Ry3tso/Z+dWk7GZY2gW9U2ooFNs7
         8mcE+RwnBVzuH2wG4oOUXQ5Imp3NNAjV8U74f6UlifhzWfG9pyMN1PaQcaSTJ/c5Zav3
         xjxRI4tEnJVWtGbFi5O4rY5t18oh8hTL31kglnzfOTAfP3msepzPDqy/tigXtHnrcZg2
         vsXA==
X-Gm-Message-State: AOAM532hsg45f9FuqzelIyGyrkztw3FTRz3uB3cdj4mSDJYLYGfT0m4x
        8wOe2SzX0741Y/ub+Dux7J+kSQ==
X-Google-Smtp-Source: ABdhPJxe/8cGT85vXnLiNluXOpXCUgKbVNqJ0UUOERK9/MZjt4X30RlZebGWff180gJy+dmg1WA73w==
X-Received: by 2002:a17:907:1b03:b0:6ff:78d4:c140 with SMTP id mp3-20020a1709071b0300b006ff78d4c140mr14279382ejc.554.1654084336800;
        Wed, 01 Jun 2022 04:52:16 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n8-20020aa7d048000000b0042dcdfb003esm860740edo.53.2022.06.01.04.52.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 04:52:16 -0700 (PDT)
Message-ID: <306a4f66-8ad0-8965-1c29-66ee13dacd50@linaro.org>
Date:   Wed, 1 Jun 2022 13:52:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/8] dt-bindings: soc: imx: add interconnect property for
 i.MX8MP media blk ctrl
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, djakov@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        abel.vesa@nxp.com, abailon@baylibre.com, l.stach@pengutronix.de,
        laurent.pinchart@ideasonboard.com, marex@denx.de,
        paul.elder@ideasonboard.com, Markus.Niebel@ew.tq-group.com,
        aford173@gmail.com
Cc:     kernel@pengutronix.de, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        Peng Fan <peng.fan@nxp.com>
References: <20220601094537.3390127-1-peng.fan@oss.nxp.com>
 <20220601094537.3390127-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601094537.3390127-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 11:45, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add interconnect property for i.MX8MP mediamix blk ctrl
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
