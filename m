Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDB555257AD
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 00:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351294AbiELWTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 18:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359098AbiELWTs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 18:19:48 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 990272802F8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 15:19:45 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id g6so12910257ejw.1
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 15:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=McSS2ps7lAda0B7Hjqm4GcEs6ir76cLprhYeL3EvtQM=;
        b=FpKUMneT2lkBkxD8QufbxsbC3iS2M4kA4XRmF3F+SntKp7qqDK9yyAtfeOxgnr9a3j
         wwP3HiFOGA9hJIaks57Co+DyFPOq1f1kjR1dq4QGVQ0NSV6f5vppoZjBxU3toP3xQccx
         Z0uZZ9G3jvEjNFvB4TkXgwrYoNmR0Hgz+ts1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=McSS2ps7lAda0B7Hjqm4GcEs6ir76cLprhYeL3EvtQM=;
        b=p94YtHrP/BiV1f6DziHQAPlNE3BDiCGlJHSZAVhuDTHzS4JkdyISBFQFEtXC/ZzISG
         EfHtXpOMV6gakL6gFvUkCn7u0GY4A97SSay24buGg6Pe97ShmQOQrAQrhnzTAeJ9nzvO
         CNesCTpELVy04eUHAnOfuRlcJ0iIDkMirKuSLJ9ck0EwGpe9p3UsKML0g8uQ/NjY4+Js
         7ad1FCdibPCCUx9E0cNtYZ1vECL4UBVHG0pJbUlLjRNcIXmcCVZkBK3NCrmtyaEr1x4j
         L/6fZwOdTssPVnJkx5ZQkROU8h7qUyIOgq2JqUCit+9UhIIM+jV1UhV6Qc+1ic5vgGUc
         uyMw==
X-Gm-Message-State: AOAM531vLA9qVrj7/oWIgPvQ8QWqsGDsmj98dAfVlqikaSviCDVM3QDO
        mwmvI9BsltUCkZqdsLYBZ6Vx5ifYlOVSE/oi
X-Google-Smtp-Source: ABdhPJx8kYfp6XShR5dx7s3CPNf8FzRNwIPZmqF21mo5Qk8o/rTXg5YUhhzTa0LnMERa+z9zgYMiyA==
X-Received: by 2002:a17:906:a10e:b0:6f3:e70b:b572 with SMTP id t14-20020a170906a10e00b006f3e70bb572mr1737775ejy.546.1652393983937;
        Thu, 12 May 2022 15:19:43 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id gk8-20020a17090790c800b006f3ef214db3sm171005ejb.25.2022.05.12.15.19.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 15:19:43 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id d5so9089814wrb.6
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 15:19:43 -0700 (PDT)
X-Received: by 2002:a5d:6d09:0:b0:20c:53a9:cc30 with SMTP id
 e9-20020a5d6d09000000b0020c53a9cc30mr1382071wrq.513.1652393982520; Thu, 12
 May 2022 15:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220510154406.v5.1.Id769ddc5dbf570ccb511db96da59f97d08f75a9c@changeid>
In-Reply-To: <20220510154406.v5.1.Id769ddc5dbf570ccb511db96da59f97d08f75a9c@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 12 May 2022 15:19:30 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vkiqxv5QRiEqCjZVSNUH=K1N+JuYEsXu=XtFNxRtvttw@mail.gmail.com>
Message-ID: <CAD=FV=Vkiqxv5QRiEqCjZVSNUH=K1N+JuYEsXu=XtFNxRtvttw@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] arm64: dts: qcom: sc7180: Add wormdingler dts files
To:     "Joseph S. Barrera III" <joebar@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Alexandru M Stan <amstan@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 10, 2022 at 3:46 PM Joseph S. Barrera III
<joebar@chromium.org> wrote:
>
> Wormdingler is a trogdor-based board, shipping to customers as the
> Lenovo IdeaPad Chromebook Duet 3. These dts files are copies from
> the downstream Chrome OS 5.4 kernel, but with the camera
> (sc7180-trogdor-mipi-camera.dtsi) #include removed.
>
> Signed-off-by: Joseph S. Barrera III <joebar@chromium.org>
>
> ---
>
> Changes in v5:
> - Replaced _ in node name with -
> - Ordered nodes by name

So it's a bit of a judgement call, but generally the rule is that if
you didn't make very big changes from one version of a patch to the
next that you should keep "Reviewed-by" tags that you've already
received. In this case the changes you made from v4 to v5 were very
small and also very non-controversial (it's hard to believe I would
object to these changes). Thus, it would have been better to keep my
Reviewed-by tag. Everyone understands that it's a judgement call so as
long as it's within reason people won't be too upset at you for making
your best guess. If you're unsure, you can always add a note "after
the cut" (AKA "Commit-notes" in patman speak) explaining why you did
or didn't choose to keep someone's tags.

That being said, offline Stephen pointed out a problem with all of
your v5 patches. Specifically, in the meantime while you were spinning
your patches, Stephen's patch series landed in the upstream tree.
Namely:

19794489fa24 arm64: dts: qcom: Only include sc7180.dtsi in sc7180-trogdor.dtsi
d277cab7afc7 arm64: dts: qcom: sc7180-trogdor: Simplify spi0/spi6 labeling
51d30402be75 arm64: dts: qcom: sc7180-trogdor: Simplify trackpad enabling

Since he won the race of getting the patches landed, that means it's
on you to adjust. You should modify your patches to match what Stephen
did in those 3. ...and, presumably, the changes Stephen is requesting
here probably _are_ big enough that you'd want to remove my
Reviewed-by tag for v6.

Speaking of Stephen, he reviewed your v4 patches, but you didn't copy
him on v5. In general if someone responds to a patch in the series you
should CC them on the next version.

-Doug
