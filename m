Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 984BF5A32F1
	for <lists+devicetree@lfdr.de>; Sat, 27 Aug 2022 02:06:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345133AbiH0AGo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 20:06:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345224AbiH0AG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 20:06:29 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B269E9A99
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 17:06:11 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id og21so5882941ejc.2
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 17:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Z5Adbae5Xstm3Nft6JSqLTz+t6vgZm3JK+za1SvmuuM=;
        b=Tpup3l/YMsgBg+GPhioM3zHPeTRmGdpq8vjcCUGyupmzAuhmUPFwBqlmi4B6VquVWn
         cWJZzfzwyryyoXVqlOpJYk9FAo5Ihqxn6qlgCYv/6VVdrLotWY/osHXbmOv2w300xM7+
         OiXZbtAHdp6Tbm/0KwtjIu5kj0V7mIw27r41U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Z5Adbae5Xstm3Nft6JSqLTz+t6vgZm3JK+za1SvmuuM=;
        b=IE/sDZ74KXuspjDEW1QkormoYN/v2lIEC56I8EuFiZ5NYwebH6DHiPNLRGK+oqabdn
         olVvun3mB/9h9TpTBg9niMgg0uMrLFkTx8HRTBskjhpRWPXUeYeFG3ObbdtgkYZiaaa2
         Vl/2YeFcqDzRGVRU/jMGH4GuuVnl9eYZ2sRolbltHfUsJRhfyXRijduAZklx3X7v7v5O
         XZbXKLmOmx78bmf30/vahjNrgejqI0nZuA0U4sOBEyAVSeFqTMgOH/sD8ktH99Ywa/C5
         5Sz8Ei62LJjg+kXb6OliTHTaiw/cLlc5jg1l39TA/8EUkWjvQjxQWnUbfWmGUg6uFrQD
         1ZLg==
X-Gm-Message-State: ACgBeo0lIvnI9nVvVN5hPLSdKC9id+lb42OAiZUwKfd7Y+LADFx6/59z
        C091yaEt90wlNT6p/NPuw4ZeONyi6fd1bRSO
X-Google-Smtp-Source: AA6agR6Gh8E3R+iaziDKUVAD5pyOLEND1ixW6RWwlhQ4pIonPxRckNqAGTfJ7yuhKglqf5ZhOB1VOw==
X-Received: by 2002:a17:907:72cc:b0:73d:d482:647e with SMTP id du12-20020a17090772cc00b0073dd482647emr6044898ejc.348.1661558769808;
        Fri, 26 Aug 2022 17:06:09 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id s25-20020aa7cb19000000b004477c582ffdsm1924414edt.80.2022.08.26.17.06.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 17:06:07 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id j26so1585884wms.0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 17:06:07 -0700 (PDT)
X-Received: by 2002:a05:600c:4e8b:b0:3a5:f5bf:9c5a with SMTP id
 f11-20020a05600c4e8b00b003a5f5bf9c5amr988458wmq.85.1661558767085; Fri, 26 Aug
 2022 17:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220826102513.1.If97ef7a7d84bcc2cf20e0479b3e00c4a8fb5a2fd@changeid>
In-Reply-To: <20220826102513.1.If97ef7a7d84bcc2cf20e0479b3e00c4a8fb5a2fd@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 26 Aug 2022 17:05:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U2N2gd6jCsxucwuU1xxnzBc5nL3odQp7vcQXmJsjwHOQ@mail.gmail.com>
Message-ID: <CAD=FV=U2N2gd6jCsxucwuU1xxnzBc5nL3odQp7vcQXmJsjwHOQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document additional skus for
 sc7180 pazquel360
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
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

Hi,

On Fri, Aug 26, 2022 at 3:27 AM Yunlong Jia
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
>
> ---
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
