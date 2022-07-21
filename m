Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64E0157CC12
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 15:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiGUNhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 09:37:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229523AbiGUNhm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 09:37:42 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 568267E334
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:37:40 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id oy13so3252941ejb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8/cqmxcIHyGuuAd34yH5EGseYF2qIVCLxif3aKApjO8=;
        b=jQFRTYzVKfF7XyCxEjMIsHJZa8HQ0iHL21yIQj1Gy5IrYzGHlCXHfSFcxJI/9zfPHT
         zrlQ5VDaVZr9dhrwrr88VgBc/CzeknSxs3+qAQLyANBZAwoUZp3X4O3J+Zc5mvXCQ2yz
         U7eTH2JhxhZDOYg8zidV39R6zFx+zpmW4Of24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8/cqmxcIHyGuuAd34yH5EGseYF2qIVCLxif3aKApjO8=;
        b=IHnQEOps8B5w57h9l/Xlm0RzTaGHbPKUqL9d3SOMX7Bz9jrbTkajFeWUt4ucjb8yEB
         9Or+/MiBbeGca4En5Svd/zrDQmWwzbxzNE1EN8opBUVzEpP7WaayxKAbhK27aUk+/hhl
         F7iZYOgnArOpwKPR9k5xTgkeUJeiVblrJTJwdi7alVhSbapIZ/qSw6XZUWRmg7QKT/ok
         O1YEq1jzL2gu53CL3AxCd4ThTNbAhoUvw+dlyYgWKvH8JGWUTZXN4i8bJS/koq6bN68f
         rrBGdAILQO+mpOr/Iy485X27O8+ARVA1ZsrTB6aHzqTy772jFwU/EsIDcJp+CCb+E1h/
         gX1Q==
X-Gm-Message-State: AJIora/CifvVz5Eg7T6ASubrG7ftcbB93Znu0n20y91dzNysbX7ENSbj
        ZUevYC7wJQt82DFD5jjU8X05adT+JmsTUIWS
X-Google-Smtp-Source: AGRyM1tJLyOcaCLAwgZ4eYjP34Crm2lfRpH1uH7TgMpF5iW1zU88N4jcT9nTP9WbJKnsbXjLqxSDsw==
X-Received: by 2002:a17:907:3e81:b0:726:9615:d14d with SMTP id hs1-20020a1709073e8100b007269615d14dmr40092310ejc.517.1658410658582;
        Thu, 21 Jul 2022 06:37:38 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id u2-20020a1709061da200b0072f42ca2934sm867608ejh.148.2022.07.21.06.37.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 06:37:37 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id id17so1065569wmb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 06:37:37 -0700 (PDT)
X-Received: by 2002:a05:600c:2e48:b0:3a3:1ce3:3036 with SMTP id
 q8-20020a05600c2e4800b003a31ce33036mr7949226wmf.188.1658410656948; Thu, 21
 Jul 2022 06:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220721033918.v3.1.I10519ca1bf88233702a90e296088808d18cdc7b1@changeid>
 <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
In-Reply-To: <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 21 Jul 2022 06:37:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WSBgupLFMCZgianck6uTkAyqrG0WK2ChSbNbJdhOPdLA@mail.gmail.com>
Message-ID: <CAD=FV=WSBgupLFMCZgianck6uTkAyqrG0WK2ChSbNbJdhOPdLA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: qcom: Document additional sku6
 for sc7180 pazquel
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jul 20, 2022 at 8:59 PM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> The difference between sku6 and sku4 is that there is no esim
>
>  The different SKUs are:
>
>    LTE with physical SIM _and_ eSIM
>    LTE with only a physical SIM
>    WiFi only
>  Both sku4 and sku6 are LTE SKUs.
>  One has the eSIM stuffed and one doesn't.
>  There is a single shared device tree for the two.
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> ---
>
> Changes in v3:
> - Bindings and dts in the same series.
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)

Not worth sending a new version for, but normally I expect the
bindings to be patch #1 and the dts change to be patch #2. In any
case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
