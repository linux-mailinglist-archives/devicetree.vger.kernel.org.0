Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4106E0E00
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 15:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbjDMNGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 09:06:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbjDMNGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 09:06:37 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1128A93D1
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 06:06:29 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id i3so4870679wrc.4
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 06:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1681391187; x=1683983187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=THCBAFRMcXe9zpyJC9Q8PtfBGHTK+dcgnrUK69wvLYY=;
        b=qLFVUy6NlUX9Ba60wSk1wWE3TDQdKaK3W3T1Wg2aeN5q5KebQPT4240XIBJ/sfygOZ
         MvSb9gIjaYgqi+yijRN/1v8/5HkOg6dTeWeXADKL1zugJu2kSwlnUFwQWUsEiIIL9xaI
         AmFZTZeC8v04x1IEuiGvOL8iZiiP40Tq1gfOQExFneF6povFX5d4b/Zqsi41MJlbEtty
         8XAI7lzHT5i872DDJLxsoD32zTjiZ8tZIEiZqDgFBfRmEBj9u0fbWJqIMlR96D/ZiH/n
         CrZLmHYZbaCaf/OBE2nccSfm8kaTM2pnkwewOGNPF0yIuV0Q3f7niNBQR2NjFSyIAZF0
         VE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681391187; x=1683983187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=THCBAFRMcXe9zpyJC9Q8PtfBGHTK+dcgnrUK69wvLYY=;
        b=TwAiZPXUqt4DT6BkOwsp3Mhn/79GpSenPF9YrsQh9mwWAYvui56dakOWPl5eB83KZI
         4DcsoE0CnfV0hsy/3ybpExuAqvgFZ20Pc3gEhOjOw3FFzeAa9J5T8fxZXZc9fcIAIPes
         pwhkhdFxj3kPkwpk4+sE25rmN246Iijzh8Rns3wgzt+tvQMBW3NbfbX8zD+hhxqS/I2P
         LPkDqzWZ6NPGkQ94SZlZ0uhBmU7nkMW++12j2UHESNpi3N5Aw0ZbdyCHgi2gf3m414wY
         vTGkDHLxFuRUMvpkZDY17AzFLj2Ho3odPwTtn8n6WfRs932JhwMkk5KYO6er6ORl6o68
         T5Rw==
X-Gm-Message-State: AAQBX9esEC8o4+LrIO3tTx6ICE9/HBk8AZ3Mothc8SJdfUwx2s9j63Ak
        6Nfdf+T4o7khOYy5WeDVt3u7IA==
X-Google-Smtp-Source: AKy350ZKJm0iav7HvUz7GTFakJ+tdrOILRQV0JiioSu+p4JJYjdTdnwsKypDNL7X7cITAJ2227b7Cw==
X-Received: by 2002:a5d:6a11:0:b0:2cf:ea3a:2b9e with SMTP id m17-20020a5d6a11000000b002cfea3a2b9emr1570627wru.43.1681391187453;
        Thu, 13 Apr 2023 06:06:27 -0700 (PDT)
Received: from [10.1.3.59] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id r12-20020adff10c000000b002cfe685bfd6sm1255020wro.108.2023.04.13.06.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 06:06:27 -0700 (PDT)
Message-ID: <3ebf7c2b-f9fb-6c1c-308b-47f28ba04ead@baylibre.com>
Date:   Thu, 13 Apr 2023 15:06:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2 4/7] leds: leds-mt6323: Open code and drop
 MT6323_CAL_HW_DUTY macro
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, pavel@ucw.cz
Cc:     lee@kernel.org, sean.wang@mediatek.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
References: <20230412153310.241046-1-angelogioacchino.delregno@collabora.com>
 <20230412153310.241046-5-angelogioacchino.delregno@collabora.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230412153310.241046-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 17:33, AngeloGioacchino Del Regno wrote:
> There is only one instance of using this macro and it's anyway not
> simplifying the flow, or increasing the readability of this driver.
> 
> Drop this macro by open coding it in mt6323_led_set_blink().
> 
> No functional changes.
> 
> Signed-off-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

