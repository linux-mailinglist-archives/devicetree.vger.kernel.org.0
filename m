Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F46452F479
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 22:35:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353491AbiETUfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 16:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353493AbiETUfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 16:35:25 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD7F419FF59
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:35:21 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id 202so1664405pfu.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 13:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3vHBVIVFWKzsVxkwc0nHHOOCh+s7xB12NezweFvNW6E=;
        b=BuiiqR40Fh9qrE/Wrzuu+BttdgbfvoE5pQkQfFAFV/s2HTC2A/0XUWCPD/l4KH7Zd3
         AxLHjBC+5RknD/9gzB04Y0DSbIN5PB6HMEcTyuMIZMnQjjl1XocPBuQXZl/QUHXKgfuH
         1KRo4Wk0of63noo+XGTjV9GnM8O6wDHcBTBeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3vHBVIVFWKzsVxkwc0nHHOOCh+s7xB12NezweFvNW6E=;
        b=f4Mug6sPcZqc4Kq5KjcfLrnS9eicZgT6V7pGvQwGDc4Ou0zWt7j/nOmO/WBjrYa1Pp
         OnCXbZWkcRdtzaie6m6KvBz4NJEa5j26/xWcibj9DkOgYJRJt8BL4fnKl7FmdxylnreK
         RjqK0MFekK6AfedcOBROKgZon4ApQr6cdLhpct+nc6wB2PtjD8KpQ1M3910LUR2tVH4Q
         K/i0jlJkCxqk/T3aqtAFMmiYtQEBHUIETYXz3+5tHEsL01kIqBVcNGqphBltCA5s5HYD
         lduJiJVp2zfrhiIE2a0QGwZtzOOcVh3KZ2uGxQ7BdEwWrmdr4i+A5cXl2X8eCmUmVs1a
         I8yg==
X-Gm-Message-State: AOAM533yj3fsDH0xlTLKTWfzT7rtihdFTsvLG+/+DoTYOS5xE5io/Djr
        C4HdkHn9htRA0mD2ZpdVePjS3A==
X-Google-Smtp-Source: ABdhPJzI7hQHoQSzMwA79g07yOdZRZqt49wF8VqdqwqSu7Dgzggk6BMoyBJC+wYWFmGhcGSRO9zAbQ==
X-Received: by 2002:a63:1d6:0:b0:3c1:732a:3855 with SMTP id 205-20020a6301d6000000b003c1732a3855mr9913625pgb.571.1653078920547;
        Fri, 20 May 2022 13:35:20 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:5332:2096:60a3:3455])
        by smtp.gmail.com with UTF8SMTPSA id nh11-20020a17090b364b00b001df4e851aecsm2306272pjb.3.2022.05.20.13.35.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 13:35:20 -0700 (PDT)
Date:   Fri, 20 May 2022 13:35:19 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Kevin Lund <kglund@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Enable wifi for Chrome OS
 boards
Message-ID: <Yof7h++Aj6UM8YF+@google.com>
References: <20220518155252.1.I176d4254c79cfaafa38cbe36f066f02f819df9b6@changeid>
 <CAD=FV=X+4JhN8EScFDZAiduo6zy7c0pbr6EOJpSo25ctOW-zRA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=X+4JhN8EScFDZAiduo6zy7c0pbr6EOJpSo25ctOW-zRA@mail.gmail.com>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 20, 2022 at 01:07:53PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Wed, May 18, 2022 at 3:53 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > Enable the 'wifi' and 'remoteproc_wpss' nodes for all sc7280
> > based Chrome OS boards. Delete the corresponding entries from
> > sc7280-idp.dtsi since this file includes sc7280-chrome-common.dtsi.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> >  arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 13 +++++++++++++
> >  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           | 11 -----------
> >  2 files changed, 13 insertions(+), 11 deletions(-)
> 
> Looks right to me. You're also adding the firmware-name, but:
> 
> * That's in the bindings.
> 
> * The name you have there matches what's in the linux-firmware
> repository in commit 0d5e9f7e0aa1 ("ath11k: WCN6750 hw1.0: add to
> WLAN.MSL.1.0.1-00887-QCAMSLSWPLZ-1")
> 
> Hmmm, I guess one question is whether this same firmware would also be
> used for other, non-Chrome sc7280 devices. If so then the
> firmware-name probably belongs straight in sc7280.dtsi? I suppose that
> could always happen in a future change if/when we have other sc7280
> devices and it's clear that they're sharing firmware. Thus:

It could go either way. One of our wifi engineers mentioned that his
contact at QC said the FW should reside directly in /lib/firmware, not
in any sub-directory, which would be odd, but up to them ;-)

> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!
