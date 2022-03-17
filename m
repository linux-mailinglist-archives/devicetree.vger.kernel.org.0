Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E14B4DCC0A
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 18:08:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236729AbiCQRJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 13:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231339AbiCQRJ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 13:09:56 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B04D6A27DA
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:35 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id bg10so12114221ejb.4
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q5Dk3tkQjIlaPrqOA6z90+LBXNhzHRth/T+p5lzXnHs=;
        b=XtrIohyUga+/YPR1GXrxZurRryOfV+Ard/1stmQkplP+1c8/b1mRMWkpdvX2qzcy5O
         beBZ6ULmwZddHcZBLs4SMgpK4kkydpi9hzol5/glrJhNpNTQOU6bt+/1mOXF9oQ7oP1L
         WByoFcPQ3p6DuNXcp9kKDFguug8WgLNjCRgcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q5Dk3tkQjIlaPrqOA6z90+LBXNhzHRth/T+p5lzXnHs=;
        b=MgkEq+OcIxYjTJtgCaAliQAt+9HBOxxpKQorx6eBIgYUemEE+ZsR09MmW+W9Jjc1AP
         FmbhsyigVVMmkvt2O7iCQm9nUJoM6TYBgWLYb1KE/3Z2jgDQrd67X7xS66whQ9FLpoNk
         kafY7sW43Kmp8STojFK7IL7p0bjZ4L1VUEB1t52bj7lV11tH2Ao06oa8cVpKMk9dTZqI
         nplmeqcHsJsQHhSlpeAfz0GV2YuVjvypfRqGWLzt/VAP0RJkMfiORNK8WsgcOaj2vQRT
         u3MatOMb9Gq11BG3HI9u0DjvEee9FEhSMMHyrAdPlGxZNSwRlfUHn+t8Zmu/wj/3ReK8
         yj5Q==
X-Gm-Message-State: AOAM533MOMmlfCW/T2jUCamGEsnOSdUFj1+FqUW4ovLVIXOaq7WccQPh
        u5QU023org27fC7bRV3r/eKjKsA2bhfCuw==
X-Google-Smtp-Source: ABdhPJxQ6BKVdATpVZX7YaB6uFghDuGuNZyrmaDCGUVFdhpcovKkcf/qaBKeMwqjlelqzYxH1+vE1w==
X-Received: by 2002:a17:906:3101:b0:6d6:5b64:906f with SMTP id 1-20020a170906310100b006d65b64906fmr5413780ejx.513.1647536913932;
        Thu, 17 Mar 2022 10:08:33 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id n15-20020a05640206cf00b0041655b577f1sm3053064edy.25.2022.03.17.10.08.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 10:08:33 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id o7-20020a05600c4fc700b0038c87edc21eso22288wmq.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:33 -0700 (PDT)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr12307110wmc.29.1647536912557; Thu, 17
 Mar 2022 10:08:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
In-Reply-To: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 10:08:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XeVGjGJVOx6OXBuMahjEsNQfrbYb_dZxJSBvQim0EjgA@mail.gmail.com>
Message-ID: <CAD=FV=XeVGjGJVOx6OXBuMahjEsNQfrbYb_dZxJSBvQim0EjgA@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] arm64: dts: qcom: sc7280: Rename crd to crd-r3
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 16, 2022 at 5:28 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> There are multiple revisions of CRD boards. The current sc7280-crd.dts
> describes revision 3 and 4 (aka CRD 1.0 and 2.0). Support for a newer
> version will be added by another patch. Add the revision number to
> distinguish it from the versionn. Also add the revision numbers to
> the compatible string.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile                             | 2 +-
>  .../arm64/boot/dts/qcom/{sc7280-crd.dts => sc7280-crd-r3.dts} | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
