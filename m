Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44E445A4F0A
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 16:20:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbiH2OU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 10:20:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbiH2OUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 10:20:51 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96E5554C9E
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:20:50 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id nc14so11117498ejc.4
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=F9yNwthvDThYN8PozFUnGZoAmSBhQ3+M5Ob8cdnJ9E0=;
        b=UffHqoG7mxNZ+09NcRTvmauGvuRAlQxfBG3YjS42aMP4Xh5RLRU0qBqKGJtYmWI4UY
         WTl0UN/p716/FEmlZKu+J1fjOHbxyymf4yHoDBoLNu/H1N8jSunLZyi77z2D9rJbueoA
         tOe0k9xsI7JGHRoYDFDCNONP7HSwMcmwarbdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=F9yNwthvDThYN8PozFUnGZoAmSBhQ3+M5Ob8cdnJ9E0=;
        b=L8PaBUGzcam2oM72OAfkWuDehspUgW4fAjmFfuKVSd+K1TRlUC2CbQw9BQf2pwdnPr
         KpwedChZdwigl5T895BA433slJIQohZTKuifm5Z3ib/fnPPi9fdvR3q9j+bjqiMFGTdt
         WFSNTzX58Nh/Oi31l8ORDOmr1p/Q4Ot2U334FuK35fAXHOewQjDUpEWPVlcFlvNXS4NY
         Rewfk9Fcbyqm5dGwUpU0pjCYNzNSXf8zetZ5mLeJ3tm1oGs4UuX9T/tHsQV863Ajs0/D
         DDk3oqRJtnfG8O04nXzBE3jGLnVRMdhXcKaAnHISyr/DfF9zAcTm5FodiRtZpUuNyh1C
         e6gw==
X-Gm-Message-State: ACgBeo1mt0pIDIlMslwowTWHXPMzQvVXAOEWU6W9cx9aUPhGpkU4ydbg
        N/OTZfZb90odKFz43BDiGgw7IFt6yNFKXdbu
X-Google-Smtp-Source: AA6agR6mez4tDCSiYUzi06eYn43lFMTx1NLLGTPTKlirv+JwMWoGEKAUMVl+rkne5yJKCrujs2f8Mw==
X-Received: by 2002:a17:907:2855:b0:741:e2a2:ac05 with SMTP id el21-20020a170907285500b00741e2a2ac05mr216326ejc.729.1661782848797;
        Mon, 29 Aug 2022 07:20:48 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com. [209.85.221.41])
        by smtp.gmail.com with ESMTPSA id r20-20020a170906365400b0073dafb227c0sm4430742ejb.161.2022.08.29.07.20.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 07:20:47 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id bs25so10412903wrb.2
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 07:20:46 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr6500366wrr.583.1661782846549; Mon, 29
 Aug 2022 07:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220829030823.v2.1.If97ef7a7d84bcc2cf20e0479b3e00c4a8fb5a2fd@changeid>
 <20220829030823.v2.2.I99d43de4a80223dee58ea1bc5b4fd3aaadc5e3c1@changeid>
In-Reply-To: <20220829030823.v2.2.I99d43de4a80223dee58ea1bc5b4fd3aaadc5e3c1@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 29 Aug 2022 07:20:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZoh-4uSWViciUgXCnTAz6HhQkOt2un_tTa1GY755TDA@mail.gmail.com>
Message-ID: <CAD=FV=VZoh-4uSWViciUgXCnTAz6HhQkOt2un_tTa1GY755TDA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add sc7180-pazquel360
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

On Sun, Aug 28, 2022 at 8:09 PM Yunlong Jia
<yunlong.jia@ecs.corp-partner.google.com> wrote:
>
> Create first version device tree for pazquel360
> pazquel360 is convertible and the pazquel it is based on is clamshell.
> sku 20 for lte & wifi
> sku 21 for wifi only
> sku 22 for lte w/o esim & wifi
>
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> ---
>
> Changes in v2:
> - Remove the touchscreen setting, as a follow-up patch
>
>  arch/arm64/boot/dts/qcom/Makefile             |  2 +
>  .../qcom/sc7180-trogdor-pazquel360-lte.dts    | 22 ++++++++
>  .../qcom/sc7180-trogdor-pazquel360-wifi.dts   | 17 +++++++
>  .../dts/qcom/sc7180-trogdor-pazquel360.dtsi   | 50 +++++++++++++++++++
>  4 files changed, 91 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
