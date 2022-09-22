Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07D6F5E687D
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbiIVQd1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:33:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230449AbiIVQdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:33:24 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F3B881B1E
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:33:23 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 29so14428675edv.2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=hHrtnzL79eYFEPjEF2yi096AMyC1QbuWRhmXoAyygq8=;
        b=E62MrqC3zOFBmFTKp4oTrZM/z66KQ4CtKhMc2j6L40FWedjqY5X2kE0XK83hQj29ua
         E0ImPDNsXVMBpE45yGGoqoYfZBi5TXdevSXameDBsxFPmEN/dxbtcS0uKjMwnI2sjHNs
         nODz6eNmWN6bpNR1mbiggJufeDZtbZba0MrfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=hHrtnzL79eYFEPjEF2yi096AMyC1QbuWRhmXoAyygq8=;
        b=Wt0ugJSDi85rE+rrW+vjTv/tezyTrmOy2EzzmfSq9hhNY7sFzmlBJqo/qnviE2s1m8
         K8GsRRdK2qpC825eJztQNwjW3PpazipHH/THcMxAKeip9QrJpTCcZ/HyvDBuU+z0gPdS
         nXQ0tiMNL6+gh49AyEixjUJ6MKGcq5sdTpzALF2YwprAfUAMaFRkyuxLu9BblyXlP8XV
         2GwoIQn9XLg0REMajyl4SAdfEQiySLOWqhHWw+yFiKUHVmUUcX0PQk530taRgdkbC2NJ
         xeqFHWXSpmwO7K09OnT8Y09rAbXM5LdSGl07KG6vp824LTqwBM4MnsQf3nID03yOThD2
         yGWA==
X-Gm-Message-State: ACrzQf3CmSB2rV1C8V1kSwTpqHrzIiUlSibBz2CeIOghsLvAOkHoP60K
        4RXw7HePxj7DKiALIXtVyDCsbtb/ERlf5Ufk
X-Google-Smtp-Source: AMsMyM4fx0o6ILgqkDq5ZhhgxrfS9tvmgrUH9MgEm7m5KlgkfwkWESCkNjyjzEH77s2ix4JIas80fw==
X-Received: by 2002:a05:6402:2073:b0:44e:3555:5fcd with SMTP id bd19-20020a056402207300b0044e35555fcdmr4113016edb.82.1663864401465;
        Thu, 22 Sep 2022 09:33:21 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id s4-20020aa7d784000000b0044838efb8f8sm3921134edq.25.2022.09.22.09.33.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:33:20 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id ay7-20020a05600c1e0700b003b49861bf48so4220675wmb.0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:33:18 -0700 (PDT)
X-Received: by 2002:a05:600c:5488:b0:3b5:634:731 with SMTP id
 iv8-20020a05600c548800b003b506340731mr1759364wmb.188.1663864397810; Thu, 22
 Sep 2022 09:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220922101813.v4.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
In-Reply-To: <20220922101813.v4.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Sep 2022 09:33:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XWhf2nfs-+5JhTjWxwUUmvfPkO8VwBi=d9SM8Zr+Pq=A@mail.gmail.com>
Message-ID: <CAD=FV=XWhf2nfs-+5JhTjWxwUUmvfPkO8VwBi=d9SM8Zr+Pq=A@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: qcom: Document additional skus
 for sc7180 pazquel360
To:     Yunlong Jia <ecs.beijing2022@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
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

On Thu, Sep 22, 2022 at 3:21 AM Yunlong Jia <ecs.beijing2022@gmail.com> wrote:
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
> Signed-off-by: Yunlong Jia <ecs.beijing2022@gmail.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>
> Changes in v4:
>  1. Adjust the 'Signed-off-by'.
>
> Changes in v3:
>  1. Adjust the format of the changelog.
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

You should have carried the Ack that you had on v3 [1]. Please send a
v5 with that fixed. AKA:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

[1] https://lore.kernel.org/r/20220901024827.v3.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid/
