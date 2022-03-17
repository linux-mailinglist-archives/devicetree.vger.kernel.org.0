Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18B674DCC11
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 18:09:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236777AbiCQRKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 13:10:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236780AbiCQRKM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 13:10:12 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DCA1C7496
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:52 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id t1so7383267edc.3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0OHVo8Si2pL/zqDM1+3LTosz3MYUp1y06ZbKHncIh7c=;
        b=a0p7sOuJHUCPeqilA5c5MzDViifY4iom9isQHjU3ezymzgQG5C9StJUJVIiuag8CKp
         AJ0fSl22UWrwgX5R0lBv+xF8/tZGLhtzPg1oX5QwBUJ0V3wJdtdCUka2rkjc6rHyS4/m
         ZPBRP+dx32GvswL/pbG0tIYQbsHVNcMoO60zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0OHVo8Si2pL/zqDM1+3LTosz3MYUp1y06ZbKHncIh7c=;
        b=3Xk3zo+zzVOiC/0q31gPZy5QuhgRuEXk+9g+rIdEl9UQ8R2iuVmYXI+ovOGoFvcrun
         3orQV6YCzRYtqIk5em6uAlZB5Ds6sgDuPhlWk3enbRUv8AhZq4cv30Qb4NA/xOTDtTZ3
         26xP24iqGQSSruKs2CwqCdqfVLR0NrMPb79ixSU4bmvmpw2BQm7cGzmy6iuekHn6r6b7
         y7VljtrfhIbnFjXX3wrLW68ihxi+L7raBYt9vsEVfwFZod2PhqGKFre02njaEGt2Xd5m
         7HRNFUQ91zco0uAUdS+tmyozrs6Yg+VPJcYFXe+KXCRZ+YQSSBLpkUmbmp1AhHSuYaw4
         Dhmw==
X-Gm-Message-State: AOAM531MAahicwnah1NCY6flRpAfVm0PxSeqz3zA81jRmbkruJfaOagf
        W5E7uBr5jl0fanmZZMGHVVDHDdPfVN6i5H2M
X-Google-Smtp-Source: ABdhPJxoinU6vVHt/1s7kiOqmLaO1Qeu+/YqbbC6RXFdFIOKAWs465EVfQRzF800mWCB+gFL8LbnGQ==
X-Received: by 2002:aa7:cb09:0:b0:413:2be4:c9fa with SMTP id s9-20020aa7cb09000000b004132be4c9famr5597218edt.106.1647536930377;
        Thu, 17 Mar 2022 10:08:50 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com. [209.85.221.44])
        by smtp.gmail.com with ESMTPSA id b25-20020a056402139900b0041904036ab1sm308858edv.5.2022.03.17.10.08.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 10:08:49 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id d7so8255590wrb.7
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:08:49 -0700 (PDT)
X-Received: by 2002:a5d:5257:0:b0:1f0:1822:69ad with SMTP id
 k23-20020a5d5257000000b001f0182269admr4935612wrc.342.1647536929122; Thu, 17
 Mar 2022 10:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
 <20220316172814.v1.3.Iad21bd53f3ac14956b8dbbf3825fc7ab29abdf97@changeid>
In-Reply-To: <20220316172814.v1.3.Iad21bd53f3ac14956b8dbbf3825fc7ab29abdf97@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 10:08:36 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X37bA9mrzzvhgtFNN1VdCyHtWe2o57t2_DON6O0fprKQ@mail.gmail.com>
Message-ID: <CAD=FV=X37bA9mrzzvhgtFNN1VdCyHtWe2o57t2_DON6O0fprKQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: sc7280: herobrine: disable some
 regulators by default
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
> Not all herobrine boards have a world facing camera or a fingerprint
> sensor, disable the regulators that feed these devices by default and
> only enable them for the boards that use them.
>
> Similarly the audio configuration can vary between boards, not all
> boards have the regulator pp3300_codec, disable it by default.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  .../qcom/sc7280-herobrine-herobrine-r1.dts    | 30 +++++++++++++++++++
>  .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  6 ++++
>  2 files changed, 36 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
