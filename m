Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DEE7601893
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbiJQUI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbiJQUIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:08:25 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 129BC7858B
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:24 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id f8so7404755qkg.3
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RbIGuGpjHgod5naCHisHPGnVdn1rirkuScIOCJ5aOaw=;
        b=u9bFBNGT4g/HoSvARkMvlVBoVtquQr/DnqYH8LzA4sKbBnWZxELXjcyTAgGMK7PF+k
         Nm4C+ZI9B/vovYTwMUox7jxWdZbTDsfxJZN0CZv8mS0sgVpNMGwrxfXi8JhoBiugsVqq
         Xziu9ma0mGHxFZ0vddKjaxMNWEDjVgpEyJdaluJlo5M3G7l7RYNRxmW61l54VmzEavEM
         U2ZYOYXSUrf1BtxKHTp94UTTE3vJwQWvEwkltR7Ss3qlSjb//YgFtT8KCtymPn5HHTp2
         y1VFg6z8oXE8BSaGZeDvaQEe+AwopMyW6Cgi51GBqiSwhNUuLUlSgvOMxffPrphTtw7j
         WP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbIGuGpjHgod5naCHisHPGnVdn1rirkuScIOCJ5aOaw=;
        b=4PAuZN9Sc15QD3EPQMrEnx+nJ9WywY4BM7RcjZ17E8x6LMGbnD4LvOD96BF9o/YQcU
         6elrE6XHLidOArsK33Evh1EHBTERtCoy6LBGZYOLOiYjvsypQ6e7psxsQ0o4ZFsyoMJa
         M3tgrZfVz9tZhPAIyb3FwMAE7l3FS01DB4D7X8d2TX+Dp4j8JlhKehBk04REn/2XJlWr
         jGV/JYa3ougTaA+Gq8CgPEcrvlEmPDCZDnykqpbDfDqdWRjlEBxM3YL8FPfg7AWH4SUl
         tCOb6CpCb2SON4ClrpmLnFD6VJ3dik/hnf8ITUUclpldzz9FuIYA73iWqy2G9gdMZ8iv
         J+jQ==
X-Gm-Message-State: ACrzQf3fCiFF3/qVGNzWRA4uqyGhfyC5bEBN3J0te0eOgAgKWthNM0Sa
        CoTtNAix6CUTpNRLwl+1kmCeb1xMyxGOFQ==
X-Google-Smtp-Source: AMsMyM4gFw/QUeiGyXYvLNoYZlqqzJkfeMdnHPFrFuR25qBYaAGk7eqgjA20nFqRZuxFggQT6trPyg==
X-Received: by 2002:a05:620a:440e:b0:6ed:ae2d:e52f with SMTP id v14-20020a05620a440e00b006edae2de52fmr8983834qkp.450.1666037303263;
        Mon, 17 Oct 2022 13:08:23 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:08:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2 07/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: fix matching pin config
Date:   Mon, 17 Oct 2022 16:07:42 -0400
Message-Id: <166603728600.4991.5113586038322563358.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927153429.55365-8-krzysztof.kozlowski@linaro.org>
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org> <20220927153429.55365-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Sep 2022 17:34:24 +0200, Krzysztof Kozlowski wrote:
> The LPASS pin controller follows generic pin-controller bindings, so
> just like TLMM, should have subnodes with '-state' and '-pins'.
> 
> 

Applied, thanks!

[07/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: fix matching pin config
        https://git.kernel.org/krzk/linux-dt/c/cb70c0d8b50a4051743fb42d2fc730f268864361

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
