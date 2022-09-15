Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56DD95B9856
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 11:56:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230036AbiIOJ4D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 05:56:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230111AbiIOJzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 05:55:31 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CB419C200
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 02:51:34 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id cc5so20141889wrb.6
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 02:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date;
        bh=BuVt6lsnNIf1f5TsO09+qDlO9fUb7IxQ9OktWX9FRPo=;
        b=J43ABlIU+n6HtC3dmwfywMBb5ekaNd6DmIxl7ztGahSXRW3Bev0Zu3iEf3jgs7O6Xl
         2CnUOvS2Y5rQaYDzvc5L6MBnFaT244sTb9j7EJvIQX5bkooV56kDD5q0ymPU+Cc0wUmt
         td3bKjiaCkD6uo5sGlvXvWUrfJrwfBxbpEro11ovHH+18vxP1fMCL5z/LqmuzbXnWNmA
         5LwxiZiY2i7ftmBK4AxytbcS4/mboAEuyx/putDy7uW8CjDn8Q4yCxtKc0oxP7WkrfGO
         sd8fQJahBX+YlhWySteORUgZnjvMqD+XUMB04QsaiBwPJ0jkS+IW2JZZ2CU3hXvYmZuG
         1aKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BuVt6lsnNIf1f5TsO09+qDlO9fUb7IxQ9OktWX9FRPo=;
        b=hyXCyJgOgFbXh/aok86QHc4GQvSD6u5iWUiL5KK2aaGhuglEnO8hdADen+lmawjVXt
         tOAV1Fkc0mx+to/CrKRX7HavTgRMArsDS7ZMfUR+qtiEVL+cnxYbEGBi5GgTGEmYhME8
         hCZYarQ3n+K/6AXdFEbTevU7NH9vdjKvhVikB+5oTge6kJcoWU4WOhJkBbQbDQDyn3CQ
         wQertsdmoFuZ7DqUMUNLjG2224Y07kz+9fgFCdw9uMOAy3tojzjnJhp3Qu8j2R/GaWs1
         Xm7ERPoxisB09dFHytd2+b8iB4ZjNPQ3dH7VpBW8AtOeddzkpc/r2hdZU42lwHJbTQ3d
         YEZA==
X-Gm-Message-State: ACgBeo3j7WaS8hCGeBCu9gwgPKnrJPSEhMZb/a7oEdGT65qMV6B8OKv0
        VQ0TQ0R1DYD4b1V2BOZ4RcFbsg==
X-Google-Smtp-Source: AA6agR4gSNPSrOb9RZbxLv6QZek2yV2JCZ8disP3/BeBxy6YxG5eFRUi5nb6BWCaqq6thusFF9Q7Qw==
X-Received: by 2002:a5d:4f12:0:b0:22a:47ee:7378 with SMTP id c18-20020a5d4f12000000b0022a47ee7378mr15590926wru.672.1663235491853;
        Thu, 15 Sep 2022 02:51:31 -0700 (PDT)
Received: from krzk-bin ([89.101.193.73])
        by smtp.gmail.com with ESMTPSA id n4-20020a1ca404000000b003b47ff3807fsm2240950wme.5.2022.09.15.02.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 02:51:31 -0700 (PDT)
Date:   Thu, 15 Sep 2022 10:51:29 +0100
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Irui Wang <irui.wang@mediatek.com>
Cc:     angelogioacchino.delregno@collabora.com,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        nicolas.dufresne@collabora.com,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>, linux-media@vger.kernel.org,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        linux-mediatek@lists.infradead.org,
        Longfei Wang <longfei.wang@mediatek.com>,
        Tomasz Figa <tfiga@google.com>, linux-kernel@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Maoguang Meng <maoguang.meng@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org,
        Alexandre Courbot <acourbot@chromium.org>
Subject: Re: [PATCH v5, 1/8] dt-bindings: media: mediatek: vcodec: Adds
 encoder cores dt-bindings for mt8195
Message-ID: <20220915095129.ubzwarmglgbvqpdn@krzk-bin>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Jul 2022 11:51:22 +0800, Irui Wang wrote:
> mt8195 has two H264 encoder hardware, which are named core0 and core1.
> The two encoder cores are independent, we can just enable one core to
> do encoding or enable both of them to achieve higher performance. We
> pick core0 as main device and core1 as its subdevice, it just a way to
> to manage the two encoder hardware, because they are two equal encoder
> hardware with the same function.
> 
> Signed-off-by: Irui Wang <irui.wang@mediatek.com>
> ---
>  .../media/mediatek,vcodec-encoder-core.yaml   | 218 ++++++++++++++++++
>  .../media/mediatek,vcodec-encoder.yaml        |   1 -
>  2 files changed, 218 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,vcodec-encoder-core.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-rockchip.example.dtb: spi@ff110000: Unevaluated properties are not allowed ('pinctrl-0', 'pinctrl-1' were unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-rockchip.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
