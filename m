Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC4F551562B
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 22:57:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236194AbiD2VAV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 17:00:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345713AbiD2VAT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 17:00:19 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D872CFB9D
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 13:56:59 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id n10so164568ejk.5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 13:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/TLvV++EDU9+Sz3wkOEtxmwoSgaUvAw4LEQYsaVCt6E=;
        b=WIX5SWv8mLLnNLHDSE+0AAdosFTnT4ZyO4KBGzAXt7b7MiOc7IH+1d8Ogm5yRetomI
         ChrvjmRBIj+xjTOp/Yz0lNsE0qRNiGQoSpxDL2wudVp/6UAXEjH1G7ydrM/0EMP35Sp4
         pV8gvaHSrsT4BENxCMwZKqlVh82HK08vgS+50kojFPMkXn7ZihmfomYH4ymztanyVDtG
         yKpu8fhyhnqJdHT9cbG5TQprIyYhcsxvBHSBSgzJRRPZo+iYfo3U5YGbf9wXr5CLRbof
         4Ivm15nfAj+Ek93F/WGAO+IUixz30B0ulyRo1/DwdaSiuH244pYKiPk15GD6n4dUkII9
         5eqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/TLvV++EDU9+Sz3wkOEtxmwoSgaUvAw4LEQYsaVCt6E=;
        b=D+0dupMkstVihNltq9udm6MrTM+hHBE6f61UhAZeqKXy5tbbKUt21pEeGt1su7U3fF
         XDIad9IxvFlxse2wbjbXI8xMi+FuPzfCwKigaojwZ9FSOvyKwtUSOZAGcyWEGjkIL2ox
         M4SzFiM0TiJyTkcgB6mt/BWvmeEEuYvsqZGqUnGEOE0xtohjw0hdj6S65efjk6p9lmdz
         eHqn5JvMUkdIG8KxMAF5cpAXOSpPUE0pfisXHnWUOX5bIdn/SDbhUgePTz3BKy7BU2if
         UEtbrfj66iSrc2Jce379TSkhbIIByqnCp3rrxRBKVIDfNDewCNq1zz5FDzXG+xJV20sg
         Uf6w==
X-Gm-Message-State: AOAM531UuPaJBHXKM4dUTpEUfCTNTeMrIzesOKSUUGe6bHlga0dfL7L6
        swv/ptzyLT3O9ONfcdc9Y9w8teYPXcZYXg==
X-Google-Smtp-Source: ABdhPJzt2AtJuvcvfhRC2xzmdnT8aaBCt9DuHu6qHW+OGdHit48QJwtwIoEPZbo8wV07pWTnDdTaZQ==
X-Received: by 2002:a17:906:478c:b0:6df:6b35:156d with SMTP id cw12-20020a170906478c00b006df6b35156dmr1087605ejc.578.1651265818021;
        Fri, 29 Apr 2022 13:56:58 -0700 (PDT)
Received: from [192.168.0.176] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gv1-20020a1709072bc100b006f3ef214dd2sm981014ejc.56.2022.04.29.13.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 13:56:57 -0700 (PDT)
Message-ID: <2719abbc-4cb5-b1c2-4c62-ea154a732217@linaro.org>
Date:   Fri, 29 Apr 2022 22:56:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] dt-bindings: arm: mediatek: mmsys: refine power and
 gce properties
Content-Language: en-US
To:     "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Fabien Parent <fparent@baylibre.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, CK Hu <ck.hu@mediatek.com>,
        Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Nancy Lin <nancy.lin@mediatek.com>,
        Singo Chang <singo.chang@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Cellopoint <cellopoint.kai@gmail.com>
References: <20220429083051.11260-1-jason-jh.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220429083051.11260-1-jason-jh.lin@mediatek.com>
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

On 29/04/2022 10:30, Jason-JH.Lin wrote:
> Power:
>   Refine description and add item number for power-domains property.
> 
> GCE:
>   Refine description and add item number for mboxes property and
>   mediatek,gce-client-reg property.
> 
> Fixes: 1da90b8a7bae ("dt-bindings: arm: mediatek: mmsys: add power and gce properties")
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
