Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BE2A5A523C
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 18:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbiH2Qww (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 12:52:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbiH2Qwt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 12:52:49 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E8AF7F10D
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:52:46 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id c4so7057845iof.3
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=YQCZ5HXSfGZcA8bcBTLo0V3fSltEFeq1A11Jwesd6xE=;
        b=kYSctfKLBfS+DN/xG+rtV9Jy92t2ysJSmULWExywhnmeM6p58gImEdKuuQ1ee3JaaH
         tCdETv8lpg7U8P8M5yqFbeAkxkP2XBk0PkR7q4a3m/7FpDHGhF4/eGxenF4e1bHaiw9B
         II2LQsvExAMznOJMpU3H80SLkzQWY/ro6k9KQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=YQCZ5HXSfGZcA8bcBTLo0V3fSltEFeq1A11Jwesd6xE=;
        b=VS4XUdgoMx1mvcNvGX2U05Et9r3ueL27PUVxsGs6lvZsrwnrk2hc+E80Zbe9l57qnx
         7F0nWvFB6b5dM2yLI1P8krWwbwyIlQ8txP19JjaxxQ9m+95tvnb/MDMvjud+/1eJ/LPE
         HK0Mz7pC6sVwRJDBEb9w3LXo0eMQeZ+O2oKtNKSaX8KFFNUZshLW86sCQrCHuTX7q7PZ
         daOc6E9vWK7Cd5yVpTF0pSyC5cnl79LDmC7bH2tg10Musw34qAtaDckuFEA1iPpgCPSP
         zHqQfYetefp4mFUnYagwJnUD2fXaOQ0UU2XmPuqzOI7OQMXCDojohJYanyFhdJc8UE6W
         s2qA==
X-Gm-Message-State: ACgBeo26DpbjcE2tuJblM9IyAaYsKaa5KMqj5CRU4/PGeSu0aeA1yKd5
        yXzLSNyIt+M1P5iVkGNDDSoq0c9f6RnXv2s2
X-Google-Smtp-Source: AA6agR78gbzqAN8UVfbzOcvaLAQM6j/Q4Q1V+ZwMMvAVcN0sOceVbQLsCYlNpza/c+IZfFl01TOi7A==
X-Received: by 2002:a05:6602:2b8d:b0:68b:3a77:b177 with SMTP id r13-20020a0566022b8d00b0068b3a77b177mr4789322iov.208.1661791964865;
        Mon, 29 Aug 2022 09:52:44 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by smtp.gmail.com with ESMTPSA id h16-20020a92d850000000b002eb109706f4sm1433531ilq.84.2022.08.29.09.52.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 09:52:43 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id d68so7031336iof.11
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 09:52:43 -0700 (PDT)
X-Received: by 2002:a05:6602:2dcb:b0:68b:7804:e924 with SMTP id
 l11-20020a0566022dcb00b0068b7804e924mr2910751iow.54.1661791962863; Mon, 29
 Aug 2022 09:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220829094435.1.I4534cf408373478dd6e84dc8b9ddd0d4e1a3f143@changeid>
In-Reply-To: <20220829094435.1.I4534cf408373478dd6e84dc8b9ddd0d4e1a3f143@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 29 Aug 2022 09:52:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WvpoK-z8pU0u+oKPahSA3sgwj+1u9DtJX4nRq4xOO24g@mail.gmail.com>
Message-ID: <CAD=FV=WvpoK-z8pU0u+oKPahSA3sgwj+1u9DtJX4nRq4xOO24g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-qcard: Add alias 'wifi0'
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
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

On Mon, Aug 29, 2022 at 9:44 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add the alias 'wifi0' for the WiFi interface on the Qcard. The alias
> is needed by the BIOS which patches the WiFi MAC address read from
> the VPD (Vital Product Data) into the device tree.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Looks right to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
