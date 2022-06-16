Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E3E554E27C
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 15:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233364AbiFPNvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 09:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377210AbiFPNvl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 09:51:41 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5758B434BF
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:51:40 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id x4so1563713pfj.10
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 06:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ftHZyHw/wNXSXOb7JE7tzZIShYwLppug3sKDdxarxV0=;
        b=MSTj0O1uiObYq3RmWcwpgd2XlA+q3StSV+EY7/gO0RfsvbeHdumMIDv3rtsYW0etPl
         lXNHPJmMeve8eyJUs1tMPqPX4dzBhFL1AlZvo46UvFavAZtHNGszAxdIKEf5RvmEJn7y
         xSNmT9oxEzfl9hSXSqPGwB9bBLO5m9fIaskr5TdovjEkO6DIygXDriPM4p5otH6bcWuC
         QcOw0i+vyeVSwxWvFIULjpA7WtaeQGCifwWtkjJgkJ62mvof5qP68nJR+2zEO2mCgbtp
         Pt0B3nuvnaGFcLhtCwxhF8lwd80dr1EpnGkToOoo+amBn/o0S12mYk2AktizYvhrIHCo
         c/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ftHZyHw/wNXSXOb7JE7tzZIShYwLppug3sKDdxarxV0=;
        b=GCV4Yri88Q+R/iemTIkx3qqSh1K8q7/Ogw9jqVaLxOpcGph9ULWIE0G8dlL3KWU8Gh
         DME63UH/J/bjoe51GPe8hgqveWiMNZXNOcTYq8AztNWu0Y/qDJD+ppZ98+4lS687qHYI
         4CxeX+yGEqrk+GVzMWbmZa2zIwJC2MTiXjl0n5l1FpNGKcRmNTB5iaLQ1IoguXDhzOne
         ZtUhJuTCcEluTuXUh5Tj57TTlP5HsHpi7/xW3cj0R+JpHzOxvBOtl/B7lGUCE+98RrDD
         tLjpriPH8zZQmKjAhg/qrxv0Qulu5PnB3FKTTvSaBUMp4TVc/S4WoAXfsUWcFCKCw9aq
         aAoQ==
X-Gm-Message-State: AJIora8FQju8Sa5mKbsFIObqXaaS0nXpL59V6avvymDqtLZ8LoQcVuDS
        ctCjBU6hOC2FT3Xx78j2zrJgvg==
X-Google-Smtp-Source: AGRyM1tjArtHfSvBr9dHM79YJP+gIsvNtTxmzvobAhS9iAdqa601s5ctpq9flyl1E+ympHGNh6ORjQ==
X-Received: by 2002:a05:6a00:10d3:b0:4fe:5d:75c8 with SMTP id d19-20020a056a0010d300b004fe005d75c8mr4874387pfu.6.1655387499862;
        Thu, 16 Jun 2022 06:51:39 -0700 (PDT)
Received: from [172.20.0.255] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 9-20020aa79149000000b00518424f8922sm1799565pfi.77.2022.06.16.06.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 06:51:39 -0700 (PDT)
Message-ID: <e1a9b1b4-19ab-38dc-3343-017d05655922@linaro.org>
Date:   Thu, 16 Jun 2022 06:51:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: mt6397: Add compatibles for
 MT6331 RTC and keys
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, lee.jones@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, johnson.wang@mediatek.com,
        hsin-hsiung.wang@mediatek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220616091531.12646-1-angelogioacchino.delregno@collabora.com>
 <20220616091531.12646-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220616091531.12646-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2022 02:15, AngeloGioacchino Del Regno wrote:
> The MT6331 PMIC provides many sub modules: regulators, audio
> codec, LED controller, keys, RTC and some GPIOs.
> It is always paired with a MT6332 Companion PMIC, which provides
> thermistors, WLEDs (display LED backlight), secondary AP cluster
> regulators, modem clocks, battery charger and fuel gauge.
> 
> Add the necessary compatibles to start implementing the basics.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
