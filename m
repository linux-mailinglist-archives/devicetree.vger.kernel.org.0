Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7D01582453
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 12:30:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231182AbiG0Ka1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 06:30:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231694AbiG0Ka0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 06:30:26 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF29654C
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:30:24 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id t1so26438751lft.8
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1DXNckt+1wBuVx3LpQLh6jkvD1I6eVSY2ub2nyt5y2s=;
        b=zbeJawWtnr8HlbUf/dQUmJkL9S2pqzQeP+sOExxZ8n6cqrv+fkEdtrGDBkAAjG90+w
         nBSmqsSUS/y2IWtnQtWIUk820C/xGf01Cbx2aVrG6IU4H0blN/rpR9XMRuDZZhHPGIK7
         9yNybJP38GPnz64+o9piU7UCcBTlTDVUvtNbI417LYRERbVe4lxHITscp4/+dZl+9FxW
         teeOnZXe1FIzw/PkjiAVnUIHgynb2Ak0PdUFgEtYTx3KdMjX/mQigdAvcTV4Q4/zuIx3
         Ay9noR82CBb4748uYreBtl+vY/h7aOYjrUE1hKFIhpWDcUc2Dh1Vneg44SFaK+oYbQ6a
         /roQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1DXNckt+1wBuVx3LpQLh6jkvD1I6eVSY2ub2nyt5y2s=;
        b=34RdoYY/Xf4r6qMHlqDdjByJvt+2hgxbaA951LiLBNQWEcZPn39/oPAri3eGnfwiIr
         eqhu7Z9xgcoA8jtQeb6/wgz798jvJk2NmW5ONGfOS85Ahh8ugJVQ1nKdO28MC0Mlw/eq
         arIHl9xYk0UxGVvTcYHejby67unTVkhRxz6Bn7PBx9OMru84mwFpl0U4lI2N0RcC/nob
         yV2vNPya2Tw5iiGDuuDjtKp13I7KCYx3194cUXImwXjSFLr2aq/204L7+jWnm4PqCitO
         nGmkCdOuX05w+uU7Pb6haaNH+V0Ogp2PVsUk9igGqOx4la2cQCevbXF+/Dt+2wXoIdp2
         Vyvg==
X-Gm-Message-State: AJIora/4k1p7OjRBK11NXHH2G9VpgU7uTCFaRrSklyKYwfxBAvqMZ7Gr
        /dGDmktrlze3ZexXyfwmshEHiA==
X-Google-Smtp-Source: AGRyM1stiNr9XxY7shzNBKP/VCaCIMAwTIP0hycBVdc1xeWChrSE7+wxJE89IzvAPFFn0NgG8+F1ug==
X-Received: by 2002:a19:6459:0:b0:48a:7139:9ed1 with SMTP id b25-20020a196459000000b0048a71399ed1mr8254096lfj.485.1658917823066;
        Wed, 27 Jul 2022 03:30:23 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id z20-20020a195e54000000b00489c5e840d4sm3705919lfi.227.2022.07.27.03.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 03:30:22 -0700 (PDT)
Message-ID: <3ebd6dad-038d-eb96-3fed-8735de0cee2e@linaro.org>
Date:   Wed, 27 Jul 2022 12:30:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: add support for MediaTek
 mt8188
Content-Language: en-US
To:     Hui Liu <hui.liu@mediatek.com>, linus.walleij@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com
Cc:     Project_Global_Chrome_Upstream_Group@mediatek.com,
        jianguo.zhang@mediatek.com, zhiyong.tao@mediatek.com,
        sean.wang@mediatek.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220727102140.6676-1-hui.liu@mediatek.com>
 <20220727102140.6676-2-hui.liu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220727102140.6676-2-hui.liu@mediatek.com>
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

On 27/07/2022 12:21, Hui Liu wrote:
> From: "Hui.Liu" <hui.liu@mediatek.com>
> 
> Add pinctrl function header file and binding document for mt8188.
> 
> Signed-off-by: Hui.Liu <hui.liu@mediatek.com>
> ---
>  .../pinctrl/mediatek,mt8188-pinctrl.yaml      |  238 +++
>  .../pinctrl/mediatek,mt8188-pinfunc.h         | 1280 +++++++++++++++++
>  2 files changed, 1518 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8188-pinctrl.yaml
>  create mode 100644 include/dt-bindings/pinctrl/mediatek,mt8188-pinfunc.h
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8188-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8188-pinctrl.yaml
> new file mode 100644
> index 000000000000..a9d5e9eec35d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8188-pinctrl.yaml
> @@ -0,0 +1,238 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/pinctrl-mt8188.yaml#

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof
