Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A9196E0908
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 10:36:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbjDMIgT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 04:36:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbjDMIgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 04:36:15 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3167C93D9
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:35:58 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d9so13485502wrb.11
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 01:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681374956; x=1683966956;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FjH7nhGdWOv9qeyX+wHaW2Tx80LijSTnzNr+7mKBAuk=;
        b=W73ulSQRJKYT4gJUb7YNAcstBidLbTyQ3w6d+J/2HWLLSJsGIqpO8cBwjCTh/y3CP+
         djCQqgwfz+UZYPS2FGWs6PUFDq4ogwwJqLWJPCItRQ2TDYN2zQ83Vd8UaQbXRXpKJQlz
         pYdY/Kjv0RfjbBvvl9BEJYGGJdzmXZU78u9GhxDNwG12qDlz9qx18/GaAHUboSdEMb0v
         Zi7j3tJpml46h4/0KRWefPFAtEyhBDfFYPcu/KDsfYqDY08T6Sfk9k9NHPsmu47HLCuk
         xKMCGIkq5fD0zwaMlrAI+o2T7jRCG0lAMmNON+0sLquyBJ6O8GPmq+lGt4WaU8nOJsJj
         uLPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681374956; x=1683966956;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjH7nhGdWOv9qeyX+wHaW2Tx80LijSTnzNr+7mKBAuk=;
        b=NxxG8ReQjGRoPAMlhGeGMihBSbdVz/7/aDT21+4v8q9m2lDoRzH1hoZWe79fYpbbTu
         1IZmNRTt24+goE0L0gbAg9pVtGqMu9m7W7A7oXPBeY9uGu0N0O3S3H0L33tKIAv8d4li
         9i5aLw2B0DYFCikRyuzrPwqUqpZY8bkvhWhnX1AEcBB9zPs4OYmsFs2HiKPfKbCT8XDA
         q5nd1laQUlkvXjkWjcjXS6v51GqtI5IPd8t/UsP5WEu1TEyoDWdcoAJa4cwgfQ1N17Gl
         jcCAd/3HhKJSEQpNZivGaxBf5qDDUvq+nZNFlPbsR0kP/XJmWa3PDbM6ITPKTRvJtv3G
         WsSw==
X-Gm-Message-State: AAQBX9clk782cFkNPyHKhLt4gDkHiz0jjRK9Ifmn5c41O/gg8KjE3qE+
        WRxyr9dJzEukpn4DJpqe5DJwmw==
X-Google-Smtp-Source: AKy350Z+TlsVs6i2UnAW4a5xD8ts3Fbq8yFX7GeMxaxMkTqOmJx/k1gtnqvpgXLJJDILOXj63b0c2w==
X-Received: by 2002:a05:6000:1a52:b0:2ef:b63d:6a6a with SMTP id t18-20020a0560001a5200b002efb63d6a6amr851327wry.61.1681374956602;
        Thu, 13 Apr 2023 01:35:56 -0700 (PDT)
Received: from [10.1.3.59] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id x4-20020a5d54c4000000b002c3f81c51b6sm747306wrv.90.2023.04.13.01.35.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 01:35:56 -0700 (PDT)
Message-ID: <54d7444e-26ff-da2d-833b-57dd5b8ca679@baylibre.com>
Date:   Thu, 13 Apr 2023 10:35:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 2/7] dt-bindings: leds: leds-mt6323: Document mt6332
 compatible
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, pavel@ucw.cz
Cc:     lee@kernel.org, sean.wang@mediatek.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230412153310.241046-1-angelogioacchino.delregno@collabora.com>
 <20230412153310.241046-3-angelogioacchino.delregno@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412153310.241046-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 17:33, AngeloGioacchino Del Regno wrote:
> Add support for MT6332 LEDs/WLEDs with compatible "mediatek,mt6332-led".
> 
> Signed-off-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
> Acked-by: Krzysztof Kozlowski<krzysztof.kozlowski@linaro.org>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

Regards,
Alexandre

