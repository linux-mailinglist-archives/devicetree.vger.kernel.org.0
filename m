Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D98064D16B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 21:44:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbiLNUoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 15:44:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbiLNUoL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 15:44:11 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38097BA7
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:44:10 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id vv4so47476979ejc.2
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yFCyq1MsS2DUmVNiT4NLGdkj3gexodwQji1RBiXJABY=;
        b=mqNtF9nq2Kal4In/4Es3hyEnbjqLi1RdLqZjSQhPhga5Tw0woEZ2SCkCJ4vK1JaSES
         56/a0xuCyvCt5S/P9dBpvrfc+K25+Y/0jrABtDSSWKWesPBhGvZA3Whs0tIO+YzCnS3q
         LBJjA4Bb+LJ2OsxzoRSINb3Mbr4Bque8F5AfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yFCyq1MsS2DUmVNiT4NLGdkj3gexodwQji1RBiXJABY=;
        b=w5eg3g+jR0vbDWTHEYnEq1Xu3jQXGdf/7bXI+KPcdys/aygtBQWMT9dxg476NPr1Rf
         QIUyzBEqgA7PO7e57VX0OGrOTgLC9c0LVrkHUcRgs+tlur8qOvdKiwnpUv/ok5pnf8q6
         aBhdSxugW7lngDwEqhdbXhJhUgE6UF6LROWiYnt0pkoX4EWxhDiYsJukm5zvUNe+CIjr
         IgmfB6KaTKkMidOQ3moZOOxufwSILmgpUaRe4Xjf3OgfiXCNdSVbZvEv/fR+YJupkdWG
         BS5rYUEQQBp4i7zYiuJFwiiEreBMGof7idC6h18Y16K5CJ/EpnaFQIQAYax/zRPvruwY
         GZGA==
X-Gm-Message-State: ANoB5pl26OsGlm4SMqH41bGeSIawoxFAjUSz7495+fEc9jOB1ANNNkYl
        h9yWXWDLWhDbD3cUHsBQboCoShr0YCEXs14yS1I=
X-Google-Smtp-Source: AA0mqf6Tq5EEI7epeqmDU1SgRCGtQdjejQdkzOrklBaEdT2vd+R93MHcyPiw8XUm9VyHevqWOtL6XA==
X-Received: by 2002:a17:906:6ad7:b0:7c1:ac8:399 with SMTP id q23-20020a1709066ad700b007c10ac80399mr7247391ejs.55.1671050648683;
        Wed, 14 Dec 2022 12:44:08 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com. [209.85.221.54])
        by smtp.gmail.com with ESMTPSA id o19-20020a170906769300b00738795e7d9bsm6308127ejm.2.2022.12.14.12.44.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 12:44:08 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id h16so1009948wrz.12
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 12:44:06 -0800 (PST)
X-Received: by 2002:adf:fd89:0:b0:242:1f81:7034 with SMTP id
 d9-20020adffd89000000b002421f817034mr27228899wrr.617.1671050646198; Wed, 14
 Dec 2022 12:44:06 -0800 (PST)
MIME-Version: 1.0
References: <20221214114706.1.Ie4ca64ad56748de5aacd36237d42c80dd003c1a9@changeid>
In-Reply-To: <20221214114706.1.Ie4ca64ad56748de5aacd36237d42c80dd003c1a9@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 14 Dec 2022 12:43:54 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKJQqPvwuBYrZNZ8venrPuhbB9LOraYZ7a8TCr7-tt8w@mail.gmail.com>
Message-ID: <CAD=FV=WKJQqPvwuBYrZNZ8venrPuhbB9LOraYZ7a8TCr7-tt8w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add zombie with NVMe
To:     Owen Yang <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Abner Yen <abner.yen@ecs.com.tw>,
        Bob Moragues <moragues@google.com>,
        Gavin Lee <gavin.lee@ecs.com.tw>, Harvey <hunge@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Dec 13, 2022 at 7:48 PM Owen Yang <ecs.taipeikernel@gmail.com> wrote:
>
> Add entries in the device tree binding for sc7280-zombie with NVMe.
>
> Signed-off-by: Owen Yang <ecs.taipeikernel@gmail.com>
> ---
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
