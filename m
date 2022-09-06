Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 918ED5AF7F7
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 00:27:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbiIFW1M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 18:27:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbiIFW06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 18:26:58 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2B39DFE0
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 15:26:56 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id b16so17066489edd.4
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 15:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=a+Vs+P0ciT3P+roY2k8XBdIwCVWYhAwaTZ/i25+tK1Q=;
        b=G38S/EqecQ8sQP0LzugoHuJ4vO5tGIs1Irzd5Df2yBAJ60O5P5fac0bguYHaOigTSZ
         /8feiG7RBqs6a7WUgyG0z8RRq/IbpO2nf9njQRB0Vd5FXLenlPVPCSvkNxR3B5IQSHnP
         fGvhZTNH64t4bL+IDvTHVbgt/2/KnS70+CCcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=a+Vs+P0ciT3P+roY2k8XBdIwCVWYhAwaTZ/i25+tK1Q=;
        b=Xjj8tilR3QGdkqgmAj10KSo2jHTcSO5MVqMJ1ZY/vSepkk95aWW/RgaBn5zYd/UK1h
         3T9mcWTHuQ40o9IS01KGbMuC6W6RwCqVqHOFxlbrDiRXALiuTIaXBFUr7wVrVGeqJqK4
         jOp4IRRwyhx0q0O+TxdJA9/ozYpBsOKKNYxYEtkiHNPzPKm7UxjPLBPuu7vsSqXJEdO8
         ROD+4Ep/I2/gfvf9JkydGipn4+GkxjbS8zUen0aDZA9rqJ+xca3FgDH1+TMA8aA4XMB0
         yDGi/6k8uiSGJdvBrqE0Xzcp/vW9xRN7BYeOgotUPZwxEQH2Xhb6LVI4r2jrRKB33PlQ
         oR3g==
X-Gm-Message-State: ACgBeo3Puv4L1AOH5E4VK4w+LgwtNsjrpOz2oHFiLpGgvrtoo+XjVri+
        4nmkQq5PsImKCzjMPOug5yw/rkQc/5fEzs+N
X-Google-Smtp-Source: AA6agR6Tsn6H7dQvxuGKGvIsVwLHcv723hkBXXMsKjQ3SioNCND1U56nptJ9maxKQBuRKP4Zn5nXlA==
X-Received: by 2002:aa7:de9a:0:b0:44d:8191:44c5 with SMTP id j26-20020aa7de9a000000b0044d819144c5mr612611edv.232.1662503215084;
        Tue, 06 Sep 2022 15:26:55 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id fi5-20020a056402550500b0043bbb3535d6sm8944783edb.66.2022.09.06.15.26.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 15:26:53 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id j26so7658636wms.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 15:26:53 -0700 (PDT)
X-Received: by 2002:a05:600c:22d3:b0:3a8:424d:f386 with SMTP id
 19-20020a05600c22d300b003a8424df386mr280546wmg.57.1662503212860; Tue, 06 Sep
 2022 15:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220901024827.v3.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
In-Reply-To: <20220901024827.v3.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 6 Sep 2022 15:26:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wf2gPHzSXh_2bKe+KgYVhKDUgmEtx2nnBrQ9FawqxH9Q@mail.gmail.com>
Message-ID: <CAD=FV=Wf2gPHzSXh_2bKe+KgYVhKDUgmEtx2nnBrQ9FawqxH9Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: qcom: Document additional skus
 for sc7180 pazquel360
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Wed, Aug 31, 2022 at 7:50 PM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> pazquel360 is an extension project based on pazquel.
> We create 3 sku on pazquel360:
>    sku 20 for LTE with physical SIM _and_ eSIM and WiFi
>    sku 21 for WiFi only
>    sku 22 for LTE with only a physical SIM
>  Both sku20 and sku22 are LTE SKUs.
>  One has the eSIM stuffed and one doesn't.
>  There is a single shared device tree for the two.
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>
> Changes in v3:
>  1. Adjust the format of the changelog.
>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

I think these two patches are ready to land if now is a good time. Thanks!

-Doug
