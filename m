Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3F224DCC0E
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 18:08:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236763AbiCQRKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 13:10:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236762AbiCQRKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 13:10:03 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A36B8C3373
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:46 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id t1so7382958edc.3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=29J3WNDJWG+0dPTcDT5HM1sZZoS3aj5OjFfUpwYnn9I=;
        b=lHIWpPHfEecJ2nKBKKKowWuaUA/jOW0RqB/VtVUwveFqAJLISEhF8orq4qPkY9ZDGd
         dLu7MaZd6loBSNr8djqu0QERIhHvgQMsc2K1zr9G3/otkVzGqJKqnf5/9Ttol7fY5b3z
         aO5tEe1TaUYT+uQSICj7yrn89uyGgps0qb+v8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=29J3WNDJWG+0dPTcDT5HM1sZZoS3aj5OjFfUpwYnn9I=;
        b=jVTkKn15b6LosKm9rr/qF+b6esI5+KyskhqzJ41lb5r1CCKfMkeeN+oNRLE66IMMSh
         fq976d13Yhb4MEZ7N7iGI9haFSCOlx8CHN/oId86X739gVMuq3xLJk/TDVFO7eRDVkHr
         SNmK5zxHsCkugsfS8nsKF/DXb0gkENpYKCPjDCdCAs0ZObAWH09uhz9y/PbBzAt6YoF9
         Fx6dAlaOyMG9sAO+vIhMpUTUOqASmd7Trqmk69n0+d9oZyZs7jtuDlCqqT/ixU+MyRvB
         pTl/vhs9cSLIrSi0OTNJ2+bb7oOodl6LTWNKxE1vjdSHzR9+pRKwUjeBPGNwuawEVGPN
         ZzcQ==
X-Gm-Message-State: AOAM533C+oRfhUw1lbdtCWHuMCIZxnW9vE144voPo3CSqd1s3TeL44Rw
        jbGucP8DhZS257/6AxeOtLMiKtvVmIQoiKbV
X-Google-Smtp-Source: ABdhPJx3kxCBYWr59hAQFnEeh7iTMTUZcyigyPpaBGtv11ndfXQGnFosLvdvIdicGTmwjF93s9nCkw==
X-Received: by 2002:a05:6402:2711:b0:416:6442:76dc with SMTP id y17-20020a056402271100b00416644276dcmr5734303edd.314.1647536924365;
        Thu, 17 Mar 2022 10:08:44 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id m19-20020a1709062ad300b006d1289becc7sm2581465eje.167.2022.03.17.10.08.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 10:08:43 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id h23so7642679wrb.8
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:43 -0700 (PDT)
X-Received: by 2002:a5d:6f04:0:b0:203:ed96:8212 with SMTP id
 ay4-20020a5d6f04000000b00203ed968212mr2550648wrb.679.1647536922913; Thu, 17
 Mar 2022 10:08:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
 <20220316172814.v1.2.Ib0fbb7e5218201c81a2d064ff13c9bc1b0863212@changeid>
In-Reply-To: <20220316172814.v1.2.Ib0fbb7e5218201c81a2d064ff13c9bc1b0863212@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 10:08:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XxuQkWNkCRhFRDQ_7cuyCu0tf5cdHaFKsi3a7L8XNtgA@mail.gmail.com>
Message-ID: <CAD=FV=XxuQkWNkCRhFRDQ_7cuyCu0tf5cdHaFKsi3a7L8XNtgA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] arm64: dts: qcom: sc7280: Add 'piglin' to the
 crd-r3 compatible strings
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 16, 2022 at 5:28 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> With newer bootloader versions the crd-r3 (aka CRD 1.0 and 2.0) is
> identified as a 'piglin' board (like the IDP2 board), instead of 'hoglin'
> Add the compatible strings 'google,piglin-rev{3,4}'. The hoglin entries
> are kept to make sure the board keeps booting with older bootloader
> versions.
>
> The compatible string 'google,piglin' (without revision information) is
> still used by the IDP2 board, which is not expected to evolve further.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
