Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F186C5F57EE
	for <lists+devicetree@lfdr.de>; Wed,  5 Oct 2022 18:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbiJEQC1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 12:02:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbiJEQC0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 12:02:26 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E15267B299
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 09:02:23 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id j4so1243581lfk.0
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 09:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=nV8sn5fckcM1r2PSkDjQFkbKbz4kB84l0Mkh4PCptDc=;
        b=biOadCqVTkYihS9A1lwozegpbBCWdVtjyxKTngIIPs12kKTrrqxLkyqBFwbV9Zi5Vp
         mWjjRHPwcQ1Lfv3PSm/ifX0D44ssDjl9q9WkvYgoCXuee+OugiTH4468hnvddQMr82T1
         wpsSWEGM8XCqZVMy6x8Fjw1PaJ8uf1gzeILv/SdgXSJVbAFOOmyB3+jy9QQIMv3aMGb4
         aYm0Q9vGLXxgaCxbPw9SeSAy/HYYRBnIfb+yGu1EMRPlJa922+Ha7nNXJm8RlD13ptH9
         bxnW3Gv/CODYMekSycuKsZYNqkPe1O9nvGFB7YSyiWC5qqAGhzCZKTKI6XHt5WSTay0/
         v2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nV8sn5fckcM1r2PSkDjQFkbKbz4kB84l0Mkh4PCptDc=;
        b=RBfrXJLU+CAv1xAPEuYSWi6kbFxa5DAhMBRxahxAJRawd8TBYKcHl519AKluHRbPL7
         Fp7IDCqAcVgcACDZL9DCYFLvJxRZ4unp+V4YfIiry32pR3i+Sz4d2pnP/oD8hTk8aE7p
         rL5+kkS8AiDYv7HQ2lwQZvG9iSqhBu26jgMXjth5pJ8aRmZW2NxGz/z8IVZBDOB7Z08N
         UeYWQqS/8Sr/ANPv0qiayJ1m24FIunVa426ChIEkWeniSxTb4362rosl9nfe2e3RTb5f
         WkauW6HdA84id2nQ9Uop1WXNHljoYzd1mF43rnHXgdzr5Io+ZS0d7cBUukn9gPgKUMQt
         6WCw==
X-Gm-Message-State: ACrzQf31nBDEfCxoHEMc0BHWq278raHhlwqNQkJQ32ZmqSLvlUb7jGU6
        Obw4EJb9DBQ8irPUsMo9e3spQw==
X-Google-Smtp-Source: AMsMyM5OSRk7h6UVPriBwCMY+CnAJExrUJsFeU6ZP8I38AN34glsQMeVrQOJadHtOCXG6lkgJT58Ew==
X-Received: by 2002:a05:6512:3996:b0:4a2:1c8c:c9a1 with SMTP id j22-20020a056512399600b004a21c8cc9a1mr213297lfu.230.1664985742272;
        Wed, 05 Oct 2022 09:02:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j15-20020a056512108f00b0049f87fb416dsm2396484lfg.12.2022.10.05.09.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Oct 2022 09:02:21 -0700 (PDT)
Message-ID: <cdb4e9f7-c7b3-3a1f-bf61-e42bdb021570@linaro.org>
Date:   Wed, 5 Oct 2022 18:02:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 3/5] dt-bindings: regulator: Add binding schema for
 mt6357 regulators
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Chen Zhong <chen.zhong@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
        linux-input@vger.kernel.org, Fabien Parent <fparent@baylibre.com>
References: <20221005-mt6357-support-v2-0-f17ba2d2d0a9@baylibre.com>
 <20221005-mt6357-support-v2-3-f17ba2d2d0a9@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221005-mt6357-support-v2-3-f17ba2d2d0a9@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2022 16:57, Alexandre Mergnat wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> Add YAML schema for the MediaTek MT6357 regulators.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  .../regulator/mediatek,mt6357-regulator.yaml       | 284 +++++++++++++++++++++
>  1 file changed, 284 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml b/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml
> new file mode 100644
> index 000000000000..83ce2cf287dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/mediatek,mt6357-regulator.yaml
> @@ -0,0 +1,284 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/mediatek,mt6357-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT6357 Regulators
> +
> +maintainers:
> +  - Fabien Parent <fparent@baylibre.com>

The email might be not correct.

> +  - Alexandre Mergnat <amergnat@baylibre.com>
> +
> +description: |
> +  The MT6357 PMIC provides 5 BUCK and 29 LDO.
> +  Regulators and nodes are named according to the regulator type:
> +  buck-<name> and ldo-<name>.
> +  MT6357 regulators node should be sub node of the MT6397 MFD node.
> +
> +patternProperties:
> +  "^buck-v(core|modem|pa|proc|s1)$":
> +    type: object
> +    $ref: "regulator.yaml#"

Drop quotes.

> +
> +    properties:
> +      regulator-name:
> +        pattern: "^v(core|modem|pa|proc|s1)$"

Why enforcing particular name of the regulator?

Both comments apply to all other cases.

Best regards,
Krzysztof

