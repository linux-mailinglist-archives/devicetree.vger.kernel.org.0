Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FA055846E3
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 22:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229456AbiG1UHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 16:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbiG1UHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 16:07:04 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D37BC7479D
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 13:07:01 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id bp15so4949684ejb.6
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 13:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=b99vshAhGChh3A9VDnm6KS29Pg4yAPwV39WCn0DHyEw=;
        b=j/cVnyPJc3NbVdA6KozIiXB7d1QQk+XXmRNE0ZX9Jr5ze1E0ZnY/NdUc8lE2pzXYHK
         T0jUhZs+w+0Rdv0Ke7Ah2OmBDArPN9qCD2CvffXu2uKVOU1h8HOBkyCChfnrD2nfS7e1
         g1n0sndpcyCYQLwBxOrKsGhccrjtnd+evojNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=b99vshAhGChh3A9VDnm6KS29Pg4yAPwV39WCn0DHyEw=;
        b=6my6vKnAMHlIY5d2Hr9uHhLvUWPKFKU0ejU55tiZfLsPER/lJnlo9YBs3OnjHiJL4T
         2lOP2QxFVFewB0BEROpRzCOeKY8bBvVdnpmlbUwYMuup2QHZZXpdTCh+9g092ISIA8NT
         IWg3IVRPvKFVgU62sWT+IHBr+LKXSSWeYSSLFJvXsNQJusF+KirU7qR7lSkguxVSGE0D
         fa0STyqBBo9fMLVmEqGeTxk+ab430ETnbTGO1M35ePy0GImmT6gbIYCEovLZdKt/RJSR
         xCZUI++z3FLrnLTmcHp0CE9gU/nduGILcZdnguECNL+mcmV0ppmOGOvHeLUCmo4cD04O
         QE2w==
X-Gm-Message-State: AJIora/VLzBRPxiwpigwlVbyfQG9UPsXPEUBdf3z43zRKcYIQylov4dm
        B9GUPiCLrCvxVq88IeE7IIW8URmZzU7mMcb0
X-Google-Smtp-Source: AGRyM1tSJnA/5JOp8U8bIwTEX5pIpLO9+ylBBkedYdUDnfT3EKwszWCo1ctN1Pc6hg2fYCxXXWbmPg==
X-Received: by 2002:a17:907:2d12:b0:72b:67fb:89a5 with SMTP id gs18-20020a1709072d1200b0072b67fb89a5mr381545ejc.507.1659038820246;
        Thu, 28 Jul 2022 13:07:00 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id fv30-20020a170907509e00b006fece722508sm756662ejc.135.2022.07.28.13.06.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 13:06:59 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id 2-20020a1c0202000000b003a3a22178beso1558573wmc.3
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 13:06:59 -0700 (PDT)
X-Received: by 2002:a05:600c:1e0f:b0:3a3:191c:a3c8 with SMTP id
 ay15-20020a05600c1e0f00b003a3191ca3c8mr292036wmb.151.1659038816119; Thu, 28
 Jul 2022 13:06:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220728105005.v2.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
In-Reply-To: <20220728105005.v2.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 28 Jul 2022 13:06:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U=BbNDW3R0bRoJNrOz61KSop4NorP-6QQKYHVu5wnTMw@mail.gmail.com>
Message-ID: <CAD=FV=U=BbNDW3R0bRoJNrOz61KSop4NorP-6QQKYHVu5wnTMw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: document zoglin board
To:     Bob Moragues <moragues@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh@kernel.org>,
        Bob Moragues <moragues@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 28, 2022 at 10:51 AM Bob Moragues <moragues@chromium.org> wrote:
>
> From: Bob Moragues <moragues@chromium.org>
>
> Zoglin is a Hoglin Chromebook with SPI Flash reduced from 64MB to 8MB.
> Zoglin is identical to Hoglin except for the SPI Flash.
> The actual SPI Flash is dynamically probed at and not specified in DTS.
>
> Signed-off-by: Bob Moragues <moragues@chromium.org>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bob Moragues <moragues@google.com>

Something is still messed up with the way you're sending this. You
don't want the extra Signed-off-by here. Maybe try again for v3?

-Doug
