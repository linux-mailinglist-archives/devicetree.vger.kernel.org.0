Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 917DA604C40
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 17:53:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232715AbiJSPxO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 11:53:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232686AbiJSPw7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 11:52:59 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E194BFF8D3
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:49:54 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id d26so40922530eje.10
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GYZSbQZP6Xh4e4kFk7TUEEgkZvZ475vyRePbBKOiGu4=;
        b=VmvNLbu6AaNr25QIZqpnPieIkLgzWqhpfhsSj1S4bSEMKws3PWsuB3ORl1S0qUY/zX
         uaGp4SwY4L27LJ5A/6B59RK6hnxpjt4dfu6oxy9X+7+eDAa8XX3fnpU+x3KzAEeJ74It
         HZ+aU/PotiS94Pvu5mCCWKXWZd1BqnBnjD6xM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GYZSbQZP6Xh4e4kFk7TUEEgkZvZ475vyRePbBKOiGu4=;
        b=xTEcLquBOgLfClbMtGV3GQDbe8B5yfYux0VhBUlwap6bahhMC/qt2uwT36Bwf9w3+w
         ZMcjwOshpNB86mlwWEhytRH3ynJDCgVBxNNpTTNoKVYJoMhuSaEkSbtmVRlWmZwn4aPi
         Bv718+Uag5SgmjlqY613KKjpeUK1y1IuhHjKhT9sIfkgLUeStH5vPm1dhDU03yWk3LLq
         V/pGXKNoa19ULuOSjD18iqVctNn7TR62P9280sNHQG6rV1eksGiArlMqmVGtlFE//otM
         aYSIJjLr5U3+4GQX/NZwRBUdgPu6sdLSPwOCOKsLpCF9IX9eYG2SVzUkFVZ+oiSXZ8My
         xf3Q==
X-Gm-Message-State: ACrzQf2vEmeGgm7pKSMEwlcXi78oVvdP1v6g70y4OxWtBs9oEH2nqE/n
        EBK760jkvofu2b65EQsJdapdNnIU9Q7X7C3I
X-Google-Smtp-Source: AMsMyM75ABGklc7z7p8+wBfCML77651MH4DPqXaIGRhNPCxOodxa07fgxgRT9phRiWdUthH7q8mDdA==
X-Received: by 2002:a17:907:7627:b0:78d:b6f5:9f15 with SMTP id jy7-20020a170907762700b0078db6f59f15mr7357135ejc.149.1666194506776;
        Wed, 19 Oct 2022 08:48:26 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id b19-20020a17090630d300b0077077c62cadsm9214928ejb.31.2022.10.19.08.48.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 08:48:25 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id u10so29837076wrq.2
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:48:25 -0700 (PDT)
X-Received: by 2002:adf:9d8a:0:b0:230:5212:d358 with SMTP id
 p10-20020adf9d8a000000b002305212d358mr5692508wre.405.1666194505138; Wed, 19
 Oct 2022 08:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <20221019001351.1630089-1-krzysztof.kozlowski@linaro.org> <20221019001351.1630089-5-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019001351.1630089-5-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 19 Oct 2022 08:48:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U0WR-a7d4p5eoCFMRer5yhX8AcEPdUaJag4KpGB9kp+A@mail.gmail.com>
Message-ID: <CAD=FV=U0WR-a7d4p5eoCFMRer5yhX8AcEPdUaJag4KpGB9kp+A@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: pinctrl: qcom,sc7180: convert to dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 18, 2022 at 5:14 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Convert Qualcomm SC7180 pin controller bindings to DT schema.  Keep the
> parsing of pin configuration subnodes consistent with other Qualcomm
> schemas (children named with '-state' suffix, their children with
> '-pins').
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> ---
>
> Changes since v2:
> 1. Drop entire drive-strength (not needed, brought by common TLMM
>    schema).
>
> Changes since v1:
> 1. Drop default:2 for drive strength
> 2. Add Rb tag.
>
> Cc: Doug Anderson <dianders@chromium.org>
> ---
>  .../bindings/pinctrl/qcom,sc7180-pinctrl.txt  | 187 ------------------
>  .../bindings/pinctrl/qcom,sc7180-pinctrl.yaml | 158 +++++++++++++++
>  2 files changed, 158 insertions(+), 187 deletions(-)

Looks great now.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Will you also send out separate patches to fix up the "drive strength"
for all the other Qualcomm boards. They all have the same problem. The
drive strength never defaults to 2 and always gets left at whatever
the BIOS leaves it at unless it's specified.
