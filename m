Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97ABF66008F
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 13:52:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233587AbjAFMwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 07:52:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232864AbjAFMwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 07:52:34 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29379736C2
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 04:52:33 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso1024764wmb.0
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 04:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TAOMstZovNL9Fw1icUH51vZKfotjQqt9VMYdlqvkSf8=;
        b=U8ZvDuPJkFFQOlBgzFNmC6o8YMOiY/MeXyL1tdI5FZphEVXgu6KszyKxnDFtBSMrqC
         6K7fRtUQcJwQdHNQ3LMF5OHDj6Tj4o6Zbtbk2njmn4D8KskY2K/9zqNdsNq8Vf4+yCgN
         /nz3LBTAAawpO03uf4ve80mIDrXpWbBs8aqNlJXFTJnhGPcNIqqeNPAuaS56MlIWDiib
         V8aAkAGfLSawL/uWnXyNOltei/sxpGTU8cFEzU5mhMU3+b5Ve6K4XcmL20HgfGWVDVl8
         LMrd3T8IKvM1mYKtltSP80JdczaAf9eQLXTzrhz8i04wTqfLs4hkY10RoiFDuxRdDHws
         i/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TAOMstZovNL9Fw1icUH51vZKfotjQqt9VMYdlqvkSf8=;
        b=PTjhMsyqzHdNdSYp80vVAmKxR4ReEDyAlA/Yt0jCxA3fjBZs/tCgqnD2f+dJ1fo8+i
         DVJWWgA23oXxfPG3JZuE5K7VvsAz3JrwFJxObqMK7qrJwSUcnTzMJkJBEORoHtfbAqcP
         mDp/84OCLnr7RXOiuLC+9wKVFjHTYEZHty3qW3cJYLfNOL724rN5Fexag2JBt+fDqApg
         XGOcePVe+KYgv6peSf0svl6ONpWgP9IhQQ17oQ6lruMi8mb+xmFmWQtHA6Q0KcSxb0ka
         NuQXAXACwGCFEU1p+4FKlZXoiQFYyAT0KVkVHEwTrw8Fkudf+GHqbqWBlo4rwx05KyNI
         MZew==
X-Gm-Message-State: AFqh2ko5Wvi/zgJ9VjiF/0q91F25cZ8ZqhDe2iwVZEGuGQP2hxaN/Jcw
        4ut+Sle5ZU4Fpzpo/N87qs7VVD64tdOzJoCa
X-Google-Smtp-Source: AMrXdXttz/qmuwcn3VqjXhrWUfUZyiMjfZIVlIzwzOCT/WC9xGVucirL7hV8GfUERndLqM55ciQDsA==
X-Received: by 2002:a05:600c:17c5:b0:3d1:ebdf:d591 with SMTP id y5-20020a05600c17c500b003d1ebdfd591mr37880740wmo.15.1673009551764;
        Fri, 06 Jan 2023 04:52:31 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id r10-20020a05600c458a00b003d35acb0fd7sm6625327wmo.34.2023.01.06.04.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 04:52:31 -0800 (PST)
Message-ID: <03802554-42b0-7f4a-08b2-835b7ea9dc8d@linaro.org>
Date:   Fri, 6 Jan 2023 13:52:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v5 13/13] ASoC: dt-bindings: mediatek,mt8188-mt6359: add
 mt8188-mt6359 document
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, p.zabel@pengutronix.de
Cc:     angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230105081606.6582-1-trevor.wu@mediatek.com>
 <20230105081606.6582-14-trevor.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230105081606.6582-14-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/01/2023 09:16, Trevor Wu wrote:
> Add document for mt8188 board with mt6359.
> 
> Signed-off-by: Trevor Wu <trevor.wu@mediatek.com>
> ---
>  .../sound/mediatek,mt8188-mt6359.yaml         | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

