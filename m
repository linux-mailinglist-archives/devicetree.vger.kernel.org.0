Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C677B5827F0
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 15:46:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232796AbiG0NqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 09:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232672AbiG0NqJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 09:46:09 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20F68E02B
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:46:08 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id w5so9029668edd.13
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=3+CIoBgIXCefHdiPwAwmZSqgvqBVzos7wCXQs6Z6pGY=;
        b=aAMKAAp0Q4vQ/GYiK/iVkkfSuNwFapAYxENRknBuwJ0oTeimvIONUDXaUCGYJnl+MN
         dCm+jifGdmZjh4mTxyNbJnJUuU0nV5KE68sSxyqe66eohR+CGWtnV5MeI+pKrrCklWCV
         FmD3Gc8j8kYyGdNRRSEFwFprV0BA1X2ynOk+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=3+CIoBgIXCefHdiPwAwmZSqgvqBVzos7wCXQs6Z6pGY=;
        b=wXZBlgzoi4DSkZzsuXFV/zkjrGfRwf3P/m/Bk5nB69+cXhnqY0XKp3r3XU6KSLsr/r
         mgZ7YrNvAltHcnsCnyczmQvCSLuWPZZtWfiM6BhXbdXV9sEXOYqrxbNFmCGKyQ8XD/y8
         1xcGZZaHUs3PzBRcN/nx1RaKrwiJKOhp/b69fKzCpQzEzYijHp+v4UGyTjijvy0CmWmE
         i9spG1c6b8hVaqEweU3sRFPwo/sLCykKuQv1LqRMI1is3hQJJftR7Zt5AGRrzozAve02
         14BHDrPmgElY8KMyrNWZtkRTwdKlw6jH8FKI+LL1gpQhwLn7OiZxINI5fGVS950all+v
         lSEA==
X-Gm-Message-State: AJIora+zwrlKkgypuBhzzxKEsdNUInWrwI+K4v5zbTcAO8ox9IzMIoih
        c+pEccENfNBaip23UxGVlmWHLj0oQDLIBsEL
X-Google-Smtp-Source: AGRyM1tmfRrqT6rxgO9QR9cAYH1TFWP9oTpFCt24VgH+FZp7KFV8vryAIkSoHciAaEHvjpZzbT/z+Q==
X-Received: by 2002:aa7:db8a:0:b0:43b:75b1:92e9 with SMTP id u10-20020aa7db8a000000b0043b75b192e9mr23084991edt.223.1658929566487;
        Wed, 27 Jul 2022 06:46:06 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id 17-20020a170906201100b0072ffbbc3341sm1304267ejo.204.2022.07.27.06.46.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 06:46:04 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id v13so16497369wru.12
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 06:46:03 -0700 (PDT)
X-Received: by 2002:adf:ead2:0:b0:21d:8b49:6138 with SMTP id
 o18-20020adfead2000000b0021d8b496138mr14815614wrn.138.1658929563550; Wed, 27
 Jul 2022 06:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220726212354.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
In-Reply-To: <20220726212354.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 27 Jul 2022 06:45:50 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VJDT5dK46AonaO69Xzf_LTBvbZrBOqpPV8qqhvp1Ms=g@mail.gmail.com>
Message-ID: <CAD=FV=VJDT5dK46AonaO69Xzf_LTBvbZrBOqpPV8qqhvp1Ms=g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: document zoglin board
To:     Bob Moragues <moragues@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Bob Moragues <moragues@google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 26, 2022 at 9:24 PM Bob Moragues <moragues@chromium.org> wrote:
>
> Zoglin is a Hoglin Chromebook with SPI Flash reduced from 64MB to 8MB.
> Zoglin is identical to Hoglin except for the SPI Flash.
> The actual SPI Flash is dynamically probed at and not specified in DTS.
>
> Signed-off-by: Bob Moragues <moragues@chromium.org>
>
> Signed-off-by: Bob Moragues <moragues@google.com>

You need to figure out how to get your system not to add the extra
"@google.com" Signed-off-by. It's probably worth spinning a v2 with
that, if for no other reason than to debug your setup for the next
patch you send.

Other than that, this looks right to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

(you should carry my Reviewed-by tag forward on your v2 unless you
change anything significant)
